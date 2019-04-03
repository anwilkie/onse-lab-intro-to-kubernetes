FROM python:3

ENV APP_ROOT=/opt/hello_world

RUN pip install --upgrade pip
RUN pip install pipenv

RUN mkdir $APP_ROOT

WORKDIR $APP_ROOT

COPY . $APP_ROOT

RUN pipenv install --system

CMD pipenv run scripts/docker-start.sh
