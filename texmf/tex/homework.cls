% Class for formatting Maine School of Science and Mathematics Tests
% Kevin Joyce 2011
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2011/02/10 Homework Class file by Kevin Joyce]
\LoadClassWithOptions{assessment}

\renewcommand{\title}{\lhead } 
\newcommand{\course}{\chead }
\newcommand{\docdate}{\rhead }

\newcommand{\makename}{Name:\underline{\hspace{8cm}}\par}

% uncomment to make old Alaska Homework compile
\newenvironment{solution}[1][null]
  { 
    \par {\bf Solution 
      \ifthenelse{\NOT\equal{#1}{null}}{to part #1 }{}
    }
    \begin{quote}
    \setlength{\parindent}{2em}
  }
  { 
    \end{quote}\qed 
    \setlength{\parindent}{0em}
  }

\newenvironment{subproblems}
  { \begin{enumerate}[(a)] 
    \def\subprob{ \item }
  }
  { \end{enumerate} }

\newcounter{ppnum}
\newenvironment{problems}
  { \setcounter{ppnum}{0}
    \def\hproblem{
      \refstepcounter{ppnum}
      \par{\bf Problem \arabic{ppnum}.}
    }
    \def\hproblemsh{
      \vspace{2cm}
      \hproblem 
    }
  }
  {}
\newenvironment{aproblems}
  {\begin{problems}}
  {\end{problems}}

%\newcommand{\Hint}{ {\it Hint:} }
\newcommand{\pref}[1]{ {\bf Problem \ref{#1}}}

\ProcessOptions\relax
