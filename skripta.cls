\NeedsTeXFormat{LaTeX2e}[2020-10-01]
\ProvidesClass{skripta} [2021/03/26 by Michal Břežný]


\LoadClass[11pt,twocolumn,titlepage,twoside, a4paper]{book}



\RequirePackage[czech = quotes]{csquotes}


%	Load some packages
%---------------------------------------------------------------------------------------

\RequirePackage{enumitem} % Customize lists
\setlist{nolistsep} % Reduce spacing between bullet points and numbered lists

\RequirePackage{booktabs} % Required for nicer horizontal rules in tables

\RequirePackage[dvipsnames]{xcolor} % Required for specifying colors by name
\definecolor{prfgreen}{RGB}{122,155,33} % Define the orange color used for highlighting throughout the book


\RequirePackage{multicol}

%	Geometry
%----------------------------------------------------------------------------------------

\RequirePackage{geometry} 
\geometry{
	paper=a4paper, 
	top=1.5cm, 
	bottom=2cm, 
	inner=2cm, 
	outer=1.5cm, 
	headheight=14pt, 
	footskip=1cm, 
	headsep=10pt,
	marginparwidth=2cm
	}



% Graphics
%--------------------------------------------------------------------------
\RequirePackage{graphicx}

\RequirePackage{tikz}




% Header and footer styling
%--------------------------------------------------------------------------
\RequirePackage{fancyhdr}
\setlength{\headheight}{15.0pt}
\fancyhf{}
%\fancyhead[LE,RO]{\bfseries\thepage}
\fancyhead[RE]{\it\sf\nouppercase{\rightmark}}
\fancyhead[LO]{\it\sf\nouppercase{\leftmark}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyfoot[C]{\thepage} 


%	Bibilography
%-------------------------------

\usepackage[backend=biber,
	style=authoryear, 
	maxbibnames=99, 
	dashed=false, 
	uniquename=false, 
	giveninits=true, 
	uniquelist=false, 
	date=year, 
	citetracker=true,
	safeinputenc]{biblatex} 
	

\renewbibmacro*{doi+eprint+url}{% 
	\iftoggle{bbx:url} {\iffieldundef{doi}{\usebibmacro{url+urldate}}{}} {}% 
	\newunit\newblock \iftoggle{bbx:eprint} {\usebibmacro{eprint}} {}% 
	\newunit\newblock \iftoggle{bbx:doi} {\printfield{doi}} 
	{}} 

\renewcommand*{\nameyeardelim}{\addcomma\space}

\AtEveryBibitem{\clearlist{language}}
\AtEveryBibitem{\clearfield{issn}}
\AtEveryCitekey{\clearfield{issn}}


\renewcommand*{\bibfont}{\small}
\appto{\bibsetup}{\raggedright}

%Math
%------------------------------
\RequirePackage{amsmath} % For math equations, theorems, symbols, etc
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}


%Solve problem with czech babel
%-----------------------------------


\newcommand{\intoo}[2]{\mathopen{]}#1\,;#2\mathclose{[}}
\newcommand{\ud}{\mathop{\mathrm{{}d}}\mathopen{}}
\newcommand{\intff}[2]{\mathopen{[}#1\,;#2\mathclose{]}}
\renewcommand{\qedsymbol}{$\blacksquare$}
\newtheorem{notation}{Notation}[chapter]


%	REMARK ENVIRONMENT
%----------------------------------------------------------------------------------------
%
%\newenvironment{remark}{\par\vspace{10pt}\small % Vertical white space above the remark and smaller font size
%	\begin{list}{}{
%			\leftmargin=35pt % Indentation on the left
%			\rightmargin=25pt}\item\ignorespaces % Indentation on the right
%		\makebox[-2.5pt]{\begin{tikzpicture}[overlay]
%				\node[draw=prfgreen!60,line width=1pt,circle,fill=prfgreen!25,font=\sffamily\bfseries,inner sep=2pt,outer sep=0pt] at (-15pt,0pt){\textcolor{prfgreen}{R}};\end{tikzpicture}} % Orange R in a circle
%		\advance\baselineskip -1pt}{\end{list}\vskip5pt} % Tighter line spacing and white space after remark
%	}
%
%
