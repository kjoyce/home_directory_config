% Class for formatting Maine School of Science and Mathematics Letter
% Kevin Joyce 2011
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mssm_letter}
\LoadClassWithOptions{letter}
\RequirePackage{  
  graphicx,
  color,
  transparent,
  enumerate,
  ifthen,
  rotating,
  url,
  mdwlist,
  fancyhdr
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}

\oddsidemargin=.5in
\evensidemargin=.2in
\textwidth=5.9in
\topmargin=-.5in
\textheight=9in
\longindentation=0pt

\newcommand{\@name}{}
\newcommand{\@email}{}
\newcommand{\@streetaddress}{}
\newcommand{\@citystatezip}{}
\newcommand{\@phone}{}
\newcommand{\@webpage}{}

\renewcommand{\name}[1]{\renewcommand{\@name}{#1}}
\newcommand{\email}[1]{\urldef{\@email}{\url}{<#1>}}
\newcommand{\streetaddress}[1]{\renewcommand{\@streetaddress}{#1}}
\newcommand{\citystatezip}[1]{\renewcommand{\@citystatezip}{#1}}
\newcommand{\phone}[1]{\renewcommand{\@phone}{#1}}
\newcommand{\webpage}[1]{\urldef{\@webpage}{\url}{#1}}

\newcommand{\maketitle}{
\begingroup
  \makeatletter
  \global\let\svgwidth\undefined
  \makeatother
  \ifx\svgwidth\undefined
    \setlength{\unitlength}{444.82573242pt}
  \else
    \setlength{\unitlength}{\svgwidth}
  \fi
  \begin{picture}(1,0.208113)%
    \put(0,0){\includegraphics[width=\unitlength]{mssm_letterhead.pdf}}%
    \put(0.26,0.14){\color[rgb]{0,0,1}\makebox(0,0)[lb]{\smash{Maine School of Science and Mathematics}}}%
    \put(0.26,0.11){\color[rgb]{0,0,1}\makebox(0,0)[lb]{\smash{A Residential Community of Academic Excellence}}}%
  \end{picture}
\endgroup
}
  \providecommand\color[2][]{%
    \errmessage{(Inkscape) Color is used for the text in Inkscape, but the package 'color.sty' is not loaded}
    \renewcommand\color[2][]{}%
  }
  \providecommand\transparent[1]{%
    \errmessage{(Inkscape) Transparency is used (non-zero) for the text in Inkscape, but the package 'transparent.sty' is not loaded}
    \renewcommand\transparent[1]{}%
  }
  \providecommand\rotatebox[2]{#2}
