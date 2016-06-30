% syllabus.cls
%
% Kevin Joyce 2011
%
% This class provides formatting for a basic class syllabus

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{syllabus}

\LoadClassWithOptions{article}

\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage{hyperref}
\RequirePackage{url}
\RequirePackage{tabularx}
\RequirePackage{pgf}
\RequirePackage[tmargin=.75in,bmargin=1in]{geometry}

% default all variables to empty
\newcommand{\@coursetitle}{}
\newcommand{\@institution}{}
\newcommand{\@instructorname}{}
\newcommand{\@email}{}
\newcommand{\@timeof}{}
\newcommand{\@webpage}{}
\newcommand{\@phone}{}
\newcommand{\@location}{}


% set up variables
\newcommand{\coursetitle}[1]{\renewcommand{\@coursetitle}{#1}}
\newcommand{\institution}[1]{\renewcommand{\@institution}{#1}}
\newcommand{\instructorname}[1]{\renewcommand{\@instructorname}{#1}}
\newcommand{\email}[1]{\renewcommand{\@email}{ \href{mailto:#1}{#1}} }
\newcommand{\timeof}[1]{\renewcommand{\@timeof}{#1}}
\newcommand{\webpage}[1]{\urldef{\@webpage}{\url}{#1}}
\newcommand{\phone}[1]{\renewcommand{\@phone}{#1}}
\newcommand{\location}[1]{\renewcommand{\@location}{#1}}

\renewcommand{\maketitle}{
  \begin{center}
  \par{\bf \Large \@coursetitle}
  \par{\bf \sc \@institution}
  \end{center}
  \begin{tabular}{r l}
    \textbf{Instructor:} & \@instructorname \\
    \textbf{Location:} & \@location \\
    \textbf{Email:} & \@email \\
    \textbf{Webpage:} & \@webpage \\
    \textbf{Course Times:} & \@timeof \\
    \textbf{Phone:} &  \@phone \\ 
  \end{tabular}
}

\renewenvironment{section}[1]
{  \begin{center}
    \rule{.9\textwidth}{.1em}\newline
     {\bf \sc \large #1 }
     \rule{.9\textwidth}{.1em}
    \end{center} }
{  \par  }
