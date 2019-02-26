# In my makefile the following error  occurred when I targeted README.md: *** No rule to make target `readme.md'.  Stop.
# I put an all line in my makefile and simply ran MAKE with no targets, which created README.md
# Any thoughts on why makefile would not let me target README.md would be appreciated.  Thanks!
#
# Also, included two lines of space echo merely to newline.  Still working out my understanding of crazy echoes.

all: README.md

README.md: guessinggame.sh
	echo "# The Unix Workbench" > README.md
	echo "## Peer Review Assignment - Bash, Make, Git, and GitHub" >> README.md
	echo "*by Johns Hopkins University on [coursera.org](https://www.coursera.org/)*" >> README.md
	echo " " >> README.md
	echo "**Make date** :" >> README.md
	date "+DATE: %Y-%m-%d% TIME: %H:%M:%S" >> README.md
	echo " " >> README.md
	echo "**Lines in guessinggame.sh:**" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
