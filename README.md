[![Build Status](https://travis-ci.org/DataKind-SG/chapter-one.svg?branch=master)](https://travis-ci.org/DataKind-SG/chapter-one)

Chapter One
===========

Welcome to a new chapter in your journey with us at DataKind-SG. As with all great stories, we start at chapter one...

Here, you can find nuggets of information containing lessons learnts, best practices and resources to help you start your journey. Have fun!

[Start reading!](https://datakind-sg.github.io/chapter-one/)

## Contributing
You can start contributing by simply start editing the .Rmd files in your favorite text editor and submit a pull request! Wondering how do you edit markdown files? You can start by reading [this article](https://rmarkdown.rstudio.com/lesson-8.html) and [this one too](https://rmarkdown.rstudio.com/authoring_pandoc_markdown.html)! 

## Local Build
If you would like to build the book locally instead, please see the sections below.

### Pre-requisites
- R
- pandoc
- Packages: bookdown, rmarkdown

### Commands
Run the following command and HTML files will be generated in the ./_book directory. To start reading, open `index.html`
```
bookdown::render_book("index.Rmd", "bookdown::gitbook")
```

## References
[bookdown Demo](https://github.com/rstudio/bookdown)  
[bookdown Documentation](https://bookdown.org/yihui/bookdown/)
