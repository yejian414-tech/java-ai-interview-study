# Java + AI Agent 学习手册

将 Java 与 AI Agent 面试资料整理成可在电脑、手机浏览器访问的学习网站。

支持 800 道题、82 个主题、首轮 30 个学习单元、全文搜索、相关题返回、阅读/自测切换、个人笔记、收藏、手动待复习清单，以及学习记录导入导出。

## 网站入口

GitHub Pages 发布目录为 `main` 分支的 `/docs`。

预计地址：<https://yejian414-tech.github.io/java-ai-interview-study/>。以 GitHub Pages 实际发布结果为准。

## 手机使用

用手机浏览器打开网站，可以添加到主屏幕。所有阅读功能直接在浏览器中运行，不需要 API Key。

收藏、笔记、自测回答和学习标记保存在当前浏览器，不会提交到仓库。电脑与手机间转移记录时，在“设置与资料”中导出 JSON，再到另一台设备导入。浏览器清理站点数据后，本地记录会消失，请按需备份。

## 本地预览与构建

需要 Python 3.9+，构建只使用标准库。

```sh
python scripts/build.py
python -m http.server 8765 --directory docs
```

打开 <http://localhost:8765/>。

## 更新内容

- `src/`：界面模板、样式与交互代码。
- `data/questions.json`：题目、原文回答、页码和关联。
- `data/taxonomy.json`：学习分类。
- `data/learning-units.json`：首轮学习路线。
- `docs/`：发布产物、导图和参考 PDF。

修改源文件后运行 `python scripts/build.py`，提交生成的 `docs/index.html` 并推送到 `main`；GitHub Pages 根据该目录自动发布。

## 资料与校订

题库依据《2026年java+AiAgent面试题汇总》整理。原始回答未逐条技术核验；已确认的校订独立显示，历史实现与框架 API 应结合技术版本学习。PDF 位于 `docs/assets/source.pdf`，网站中的页码链接支持在线打开。
