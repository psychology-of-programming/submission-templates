\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ppig}[2016/01/24 v2.0 LaTeX document class for PPIG16]

\LoadClass[11pt,a4paper]{article}

\RequirePackage{mathptmx}
\RequirePackage[scaled=.90]{helvet}
\RequirePackage{courier}
\RequirePackage[T1]{fontenc}
\RequirePackage{titlesec}
\RequirePackage{url}
\RequirePackage[numberedbib]{apacite}
\RequirePackage{caption}
\RequirePackage{fancyhdr}

% Page dimensions
\setlength{\paperwidth}{21cm}    % A4
\setlength{\paperheight}{29.7cm} % A4
\setlength{\textheight}{24.62cm} %A4 height - 2in (margins)
\setlength{\textwidth}{15.92cm}  %A4 width - 2in (margins)

% Set all other lengths defining the page to 0.
\setlength{\topmargin}{0cm}
\setlength{\oddsidemargin}{0cm}
\setlength{\headheight}{0cm}
\setlength{\headsep}{0cm}
\setlength{\hoffset}{0cm}
\setlength{\voffset}{0cm}

% Paragraphs are not indented, but have 6pt white space between them.
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}

% Lists only have 6pt white space between items.
\setlength{\topsep}{0pt}
\setlength{\partopsep}{0pt}
\setlength{\itemsep}{6pt}

% Fonts
\newcommand*\titlefont{\fontsize{12}{16}\bfseries\sffamily}
\newcommand*\abstractfont{\fontsize{11}{13}\bfseries\sffamily}
\newcommand*\authorfont{\fontsize{11}{13}\selectfont}
\newcommand*\authorname[1]{\textbf{#1}}
\newcommand*\footerfont{\fontsize{10}{12}\selectfont}

% Footer.
\fancypagestyle{ppigstyle}
{
    \renewcommand{\headrulewidth}{0pt} % no line in header area
    \fancyhf{}
    \lfoot{\footerfont PPIG, University of Cambridge, 2016}
    \cfoot{} % No page numbers.
    \rfoot{\footerfont www.ppig.org}
}

\thispagestyle{ppigstyle}
\pagestyle{ppigstyle}

\flushbottom \sloppy

% Sections
\titleformat*{\section}{\fontsize{11}{13}\bfseries\sffamily}
\titleformat*{\subsection}{\fontsize{11}{13}\sffamily}
\titleformat*{\subsubsection}{\fontsize{10}{12}\bfseries\sffamily}

%Section numbers have a period following them.
\titlelabel{\thetitle. }

% The numbers here are 6pt smaller than the ones in the Word version, as
% they account for the 6pt spacing between the paragraphs.
% This is caused by Latex considering sections as paragraphs as well,
% so the paragraph spacing defined above doesn't get replaced by the numbers
% here, but rather it's added to them.
%\titlespacing{\section}{0pt}{0pt plus 2pt minus 0pt}{-6pt plus 2pt minus 2pt}
%\titlespacing{\subsection}{0pt}{24pt plus 2pt minus 0pt}{-6pt plus 2pt minus 2pt}
%\titlespacing{\subsubsection}{0pt}{0pt plus 2pt minus 0pt}{-6pt plus 2pt minus 2pt}

\titlespacing{\section}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsection}{0pt}{0pt}{-\parskip}
\titlespacing{\subsubsection}{0pt}{0pt}{-\parskip}

% Title and authors -- from article.cls, only replaced the fonts for the title and authors.
\def\@maketitle{%
    \begin{center}%
        \let \footnote \thanks
        {\titlefont{\@title} \par}%
        \vskip 6pt%
        {\authorfont
            \begin{tabular}[t]{c}%
                \@author
            \end{tabular}\par}%
        {\large \@date}%
    \end{center}%
    \par
    \vskip 1.5em}

% Abstract
\renewenvironment{abstract}%
		 {{\abstractfont{Abstract}}%
          \vspace*{-14pt}
		  \begin{list}{}%
		     {\setlength{\rightmargin}{0cm}%
		      \setlength{\leftmargin}{0cm}}%
		   \item[]\ignorespaces}%
		 {\unskip\end{list}
		 \vspace*{-6pt}}

% Captions
\DeclareCaptionLabelSeparator{dash}{ -- }
\captionsetup{margin=10pt, font=it, labelsep=dash}