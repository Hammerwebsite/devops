# set base image (host OS)
FROM python:2.7

# set the working directory in the container
WORKDIR /weeman

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY weeman/ .

# command to run on container start
CMD [ "bash", "./weeman.py" ]
