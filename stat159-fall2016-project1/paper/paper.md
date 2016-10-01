Stat 159 Project 1 Paper
========================

![](https://raw.githubusercontent.com/thomasysun/Stat159/master/stat159-fall2016-project1/images/stat159-logo.png)

Abstract
--------

Stat 159 emphasizes doing reproducible and collaborative data science.
This paper is an effort to explain various tools that can be used to
manage collaboration and promote reproducibility, as well as outline the
steps necessary to utilize all of the tools. The introduction provides
some background to Make, Makefiles, Git, and Github and highlights their
role in creating a smooth, organized workflow in which others can easily
track. Then, the discussion will go through the step-by-step process of
creating the project, mentioning additional tools used and in what
order. These include Markdown and Pandoc. Finally, the conclusion will
go over overall thoughts on the process of creating the project,
including challenges, difficulties, and solutions. This paper is created
in hopes of serving as a guide on how to make future projects
reproducible, and open to collaboration.

Introduction
------------

There are various computational tools that can be used to streamline the
process of writing an easily reproducible paper. One tool is called
Make. Make is a software that automatically updates files in a project.
Make specifically reads Makefiles, which specify which files need to be
updated and changed. Makefiles are like a set of instructions for a more
organized and automated workflow.

Another useful tool for reproducibility and collaboration is Git. Git is
a version control program which let's you maintain multiple versions of
a project at the same time. This lets others work separately and lets
everyone track each others' changes. Git also lets you go back to old
commit versions in case something needs to be revised.

![Git
logo](https://raw.githubusercontent.com/thomasysun/Stat159/master/stat159-fall2016-project1/images/git-logo.png)

GitHub is a website that provides the same capabilities as Git.
Collaborators can check each other's Git repositories on GitHub and pull
the most recent changes through Git.

![GitHub
logo](https://raw.githubusercontent.com/thomasysun/Stat159/master/stat159-fall2016-project1/images/github-logo.png)

Git and GitHub are both promote collaboration and openness in this way.
Makefiles, Git, and GitHub were all used in this paper for version
control and easy reproducibility.

Discussion
----------

Using Windows PowerShell, I created a folder for this project, which I
then organized into various subfolders. All the files in the project
folder were created through Powershell commands, except the images. In
order to write the paper, I used a markup language called Markdown.
Markdown has plain text formatting syntax which can be used to create
rich text.

![Markdown
logo](https://raw.githubusercontent.com/thomasysun/Stat159/master/stat159-fall2016-project1/images/markdown-logo.png)

I used Notepad to write my markdown files. Each section of the paper has
its own markdown file. I then created a Makefile with the section
markdown files as the dependencies, so whenever I made a change in one
of the sections, I could run make in PowerShell, which would run the
commands to combine and update the end paper. In order to consolidate
all the sections into one paper, I used Pandoc. Pandoc is a document
converter than can convert files between various file types such as PDF,
HTML, and MD. Pandoc was included as a command in the Makefile.

![Pandoc
logo](https://raw.githubusercontent.com/thomasysun/Stat159/master/stat159-fall2016-project1/images/pandoc-logo.png)

In this case, I used Pandoc to convert the MD files of each section into
a single MD file, and ran Pandoc again to create an HTML file. I also
created a README file in Markdown so others can understand the project.
Whenever I made notable changes to any file in the project, I pushed my
changes to the GitHub repository of the project so that others can view
and pull the changes. I included a .gitignore file in case there are
files in the project that I do not want Git to track.

Conclusions
-----------

Overall, the computational tools helped in various aspects of
reproducibility and collaboration. Frequently pushing changes through
Git allows myself and others to track updates and versions which can be
easily accessed through the GitHub repository. Moreover, Make is
particularly useful in consolidating changes. Combined with Pandoc, it
made creating the final HTML file for the paper much simpler. However,
arguably the most difficult part of the process was creating the
Makefile. I ran into several issues, including one where the UNIX
commands I was using were not recognized in PowerShell. It took several
iterations of code before Make could properly read the script. I finally
fixed my issues after collaborating with some classmates as well as
getting help from the GSI.

Despite being relatively simple, writing the paper was the most time
consuming portion of the project. In total, the project took about 6-8
hours to complete, including office hours and reading documentation
about proper syntax for Pandoc, Markdown, Makefiles, etc.
