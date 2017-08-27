# Reproducible Environment and Quality Assurance

## Using Containers, Continuous Integration and Delivery

To ensure that the scripts can run in a consistent environment, we create Docker containers with known versions of Development Environment and the corresponding library versions used in generating the data analysis/products.

We will also need to keep the containers up to date and easily available for download. Hence we utilize Continuous Integration and Delivery capabilities such as Quay.io to build images from specified Dockerfiles.

In this section, we shall walk you through the setup and running of different Docker environment.

## Installation

### ... for Windows

Follow the setup instructions here: https://docs.docker.com/docker-for-windows/install/

Note: If your machine doesn't met the requirement for "Docker For Windows", try setting up "Docker Toolbox":
https://docs.docker.com/toolbox/toolbox_install_windows/

### ... for Linux

Follow the setup instructions for your flavor of Linux here: https://docs.docker.com/engine/installation/linux/

### ... for MacOS

Follow the setup instructions here: https://store.docker.com/editions/community/docker-ce-desktop-mac

Or if you use Homebrew Cask,

```
$ brew cask install docker
```

## Ensure that Docker is Running

Start running the Docker app. Check that it is running on the command line:

```
$ docker info
Containers: 3
 Running: 0
 Paused: 0
 Stopped: 3
Images: 1
Server Version: 1.13.1
...
```

## Using Docker for Python Notebooks
### Getting a Python Jupyter Notebook Container Image

There are at least two ways of getting an image:

- Pulling from a repository (such as quay.io)
- Loading from a file

### Pulling from a repository
You can pull down the image with:

```
$ docker pull quay.io/dksg/python3-notebook:1.0.0
```

Once that finishes downloading, you should see something like:

```
$ docker images
REPOSITORY                      TAG                 IMAGE ID            CREATED             SIZE
quay.io/dksg/python3-notebook   1.0.0              f01e49a5a922        3 days ago          2.61 GB
```

### Loading from a file
This is an alternative method. Skip this if you already have pulled from a repository successfully. Otherwise, follow the steps below:

1. Copy the tar file (get this from a DK corelead) to your local directory (e.g. quay.io_SLASH_dksg_SLASH_python3-notebook_1.0.0.tar)
2. In your local directory, run the following docker command:
```
docker load --input quay.io_SLASH_dksg_SLASH_python3-notebook_<tagged_version>.tar
```
3. This will return a loaded image id.
4. Tag the newly added image with the version from the filename by running the following:
```
docker tag <loaded image id> quay.io/dksg/python3-notebook:<tagged_version>
```

### Running a Jupyter Notebook from the pulled/loaded image

Take the `IMAGE ID` from previous step and start it up with this command:
```
docker run -p 8888:8888 -v /path/to/local/directory:/home/jovyan/work f01e49a5a922
```

**Note:** /path/to/local/directory should be replaced by **an existing local directory in your laptop.**
This is where your notebooks (.ipynb) will be stored.
e.g. docker run -p 8888:8888 -v /Users/johndoe/datadive:/home/jovyan/work quay.io/dksg/python3-notebook:1.0.0

You will get instructions for link to paste into your browser address box. If you're using Docker Toolbox, you should use the custom IP address (default http://192.168.99.100/)

Once the notebook is running, you may create a new notebook and try the samples in this tutorial:
https://plot.ly/python/ipython-notebook-tutorial/

Note: The following python script may be needed to run first in order to run the above tutorial samples:
```
import plotly
plotly.offline.init_notebook_mode() # run at the start of every ipython notebook
```

## Using Docker for R Notebooks
### Getting an R Jupyter Notebook Container Image

There are at least two ways of getting an image:

- Pulling from a repository (such as quay.io)
- Loading from a file

#### Pulling from a repository
You can pull down the image with:

```
$ docker pull quay.io/dksg/r-notebook:<tagged_version>
```

Once that finishes downloading, you should see something like:

```
$ docker images
REPOSITORY                      TAG                 IMAGE ID            CREATED             SIZE
quay.io/dksg/r-notebook   1.0.1              f01e49a5a922        3 days ago          2.61 GB
```

#### Loading from a file
This is an alternative method. Skip this if you already have pulled from a repository successfully. Otherwise, follow the steps below:

