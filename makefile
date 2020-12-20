#everytime you run this script a new number of files
#will be calculated

all: README.md


README.md:
	echo "Guessing Game by Luis Alonso Vega Badilla" > README.md
	date >> README.md
	echo -n "Number of files = " >> README.md
	ls -l ./ | egrep ^[^dt] | wc -l >> README.md

