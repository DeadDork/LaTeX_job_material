% resume.cls
% Copyright 2010 Nimrod Omer <https://github.com/DeadDork>
%
% This LaTeX document class is largely based on the work of Ankur Dave <ankurdave@gmail.com>
%
% The model resume for this class was provided by a good friend who wishes to remain unnamed.
% 
% Licensed under the CC-GNU GPL version 2.0 or later.
% See http://creativecommons.org/licenses/GPL/2.0

\ProvidesClass{resume}

\PassOptionsToClass{9.5pt}{article}
\LoadClassWithOptions{article}
\usepackage{nopageno}

% fields that user can set
\makeatletter
	\newcommand{\name}[1]{\def \@name {#1}}
	\newcommand{\address}[1]{\def \@address {#1}}
	\newcommand{\phone}[1]{\def \@phone {#1}}
	\newcommand{\email}[1]{\def \@email {#1}}
	\newcommand{\website}[1]{\def \@website {#1}}
	\name{}
	\address{}
	\phone{}
	\email{}
	\website{}
\makeatother

% margins
%\usepackage[top=0.5in,bottom=0.5in,left=1in,right=1in]{geometry} % This is an OK page geometry, but I like to set my own in the source.

% fonts
\usepackage{times}
\renewcommand{\ttdefault}{cmtt}
\linespread{1}

% alignment
% (must be before indentation because raggedright clears parindent)
\raggedright

% lists
\renewcommand{\labelitemii}{$\circ$}
\usepackage{paralist}
\usepackage{atbeginend} % Found on [http://www.eng.cam.ac.uk/help/tpl/textprocessing/atbeginend.sty]. No license. Presumably FOSS from Cambridge University's IT Dept.
\BeforeBegin{compactitem}{
	\setlength{\leftmargini}{0.5in}
}

% sections
\makeatletter
\renewcommand{\section}[1]{
	\vspace{0.1in}
	\@startsection
		{section}
		{1}
		{\z@}
		{0em}
		{1em \@minus 1em} % tricks LaTeX into linebreak with no space afterward
		{\hspace{0.07in}\normalfont\Large\sc\bfseries}
		*
		{#1}
	\vspace{-0.1in} % moves line up: OK because of small caps -- no descenders
	\par
}

% job positions
\makeatletter
	\newcommand{\employer}[1]{\def \@employer {#1}}
	\newcommand{\location}[1]{\def \@location {#1}}
	\newcommand{\jobtitle}[1]{\def \@jobtitle {#1}}
	\newcommand{\dates}[1]{\def \@dates {#1}}
	\employer{}
	\jobtitle{}
	\dates{}

	\newenvironment{position}{
		\addtolength{\rightskip}{0.1in}
		\addtolength{\leftskip}{0.24in}
		% Most people should set \@employer to \textbf, but I like having a little extra control
		{\large \@employer \hfill \textit{\@location}\\
		\textit{\@jobtitle} \hfill \@dates\\}
		\par
	}{
		\vspace{4pt}
	}
\makeatother

% Education
% Variant one
%\makeatletter
%	\newcommand{\schoolname}[1]{\def \@schoolname {#1}}
%	\newcommand{\degree}[1]{\def \@degree {#1}}
%	\schoolname{}
%	\degree{}
%
%	\newenvironment{school}{
%		\addtolength{\rightskip}{0.1in}
%		\addtolength{\leftskip}{0.24in}
%		{\large{\textbf{\@schoolname \hfill \textit{\@location}}}\\
%		\textit{\@degree} \hfill \@dates\\}
%		\par
%	}{
%		\vspace{4pt}
%	}
%\makeatother
%
% Variant two
\makeatletter
	\newcommand{\schoolname}[1]{\def \@schoolname {#1}}
	\schoolname{}
	\dates{}

	\newenvironment{school}{
		\addtolength{\rightskip}{0.1in}
		\addtolength{\leftskip}{0.24in}
		{\large \textbf{\@schoolname,} \@location\\}
		\par
	}{
		\vspace{4pt}
	}
\makeatother

% Skills & Interests section
\makeatletter
	\newcommand{\misc}[1]{\def \@misc {#1}}
	\misc{}

	\newenvironment{miscellaneous}{
		\addtolength{\rightskip}{0.1in}
		\addtolength{\leftskip}{0.24in}
		{\large \textbf{\@misc}\\}
		\par
	}{
		\vspace{4pt}
	}
\makeatother

% title
\makeatletter
\def \@maketitle {
	\begin{center}
		{\huge \textsc{\@name}}

		{\large \@email

		\@address

		\@phone}
		\vspace{0.1in} 
		\hrule height 0.2pt
		\vspace{-0.5em}
	\end{center}
}
\makeatother
