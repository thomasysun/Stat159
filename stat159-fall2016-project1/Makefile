
# variable for md files
mds = $(wildcard paper/sections/*.md)


# phony target
.PHONY: all clean


# all
all: paper.md paper.html


# sections to paper.md
paper.md: $(mds)
	pandoc $(mds) -s -o paper/paper.md

# sections to paper.html
paper.html: $(mds)
	pandoc -s paper/paper.md -o paper/paper.html


# clean outputs
clean:
	del paper\paper.html