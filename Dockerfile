FROM python:3.9.2-alpine

WORKDIR /app
COPY . .

RUN pip3 install --upgrade pip
RUN pip3 install pipenv
RUN pipenv install

CMD [ "pipenv", "run", "gunicorn", "-w", "4", "app:app", "-b", "0.0.0.0:8000" ]
