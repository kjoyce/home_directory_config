% Class for formatting Maine School of Science and Mathematics Tests
% Kevin Joyce 2011
%

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{quiz}[2011/09/11 Quiz Class file by Kevin Joyce]
\LoadClassWithOptions{assessment}

\newcommand{\@docdate}{}
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
  \par
  {\bf Show all work.  Problems with little or no work will be given little or no credit.}
  \end{center}
  }
}

