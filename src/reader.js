(()=>{
'use strict';
const data=JSON.parse(document.getElementById('study-data').textContent);
const $=id=>document.getElementById(id), byId=new Map(data.questions.map(q=>[q.id,q]));
const groups=new Map(data.groups.map(g=>[g.id,g])), topics=new Map(data.groups.flatMap(g=>g.topics.map(t=>[t.id,{...t,group_id:g.id}])));
const units=new Map(data.units.map(u=>[u.question_id,u])), STORAGE='codex-study:'+data.documentKey, PAGE_SIZE=20;
const defaultRoute={view:'random',group:'',topic:'',query:'',filter:'all',qid:'',page:1};
let noticeTimer,saveTimer,searchTimer,storageFailed=false,storageNotice=false,mobileView='list',revealedFor='';
function el(tag,text,cls){const node=document.createElement(tag);if(text!==undefined)node.textContent=text;if(cls)node.className=cls;return node}
function button(text,handler,cls){const b=el('button',text,cls);b.type='button';b.onclick=handler;return b}
function link(text,href){const a=el('a',text);a.href=href;return a}
function notify(text){clearTimeout(noticeTimer);$('notice').textContent=text;$('notice').hidden=false;noticeTimer=setTimeout(()=>$('notice').hidden=true,3500)}
function validRoute(input={}){
 const r={...defaultRoute};
 if(['random','library','important','bookmarks'].includes(input.view))r.view=input.view;
 if(input.view==='route')r.view='random';
 if(input.view==='review')r.view='important';
 if(groups.has(input.group))r.group=input.group;
 if(topics.has(input.topic)&&(!r.group||topics.get(input.topic).group_id===r.group)){r.topic=input.topic;r.group=topics.get(input.topic).group_id}
 r.query=typeof input.query==='string'?input.query.slice(0,200):'';
 if(['all','new','important'].includes(input.filter))r.filter=input.filter;
 if(input.filter==='review')r.filter='important';
 if(byId.has(input.qid))r.qid=input.qid;
 r.page=Math.max(1,Math.min(40,Math.floor(Number(input.page)||1)));
 return r;
}
function sanitizeProgress(input){
 const p={bookmarks:{},important:{},status:{},notes:{},drafts:{},expandedGroups:{},randomOrder:[],sidebarCollapsed:false,sidebarWidth:280,questionPaneWidth:320,lastRead:'',lastRoute:{...defaultRoute},font:18,mode:'quiz'};
 if(!input||typeof input!=='object')return p;
 for(const id of byId.keys()){
  if(input.bookmarks&&input.bookmarks[id])p.bookmarks[id]=true;
  if(input.status&&['review','understood'].includes(input.status[id]))p.status[id]=input.status[id];
  if(input.important&&input.important[id])p.important[id]=true;
  if(!Object.prototype.hasOwnProperty.call(input,'important')&&input.status?.[id]==='review')p.important[id]=true;
  for(const key of ['notes','drafts'])if(input[key]&&typeof input[key][id]==='string')p[key][id]=input[key][id].slice(0,20000);
 }
 if(byId.has(input.lastRead))p.lastRead=input.lastRead;
 p.lastRoute=validRoute(input.lastRoute||{});
 if([16,18,20].includes(input.font))p.font=input.font;
 if(['quiz','read'].includes(input.mode))p.mode=input.mode;
 if(Array.isArray(input.randomOrder))p.randomOrder=[...new Set(input.randomOrder.filter(id=>byId.has(id)))];
 p.sidebarCollapsed=input.sidebarCollapsed===true;
 if(Number.isFinite(input.sidebarWidth))p.sidebarWidth=Math.max(190,Math.min(360,input.sidebarWidth));
 if(Number.isFinite(input.questionPaneWidth))p.questionPaneWidth=Math.max(240,Math.min(440,input.questionPaneWidth));
 for(const id of groups.keys())if(typeof input.expandedGroups?.[id]==='boolean')p.expandedGroups[id]=input.expandedGroups[id];
 return p;
}
function load(){try{return sanitizeProgress(JSON.parse(localStorage.getItem(STORAGE)||'null'))}catch{return sanitizeProgress(null)}}
let progress=load();
function save(){
 clearTimeout(saveTimer);
 try{localStorage.setItem(STORAGE,JSON.stringify(progress))}
 catch{
  storageFailed=true;
  $('storage-label').textContent='当前浏览器未允许保存，请导出学习记录。';
  if(!storageNotice){storageNotice=true;notify('本浏览器暂时无法保存记录，可在“设置与资料”中导出备份。')}
 }
}
function queueSave(){clearTimeout(saveTimer);saveTimer=setTimeout(save,200)}
function fromHash(){const p=new URLSearchParams(location.hash.slice(1));if(!p.has('view'))return null;return validRoute(Object.fromEntries(p))}
let route=fromHash()||validRoute(progress.lastRoute);
if(progress.sidebarCollapsed)mobileView='reader';
function shuffleQuestions(){
 const ids=[...byId.keys()];
 for(let i=ids.length-1;i>0;i--){const j=Math.floor(Math.random()*(i+1));[ids[i],ids[j]]=[ids[j],ids[i]]}
 return ids;
}
if(progress.randomOrder.length!==byId.size){progress.randomOrder=shuffleQuestions();if(route.view==='random')progress.mode='quiz'}
let depth=history.state?.studyReader===data.documentKey?history.state.depth||0:0;
let searchOrigin=history.state?.studyReader===data.documentKey&&history.state.searchOrigin?validRoute(history.state.searchOrigin):null;
function url(){const p=new URLSearchParams();for(const [key,value] of Object.entries(route))if(value!==''&&value!==defaultRoute[key]||key==='view'||key==='qid')p.set(key,String(value));return '#'+p.toString()}
function syncUrl(){history.replaceState({studyReader:data.documentKey,depth,searchOrigin},'',url())}
const searchIndex=new Map(data.questions.map(q=>[q.id,[q.title,q.topic,q.group,q.answer_original].join(' ').toLowerCase()]));
function queryTokens(){return route.query.trim().toLowerCase().split(/\s+/).filter(Boolean)}
function getQuestions(){
 let list;
 const query=route.query.trim().toLowerCase();
 if(query){
  const idMatch=/^q?0*(\d{1,3})$/i.exec(query);
  if(idMatch){const q=byId.get('Q'+String(Number(idMatch[1])).padStart(3,'0'));list=q?[q]:[]}
  else{
   const tokens=queryTokens();
   list=data.questions.filter(q=>tokens.every(t=>searchIndex.get(q.id).includes(t)));
   const score=q=>tokens.reduce((s,t)=>s+(q.title.toLowerCase().includes(t)?30:0)+(q.topic.toLowerCase().includes(t)?10:0),0);
   list.sort((a,b)=>score(b)-score(a)||a.number-b.number);
  }
 }else if(route.view==='random'){list=progress.randomOrder.map(id=>byId.get(id));if(route.group)list=list.filter(q=>q.group_id===route.group);}
 else if(route.view==='bookmarks')list=data.questions.filter(q=>progress.bookmarks[q.id]);
 else if(route.view==='important')list=data.questions.filter(q=>progress.important[q.id]);
 else if(route.topic)list=topics.get(route.topic).ids.map(n=>byId.get('Q'+String(n).padStart(3,'0')));
 else if(route.group)list=groups.get(route.group).topics.flatMap(t=>t.ids).map(n=>byId.get('Q'+String(n).padStart(3,'0')));
 else list=[...data.questions];
 if(route.filter!=='all')list=list.filter(q=>route.filter==='important'?!!progress.important[q.id]:!progress.important[q.id]);
 return list;
}
function navigate(patch,{mobile='list',remember=false,replace=false}={}){
 clearTimeout(searchTimer);
 const previous=route.qid;
 route=validRoute({...route,...patch});
 if(previous!==route.qid)revealedFor='';
 mobileView=mobile;
 if(!replace){depth++;history.pushState({studyReader:data.documentKey,depth,searchOrigin},'',url())}
 render();
 if(remember&&route.qid){progress.lastRead=route.qid;renderResume()}
 progress.lastRoute={...route};save();
 if(mobile==='reader'&&matchMedia('(max-width:900px)').matches){$('reading-title')?.focus({preventScroll:true});$('reading-workspace').scrollIntoView({block:'start'})}
}
function startRandomRound(group='',filter='all'){
 const previousId=route.qid;progress.randomOrder=shuffleQuestions();
 const pool=progress.randomOrder.filter(id=>(!group||byId.get(id).group_id===group)&&(filter==='all'||(filter==='important'?!!progress.important[id]:!progress.important[id])));
 if(pool.length>1&&pool[0]===previousId){const index=progress.randomOrder.indexOf(previousId);progress.randomOrder.splice(index,1);progress.randomOrder.push(previousId)}
 progress.mode='quiz';revealedFor='';
 navigate({view:'random',group,topic:'',query:'',filter,qid:'',page:1},{mobile:'reader',remember:true});focusReading();
}
function nextRandomQuestion(){
 const list=getQuestions(),index=list.findIndex(q=>q.id===route.qid);if(!list.length)return;
 if(index>=list.length-1){startRandomRound(route.group,route.filter);notify('已开始新一轮随机练习。');return}
 progress.mode='quiz';revealedFor='';selected(list[index+1].id);
}
function focusReading(){$('reading-title')?.focus({preventScroll:true});if(!matchMedia('(max-width:900px)').matches)$('reading-pane').scrollIntoView({block:'start'})}
function selected(id){const index=getQuestions().findIndex(q=>q.id===id);navigate({qid:id,page:Math.floor(Math.max(index,0)/PAGE_SIZE)+1},{mobile:'reader',remember:true});focusReading()}
function goToQuestion(id){const q=byId.get(id);if(!q)return;navigate({view:'library',group:q.group_id,topic:q.topic_id,query:'',filter:'all',qid:id,page:1},{mobile:'reader',remember:true});focusReading()}
function markText(node,text){
 const tokens=queryTokens().filter(t=>!/^[q]?\d+$/.test(t));
 if(!tokens.length){node.textContent=text;return}
 const escaped=tokens.map(t=>t.replace(/[.*+?^${}()|[\]\\]/g,'\\$&')).sort((a,b)=>b.length-a.length);
 const regex=new RegExp(escaped.join('|'),'gi');let end=0;
 for(const m of text.matchAll(regex)){node.append(document.createTextNode(text.slice(end,m.index)),el('mark',m[0]));end=m.index+m[0].length}
 node.append(document.createTextNode(text.slice(end)));
}
function navItem(text,icon,count,active,handler){
 const b=button('',()=>{handler();$('mobile-menu').close()},'nav-item');
 const label=el('span',undefined,'nav-label');label.append(el('span',icon,'nav-icon'),el('span',text,'nav-label-text'));b.append(label,el('small',String(count)));b.title=text;b.setAttribute('aria-label',text+'，'+count+'题');
 if(active&&!route.query)b.setAttribute('aria-current','page');return b;
}
function renderNavigation(target){
 const root=$(target), primary=el('nav',undefined,'primary-nav');primary.setAttribute('aria-label','学习入口');
 const counts={important:Object.keys(progress.important).length,bookmarks:Object.keys(progress.bookmarks).length};
 for(const [view,name,icon,count] of [['random','随机出题','⤨',800],['library','全部题目','▤',800],['important','重点','◆',counts.important],['bookmarks','我的收藏','☆',counts.bookmarks]]){
  primary.append(navItem(name,icon,count,route.view===view&&(view!=='library'||!route.group),()=>{if(view==='random')startRandomRound();else navigate({view,group:'',topic:'',query:'',filter:'all',qid:'',page:1})}));
 }
 const label=el('p','按知识主线浏览','nav-section-label'), subjects=el('nav',undefined,'subject-nav');subjects.setAttribute('aria-label','知识分类');
 for(const group of data.groups){
  const active=route.view==='library'&&route.group===group.id;
  subjects.append(navItem(group.name,'',group.count,active,()=>navigate({view:'library',group:group.id,topic:'',query:'',filter:'all',qid:'',page:1})));
  if(active){const sub=el('div',undefined,'topic-nav');for(const topic of group.topics){const b=button(topic.name,()=>{navigate({view:'library',group:group.id,topic:topic.id,query:'',filter:'all',qid:'',page:1});$('mobile-menu').close()});if(topic.id===route.topic)b.setAttribute('aria-current','page');sub.append(b)}subjects.append(sub)}
 }
 root.replaceChildren(primary,label,subjects);
}
function renderResume(){
 const q=byId.get(progress.lastRead);$('resume').hidden=!q;
 if(q){$('resume').textContent='继续上次阅读 '+q.id;$('resume').onclick=()=>goToQuestion(q.id)}
}
function renderContext(list){
 $('context-controls').replaceChildren();
 $('search').value=route.query;$('search-clear').hidden=!route.query;$('status-filter').value=route.filter;
 const filterNote=route.filter==='all'?'':route.filter==='important'?' · 只看重点':' · 未标重点';
 let heading,context,crumb;
 if(route.query){heading='搜索结果';context='“'+route.query+'” · 搜索全部 800 题，标题匹配优先'+filterNote;crumb='全库搜索';}
 else if(route.view==='random'){
  heading='随机出题';context=(groups.get(route.group)?.name||'全部知识模块')+' · '+list.length+' 道候选题 · 同一轮抽题不重复'+filterNote;crumb='随机练习';
  const wrap=el('div',undefined,'random-controls'),label=el('label','出题范围');label.htmlFor='random-group';const select=el('select');select.id='random-group';
  const all=el('option','全部知识模块');all.value='';select.append(all);
  for(const group of data.groups){const option=el('option',group.name);option.value=group.id;select.append(option)}select.value=route.group;
  select.onchange=()=>startRandomRound(select.value,route.filter);
  const filter=el('select');filter.id='random-filter';filter.setAttribute('aria-label','随机出题的重点范围');
  for(const [value,name] of [['all','全部题目'],['important','只抽重点'],['new','未标重点']]){const option=el('option',name);option.value=value;filter.append(option)}filter.value=route.filter;filter.onchange=()=>startRandomRound(route.group,filter.value);
  const draw=button('换一题',nextRandomQuestion,'primary-button');draw.id='random-next';draw.disabled=!list.length;
  wrap.append(label,select,filter,draw);$('context-controls').append(wrap);
 }else if(route.view==='bookmarks'){heading='我的收藏';context='把希望继续研究的题目留在这里。'+filterNote;crumb='我的收藏';}
 else if(route.view==='important'){heading='重点知识点';context='集中查看你标为重点的题目，点击“取消重点”可移出。'+filterNote;crumb='重点';}
 else{
  const g=groups.get(route.group),t=topics.get(route.topic);heading=t?t.name:g?g.name:'全部题目';
  context=t?t.focus:'点击左侧分类缩小范围，选择题目即可在右侧阅读。';context+=filterNote;crumb=['分类题库',g?.name,t?.name].filter(Boolean).join(' / ');
  if(g){const select=el('select');select.id='topic-select';select.setAttribute('aria-label','选择当前主题');const all=el('option','全部主题');all.value='';select.append(all);for(const topic of g.topics){const option=el('option',topic.name+'（'+topic.ids.length+'）');option.value=topic.id;select.append(option)}select.value=route.topic;select.onchange=()=>navigate({topic:select.value,qid:'',page:1});$('context-controls').append(select)}
 }
 $('heading').textContent=heading;$('context').textContent=context;$('breadcrumb-text').textContent=crumb;$('result-count').textContent=list.length+' 道题';$('history-back').disabled=depth<=0;renderResume();
}
function renderList(list){
 const start=(route.page-1)*PAGE_SIZE, slice=list.slice(start,start+PAGE_SIZE);
 const nodes=slice.map(q=>{
  const b=button('',()=>selected(q.id),'question-item'+(progress.important[q.id]?' is-important':''));b.dataset.questionId=q.id;b.setAttribute('aria-current',String(q.id===route.qid));
  const head=el('span',undefined,'question-item-head');
  head.append(el('span',q.id,'question-id'));if(progress.bookmarks[q.id])head.append(el('span','★','star-indicator'));
  const title=el('span',undefined,'question-item-title');markText(title,q.title);
  const sub=el('span',undefined,'question-item-sub');sub.append(el('span',q.topic));
  sub.append(el('span',progress.important[q.id]?'◆ 重点':'未标重点','state-label'+(progress.important[q.id]?' important':' neutral')));
  b.append(head,title,sub);return b;
 });
 if(!nodes.length){const empty=el('div',undefined,'empty-state');empty.append(el('strong',route.query?'没有找到匹配题目':route.filter!=='all'?'当前筛选下没有题目':route.view==='bookmarks'?'还没有收藏':route.view==='important'?'还没有重点知识点':'这里暂时没有题目'),el('p',route.query?'试试更短的关键词，或输入 Q165 这样的题号。':route.view==='bookmarks'?'在阅读区点击“收藏”，便可在此找到。':route.view==='important'?'阅读时点击“标为重点”，题目会以暖黄色突出显示并加入这里。':'可以切换范围或清除筛选。'));if(route.query)empty.append(button('清空搜索',clearSearch,'primary-button'));else if(route.filter!=='all')empty.append(button('清除筛选',()=>navigate({filter:'all',qid:'',page:1}),'primary-button'));else empty.append(button('开始随机练习',()=>startRandomRound(),'primary-button'));nodes.push(empty)}
 $('question-list').replaceChildren(...nodes);
 const prev=button('‹',()=>navigate({page:route.page-1,qid:''}));prev.setAttribute('aria-label','上一页题目');prev.disabled=route.page<=1;
 const next=button('›',()=>navigate({page:route.page+1,qid:''}));next.setAttribute('aria-label','下一页题目');next.disabled=start+PAGE_SIZE>=list.length;
 $('pagination').replaceChildren(prev,el('span',list.length?(start+1)+'–'+Math.min(start+PAGE_SIZE,list.length)+' / '+list.length:'0 / 0'),next);
}
function renderReader(list){
 const root=$('reader-content'),q=byId.get(route.qid);root.replaceChildren();
 if(!q){const empty=el('div','选择一道题，开始阅读或自测。','empty-reader');empty.append(el('h2','阅读区'));root.append(empty);return}
 const unit=units.get(q.id), useUnit=unit&&route.view==='random'&&!route.query;
 const top=el('div',undefined,'reader-topline'),where=el('span',q.group+' / '+q.topic,'reader-location');
 const actions=el('div',undefined,'reader-actions'),source=link('PDF p'+q.page_start+(q.page_end!==q.page_start?'–'+q.page_end:''),data.sourceUrl+'#page='+q.page_start);source.className='source-link';source.target='_blank';source.rel='noopener';source.setAttribute('aria-label','打开原 PDF 第 '+q.page_start+' 页');
 const bookmark=button(progress.bookmarks[q.id]?'★ 已收藏':'☆ 收藏',()=>{if(progress.bookmarks[q.id])delete progress.bookmarks[q.id];else progress.bookmarks[q.id]=true;save();notify(progress.bookmarks[q.id]?'已加入收藏':'已取消收藏');render()},'bookmark-button');bookmark.id='bookmark-toggle';bookmark.setAttribute('aria-pressed',String(!!progress.bookmarks[q.id]));actions.append(source,bookmark);top.append(where,actions);
 const title=el('h2');title.id='reading-title';title.tabIndex=-1;markText(title,q.title);
 const meta=el('div',undefined,'reader-meta');meta.append(el('span',q.id,'question-id'),el('span',q.learning_priority,'priority-label'),el('span',route.view==='random'&&!route.query?'随机练习':'原文阅读'));if(q.version_review_recommended)meta.append(el('span','建议核验适用版本'));
 if(progress.important[q.id])meta.append(el('span','◆ 重点','importance-badge'));
 const mode=el('div',undefined,'reader-mode');mode.setAttribute('aria-label','学习方式');
 for(const [value,name] of [['read','阅读原文'],['quiz','先自测']]){const b=button(name,()=>{progress.mode=value;revealedFor='';save();renderReader(getQuestions())});b.setAttribute('aria-pressed',String(progress.mode===value));mode.append(b)}mode.append(el('small','先回忆，再对照要点'));
 root.append(top,title,meta,mode);
 const answer=el('div',undefined,'answer-area');answer.id='answer-area';answer.hidden=progress.mode==='quiz'&&revealedFor!==q.id;
 if(q.correction){const correction=el('div',undefined,'correction');correction.append(el('strong','已核验的版本校订'),el('p',q.correction.text),link('查看官方依据',q.correction.url));answer.append(correction)}
 const body=el('div',undefined,'answer-text');
 for(const text of q.answer_original.split(/\n\s*\n/)){const paragraph=el('p');markText(paragraph,text);body.append(paragraph)}
 answer.append(body,el('p','以上为 PDF 提取原文；代码、图形及排版以原文件为准。','source-caption'));
 if(progress.mode==='quiz'){
  const quiz=el('div',undefined,'quiz-box');quiz.append(el('p',useUnit?unit.check:'先用自己的话回答，再展开原文核对。'));
  const draft=el('textarea');draft.id='quiz-answer';draft.setAttribute('aria-label','我的自测回答');draft.placeholder='写下你记得的要点，也可以先口述。';draft.maxLength=20000;draft.value=progress.drafts[q.id]||'';draft.oninput=()=>{progress.drafts[q.id]=draft.value;queueSave()};
  const reveal=button(revealedFor===q.id?'收起参考原文':'查看参考原文',()=>{revealedFor=revealedFor===q.id?'':q.id;progress.lastRead=q.id;save();renderReader(getQuestions());renderResume()},'primary-button');reveal.id='reveal-answer';quiz.append(draft,reveal,el('p','回答自动保存。对照原文后自行标记，当前不进行 AI 自动评分。','quiz-tip'));root.append(quiz);
 }
 root.append(answer);
 if(useUnit){const check=el('div',undefined,'unit-check');check.append(el('strong','闭卷检查'),el('p',unit.check));root.append(check)}
 const relatedIds=[...new Set([...(useUnit?unit.extra_ids:[]),...q.related_question_ids])].filter(id=>id!==q.id&&byId.has(id));
 if(relatedIds.length){const related=el('div',undefined,'related-questions'), links=el('div',undefined,'related-links');related.append(el('h3',useUnit?'需要时补读':'相关题目'));for(const id of relatedIds){const b=button(id,()=>goToQuestion(id));b.setAttribute('aria-label',id+' '+byId.get(id).title);b.title=byId.get(id).title;links.append(b)}related.append(links);root.append(related)}
 const notes=el('details',undefined,'notes');notes.id='personal-notes';notes.open=!!progress.notes[q.id];const summary=el('summary',progress.notes[q.id]?'我的笔记 · 已保存':'添加我的笔记');const note=el('textarea',undefined,'note-input');note.id='note-input';note.setAttribute('aria-label','我的学习笔记');note.placeholder='记一个易错点、一处疑问或你自己的例子。';note.maxLength=20000;note.value=progress.notes[q.id]||'';note.oninput=()=>{progress.notes[q.id]=note.value;summary.textContent=note.value?'我的笔记 · 自动保存':'添加我的笔记';queueSave()};notes.append(summary,note,el('small','笔记保存在当前浏览器，可在“设置与资料”中导出。'));root.append(notes);
 const footer=el('div',undefined,'reader-footer'),rating=el('div',undefined,'self-rating');
 const important=button(progress.important[q.id]?'◆ 取消重点':'◇ 标为重点',()=>{const wasImportant=!!progress.important[q.id];if(wasImportant)delete progress.important[q.id];else progress.important[q.id]=true;progress.lastRead=q.id;save();notify(wasImportant?'已取消重点标记':'已标为重点，可在侧边栏“重点”查看');render();if(route.qid===q.id)$('mark-important')?.focus({preventScroll:true})},'important-toggle');important.id='mark-important';important.setAttribute('aria-pressed',String(!!progress.important[q.id]));rating.append(important);
 const index=list.findIndex(item=>item.id===q.id),nav=el('div',undefined,'question-navigation');
 const prev=button('上一题',()=>selected(list[index-1].id));prev.id='previous-question';prev.disabled=index<=0;
 const random=route.view==='random'&&!route.query;
 const next=button(random?(index===list.length-1?'再来一轮':'换一题'):'下一题',()=>random?nextRandomQuestion():selected(list[index+1].id));next.id='next-question';next.disabled=random?!list.length:index<0||index>=list.length-1;
 nav.append(prev,el('span',(index+1)+' / '+list.length),next);footer.append(rating,nav);root.append(footer);
}
function applyLayout(){
 const shell=document.querySelector('.app-shell');
 shell.classList.toggle('sidebar-collapsed',progress.sidebarCollapsed);
 shell.classList.toggle('random-mode',route.view==='random'&&!route.query);
 document.documentElement.style.setProperty('--sidebar-width',progress.sidebarWidth+'px');
 document.documentElement.style.setProperty('--question-pane-width',progress.questionPaneWidth+'px');
 const toggle=$('sidebar-toggle');toggle.textContent='☰';toggle.setAttribute('aria-expanded',String(!progress.sidebarCollapsed));toggle.setAttribute('aria-label',progress.sidebarCollapsed?'展开侧边栏':'收起侧边栏');toggle.title=progress.sidebarCollapsed?'展开侧边栏':'收起侧边栏';
 $('sidebar-resize').setAttribute('aria-valuenow',String(progress.sidebarWidth));$('question-resize').setAttribute('aria-valuenow',String(progress.questionPaneWidth));
}
function setupPaneResize(id,key,min,max,container){
 const handle=$(id);let drag=null;
 const maximum=()=>key==='questionPaneWidth'?Math.max(min,Math.min(max,Math.floor($('reading-workspace').getBoundingClientRect().width*.42))):max;
 const update=value=>{progress[key]=Math.round(Math.max(min,Math.min(maximum(),value)));applyLayout()};
 const finish=()=>{if(!drag)return;drag=null;document.body.classList.remove('resizing-pane');save()};
 handle.addEventListener('pointerdown',event=>{if(event.button!==0)return;event.preventDefault();drag={left:container.getBoundingClientRect().left};handle.setPointerCapture(event.pointerId);document.body.classList.add('resizing-pane')});
 handle.addEventListener('pointermove',event=>{if(drag)update(event.clientX-drag.left)});
 handle.addEventListener('pointerup',finish);handle.addEventListener('pointercancel',finish);handle.addEventListener('lostpointercapture',finish);
 handle.addEventListener('keydown',event=>{if(!['ArrowLeft','ArrowRight','Home'].includes(event.key))return;event.preventDefault();update(event.key==='Home'?(key==='sidebarWidth'?280:320):progress[key]+(event.key==='ArrowLeft'?-10:10));save()});
}
function render(){
 const list=getQuestions(),maxPage=Math.max(1,Math.ceil(list.length/PAGE_SIZE));route.page=Math.min(route.page,maxPage);
 const start=(route.page-1)*PAGE_SIZE;
 if(!list.some(q=>q.id===route.qid))route.qid=list[start]?.id||'';
 if(!route.qid)mobileView='list';
 if(route.view==='random'&&!route.query&&route.qid)mobileView='reader';
 const index=list.findIndex(q=>q.id===route.qid);
 if(index>=0)route.page=Math.floor(index/PAGE_SIZE)+1;
 document.documentElement.style.setProperty('--answer-size',progress.font+'px');$('font-size').value=progress.font;applyLayout();
 renderNavigation('desktop-nav');renderNavigation('mobile-nav');renderContext(list);renderList(list);renderReader(list);$('reading-workspace').classList.toggle('is-empty',!list.length);updateMobile();syncUrl();progress.lastRoute={...route};
 document.title=(route.qid?route.qid+' · ':'')+'Java + AI Agent 学习手册';
}
function updateMobile(){$('reading-workspace').dataset.mobile=mobileView;$('show-list').setAttribute('aria-pressed',String(mobileView==='list'));$('show-reader').setAttribute('aria-pressed',String(mobileView==='reader'));$('show-reader').disabled=!route.qid}
function clearSearch(){const origin=searchOrigin;searchOrigin=null;searchSession=false;navigate(origin?{...origin,query:''}:{query:'',filter:'all',qid:'',page:1});$('search').focus()}
let searchSession=false;
function applySearch(){if(!route.query&&!searchOrigin)searchOrigin={...route};const value=$('search').value;if(!value.trim()){clearSearch();return}navigate({query:value,filter:'all',qid:'',page:1},{replace:searchSession});searchSession=true}
$('search').addEventListener('input',()=>{clearTimeout(searchTimer);searchTimer=setTimeout(applySearch,180)});
$('search').addEventListener('focus',()=>searchSession=false);
$('search').addEventListener('keydown',event=>{if(event.key==='Enter'){clearTimeout(searchTimer);applySearch()}if(event.key==='Escape'){event.preventDefault();clearTimeout(searchTimer);clearSearch()}});
$('search-clear').onclick=clearSearch;
$('status-filter').onchange=()=>{if(route.view==='random'&&!route.query)startRandomRound(route.group,$('status-filter').value);else navigate({filter:$('status-filter').value,qid:'',page:1})};
$('history-back').onclick=()=>{clearTimeout(searchTimer);if(depth>0)history.back()};
$('show-list').onclick=()=>{mobileView='list';updateMobile();$('reading-workspace').scrollIntoView({block:'start'})};$('show-reader').onclick=()=>{mobileView='reader';updateMobile();$('reading-workspace').scrollIntoView({block:'start'})};
$('menu-open').onclick=()=>$('mobile-menu').showModal();$('menu-close').onclick=()=>$('mobile-menu').close();
$('mobile-menu').addEventListener('click',event=>{if(event.target===$('mobile-menu')){const rect=event.target.getBoundingClientRect();if(event.clientX<rect.left||event.clientX>rect.right||event.clientY<rect.top||event.clientY>rect.bottom)event.target.close()}});
$('font-size').onchange=()=>{progress.font=Number($('font-size').value);save();document.documentElement.style.setProperty('--answer-size',progress.font+'px')};
$('sidebar-toggle').onclick=()=>{progress.sidebarCollapsed=!progress.sidebarCollapsed;if(progress.sidebarCollapsed)mobileView=route.qid?'reader':'list';applyLayout();updateMobile();save()};
$('reset-layout').onclick=()=>{progress.sidebarCollapsed=false;progress.sidebarWidth=280;progress.questionPaneWidth=320;progress.font=18;progress.expandedGroups={};render();save();notify('已恢复默认模块大小和目录布局。')};
setupPaneResize('sidebar-resize','sidebarWidth',190,360,$('desktop-sidebar'));
setupPaneResize('question-resize','questionPaneWidth',240,440,document.querySelector('.question-pane'));
function exportProgress(){
 save();const payload={schemaVersion:2,documentKey:data.documentKey,exportedAt:new Date().toISOString(),progress};const blob=new Blob([JSON.stringify(payload,null,2)],{type:'application/json'});const a=link('',URL.createObjectURL(blob));a.download='学习记录-'+new Date().toLocaleDateString('sv-SE')+'.json';document.body.append(a);a.click();a.remove();setTimeout(()=>URL.revokeObjectURL(a.href),1000);$('settings').open=false;notify('学习记录已导出，包含重点、收藏、笔记和布局偏好。');
}
$('export-progress').onclick=exportProgress;$('backup-hint').onclick=exportProgress;
$('import-progress').onclick=()=>$('import-file').click();
$('import-file').onchange=async()=>{
 const file=$('import-file').files[0];if(!file)return;
 try{
  if(file.size>5*1024*1024)throw new Error('文件过大，请选择本阅读页导出的学习记录。');
  const payload=JSON.parse(await file.text());
  if(payload.schemaVersion!==2||payload.documentKey!==data.documentKey||!payload.progress||typeof payload.progress!=='object'||Array.isArray(payload.progress))throw new Error('这不是当前题库的学习记录，请检查导入文件。');
  const incoming=sanitizeProgress(payload.progress);
  for(const key of ['bookmarks','important','status','notes','drafts','expandedGroups'])progress[key]={...progress[key],...incoming[key]};
  if(incoming.lastRead)progress.lastRead=incoming.lastRead;
  progress.font=incoming.font;progress.mode=incoming.mode;
  progress.sidebarCollapsed=incoming.sidebarCollapsed;progress.sidebarWidth=incoming.sidebarWidth;progress.questionPaneWidth=incoming.questionPaneWidth;
  if(incoming.randomOrder.length===byId.size)progress.randomOrder=incoming.randomOrder;
  save();render();$('settings').open=false;notify('学习记录已合并，重点标记和布局偏好已恢复。');
 }catch(error){notify(error instanceof SyntaxError?'无法读取 JSON，请选择导出的学习记录文件。':error.message)}
 finally{$('import-file').value=''}
};
document.querySelector('.skip-link').onclick=event=>{event.preventDefault();$('reading-title')?.focus()};
document.addEventListener('keydown',event=>{if((event.ctrlKey||event.metaKey)&&event.key.toLowerCase()==='k'){event.preventDefault();$('search').focus();$('search').select()}});
document.addEventListener('click',event=>{if(!$('settings').contains(event.target))$('settings').open=false});
window.addEventListener('popstate',()=>{clearTimeout(searchTimer);depth=history.state?.studyReader===data.documentKey?history.state.depth||0:0;searchOrigin=history.state?.searchOrigin?validRoute(history.state.searchOrigin):null;route=fromHash()||{...defaultRoute};revealedFor='';mobileView='reader';render();save()});
window.addEventListener('pagehide',save);
const appHeader=document.querySelector('.app-header');
new ResizeObserver(()=>document.documentElement.style.setProperty('--header-height',appHeader.getBoundingClientRect().height+'px')).observe(appHeader);
render();save();
})();
