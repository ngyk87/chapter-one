# Managing Code

## Version Control

Version Control is important to track changes made and to enable collaboration with other volunteers
during the project. For this, we shall be using Github. Please refer to the below sections for the
most common questions our volunteers have on Github usage.

## Github FAQs

### The csv.gz files seems to be too small/corrupted, what should I do?
You will need to install Git LFS. Instructions can be found in the link below:
https://help.github.com/articles/installing-git-large-file-storage/

### I'm new to Git, where can I get more information?
You can refer to the the [resources](resources.html) section of this documentation.

### How to clone a git repository?
Go to the command line and type the following
```
git clone https://github.com/DataKind-SG/<project_name>.git
```
OR if you are using git large file storage:
```
git-lfs clone https://github.com/DataKind-SG/<project_name>.git
```

### How to load csv.gz files?

If you are using R:  
```
read.csv(gzfile("filename.csv.gz"))
```
OR  
```
library(readr)
read_csv("filename.csv.gz")
```

If you are using Python:  
```
import pandas as pd
pd.read_csv('filename.csv.gz')
```

### How can I safely edit the code and data files?
We recommend that you first create a "branch" in git - think of it as a personal copy - and make
your changes. Then you submit a "pull request" for review - think of it as a notification for
the admins to review and update the main files

### Doing a git branch

We recommend to name your branches in the following format: "<feature-name>-<your name>"
```
git checkout -b "name of the branch"
```

### How to submit changes to the code repository
```
git add .
git commit -m "brief description of change"
git push origin <branch name>"
```
To do a pull request, please refer to this link:
https://help.github.com/articles/creating-a-pull-request/


## Directory Structure

```
├── _scripts
|     ├── subtask1
|     ├── subtask2
├── _data
|     ├── subdata1
|     ├── subdata2
|--- _outputs
```

## Code Style

- 4 spaces, not tabs

## Preamble information to be placed at the top of every script
* Intent/Purpose
    * What's the purpose of the script
* Input
    * Param/external data that the script needs
* Output
    * What it produces
* Dependencies
    * Libraries/setup that the script needs in order to run
* Sample Usage
    * Sample demo on how to run/call the script

You can view a sample Script [here](https://github.com/DataKind-SG/chapter-one/blob/master/resources/examples/metadata_sample/metadata_sample.R).

To add the files into Docker, you need to additional environment information (quay.io docker filepath) 
e.g., for R: #' docker_filepath: quay.io/dksg/children-society-r-notebook:x.x.x)
- Author: e.g., for R: #' author:Paul
- Summary of the objective of script.  e.g., #' desc: takes in the file_1, file_2 and file_3, performs xxx, yyy, and zzz, and produces output_1 and output_2


## Quickstart Templates

dksg_template.R

## Tips
