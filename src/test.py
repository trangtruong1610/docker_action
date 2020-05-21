from dotenv import load_dotenv
import os

PWD      = os.path.dirname(__file__)
APP_HOME = os.path.abspath(os.path.join(PWD, '..') )

load_dotenv(dotenv_path=f'{APP_HOME}/docker/config_vault/.env.DEV')

ECHO_VAR      = os.environ.get('ECHO_VAR')
GIT_COMMIT_ID = os.environ.get('GIT_COMMIT_ID')

print(f'''
     APP_HOME={APP_HOME}
     ECHO_VAR={ECHO_VAR}
GIT_COMMIT_ID={GIT_COMMIT_ID}
''')
