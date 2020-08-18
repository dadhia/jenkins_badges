import os
from jenkins_badges import create_app
os.environ['JENKINS_BADGE_SETTING'] = '/home/devan/badges/config'

application = create_app(from_envvar=True)