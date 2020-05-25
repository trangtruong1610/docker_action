steps to create env PROD
'''bash
# write variables to docker/config_vault/.env.PROD
tee docker/config_vault/.env.PROD << EOF
ECHO_VAR=ECHO_VAR_PROD
ENV_TAG=PROD
EOF

# run docker local to check if Dockerfile using correct env
./docker/build-n-run-nondockerhub.sh 
    should_see='
    APP_HOME=/app
    ECHO_VAR=PRODDD
    ' 
