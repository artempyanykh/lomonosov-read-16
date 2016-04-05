%
%   This file provides LaTeX document style 'lra' --- lomonosov readings article
%
%   File version: 1.0
%   Last revision: 08/12/2014
%

%
%   General info
%

\NeedsTeXFormat{LaTeX2e}[1994/12/01]
\ProvidesClass{lra}
\LoadClass[openany, twoside, a5paper, 10pt]{extbook}
\RequirePackage[T2A]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[english, russian]{babel}
%% ---------------------------------------------------------------------------
\usepackage{indentfirst}
\frenchspacing
%% ---------------------------------------------------------------------------
\usepackage{url}
%% ---------------------------------------------------------------------------
\usepackage[dvips]{graphicx}
%% ---------------------------------------------------------------------------
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amscd}
\usepackage{bm}

%
%	Theorems
% 
\usepackage{amsthm}

\theoremstyle{plain}
\newtheorem{theorem}{Теорема}
\newtheorem{lemma}{Лемма}
\newtheorem{corollary}{Следствие}

\theoremstyle{plain}
\newtheorem{definition}{Определение}


% ---------------------------------------------------------------------------
%	a5paper: 148 x 210
%	print area: 110 x 180
%	top = bottom = (210 - 180) / 2 = 15
%	left = right = (148 - 110) / 2 = 19
\special{papersize=148mm,210mm}
\usepackage[%
    left=1.9cm,%
    top=1.5cm,%
    right=1.9cm,%
    bottom=1.5cm,%
    headsep=0.2cm,%
    footskip=0.5cm,%
    includehead,%
    includefoot]{geometry}
%% ---------------------------------------------------------------------------
\newcommand{\YEAR}{2016}
\newcommand{\Booktitle}{Тезисы конференции <<Ломоносовские чтения>> \YEAR{}}
%% ---------------------------------------------------------------------------
\usepackage{fancyhdr}
\lhead{}
\chead[Текущая кафедра]{\Booktitle}
\rhead{}
\lfoot{}
\cfoot{\thepage}
\rfoot{}
\pagestyle{fancy}
%% ---------------------------------------------------------------------------
\makeatletter
\newcommand\Title[2]{%
    \par
    \begin{centering}
        \medskip
        {
            \Large
            \textbf{\textsc{#1}} \\
        }
    \end{centering}
    \@afterheading
}
\makeatother
%
%	Author commands
%
\makeatletter
\newcommand\OneAuthor[3]{%
    \begin{centering}
    \par {\textit{\textbf{#1}}}\\
    \end{centering}
     {\small {#2}, e-mail: \texttt{#3}} \\
    \smallskip
    \@afterheading
}
\makeatother
%
%	Two 
%
\makeatletter
\newcommand\TwoAuthor[6]{%
    \begin{centering}
    \par { \textbf{\textit{#1}$^1$, \textit{#4}$^2$}}\\
    \end{centering}
     {\footnotesize$^1:$ {#2}, e-mail: \texttt{#3}} 

     {\footnotesize$^2:$ {#5}, e-mail: \texttt{#6}}\\ 
    \smallskip
    \@afterheading
}
\makeatother
%
%	Three
%
\makeatletter
\newcommand\ThreeAuthor[9]{%
    \begin{centering}
    \par {\textbf{\textit{#1}$^1$, \textit{#4}$^2$, \textit{#7}$^3$}}\\
    \end{centering}
     {\footnotesize$^1:$ {#2}, e-mail: \texttt{#3}} 

     {\footnotesize$^2:$ {#5}, e-mail: \texttt{#6}}

     {\footnotesize$^3:$ {#8}, e-mail: \texttt{#9}}\\ 
    \smallskip
    \@afterheading
}
\makeatother

%% ---------------------------------------------------------------------------
\makeatletter
\newcommand{\References}{
    \medskip
    \centerline{\textbf{\bibname}}
    \nopagebreak
    \medskip
    \@afterheading
}
\makeatother
%% ---------------------------------------------------------------------------
\makeatletter
\newcommand{\Gratitude}{
    \medskip
    \centerline{\textbf{Благодарности}}
    \nopagebreak
    \medskip
    \@afterheading
}
\makeatother

\newcommand{\ENGLISH}[1]{\selectlanguage{english}{#1}\selectlanguage{russian}}
\newcommand*{\HM}[1]{#1\nobreak\discretionary{}{\hbox{\(\mathsurround=0pt #1\)}}{}}

%% ---------------------------------------------------------------------------
\makeatletter
\newcommand{\Pictures}{
    \medskip
    \centerline{\textbf{Иллюстрации}}
    \nopagebreak
    \medskip
    \@afterheading
}
\makeatother
%% ---------------------------------------------------------------------------
\newcommand{\OnePic}[3]{
	\begin{figure}[ht]
	\centering
	\includegraphics[width = #1]{#2} 
	
	\text{ #3}
	\end{figure}
}

\newcommand{\TwoPic}[4]{
	\begin{figure}[ht]
	\centering
	\includegraphics[width = #1]{#2} 
	\includegraphics[width = #1]{#3} 
	
	\text{ #4}
	\end{figure}
}

\newcommand{\ThreePic}[5]{
	\begin{figure}[ht]
	\centering
	\includegraphics[width = #1]{#2} 
	\includegraphics[width = #1]{#3} 
	\includegraphics[width = #1]{#4} 
	
	\text{ #5}
	\end{figure}
}

\providecommand{\No}{\textnumero}

%
%
%
\renewcommand{\le}{\leqslant}
\renewcommand{\ge}{\geqslant}
\renewcommand{\leq}{\leqslant}
\renewcommand{\geq}{\geqslant}

\renewcommand{\epsilon}{\varepsilon}
%
%
%
\newenvironment{references}{\begin{enumerate}}{\end{enumerate}}
\newenvironment{abstract}{\setcounter{theorem}{0}\setcounter{definition}{0}\setcounter{lemma}{0}\setcounter{equation}{0}\chead[Текущая секция]{\Booktitle}\begin{document}}{\stop}
