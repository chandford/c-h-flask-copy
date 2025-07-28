# Specifies the base image that the build will extend
FROM python:3.12

# Tells the builder to copy source files from the host and put them into the container image
COPY . /src

# Specifies the path in the image where files will be copied & commands executed
WORKDIR /src

# Installs the application dependencies
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt

# Sets the default command a container using this image will run
CMD python /src/app.py