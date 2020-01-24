% ============================-*- LaTeX -*-=============================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pzorin-note}[2018/03/03]

\PassOptionsToClass{11pt,a4paper,oneside,notitlepage}{article}
\PassOptionsToPackage{}{geometry}
% Printable with 1:1 scaling on A4 and US letter paper

% Forward unknown options to the article class
\DeclareOption*{
\PassOptionsToClass{\CurrentOption}{article}
}

\DeclareOption{biblatex}{
  \AtEndOfClass{
    \RequirePackage{biblatex}
  }
  \AtBeginDocument{
    
  }
  \AtEndDocument{\printbibliography}
}

\newcommand*{\ccbyncsatext}{\footnotesize This work is licensed under a \href{http://creativecommons.org/licenses/by-nc-sa/3.0/}{Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License}.}
\IfFileExists{ccicons.sty}{\AtEndOfClass{\RequirePackage{ccicons}}\AtEndDocument{\ccbyncsatext\hfill\ccbyncsa}}{\AtEndDocument{\ccbyncsatext}}
}
% Default options
\ExecuteOptions{}
\ProcessOptions\relax