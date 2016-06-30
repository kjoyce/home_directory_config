\ProvidesClass{test}[2011/03/10 Test Class file by Kevin Joyce]
\LoadClass{article}
\RequirePackage{  
  homework
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}


\newcounter{qnum}
\newenvironment{questions}
  { \setcounter{qnum}{0}
    \def\question{
      \refstepcounter{qnum}
      \par{\bf  \arabic{qnum}.}
    }
  }

%\newenvironment{questions}
%  { 
%    \renewcommand{\labelenumi}{\bf \arabic{enumi}.}
%    \begin{enumerate}
%    \def\question{ \item }
%  }
%  { \end{enumerate} }

\newenvironment{subquestions}
  { \begin{enumerate}[a)] 
    \def\squestion{ \item }
  }
  { \end{enumerate} }



\ProcessOptions\relax
