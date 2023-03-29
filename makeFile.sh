README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "This project is a simple guessing game script implemented in bash." >> README.md
	echo "" >> README.md
	echo "## Execution date" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Number of code lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "" >> README.md
	echo "## GitHub Pages" >> README.md
	echo "The GitHub Pages site for this project can be found at 
	[ https://github.com/Caleonar/PlayTest.git/ ] 
	( https://caleonar.github.io/PlayTest/ )." >> README.md

publish: README.md
	git add README.md
	git commit -m "Update README.md"
	git push origin master
