
## Discussion

Using Windows PowerShell, I created a folder for this project, which I then organized 
into various subfolders. All the files in the project folder were created through 
Powershell commands, except the images. In order to write the paper, I used a markup 
language called Markdown. Markdown has plain text formatting syntax which can be used 
to create rich text.

![Markdown logo](C:/users/thomas/stat159/stat159-fall2016-project1/images/markdown-logo.png)

I used Notepad to write my markdown files. Each section of the paper has its own markdown 
file. I then created a Makefile with the section markdown files as the dependencies, so 
whenever I made a change in one of the sections, I could run make in PowerShell, which 
would run the commands to combine and update the end paper. In order to consolidate all the 
sections into one paper, I used Pandoc. Pandoc is a document converter than can convert files 
between various file types such as PDF, HTML, and MD. Pandoc was included as a commmand in the 
Makefile.

![Pandoc logo](C:/users/thomas/stat159/stat159-fall2016-project1/images/pandoc-logo.png)

In this case, I used pandoc to convert the MD files of each section into a single MD file as 
well as an HTML file. Whenever I made notable changes to any file in the project, I pushed my 
changes to the GitHub repository of the project so that others can view and pull the changes.