FROM namgivu/ubuntu-pipenv:18.04-3.6

WORKDIR /app

RUN echo '200520-x0 update x# to force docker build run from this line'

# install pip packages
COPY ./Pipfile      ./
COPY ./Pipfile.lock ./
RUN pipenv sync

#TODO trang should only use ENV, remove ARG
ARG ENV_TAG
ENV ENV_TAG $ENV_TAG

COPY . .
COPY docker/config_vault/.env.$ENV_TAG   ./.env
#    .env associated with :ENV_TAG         copied to /app/.env

RUN echo $ENV_TAG

CMD PYTHONPATH=`pwd` pipenv run python ./src/test.py
