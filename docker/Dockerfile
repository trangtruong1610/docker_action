FROM namgivu/ubuntu-pipenv:18.04-3.6

WORKDIR /app

RUN echo '200520-x0 update x# to force docker build run from this line'

# install pip packages
COPY ./Pipfile      ./
COPY ./Pipfile.lock ./
RUN pipenv sync

# load build arg :ENV_TAG :GIT_COMMIT_ID
ARG ENV_TAG
ARG GIT_COMMIT_ID

# broad cast it as container env var
ENV ENV_TAG       $ENV_TAG
ENV GIT_COMMIT_ID $GIT_COMMIT_ID

# the buildee
COPY . .
COPY docker/config_vault/.env.$ENV_TAG   ./.env
#    .env associated with :ENV_TAG         copied to /app/.env

RUN echo $ENV_TAG
RUN echo $GIT_COMMIT_ID

CMD PYTHONPATH=`pwd` pipenv run python ./src/test.py
