 #phony targets

.PHONY:clean all

#all
all: paper.md paper.html

paper.md:/paper/sections/*.md
	pandoc /paper/sections/*.md -s -o paper.md

paper.html:paper.md
	pandoc paper.md -s -o paper.html

#clean
 clean:
	rm -f paper.md paper.html

