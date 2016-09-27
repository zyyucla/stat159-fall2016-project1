

<hr>
  
###Introduction
   Working on any project requires following a certain workflow to achieve goals. The process of writing this essay is very similar to finishing a project: through planning schemes and software, this essay aims to introduce some computational tools used in writing the essay and how each tool contribute to its overall workflow.
	 
####**Markdown**
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/markdown-logo.png)

 Every big project starts with the smallest component, so let's first talk about the "pencil" used in writing the essay--Markdown.
	  
   Markdown is a lightweight markup language with plain text formatting syntax so that it can be converted into HTML or any other formats. Readability is in its core philosophy as the language intends to be easy-to-read and easy-to-write. 

Let's take the essay for example. The title "introduction" and current section "Markdown" is written in different header size, which is indicated by the number of "#" in front of it. In markdown editor, we write it as:
 ``` ###Introduction
     ####Markdown ```
which gives us a h3 header size for introduction and h4 header size for Markdown title. Notice that Markdown title is also in bold. To do that, we simply write `###**Markdown**` where asterisk is used to indicate emphasis.

Next we want to incorporate the Markdown-logo image into the text. The syntax is `![alt text](url)`. `[alt text]` is displayed when the image url is not valid. To have the same effect as what you are seeing in the essay, try to type 
``` ![markdown-logo] url(https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/markdown-logo.png)``` in the text editor and see for yourself.

Lastly, to demonstrate code/syntax highlighting, inline code has backticks `` `  around it and for blocks of code, use three backticks.  This section only covers a very small amount of markdown syntax. For a complete reference, follow the link [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#links)  and try it yourself.     



###**Pandoc**
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/pandoc-logo.png)
   
  As the logo suggests, Pandoc is a software tool to convert documents between formats, usually from a markup one to another. I would like to think of Pandoc as "dictionary" in writing the essay in that they both translate from one language to another.  

Pandoc is free and open-source, but the biggest advantage/usefulness is that it allows you to move easily between files. For example, suppose you write a paper in LaTex but submission requires .docx. Pandoc understands an extension of Markdown structured text format, so it will correctly interpret your source and cope with mathematical formalism, bibliography and footnotes, which makes the conversion incredibly painless.

To convert the essay (written in markdown) into HTML file, we can simply type 
 ` pandoc -s introduction.md -o introduction.html`
 Here `-s` option says to create a "standalone" file and `-o introduction.html` says to put the output in file `introduction.html`. We will see more of pandoc in **Makefile** section.  Check out [Pandoc](http://pandoc.org/getting-started.html) to learn more.



###**Makefile**
  

###**Git**
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/git-logo.png)
  
  Most of the times when you write an essay you can't finish it in one sitting or need to revise many times, so you save unfinished documents as drafts into a folder. This is similar to git’s functionality. Git is a distributed version control system that allows you to keep a record of file changes over time, so specific versions can be recalled later. Let’s see how git contributes in producing the final version of essay that you are reading. 
    
  When using git for the first time, we need to configure a few things. In the command line, type `git config --global user.name "your name"  user.email "your email address"`. The username and email will be associated with your subsequent Git activity. Next we need to set up the directory and repository for the essay.  
    
Use `mkdir` and `cd` commands to make and change into that directory, respectively. We want to have a paper and images directories inside the big project directory called "project1". To do that, type `mkdir project1`.  Next to create paper and image directories, type `cd project1`->`mkdir paper`->`mkdir images` in your command line. This is where git comes into play, type `git init` to initialize an empty git repository. This tells git to keep track of subsequent changes that we make to the project1 directories. 

Next we want to use git to record changes made in the files. For convenience, only introduction part of the essay is discussed. In the paper directory, make a directory `mkdir sections` then `cd` into it. To open and edit a file, you could choose your preferred editor such as emacs or vi (I used nano in this case).  So `nano introduction.md` will create a markdown file called introduction. After done editing the file, you should tell git to keep track of your files. Simply type `git add introduction.md`. This is similar to saying that you now have introduction.md version 1. You also want to record what the changes are, which are called _commit_. Use `git commit -m your message` to summarize the changes you make to the file.  Finally, to have a general view of the project status, type `git status` to see if you have any untracked files or changes that you haven't commited yet.

Notice that each time we make revisions to the introduction.md file, we need to repeat the command `git add introduction.md` and `git commit -m message` to record the changes. Finally, use `git log` to see a history of  commit logs. Combined with `add`  `commit` and  `log` command,  I can easily retrieve older version of my introduction draft and it's easier for other people to follow my workflow and possibly reproduce my work. 

###**GitHub**
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/github-logo.png)

Suppose you finish writing the essay and want to publish it online for a wider audience or just source sharing, then GitHub is a good choice. GitHub is a web-based Git repository hosting service.  


