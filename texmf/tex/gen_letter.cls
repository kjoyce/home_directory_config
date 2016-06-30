% Class for formatting Maine School of Science and Mathematics Letter
% Kevin Joyce 2011
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gen_letter}
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
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}

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

\newlength{\headerbuffer}
\setlength{\headerbuffer}{2pt}

\newcommand{\maketitle}{
  \vspace{\headerbuffer}%
    \par\nointerlineskip\noindent\makebox[\linewidth]{\textbf{\Large{\@name}}}%
  \vspace{\headerbuffer}%
  \par\nointerlineskip\noindent%
  \begin{center}\begin{small}%
  \ifthenelse{\equal{\@email}{}}{}{ \@email }
  \ifthenelse{\equal{\@webpage}{}}{}{ $\bullet$ \@webpage $\bullet$ }
  \par
  \ifthenelse{\equal{\@streetaddress}{}}{}{ \@streetaddress  }
  \ifthenelse{\equal{\@citystatezip}{}}{}{ $\bullet$ \@citystatezip  }
  \ifthenelse{\equal{\@phone}{}}{}{ $\bullet$ \@phone }

  \end{small}\end{center}
}

