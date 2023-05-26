import os
basedir = os.path.abspath(os.path.dirname(__file__))
print('sqlite:///' + os.path.join(basedir, 'app.db'))
