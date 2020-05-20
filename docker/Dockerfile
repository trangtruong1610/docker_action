FROM namgivu/ubuntu-pipenv:18.04-3.6

WORKDIR /app

# install pip packages
COPY ./Pipfile      ./
COPY ./Pipfile.lock ./
RUN pipenv sync

ARG ENV_TAG=DEV

COPY . .
COPY docker/config_vault/.env.${ENV_TAG} ./.env

RUN echo ${ENV_TAG}

CMD PYTHONPATH=`pwd` pipenv run python ./src/test.py
