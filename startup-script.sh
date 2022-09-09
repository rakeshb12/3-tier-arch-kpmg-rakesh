#!/bin/bash -xe

apt-get update
apt-get install -yq build-essential python-pip rsync
pip install flask

mkdir /app

cat > /app/app.py <<'EOF'
from flask import Flask
app = Flask(__name__)
@app.route('/my_challange_1')
def hello_api():
   return 'Hello, Welcome to KPMG!'
app.run(host='0.0.0.0')
EOF

python /app/app.py &