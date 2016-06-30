% Class for formatting Maine School of Science and Mathematics Assessments
% Kevin Joyce 2011
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assessment}

\LoadClassWithOptions{article}
\RequirePackage{  
  amsmath,
  amscd,
  amssymb,
  amsthm,
  latexsym,
  graphicx,
  ulem,
  enumerate,
  float,
%  ulsy,
%  subfigure,
  wrapfig,
  ifthen,
  rotating,
  url,
  mdwlist,
  fancyhdr,
}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{cmacros}

\pagestyle{fancy}
\setlength{\parindent}{0em}
\setlength{\parskip}{.5em}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\renewcommand{\normalsize}{\fontsize{12pt}{13pt}\selectfont}

\newcounter{pnum}
\newcommand*{\problem}[1]{
  \nopagebreak[4]
  \setcounter{opnum}{0}
  \setcounter{spnum}{0}
  \stepcounter{pnum}
  \textbf{\arabic{pnum}.} 
  \nopagebreak[4] #1 
}
\newcommand*{\mcproblem}[2]{
  \begin{samepage}
  \problem{#1} \par
  \vspace{.5cm} % Place options
  \nopagebreak[4] 
  #2
  \vspace{.5cm}
  \par
  \end{samepage}
}
\newenvironment{longproblem} {
    \setcounter{opnum}{0}
    \setcounter{spnum}{0}
    \stepcounter{pnum}
    \textbf{\arabic{pnum}.} 
  } {
    \vspace{1.5cm}
  }

\newenvironment{longsubproblem} {
    \nopagebreak[4]
    \begin{quote} 
    \stepcounter{spnum}
    \textbf{(\alph{spnum})} 
  } {
    \end{quote}
  }
\newcommand*{\multproblem}[2]{
  \problem{#1} \par
  \vspace{.2cm}
  #2
  \vspace{.5cm}
}

\newcounter{spnum}
\def \subproblem #1{
  \nopagebreak[4]
  \stepcounter{spnum}
  \hspace{1cm} \textbf{(\alph{spnum})} #1 \par
}
\def \subproblemm #1{
  \nopagebreak[4]
  \stepcounter{spnum}
  \hspace{1cm} \textbf{(\alph{spnum})} #1 
}

\newcounter{opnum}
\def\option #1{
 \optionn #1 \par
}
\def \optionn {
  \nopagebreak[4]
  \stepcounter{opnum}
  (\alph{opnum})
}
\newenvironment{multchoice} { 
    \part{Multiple Choice}
  }
  {
    \par \underline{\hspace{\textwidth}}
  }


\newenvironment{shortanswer} {
  \part{Short Answer}
} {
}

\newenvironment{freeresponse} {
  \part{Free Response}

} {
}

\newenvironment{truefalsecx} 
{
  \part{True or False.}
  For each statement determine if it is true or false.  If it is true, just say so, if it is false give a counter example.\par
}
{ 
  \vfill
  \hrule
  \newpage
}

\newenvironment{truefalse} 
{
  \part{True or False.}
  For each statement determine if the given statement is true or false.  You do not need to justify your answer.\par
}
{
  \vfill
  \hrule
  \newpage
}

\newcommand{\tfcxproblem}[1]{
  \tfproblem{ #1 }
  \vspace{3cm}
}

\newcommand{\tfproblem}[1]{
  \problem{ \textbf{T} \quad \textbf{F} \hspace{2em} #1 }\par
  \hangindent7em
  \vspace{.6cm}
}
\newcommand{\Hint}{ {\it Hint:} }



\ProcessOptions\relax
