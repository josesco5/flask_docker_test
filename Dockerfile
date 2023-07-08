FROM python:3.9.2-alpine

WORKDIR /app
COPY . .

RUN pip3 install --upgrade pip
RUN pip3 install pipenv
RUN pipenv install

CMD [ "pipenv", "run", "flask", "run", "--host=0.0.0.0" ]
