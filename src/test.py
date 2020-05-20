from dotenv import load_dotenv
import os

filepath = os.path.dirname(__file__)
app_path = os.path.dirname(filepath)

load_dotenv(dotenv_path=f'{app_path}/docker/config_vault/.env.DEV')

ECHO_VAR = os.environ.get('ECHO_VAR')

print(ECHO_VAR)
