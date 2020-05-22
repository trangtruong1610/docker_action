# docker/config_vault create .env.PROD
'''bash
touch docker/config_vault/.env.PROD
'''

# write variables to .env.PROD
''' i.e
ECHO_VAR='PRODDD'
ENV_TAG=PROD
'''

# run docker local to check Dockerfile using correct env
'''bash
 ./docker/build-n-run-nondockerhub.sh 
'''

# check result, should be 
'''
     APP_HOME=/app
     ECHO_VAR=PRODDD
GIT_COMMIT_ID={last commit id}
'''
