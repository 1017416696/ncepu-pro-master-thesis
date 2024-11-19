%-------------------------------------------------
% FileName: zscthesis.cls
% Author: Safin (zhaoqid@zsc.edu.cn)
% Version: 0.1
% Date: 2020-05-12
% Description: 导言区
% Others: 如无需要，不用修改本文件
% History: origin 0.1
%------------------------------------------------- 

% latex 版本
\NeedsTeXFormat{LaTeX2e}

% 本文件提供的cls的名字，版本
\ProvidesClass{zscthesis}[2020/05/12 version 0.1]

% 在文档类加载之前禁用默认字体设置
\PassOptionsToPackage{fontset=none}{ctex}

% ctexbook 是 book 和 ctex 的结合，也即支持中文的书籍
\LoadClass[
oneside,   % 单面排版
a4paper,   % A4纸
titlepage, % 指定标题命令 \maketitle 生成单独的标题页
UTF8,      % UTF-8编码
linespread=1.25, % 行距1.25倍字号大小
zihao=-4,  % 默认字号为小4 
]{ctexbook}

% 设置英文字体
\setmainfont{Times New Roman}

% 清除可能的旧定义
\let\heiti\relax
\let\songti\relax

% 定义黑体（你已经成功的配置）
\newCJKfontfamily{\heiti}[AutoFakeBold = 3.0,Path = fonts/]{SIMHEI.TTF}

% 用相同方式定义宋体
\newCJKfontfamily{\songti}[AutoFakeBold = 3.0,Path = fonts/]{SIMSUN.TTC}

% 设置默认字体为宋体
\setCJKmainfont[Path = fonts/]{SIMSUN.TTC}

\AtEndOfPackage{% class cfg loaded after package to make preamble commands take effect
    \makeatletter
    \InputIfFileExists{style/zscthesis.cfg}{}{}
    \makeatother
}


