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
  This exam consists of two sections, as described below:
  \begin{itemize}
    \item Section I: a multiple-choice section testing proficiency in a wide variety of topics
    \item Section II: a free-response section requiring the student
    to demonstrate the ability to solve problems involving a more
    extended chain of reasoning
  \end{itemize}
  The time allotted for the exam is 3 hours and 15 minutes. The
  multiple-choice section of the exam consists of 45 questions in
  105 minutes. Part A of the multiple-choice section (28 questions in
  55 minutes) does not allow the use of a calculator. Part B of the
  multiple-choice section (17 questions in 50 minutes) contains 
  some ­questions for which a graphing calculator is required.
  Multiple-choice scores are based on the number of questions
  answered correctly.  Points are not deducted for incorrect answers,
  and no points are awarded for unanswered questions. Because points
  are not deducted for incorrect answers, students are encouraged to
  answer all multiple-choice questions. On any questions students do
  not know the answer to, students should eliminate as many choices
  as they can, and then select the best answer among the remaining
  choices.  
  
  The free-response section of the exam has two parts: one part for
  which graphing calculators are required, and a second part for
  which calculators are prohibited.  The free-response section of the
  exam consists of six problems in 90 minutes.  Part A of the
  free-response section (two problems in 30 minutes) requires the use
  of a graphing calculator. Part B of the free-response section (four
  problems in 60 minutes) does not allow the use of a calculator.
  During the second timed portion of the free- response section (Part
  B), students are permitted to continue work on problems in Part A,
  but they are not permitted to use a calculator during this time.
  In determining the score for the exam, the scores for Section I and
  Section II are given equal weight. Since the exams are designed for
  full coverage of the subject matter, it is not expected that all
  students will be able to answer all the questions.

}
\newenvironment{multchoicenocalc}{
  \newpage
  \part*{ Section I: Multiple Choice }
  \section*{ Part A: No Calculator }
  This section consists of 45 multiple-choice questions. Part A
  contains 28 ­ questions and does q not allow the use of a
  calculator. Part B contains 17 questions and requires a graphing
  calculator for some questions. 

  \textbf{A calculator may not be used on this part of the exam.}

  \emph{Directions:} Solve each of the following problems, using the available space for scratch work.  After examining the form of the choices, decide which is the best of the choices given and fill in the corresponding oval on the answer sheet.  No credit will be given for anything written in the exam book.  Do not spend too much time on any one problem.

  \textbf{In this exam:}
  \begin{itemize}
    \item Unless otherwise specified, the domain of a function $f$ is assumed to be the set of all real numbers $x$ for which $f(x)$ is a real number.
    \item The inverse of a trigonometric function $f$ may be indicated using the inverse function notation $f^{-1}$ or with the prefix ``arc'' (e.g. $\sin^{-1} x = \arcsin x$).
  \end{itemize}
  \newpage
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

  Part B consists of 17 questions. Following are the directions for
  Section I, Part B, and  a representative set of 10 ­questions.

  \emph{Directions:}Solve each of the following problems, using the
  available space for scratch work. After examining the form of the
  choices, decide which is the best of the choices  given and fill in
  the corresponding oval on the answer sheet. No credit will be given
  for anything written in the exam book. Do not spend too much time
  on any one problem.

  \textbf{In this exam:}
  \begin{itemize}
    \item The exact numerical value of the correct answer does not
    always appear among the choices given. When this happens, select
    from among the choices the number that best approximates the
    exact numerical value.
    \item Unless otherwise specified, the domain of a function  $f$
    is assumed to be the set of all real numbers $x$ for which
    $f(x)$  is a real number.
    \item The inverse of a trigonometric function $f$ may be indicated using the inverse function notation $f^{-1}$ or with the prefix ``arc'' (e.g. $\sin^{-1} x = \arcsin x$).
  \end{itemize}
\newpage
}
{
  \textbf{STOP:  Do not continue until the proctor has called time. }
  \par \hrule
}
\newenvironment{freeresponsecalc}{
  \newpage
  \part*{ Section II: Free Response }
  \section*{ Part A: Calculator Allowed }
\textbf{Directions: } Section II consists of 6 free-response questions.  Part A contains 3 questions and requires a graphing calculator for some parts.  Part B contains 3 questions and does not allow the use of a calculator.  You will have 30 minutes to complete Part A, and 60 minutes to complete Part B.  You may use the question booklet to organize your answers and for scratch work, but you must write your answers in the answer book provided.  Write clearly and legibly.  Cross out any errors you make; erased or crossed-out work will not be scored.

Manage your time careful.  During the the timed portion for Part A, work only on the questions in Part A.  You are permitted to use  your calculator to solve an equation, find the derivative of a function at a point, or calculate the value of a definite integral.  However, you must clearly indicate the setup of your question, namely, the equation, function, or integral you are using.  If you use other built-in features or programs, you must show the mathematical steps necessary to produce your results.  During the timed portion of Part B, you may keep the green insert and continue to work on the questions in Part A without a calculator.  

For each part of Section II, you may wish to look over the questions before starting to work on them.  It is not expected that everyone will be able to complete all parts of all questions.

\begin{itemize}
\item Show all of your work.  Clearly label any functions, graphs, tables, or other objects that you use.   Your work will be scored on the correctness and completeness of your methods as well as your answers.  Answers without supporting work will usually not receive credit.  Justifications require that you give mathematical (non-calculator) reasons.
\item Your work must be expressed in standard mathematical notation rather than calculator syntax.  For example, $\ds{\int_1^5 x^2 dx}$ may not be written as \texttt{fnInt$(X^2,X,1,5)$}.
\item Unless otherwise specified, answers (numeric or algebraic) need not be simplified.  If you use decimal approximations in calculations, your work will be scored on accuracy.  Unless otherwise specified, your final answers should be accurate to three places after the decimal point.
\item Unless otherwise specified, the domain of a function $f$ is assumed to be the set of all real numbers $x$ for which $f(x)$ is a real number.  
\end{itemize}
  \newpage
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

