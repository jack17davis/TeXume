% resume.cls


\ProvidesClass{resume}[8/12/2020 Resume class]
\LoadClassWithOptions{article}

\RequirePackage{hyperref}               %added for adding external links
\RequirePackage{xcolor}                 %added for blue links
\RequirePackage[normalem]{ulem}         %added for underlining
\RequirePackage{anysize}
\RequirePackage[parfill]{parskip}       % Do not indent paragraphs
\RequirePackage{array}                  % required for boldface tabular columns
%\RequirePackage{ifthen}
\RequirePackage{enumitem}               %for more complicated list environments

%the document margins can be set here, but I prefer to do it in the document itself
%\usepackage[left=0.6in,top=0.6in,right=0.6in,bottom=0.6in]{geometry} % Document margins

\nofiles                                % .aux files are not needed for resumes
\pagestyle{empty}                       % resumes do not need page numbers

\def\sectionskip{\bigskip}              %sets space between sections
\def\sectionlineskip{\medskip}          %adds in vertical space around the divider lines
\def\indent{1.25em}                     %changes indent for all sections
\def\itemSeperation{-0.5em}             %changes the seperation between bullets


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% URL command for blue URLs
\newcommand\URL[2]{\href{#1}{\color{blue}\uline{#2}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADER

\newcommand\header[5]{
	\begin{center}{}
		\centering{{\MakeUppercase{\Huge\bf #1}} \\ \medskip
			#2 $\diamond$ #3 \\ \smallskip
			#4 $\diamond$ #5}
	\end{center}
	\vspace{-0.25in} %tighten things up a bit
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SECTIONS: Create section headings

\newenvironment{Section}[1]{
	\sectionskip
  	\MakeUppercase{\bf #1}
  	\sectionlineskip
  	\hrule
  	\begin{list}{}{\setlength{\leftmargin=\indent}}
  		\item[] % sets the list environment to no symbol
		}{
  	\end{list}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Jobs

\newenvironment{Job}[3]{
  %%%%%%%%%%%%%%%%%%%%%% Default Layout: %%%%%%%%%%%%%%%%%%%%%%%%
  %%    Employer (bold)                     Dates (regular)    %%
  %%    Title (emphasis)                                       %%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  {\bf #1}                 \hfill     {#2}\\% date will appear at end of line
  {\em #3}                 \hfill
  \smallskip
  \begin{itemize}[leftmargin=*]
  	\itemsep \itemSeperation %removes space between items
  	\vspace{-0.5em} %removes space between list and job header
}{
  \end{itemize}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Projects

\newenvironment{Project}[5]{
	%%%%%%%%%%%%%%%%%%%%%% Default Layout: %%%%%%%%%%%%%%%%%%%%%%%%
	%%    Project Name (bold), type(regular)  Dates (regular)    %%
	%%    Info (regular)                      Link(regular)      %%
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	{\bf #1}, {#2}           \hfill                          {#3}\\
	{#4}                     \hfill                          {#5}\\}
	{\vspace{0em} %put a little space between this project and the next one
	}