% \RequirePackage{cleveref}% 载入自动引用宏包
% \crefname{figure}{图}{图}
% \crefname{table}{表}{表}
% \crefname{equation}{式}{式}
% \renewcommand{\eqref}[1]{\labelcref{#1}~\namecref{#1}}



% debug ---------------------------------------
% 仅编译，不生成PDF，用于debug
% \usepackage{syntonly}
% \syntaxonly

% 页面 ---------------------------------------
% 设置页面边距 (封面单独设置)
% \RequirePackage[top=2.5cm,bottom=2.5cm,left=2.5cm,right=2.5cm]{geometry}
% 上下2.5, 左右2，装订线0.5左，所以left=2.5
\RequirePackage[top=3cm,bottom=2.7cm,left=3cm,right=3.54cm,bindingoffset=0cm]{geometry}
% A4尺寸
% \RequirePackage[left=1.25in,right=1.25in, top=1in,bottom=1in]{geometry}

% 字号字体 ---------------------------------------
% 字号 \zihao{num}
% 0   初号  \zihao{0}
% −0  小初
% 1   一号
% −1  小一
% 2   二号
% −2  小二
% 3   三号
% −3  小三
% 4   四号
% −4  小四
% 5   五号
% -5  小五  \zihao{-5}

% 设置字体  会影响到所有的内容
% texdoc xeCJK
% SimSun KaiTi 通过查找系统字得到  
% overleaf编译不通过
% AutoFakeBold 当没有声明对应的粗体时，是否使用伪粗体
% \setCJKmainfont[AutoFakeBold=true]{SimSun}  % overleaf 下错误
% \setCJKmainfont[AutoFakeBold=true]{fonts/simsun.ttc}

\RequirePackage{fontspec}

\setmainfont{Times New Roman}


% 使用预装字体
\let\heiti\relax
\newCJKfontfamily{\heiti}[AutoFakeBold = 3.0,Path = fonts/]{SIMHEI.TTF}



 

 
% /c/windows/Fonts/simsun.ttc
% \setCJKmainfont{simsun.ttc} %宋体
% \setCJKsansfont{msyh.ttf} %微软雅黑
% \setCJKmonofont{FZYTK.ttf} %方正姚体

% 通过查找获得win10系统字体 
% fc-list -f "%{family}\n" :lang=zh > zhfont.txt 
% 参考 xeCJK `texdoc xeCJK`
% Arial Unicode MS
% FangSong,仿宋
% KaiTi,楷体
% Microsoft YaHei,微软雅黑
% MingLiU,細明體
% NSimSun,新宋体
% PMingLiU,新細明體
% SimHei,黑体
% SimSun,宋体




% 新的字体族 
% 宋体已经定义过了， 用法 \songti{xxxx}
% \newCJKfontfamily[song]\songti{SimSun}
% 黑体已经定义过了， 用法 \heiti{xxxx}
% \newCJKfontfamily[hei]\heiti{SimHei}

% 楷体 用法 \kaiti{xxxx}
% \newCJKfontfamily[kai]\kaiti{KaiTi}
% 仿宋体 用法 \fangsongti{xxxx}
% \newCJKfontfamily[fangsong]\fangsongti{FangSong}

% ctex 已经定义的字体
% 除了在 ubuntu 字库中没有
% \fangsong 的定义外，所有字库都有以下四个字体命令。
% \songti 宋体，CJK 等价命令 \CJKfamily{zhsong}。
% \heiti 黑体，CJK 等价命令 \CJKfamily{zhhei}。
% \fangsong 仿宋，CJK 等价命令 \CJKfamily{zhfs}。
% \kaishu 楷书，CJK 等价命令 \CJKfamily






% 章节格式---------------------------------------
% 设置章的标题格式 第X章
% \ctexset {
%     section = {
%         name = {第,章}, 
%         number = \arabic{section},
%     }
% }

\ctexset {
    chapter = {
        % 3号，黑体，居中
        format = \heiti\zihao{-2}\centering,
        % 设置章节的名字
        name = {第,章}, 
        % 阿拉伯数字序号
        number = \arabic{chapter},
        % 将间距从默认的1em改为0.5em
        aftername = \hspace{0.5em},
        % 图目录, 章之间的图标题的距离
        lofskip = {0pt},
        % 表目录, 章之间的表标题的距离
        lotskip = {0pt},
        % 设置章节标题前的垂直间距
        beforeskip = {6pt},
        % 控制章节标题与后面下方之间的距离
        afterskip = {18pt},
        % 上述两个skip才能生效
        fixskip=true,
    },
    section = {
        % 二级标题：黑体小3号，段前后0.5行，1.25倍行距，两端对齐(居左)
        format = \heiti\zihao{-3}\raggedright,
        aftername = \hspace{0.5em},  
    },
    subsection = {
        % 三级标题：黑体4号，段前后0.5行，1.25倍行距，两端对齐
        format = \heiti\zihao{4}\raggedright, 
        aftername = \hspace{0.5em},  
    },
    subsubsection = {
        % 四级标题：黑体小4号，段前后0行，1.25倍行距，两端对齐
        format = \heiti\zihao{-4}\raggedright,  
        aftername = \hspace{0.5em}, 
    },
}


% 章节编号的深度
% book文档类里默认为2, subsection编号，而subsubsection不编号
% 设置为3, 则subsubsection编号
% depth for the table of contents

% 章节编号的深度
\setcounter{secnumdepth}{3} 
% 目录的深度, 只显示到 subsubsection (三级标题)
\setcounter{tocdepth}{2}



% 这个导引点加了以后，目录，图目录，表目录就不居中
% 目录相关------
% 确保章与页码之间也有引导点


% \usepackage{subfigure}
% \usepackage[subfigure]{tocloft}
% \renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}

%---------------------------------------------------------------------------%
%->> Configure table of contents
%---------------------------------------------------------------------------%
%- the table of contents is specified by defining \l@chapter, \l@section, ...
%- most commands are then defined with the \@dottedtocline:
%- \@dottedtocline{⟨level⟩}{⟨indent⟩}{⟨numwidth⟩}{⟨title⟩}{⟨page⟩}
%- ⟨level⟩    an entry is produced only if ⟨level⟩ <= value of the tocdepth counter
%-            note, \chapter is level 0, \section is level 1, etc
%- ⟨indent⟩   indentation from the outer left margin of the start of the contents line
%- ⟨numwidth⟩ width of a box in which the section number is to go
%- <title>    title
%- <page>     page number

%- parameters for spacing and length in toc

% 在227行之前添加
% 设置目录标题格式
% 在227行之前添加
% 先定义目录中各级标题使用的字体和字号命令
\newcommand{\chaptocfont}{\heiti\zihao{-4}}
\newcommand{\sectiontocfont}{\songti\zihao{-4}}



% 设置目录标题格式和生成目录的命令
\renewcommand\contentsname{\heiti\zihao{-2} 目\hspace{1em}录}

\renewcommand\tableofcontents{%
    \begingroup
    % 设置行距为1.25倍
    \linespread{1.25}\selectfont
    % 段前1行
    \vspace*{1\baselineskip}
    % 居中显示目录标题
    \centerline{\contentsname}
    % 段后0.5行
    \vspace*{0.5\baselineskip}
    % 生成目录内容
    \@starttoc{toc}%
    \endgroup
}


% \def\@dotsep{1.5mu}% separation between dots in mu units
% %目录导引点过于稀疏， 
\def\@dotsep{0.2mu}
\def\@pnumwidth{1em}          % 页码框宽度，至少要2em才能容纳多位数页码
\def\@tocrmarg{2.2em}         % 右边距要比页码框宽度略大
\def\@chaptervspace{1ex}% vertical space between chapter titles

%- redefine dottedtocline from classes.dtx and latex.ltx
\renewcommand*{\@dottedtocline}[5]{%
    \ifnum #1>\c@tocdepth \else
        \vskip \z@ \@plus.2\p@
        {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
        \parindent #2\relax\@afterindenttrue
        \interlinepenalty\@M
        \leavevmode \zihao{-4}
        \@tempdima #3\relax
        \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
        {#4}\nobreak
        % 修改引导点的垂直位置(导引点从字体的最底端开始引导)
        \leaders\vbox to 0ex{\vss\hbox{$\m@th\mkern \@dotsep \cdot\mkern \@dotsep$}\vss}\hfill
        \nobreak
        \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
        \par\penalty\@highpenalty}%
    \fi
}
%- redefine l@part from book.cls to add dotted toc line
\renewcommand*{\l@part}[2]{% [<title>,<page>]
    \ifnum \c@tocdepth >-2\relax
        \addpenalty{-\@highpenalty}%
        \addvspace{2.25em \@plus\p@}%
        \setlength\@tempdima{3em}%
        \begingroup
            \parindent \z@ \rightskip \@pnumwidth
            \parfillskip -\@pnumwidth
            {\leavevmode
            \zihao{-4} #1
            \leaders\hbox{$\m@th\mkern \@dotsep \cdot\mkern \@dotsep$}% add dotted toc line
            \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
            \nobreak
            \global\@nobreaktrue
            \everypar{\global\@nobreakfalse\everypar{}}%
        \endgroup
    \fi
}
%- redefine l@chapter from book.cls to add dotted toc line
\renewcommand*{\l@chapter}[2]{%
    \ifnum \c@tocdepth >\m@ne
        \addpenalty{-\@highpenalty}%
        \vskip \@chaptervspace \@plus\p@
        \setlength\@tempdima{1.5em}%
        \begingroup
            \parindent \z@ \rightskip \@pnumwidth
            \parfillskip -\@pnumwidth
            \leavevmode \heiti\zihao{-4}
            \advance\leftskip\@tempdima
            \hskip -\leftskip
            #1\nobreak
            % 修改引导点的垂直位置
            \leaders\vbox to 0ex{\vss\hbox{$\m@th\mkern \@dotsep \cdot\mkern \@dotsep$}\vss}\hfill
            \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
            \penalty\@highpenalty
        \endgroup
    \fi
}
%- redefine indentation for others
\renewcommand*\l@section{\@dottedtocline{1}{0.8em}{1.8em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{1.7em}{2.8em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{3em}{3.8em}}
\renewcommand*\l@paragraph{\@dottedtocline{4}{4em}{4.8em}}
\renewcommand*\l@subparagraph{\@dottedtocline{5}{5em}{5.8em}}
% \renewcommand*\l@figure{\@dottedtocline{1}{1em}{1.8em}}
% \renewcommand*\l@table{\@dottedtocline{1}{1em}{1.8em}} 



% 浮动体相关---------------------------------------
% textfraction页面中必须用来排放文本的最小比例。缺省值为 0.2， 即一页中浮动对象所占的比例不得超过 80%。
\renewcommand{\textfraction}{0.15} 
% topfraction页面顶部可以用来放置浮动对象的高度与整个页面高度的最 大比例。缺省值为 0.7，即放置在页顶部的浮动对象所占 的高度不得超过整个页面高度 70%。同样地，如果多个 使用了选项 t 的浮动对象的高度和超过了 整个页面高度的 60%，即使它们的数目没有超过  topnumber 的值，仍将一个也不会被放置 在页面顶部。
\renewcommand{\topfraction}{0.85} 
% bottomfraction页面底部以用来放置浮动对象的高度与整个页面高度的最 大比例。缺省值为 0.3，这使得如果浮动对象的高度 不超过整个页面高度的 40%，可以允许放置在页面底部。
\renewcommand{\bottomfraction}{0.65} 
% 浮动页中必须由浮动对象占用的最小比例。因此 在一浮动页中空白所占的比例不会超过 1 - \floatpagefraction。缺省值为 0.5。
\renewcommand{\floatpagefraction}{0.60}


% 图，表，公式 ---------------------------------------
% 用于加载图片 includegraphics
\RequirePackage{graphicx}

% 设置图片路径，加载图片可以忽略img前缀
\graphicspath{{img/}}

% 绘图
% \RequirePackage{tikz}
% \usetikzlibrary{3d}
% \usetikzlibrary{graphs}
% \usegdlibrary{trees}



% 抑制图片表格等的浮动 
% \begin{figure}[H] [H]表示把图片放于当前位置
\RequirePackage{float}
% 禁止浮动体跨节
\RequirePackage[section]{placeins}

% 表格宏包
\RequirePackage{booktabs,tabularx,multirow,longtable,makecell}
\RequirePackage{array}


% 重新定义图目录的标题
\renewcommand\listfigurename{图目录}
% 重新定义表目录的标题
\renewcommand\listtablename{表目录}


% 重新定义图的标题前缀
% \renewcommand\figurename{}
% \renewcommand\thefigure{图\arabic{chapter}-\arabic{figure}}

% 重新定义图的标题序号格式 (章号-图号)
% {section}是章的计数器
% {figure}是图的计数器
% 图的标题由 \caption 命令生成
\renewcommand\thefigure{\arabic{chapter}-\arabic{figure}}

% \renewcommand\tablename{}
\renewcommand\thetable{\arabic{chapter}-\arabic{table}}

% \caption 命令位于图表下方时，与上方图表的间距
% \setlength{\abovecaptionskip}{10pt}
% \caption 命令位于图表上方时，与下方图表的间距
% \setlength{\belowcaptionskip}{10pt}

% 设置公式编号样式
\makeatletter
\@addtoreset{equation}{chapter}
\makeatother
\renewcommand\theequation{\arabic{chapter}-\arabic{equation}}

% 设置图，表的 caption的属性
\RequirePackage{caption}

% 设置浮动体标题悬挂缩进
\captionsetup{format=hang}
% 定义宋体字体
\DeclareCaptionFont{songti}{\songti}
% 定义五号字体
\DeclareCaptionFont{zihao5}{\zihao{5}} 
% 设置标题和正文字体为宋体，五号
\captionsetup{font={songti, zihao5}, textfont={songti, zihao5}}
% 设置编号和标题之间的符号为空格，默认是冒号colon
\captionsetup{labelsep=space}


% 宋体，5号
% 原始的word模板中图表标题的字号只有小五，似乎太小了点
% 把它改成5号
\DeclareCaptionFont{songti}{\songti}
% \DeclareCaptionFont{zihao5}{\zihao{5}} 
% \captionsetup{font={songti, zihao5}, textfont={songti, zihao5}} 
\DeclareCaptionFont{zihaoxiao5}{\zihao{5}} 
\captionsetup{font={songti, zihaoxiao5}, textfont={songti, zihaoxiao5}}


% 添加以下设置来分别控制表格的间距
\captionsetup[table]{
    skip=4pt,    % 控制标题和表格之间的距离
    position=top  % 确保标题在上方
}

% 以下是图片和表格分开来设置
% \captionsetup[figure]{labelsep=space}
% \captionsetup[table]{labelsep=space}


% 以下改变\caption
% \newcommand{\mycaption}[1]{\caption{\zihao{6}\kaishu{#1}}}

% 列表相关 ---------------------------------------
\RequirePackage{enumitem}
% 每一个item第一行缩进
% \parindent 是首行缩进
\setlist[enumerate]{wide=\parindent}
\setlist[itemize]{wide=\parindent} 
% 列表项之间无多余间距，列表和正文之间无多余间距
\setlist{nosep}


\RequirePackage{array}


% 下划线 颜色 相关 ---------------------------------------
% ulem宏包
% 可断行下划线命令\uline
\RequirePackage{ulem}

% 颜色宏包
\RequirePackage{color,xcolor}

% 参考文献相关 ---------------------------------------
% 载入参考文献宏包，设置引用格式
% natbib宏包配合gbt7714-numerical.bst使用
% number是参考文献显示数字标号
% sort&compress 是排序，以及[2-7]这种形式
% \RequirePackage[numbers, sort&compress]{natbib}

% gbt7714 格式 包含natbib，二者只要一个
% 这个宏包有两种用法，1是宏包，2是bst
% 没有直接使用这个宏包，而是直接使用gbt7714-numerical.bst，是为了定制“出版地不详“，参考 texdoc gbt7714
% \RequirePackage[sort&compress]{gbt7714}

\RequirePackage[numbers,sort&compress]{natbib}
\citestyle{super}
% 设置多引用分隔符为逗号
\setcitestyle{comma,super}
% 上角标
% % \citestyle{numbers}


% 参考文献页的行距
\setlength{\bibsep}{0.5ex}
% 参考文献条目字体大小  texdoc natbib 
\renewcommand{\bibfont}{\zihao{-4}}

% 源代码相关 ---------------------------------------
\RequirePackage{style/zsccode}

% 数学公式相关 ---------------------------------------
\RequirePackage{amsmath}
\RequirePackage{amsfonts} 
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{newtxmath}
\RequirePackage{esint}

% 页眉页脚相关 ---------------------------------------
% texdoc fancyhdr
% 页眉页脚设置
\RequirePackage{fancyhdr}

% 定义页眉页脚样式
\newcommand{\myfancy}{
    % 清空所有页眉页脚
    \fancyhf{}
    % 页眉居中显示（宋体小5号）
    \fancyhead[C]{\songti\zihao{-5}{华北电力大学硕士学位论文}\vspace{2pt}}
    % 页码位置（页脚居中）
    \fancyfoot[C]{\zihao{-5}{\thepage}}
    % 取消原有页眉线
    \renewcommand{\headrulewidth}{0pt}
    % 页脚无线
    \renewcommand{\footrulewidth}{0pt}
    % 自定义页眉双线
    \renewcommand{\headrule}{%
        \hrule height 2.0pt width \headwidth \vskip 0.8pt %上面的线
        \hrule height 0.8pt width \headwidth %下面的线
    }
    % 设置页眉单倍行距
    \setlength{\headheight}{12pt}
}

% 应用页眉页脚样式
\fancypagestyle{myfancy}{
    \myfancy
}

% 使用自定义样式
\pagestyle{myfancy}

% 对于章节首页也使用相同样式
\fancypagestyle{plain}{
    \myfancy
}


% 封面相关 -------------------------------------------

% \newcommand{\ulunify}[1]{\uline{#1}}% unified name
% \newcommand{\ulenhance}[2][1pt]{% enhanced underline
%     \def\ULthickness{#1}% set thickness
%     \setlength{\ULdepth}{0.3em}% set depth
%     \expandafter\ulunify\expandafter{#2}% linebreak fix
% }
% \newcommand{\ulhshift}{-4em}% horizontal shift on underline
% \newcommand{\ulextend}[2][350pt]{% extend underline length
%     \hbox to #1{\hfill\hspace*{\ulhshift}#2\hfill}}

% \RequirePackage{ifxetex}% LaTeX engine detection
% \RequirePackage{etoolbox}% a toolbox of programming facilities
% \newcommand{\zscifstreq}{\expandafter\ifstrequal\expandafter}% expansion control
% \newcommand{\zscifstrbk}{\expandafter\ifblank\expandafter}% expansion control
\RequirePackage{expl3}% LaTeX3 programming environment
\ExplSyntaxOn
\newcommand{\zsclntotab}[2][1pt]{% convert lines into table lines
    \seq_set_split:NnV \l_tmpa_seq {\\} {#2}
    \clist_set_from_seq:NN \l_tmpa_clist \l_tmpa_seq
    \clist_clear:N \l_tmpb_clist
    \clist_map_inline:Nn \l_tmpa_clist
        {%
        \clist_put_right:Nn \l_tmpb_clist 
            { {##1} }
        }
    %\clist_show:N\l_tmpb_clist% show the content of comma list
    \clist_use:Nn \l_tmpb_clist { \\ & }
}
\ExplSyntaxOff

\RequirePackage{changepage}


% 论文题目
\def\deftitle{} % cls 内部使用
\newcommand{\mytitle}[1]{\def\deftitle{#1}} % tex 用户填写
% 英文题目
\def\defTITLE{}
\newcommand{\MYTITLE}[1]{\def\defTITLE{#1}}
% 教学单位 指导单位
\def\definstitute{}
\newcommand{\institute}[1]{\def\definstitute{#1}}
% 学生专业
\def\defmajor{}
\newcommand{\major}[1]{\def\defmajor{#1}}
% 学生学号
\def\defstudentid{}
\newcommand{\studentid}[1]{\def\defstudentid{#1}}
% 学生姓名
\def\defstudent{}
\newcommand{\student}[1]{\def\defstudent{#1}}
% 指导老师和职称
\def\defadvisor{}
\newcommand{\advisor}[1]{\def\defadvisor{#1}}
% 企业导师
\def\defcoadvisor{}
\newcommand{\coadvisor}[1]{\def\defcoadvisor{#1}}
% 完成日期
\def\defcompletedate{}
\newcommand{\completedate}[1]{\def\defcompletedate{#1}}


% 位置 左对齐的缩进
% \newcommand{\leftspace}{\hspace{4em}}


% 生成封面，空行用于换行
\newcommand{\mymaketitle}{  
    % 封面单独设置页边距
    % \newgeometry{top=2.54cm,bottom=2.54cm,left=3.17cm,right=3.17cm} 
    
    % 整体居中
    \begin{center}
        % width=0.6\textwidth 表示图片宽度为文本宽度的60%,可以根据实际效调整比例
        \includegraphics[width=0.665\textwidth]{logo/ncepu.png}
        
        \vspace{2cm}
        
        % 专业硕士学位论文 宋体小1号加粗
        {\songti \zihao{-1} \bfseries 专业硕士学位论文}
        
        \vspace{2cm}
        
        % 中文标题 黑体2号，设置行距为1倍
        {\heiti \zihao{2} \deftitle}
        
        \vspace{1cm}
        
        % 英文标题 Times New Roman  小2加粗
        {\fontspec{Times New Roman}\zihao{-2}\bfseries \defTITLE}
        
        % \vspace{8cm}
        \vspace*{\fill}  % 弹性空间
        
        % 作者姓名 宋体小2号加粗
        {\songti \zihao{-2} \bfseries \defstudent}
        
        \vspace{3cm}
        
        % 日期 宋体小2号加粗
        {\songti \zihao{-2} \bfseries \defcompletedate}
    \end{center}
    
    % 恢复页边距
    \restoregeometry
}


% 原创性声明
\newcommand{\makedeclaration}{%
    {
        % 行距2
        \linespread{1.8}

        % 字号小四
        \zihao{4}
        
        \heiti

        % 垂直空间
        % \vspace*{\stretch{2}} 

        % 原创
        \begin{center}
            {\zihao{3}  \deflabeldeclarecreativity}
        \end{center}

        % 行距2 
        % \par换行，是的行距生效
        % {\linespread{2} \selectfont \defvaluedeclarecreativity \par}
        {\defvaluedeclarecreativity}

        %\vspace*{\stretch{1}} 

        % { {\deflabeldeclareauthor \rule[-.4pt]{8em}{.4pt} \hspace*{2em} \deflabeldeclaredate  }}
        { {\deflabeldeclareauthor \begin{minipage}{8em} \includegraphics[height=1.5\baselineskip]{sign/author} \end{minipage} \hspace*{4em} \deflabeldeclaredate \defcompletedate \hspace*{2em}}}

        %{\hfill{} {\deflabeldeclaredate \hspace*{14em}}}

        \vspace*{\stretch{3}} 

        % 授权
        \begin{center}
            {\zihao{3}  \deflabeldeclarerights}
        \end{center}

       
        % {\linespread{2} \selectfont \defvaluedeclarerights \par}
        {\defvaluedeclarerights}

        
        % {\linespread{2} \selectfont \defvaluedeclarerule \par}
        {\defvaluedeclarerule}

        {\deflabeldeclarelevel}

        {\deflabeldeclaremajor}{\defmajor}

        {\deflabeldeclaretitle}{\deftitle}

        %\vspace*{\stretch{1}} 

        % { {\deflabeldeclareauthor \rule[-.4pt]{8em}{.4pt} \hspace*{2em} \deflabeldeclareadvisor \rule[-.4pt]{8em}{.4pt} }}
        {{ \deflabeldeclareauthor  \begin{minipage}{8em} \includegraphics[height=1.5\baselineskip]{sign/author} \end{minipage} \hspace*{2em} \deflabeldeclareadvisor  \begin{minipage}{8em} \includegraphics[height=1.5\baselineskip]{sign/advisor} \end{minipage}  }}

        % {\hfill{} { \hspace*{4em} \deflabeldeclaredate \hspace*{2em}}}
        % {\hfill{} { \hspace*{4em} \deflabeldeclaredate \defcompletedate \hspace*{2em}}}
        {\hfill{} { \hspace*{4em} \deflabeldeclaredate \defcompletedate \hspace*{3.1em}}}

        \vspace*{\stretch{2}} 
    }
}

% 摘要相关---------------------------------- 

% 定义目录中摘要的格式
\newcommand{\abstracttocfont}{\heiti\zihao{-4}}  % 中文摘要用黑体小4
\newcommand{\abstracttocENfont}{\fontspec{Times New Roman}\bfseries\zihao{-4}}  % 英文摘要用Times New Roman小4
% 中文摘要
\newcommand{\abstract}[1]{%
    \addcontentsline{toc}{chapter}{\abstracttocfont 摘要}  % 添加中文摘要到目录
    % 段前1行
    \vspace*{1\baselineskip}
    % 摘要
    \begin{center}
        {\heiti\zihao{-2} 摘\hspace{2em}要}
    \end{center}
    % 段后0.5行
    \vspace*{0.5\baselineskip}
    % 1.25倍行距
    {\linespread{1.25}\selectfont
    % 摘要实际内容
    #1
    \par}
}

% 英文摘要
\newcommand{\ABSTRACT}[1]{%
    \addcontentsline{toc}{chapter}{\abstracttocENfont Abstract}  % 添加英文摘要到目录
    % 段前1行
    \vspace*{1\baselineskip}
    % Abstract
    \begin{center}
        {\fontspec{Times New Roman}\zihao{-2}\bfseries \defABSTRACTNAME}
    \end{center}
    % 段后0.5行
    \vspace*{0.5\baselineskip}
    % 1.25倍行距
    {\linespread{1.25}\selectfont
    % 摘要实际内容
    #1
    \par}
}

% 中文关键词
\newcommand{\keywords}[1]{%
    %\vspace{\baselineskip}
    \vspace{1ex}
    \noindent { \bfseries {\defkeywords} } #1}
% 英文关键词
\newcommand{\KEYWORDS}[1]{%
    %\vspace{\baselineskip}
    \vspace{1ex}
    \noindent {\bfseries {\defKEYWORDS}} #1}


% 致谢相关
\newcommand{\acknowledgement}[1]{
    % 设置行距1.5
    {\linespread{1.5} \selectfont
    
    % 致谢实际内容
    #1 
    
    \par} %\par 强制换行，使得行距生效
    }
    

% 例子相关 ---------------------------------------------
\RequirePackage{style/zscexample}



% 超链接相关 -------------------------------------------
% 为减少可能的冲突，习惯上将 hyperref 宏包放在其它宏包之后调用
% 对于章节命令 \chapter、 \section等，默认情况下会为 PDF 自动生成书签
% bookmarks=⟨true|false⟩ 默认生成书签
% hidelinks=true 取消链接的颜色和边框
% bookmarksnumbered=true 书签带章节号
\usepackage[hidelinks,bookmarksnumbered=true]{hyperref}

\usepackage{graphicx}

\usepackage{siunitx}

\usepackage{wasysym}


\usepackage{subcaption}
\captionsetup[subfigure]{labelformat=simple, labelsep=space, skip=0.2ex, margin=0pt}
\renewcommand\thesubfigure{\alph{subfigure})}


