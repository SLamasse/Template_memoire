\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MemoireMimo}[2016/09/14 Mise en page du mémoire du master en alternance Mimo]
\newcommand{\headlinecolor}{\normalcolor}

\DeclareOption{UP1}{\OptionNotUsed}
\DeclareOption{UP1}{\newcommand*{\nomFac}{UNIVERSIT\'E PARIS 1 PANTH\'EON-SORBONNE}}
\DeclareOption{francais}{\OptionNotUsed}
\DeclareOption{english}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessOptions\relax


%%%%%%%%%%%%%%%
% Les packages utiles 
%%%%%%%%%%%%%%%
\LoadClass[a4paper,12pt,oneside]{book}
\RequirePackage[T1]{fontenc} 
\RequirePackage{pslatex}
\RequirePackage{aeguill}
\RequirePackage{lmodern}
\RequirePackage[breaklinks]{hyperref}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
\RequirePackage{dsfont,mathrsfs}
\RequirePackage{mathenv}
\RequirePackage{dpfloat}
\RequirePackage{array}
\RequirePackage{color}
\RequirePackage{graphics}
\RequirePackage{calc}
\RequirePackage{textcomp}
\RequirePackage[dvips]{graphicx}  
\RequirePackage{longtable} 
\RequirePackage{setspace}
\RequirePackage{lscape}
\RequirePackage{lettrine}
\RequirePackage{tocbibind}
\RequirePackage{fancyhdr}
\RequirePackage{supertabular}
\RequirePackage{tikz}
%%%  bibliographie
\RequirePackage[
    backend=biber,
    style=ieee,
    url=false, 
    sorting=nyt,
    bibstyle=authortitle,
    defernumbers=false
]{biblatex}

%%% On fixe les marges du document 
\RequirePackage{geometry}
\geometry{paperwidth=210mm, paperheight=297mm, left=71pt, right=60pt, top=60pt, marginparsep=30pt, marginparwidth=100pt, footskip=40pt}

% interligne 
\onehalfspacing

\providecommand*{\nomDiplome}{Master2 en alternance Mimo}


\newcommand*{\jury}[1]{\gdef\@jury{#1}}
\providecommand*{\@jury}{\ClassWarningNoLine{MemoireMimo}{No \noexpand\jury
    given}}

\newcommand*{\tuteur}[1]{\gdef\@tuteur{#1}}
\providecommand*{\@tuteur}{\ClassWarningNoLine{MemoireMimo}{No
    \noexpand\tuteur given}}

\newcommand*{\MaitreApprentissage}[1]{\gdef\@MaitreApprentissage{#1}}
\providecommand*{\@MaitreApprentissage}{\ClassWarningNoLine{MemoireMimo}{No
    \noexpand\MaitreApprentissage given}}


\renewcommand\maketitle{
\begin{titlepage}
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \begin{center}%
    \setlength{\parskip}{3mm}
    {\bfseries 
	\includegraphics[width=8cm]{logo/logouniversite}\\[0,5em]
	\textit{\nomDiplome}\par}
	\begin{small}
	        \vspace{0,5cm}

    
    
    soutenue publiquement par
    
    \@author

    le \@date
    
	\end{small}

    \vspace*{\stretch{1}}

    {\bfseries 
      
      { \LARGE \@title}




%      \hfill \rule{1.3cm}{\linethickness} \hfill\null  



      \textit{sous la direction de \@tuteur (tuteur universitaire) et  \@MaitreApprentissage (maître d'apprentissage)}




 %     \hfill \rule{1.3cm}{\linethickness} \hfill\null





      \vspace*{\stretch{1}}
      JURY}


	
	    \begin{tabular}{p{10cm}l}
      		\@jury
	    \end{tabular}
  \end{center}
  \@thanks
  \vfil\null
\end{titlepage}

\setcounter{footnote}{0}%
\global\let\thanks\relax
\global\let\maketitle\relax
\global\let\@thanks\@empty
\global\let\@author\@empty
\global\let\@date\@empty
\global\let\@title\@empty
\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\and\relax}

% Page de dédicace 
\newcommand{\dedicacepage}{% 
  \begin{flushright}
    \large\em\null\vskip1in\dedication@text\vfill
  \end{flushright}
  \cleardoublepage
}



% Lettrine
\newcommand{\malettrine}[1]{
  \lettrine[lines=2,lhang=0.33,loversize=0.33]{#1}
}

% =============================================
% PAGE DE GARDE
\newif\ifdefinitif\definitiftrue

\def\titleFR#1{\gdef\@titleFR{#1}}
\def\titleEN#1{\gdef\@titleEN{#1}}
\def\abstractFR#1{\gdef\@abstractFR{#1}}
\def\abstractEN#1{\gdef\@abstractEN{#1}}
\def\keywordsFR#1{\gdef\@keywordsFR{#1}}
\def\keywordsEN#1{\gdef\@keywordsEN{#1}}
\def\dedicate#1{\gdef\dedication@text{#1}}

\newcommand{\abstractpage}{%
  \pagestyle{empty}
  ~\newpage
  \par
  \vfill
  \paragraph*{Titre}\@titleFR
  \paragraph*{Résumé}\@abstractFR
  \paragraph*{Mots-clés}\@keywordsFR
  \paragraph*{Title}\@titleEN
  \paragraph*{Abstract}\@abstractEN 
  \paragraph*{Keywords}\@keywordsEN
}


  
	
