% Class for formatting Maine School of Science and Mathematics Tests
% Kevin Joyce 2011
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mathtest}[2011/09/11 Test Class file by Kevin Joyce]
\LoadClassWithOptions{assessment}

\newcommand{\@docdate}{}
\newcommand{\@docauthor}{}
\newcommand{\@shorttitle}{}
\renewcommand{\docdate}[1]{\renewcommand{\@docdate}{#1}}
\newcommand{\shorttitle}[1]{\renewcommand{\@shorttitle}{#1}}

\renewcommand{\maketitle}{
  {
  \ifthenelse{ \equal{\@docdate}{} }{
      \rhead{ \today } }
    {
      \rhead{ \@docdate}}

  \ifthenelse{ \equal{\@shorttitle}{} }{
      \lhead{ } }
  {
      \lhead{ \@shorttitle }}
      \vspace{10cm}
  \begin{center}
  {\Large \bf \@title}\\
  \sc Maine School of Science and Mathematics\\
  \vspace{1.8cm}
  Name (first and last): \underline{\hspace{8cm}}\\
  \end{center}
  }
}

\ProcessOptions\relax
%\newenvironment{solution}[1][null]
%  { 
%    \par {\bf Solution 
%      \ifthenelse{\NOT\equal{#1}{null}}{to part #1 }{}
%    }
%    \begin{quote}
%    \setlength{\parindent}{2em}
%  }
%  { 
%    \end{quote}\qed 
%    \setlength{\parindent}{0em}
%  }
%
%\newenvironment{subproblems}
%  { \begin{enumerate}[(a)] 
%    \def\subprob{ \item }
%  }
%  { \end{enumerate} }
%
%\newenvironment{problems}
%  { \setcounter{pnum}{0}
%    \def\hproblem{
%      \refstepcounter{pnum}
%      \par{\bf Problem \arabic{pnum}.}
%    }
%    \def\hproblemsh{
%      \vspace{2cm}
%      \hproblem 
%
%    }
%  }
%  {}
%
%\newenvironment{aproblems}
%  {\begin{problems}}
%  {\end{problems}}
%
%\newcommand{\pref}[1]{ {\bf Problem \ref{#1}}}
