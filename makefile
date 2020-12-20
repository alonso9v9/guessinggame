#everytime you run this script a new number of files
#will be calculated

all: README.md


README.md:
	echo "# Guessing Game by Luis Alonso Vega Badilla." > README.md
	echo ""
	date >> README.md
	echo ""
	echo -n "Number of lines on guessinggame.sh = " >> README.md
	cat guessinggame.sh | wc -l | egrep "[0-9]+" >> README.md

