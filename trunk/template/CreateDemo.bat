@ECHO OFF
cls

SET TEXFILE=TemplateDemo
call:CleanUP

pdflatex -shell-escape -interaction=nonstopmode %TEXFILE%
makeglossaries %TEXFILE%
biber %TEXFILE%
pdflatex -shell-escape -interaction=nonstopmode %TEXFILE%
pdflatex -shell-escape -interaction=nonstopmode %TEXFILE%
pdflatex -shell-escape -interaction=nonstopmode %TEXFILE%

call:CleanUP

echo.&pause&goto:eof

::--------------------------------------------------------
::-- Function section starts below here
::--------------------------------------------------------

:: clean up
:CleanUP
del *.dvi
del *.acn
del *acr
del *alg
del *blg
del *glg
del *gls
del *slg
del *syi
del *blx.bib
del *.glo
del *.idx
del *.ilg
del *.ind
del *.ist
del *.lof
del *.lol
del *.lot
del *.ps
del *.gnuplot
del *.table
del *.xml
del *.syg
del *.toc
del fit.log
del plotdata.txt


