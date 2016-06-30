% Class for formatting Maine School of Science and Mathematics Tests
% Kevin Joyce 2011
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aptest}[2011/09/11 Test Class file by Kevin Joyce]
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
  \center
  {\Large \bf ANSWER BOOKLET}
}
\newenvironment{multchoicenocalc}{
  \newpage
  \part*{ Section I: Multiple Choice }
  \section*{ Part A: No Calculator }
}
{
  \textbf{STOP:  Do not continue until the proctor has called time. }
  \par \hrule
}
\newenvironment{multchoicecalc}{
  \newpage
  \section*{Part B: Calculator Allowed}
  \textbf{A graphing calculator is required for some questions on
  this part of the exam. } 
}
{
  \textbf{STOP:  Do not continue until the proctor has called time. }
  \par \hrule
}
\newenvironment{freeresponsecalc}{
  \newpage
  \part*{ Section II: Free Response }
}
{
  \textbf{STOP:  Do not continue until the proctor has called time. }
  \par \hrule
}
\newenvironment{freeresponsenocalc}{
  \newpage
  \section*{Part B: No Calculator Allowed}
}
{
  \par \hrule
}
\renewenvironment{multchoice}
  { 
    \setcounter{pnum}{0}
  }
  {
    \par \underline{\hspace{\textwidth}}
  }
\renewenvironment{freeresponse}
  {
    \setcounter{pnum}{0}
  }
  {
    \par \underline{\hspace{\textwidth}}
  }
\renewcommand{\multproblem}[2]{

  \rule{\linewidth}{0.5mm}
  \problem{#1} \\
  \vspace{.2cm}
  #2
  \vspace{.5cm}
  \rule{\linewidth}{0.5mm}
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


