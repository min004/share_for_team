# start by pulling the '' image
FROM python:3.9.13

WORKDIR /app
# copy the requirements file into the image
COPY . .

# switch working directory

# install the dependencies and packages
RUN conda install -c anaconda flask
RUN conda install -c anaconda flask-cors


ENTRYPOINT [ "python" ]
CMD ["app"]