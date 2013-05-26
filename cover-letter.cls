% cover-letter.cls
% Copyright 2012 Nimrod Omer <https://github.com/DeadDork>
%
% This LaTeX document class is largely based on the work of Ankur Dave <ankurdave@gmail.com>
%
% Licensed under the CC-GNU GPL version 2.0 or later.
% See http://creativecommons.org/licenses/GPL/2.0

\ProvidesClass{cover-letter}

\PassOptionsToClass{11pt,12pt}{article}
\LoadClassWithOptions{article}

% fields that user can set
\makeatletter
	\newcommand{\address}[1]{\def \@address {#1}}
	\newcommand{\recipientaddress}[1]{\def \@recipientaddress {#1}}
	\address{}
	\recipientaddress{}
\makeatother

% margins
\usepackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}

% fonts
\usepackage{times}
\renewcommand{\ttdefault}{cmtt}

% alignment
% (must be before indentation because raggedright clears parindent)
\raggedright

% paragraphs
\setlength{\parskip}{1em}

% title
\makeatletter
\def \@maketitle {
	\@address \par
	\@recipientaddress \par
	\@date \par
}
\makeatother
