# usefulBashScripts
This repo is a collection of bash snippets for everyday tasks. By providing these snippets and scripts one should be able to easily create new scripts for any task they need.

Anyone is very welcome to provide additional snippets/scripts useful for everyday work.

Disclaimer: I'm the biggest bash noob - that's why I created this repo

## basic bash functions

### passing parameters to a bash script

When working with parameters passed to a bash scripts the following expressions might be especially useful:

* `$#`: get the number of parameters passed
* `$@`: get all parameters (useful for iteration over passed parameters)

Example script: [passDaVar.sh](passDaVar.sh)

Example usage:

```bash
noob$ ./passDaVar.sh apple pear orange
apple pear orange
```

## watching a folder and execute a task for new files


