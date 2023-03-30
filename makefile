.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "Make was run on: `date`" >> README.md
	echo "The number of lines of code contained in guessinggame.sh is: `wc -l guessinggame.sh | egrep -o "[0-9]+"`" >> README.md

clean:
	rm README.md

