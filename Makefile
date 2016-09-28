#phony targets

.PHONY: all clean

#all
all: paper.md paper.html

paper.md:paper/sections/*.md
	pandoc paper/sections/*.md -s -o paper/paper.md

paper.html:paper.md
	pandoc paper/paper.md -s -o paper/paper.html

#clean
 clean:
	rm -f paper/paper.md paper/paper.html

