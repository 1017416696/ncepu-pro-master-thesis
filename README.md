# 华北电力大学（北京）专业硕士学位论文 LaTeX 模板

![GitHub last commit](https://img.shields.io/github/last-commit/1017416696/ncepu-pro-master-thesis)
![GitHub repo size](https://img.shields.io/github/repo-size/1017416696/ncepu-pro-master-thesis)
![GitHub Repo stars](https://img.shields.io/github/stars/1017416696/ncepu-pro-master-thesis)

这是一个用于撰写华北电力大学（北京）专业硕士学位论文的 LaTeX 模板。该模板严格按照学校最新的 [《华北电力大学硕士学位论文书写规范》](https://yjsy.ncepu.edu.cn/docs//2024-10/fdf479087edb4f54b9ebac87703079f6.doc) 和 [《华北电力大学专业硕士学位论文书写范例》](https://yjsy.ncepu.edu.cn/docs//2024-10/0bbce4267441432f876dce3fb45cda99.doc) 进行设计。

本模板是基于 [中山学院毕业论文Latex模板](https://gitee.com/yeyunxiaopan/zsc-cs-latex-thesis#2024-%E8%B0%83%E6%95%B4) 进行修改和完善的，旨在为撰写华北电力大学专业硕士学位论文提供一个符合学校要求的 LaTeX 模板。

## 模板使用

[Overleaf](https://www.overleaf.com/latex/templates/ncepu-pro-masters-thesis-template-unofficial-2024-hua-bei-dian-li-da-xue-zhuan-shuo-lun-wen-fei-guan-fang-mo-ban-2024/nhwbgkkzqyjg) 在线编辑

目前本模板仅提供 Overleaf 在线模板，主要基于以下考虑：

1. **环境配置简单**
   - Overleaf 无需本地安装 LaTeX 发行版
   - 避免了不同操作系统下的环境配置问题
   - 无需手动安装字体和其他依赖包

2. **实时协作与版本控制**
   - 支持多人在线协作编辑
   - 自动保存和版本历史记录
   - 随时随地可以访问和编辑

3. **稳定性保证**
   - Overleaf 环境统一，避免本地环境差异导致的编译问题
   - 模板依赖包都已预装，确保编译顺利
   - 技术支持更便捷


## 模板结构

```
.
├── main.tex                # 主文件，控制论文整体结构
├── style/                  # 样式文件目录
│   ├── nceputhesis.cls    # 论文文档类定义
│   ├── zscthesis.cfg      # 模板配置文件
│   ├── zsccode.sty        # 代码样式
│   └── zscexample.sty     # 示例样式
├── tex/                    # 论文章节文件目录
│   ├── frontinfo.tex      # 封面信息
│   ├── title-ch.tex       # 中文扉页
│   ├── title-en.tex       # 英文扉页
│   ├── declaration.tex    # 原创性声明
│   ├── abstract-ch.tex    # 中文摘要
│   ├── abstract-en.tex    # 英文摘要
│   ├── content.tex        # 目录
│   ├── chap-1.tex         # 第1章
│   ├── ...                # 其他章节
│   ├── reference.tex      # 参考文献
│   ├── appendix.tex       # 攻读硕士学位期间发表的论文及其它成果
│   └── acknowledgement.tex # 致谢
├── bib/                    # 参考文献目录
│   └── ref.bib            # BibTeX文献数据库
├── img/                    # 图片目录
└── fonts/                  # 字体文件目录
```

## 论文撰写说明

1. **章节编写**：
   - 每个章节单独在 `tex` 目录下建立文件
   - 在 `main.tex` 中使用 `\input` 命令引入

2. **图片插入**：
   - 将图片放入 `img` 目录
   - 使用 `\includegraphics` 命令插入
   - 支持 PNG、JPG、PDF 等格式，推荐使用 PDF 格式

3. **参考文献**：
   - 在 `bib/ref.bib` 中管理参考文献
   - 使用 `\cite` 命令引用

4. **公式编号**：
   - 自动按照章节编号
   - 格式为"章号-公式号"

## 反馈问题

如果发现模版存在问题，

1. 请先查看 [已知问题](https://github.com/1017416696/ncepu-pro-master-thesis/issues) 以及 [常见问题](https://github.com/1017416696/ncepu-pro-master-thesis/wiki/FAQ) 是否已存在相同问题。
2. 如果未存在相同问题，请在 GitHub 上提交 Issue，并附上详细描述和截图。
3. 如果问题紧急，请发送邮件至 1017416696@qq.com


## 免责声明 

本模板使用者须知：

1. **使用风险**

- 本模板未经学校相关部门审核及授权，使用前请务必斟酌。
- 因使用本模板而引起的任何格式审查问题，模板作者不承担任何责任。
- 本模板只能生成 PDF 格式，如需其他格式，请自行转换。


2. **维护说明**
- 本模板为个人业余时间开发维护,不保证及时更新
- 作者会尽可能修复发现的问题,但不对修复时间做出承诺
- 欢迎提交Issue和Pull Request来改进模板

免责声明的最终解释权归模板作者所有。使用本模板即表示您已阅读并同意本免责声明的所有内容。