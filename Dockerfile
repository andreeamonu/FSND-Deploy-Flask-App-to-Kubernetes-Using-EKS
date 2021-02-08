# define source image
FROM python:stretch

# setup app directory
COPY . /app
WORKDIR /app

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# define entrypoint
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