1. Copy the tar file (get this from a DK corelead) to your local directory (e.g. quay.io_SLASH_dksg_SLASH_r-notebook_1.0.1.tar)
2. In your local directory, run the following docker command:
```
docker load --input quay.io_SLASH_dksg_SLASH_r-notebook_<tagged_version>.tar
```
3. This will return a loaded image id.
4. Tag the newly added image with the version from the filename by running the following:
```
docker tag <loaded image id> quay.io/dksg/r-notebook:<tagged_version>
```

### Running a Jupyter Notebook from the pulled/loaded image

Take the `IMAGE ID` from previous step and start it up with this command:

```
docker run -p 8888:8888 -v /path/to/local/directory:/home/jovyan/work f01e49a5a922
```
**Note:** /path/to/local/directory should be replaced by **an existing local directory in your laptop.**
This is where your notebooks (.ipynb) will be stored.
e.g. docker run -p 8888:8888 -v /Users/johndoe/datadive:/home/jovyan/work quay.io/dksg/r-notebook:<tagged_version>

You will get instructions for link to paste into your browser address box. If you're using Docker Toolbox, you should use the custom IP address (default http://192.168.99.100/)

### Once the notebook is running, you may create a new notebook and try the following samples:
https://plot.ly/r/using-r-in-jupyter-notebooks/#examples


## Using Docker for RStudio
### Getting an RStudio Container Image

There are at least two ways of getting an image:

- Pulling from a repository (such as quay.io)
- Loading from a file

#### Pulling from a repository
You can pull down the image with:

```
$ docker pull quay.io/dksg/<project_name>-rstudio:<tagged_version>
```

Once that finishes downloading, you should see something like:

```
$ docker images
REPOSITORY                             TAG                 IMAGE ID            CREATED             SIZE
quay.io/dksg/<project_name>-rstudio              1.0.2               1c1e06209032        13 hours ago        1.166 GB
```

#### Loading from a file
This is an alternative method. Skip this if you already have pulled from a repository successfully. Otherwise, follow the steps below:

1. Copy the tar file (get this from a DK corelead) to your local directory (e.g. quay.io_SLASH_dksg_SLASH_ojoy-rstudio_1.0.2.tar)
2. In your local directory, run the following docker command:
```
docker load --input quay.io_SLASH_dksg_SLASH_<project_name>-rstudio_<tagged_version>.tar
```
3. Once loaded, you should be able to see the new image when you run "docker images":
```
$ docker images
REPOSITORY                             TAG                 IMAGE ID            CREATED             SIZE
quay.io/dksg/<project_name>-rstudio              1.0.2               1c1e06209032        13 hours ago        1.166 GB
```


### Running RStudio from the pulled/loaded image

Start it up with this command:

```
docker run -p 8787:8787 -v /path/to/local/directory:/home/rstudio/foobar quay.io/dksg/<project_name>-rstudio:<tagged_version>
```
**Note:** /path/to/local/directory should be replaced by **an existing local directory in your laptop.**
This is where your data/scripts will be stored.
e.g. docker run -d -p 8787:8787 -v /Users/johndoe/datadive:/home/rstudio/foobar quay.io/dksg/<project_name>-rstudio:<tagged_version>

You should be able to access RStudio in the browser via http://localhost:8787. If you're using Docker Toolbox, you should use the custom IP address (default http://192.168.99.100:8787) 

Username: rstudio 

Password: rstudio


## Managing libraries

If there's a python or R library that you need, you can install it in your container, but unless the library is persisted to the image, your scripts that use the library will not run on somebody else's machine. Each project will have a person assigned as a *library curator* and they will be able to include the library in the project's docker image. Workflow should be:

1. You're puttering along when you realise that you want to add your favourite nlp library.
2. You install it in your container, and try it out. It works great!
3. Show it to your project's curator and convince them that it's a useful library. Their default mode is lazy and they will try to point you to an existing library. You show them the hot shiny feature the one you want has.
4. The curator changes the requirements file in our docker file Github repo, Quay auto-magically builds a new image, and when people need to run your code, they need to use this new image.

## Testing


## Recommended Roles


## Tips



