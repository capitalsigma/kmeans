LINOS='\renewcommand{\theFancyVerbLine}{\textcolor{red}{\small\arabic{FancyVerbLine}}}'
# LOADFILE='\RecustomVerbatimCommand{\VerbatimInput}{VerbatimInput}%
# {fontsize=\footnotesize,
#  %
#  frame=lines,  % top and bottom rule only
#  framesep=2em, % separation between frame and text
#  rulecolor=\color{Gray},
#  %
#  label=\fbox{\color{black}foo.txt},
#  labelposition=topline,
#  %
#  commandchars=\|\(\), % escape character and argument delimiters for
#                       % commands within the verbatim
#  commentchar=*        % comment character
# }'
LOADFILE='\RecustomVerbatimCommand{\VerbatimInput}{VerbatimInput}{fontsize=\footnotesize,frame=lines,framesep=2em,rulecolor=\color{Gray}'

PREAMB="$LINOS,$LOADFILE"
FMTOPTS="full=True,linenos=1,style=perldoc,preamble=$PREAMB"
outname=$(basename $2)
extension="${outname##*.}"

sed 's/\t/    /g' $1 | pygmentize -l sml -O $FMTOPTS `[ $# -eq 1 ] && echo  || echo -o $2`

if [ $extension = "tex" ]
then
	sed -i s/utf-8/utf8/g $2
fi

# append the file of our choice
if [ $# -eq  3 ]
then
	# sed -E -f $(dirname $0)/escape.sed $3
	# echo sed "\$i'$(sed -E -f $(dirname $0)/escape.sed $3)'" $2
	# sed "\$i $(sed -E -f $(dirname $0)/escape.sed $3)" $2
	# sed -i "\$i $(sed -E -f $(dirname $0)/escape.sed $3)" $2
	# sed "\$i\\begin{verbatim}`cat $3`\\end{verbatim}" $2
	sed -i "\$i \\\\\\\VerbatimInput\{$(pwd)/$3\}" $2
fi
