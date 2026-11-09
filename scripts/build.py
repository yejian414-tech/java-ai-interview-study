"""Rebuild docs/index.html using Python 3.9+ and the standard library."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
groups = json.loads((ROOT / 'data/taxonomy.json').read_text(encoding='utf-8'))['groups']
questions = json.loads((ROOT / 'data/questions.json').read_text(encoding='utf-8'))
units = json.loads((ROOT / 'data/learning-units.json').read_text(encoding='utf-8'))
known = {q['id'] for q in questions}
assert len(known) == len(questions) == 800
assert len(units) == len({u['id'] for u in units}) == 30
assert all(u['question_id'] in known and all(q in known for q in u['extra_ids']) for u in units)
assigned = []
for group in groups:
    for topic in group['topics']:
        topic['ids'] = []
        for term in topic['questions'].split(','):
            bounds = list(map(int, term.split('-')))
            topic['ids'].extend(range(bounds[0], bounds[-1] + 1))
        assigned.extend(topic['ids'])
    group['count'] = sum(len(t['ids']) for t in group['topics'])
assert sorted(assigned) == list(range(1, 801))
fields = ('id','number','title','group_id','group','topic_id','topic','learning_priority',
          'page_start','page_end','answer_original','version_review_recommended','related_question_ids','correction')
data = {'groups': groups, 'questions': [{k:q[k] for k in fields if k in q} for q in questions],
        'units': units, 'sourceUrl': 'assets/source.pdf', 'documentKey': 'java-ai-a46081802917-v2'}
output = (ROOT / 'src/reader-template.html').read_text(encoding='utf-8')
output = output.replace('__STUDY_DATA__', json.dumps(data, ensure_ascii=False).replace('<', '\\u003c'))
output = output.replace('__STUDY_STYLES__', (ROOT / 'src/reader.css').read_text(encoding='utf-8'))
output = output.replace('__STUDY_SCRIPT__', (ROOT / 'src/reader.js').read_text(encoding='utf-8'))
assert '__STUDY_' not in output and 'file:///' not in output
(ROOT / 'docs').mkdir(exist_ok=True)
(ROOT / 'docs/index.html').write_text(output, encoding='utf-8', newline='\n')
print('Built docs/index.html: 800 questions, 82 topics, 30 learning units.')
