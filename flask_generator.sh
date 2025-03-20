#!/bin/bash


PROJECT_NAME=$1


if ! dpkg -l | grep -q python3-venv; then
    echo "Installing python3-venv..."
    sudo apt update && sudo apt install -y python3-venv
fi


mkdir -p $PROJECT_NAME
cd $PROJECT_NAME


if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi


source venv/bin/activate


pip install --upgrade pip
pip install flask


if [ ! -f "app.py" ]; then
    cat <<EOF > app.py
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return {"message": "Hello, Flask is running!"}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
EOF
    echo "Flask app created at $PROJECT_NAME/app.py"
fi

echo "Вы готовы. Чтобы запустить приложение Flask:"
echo "1. cd $PROJECT_NAME"
echo "2. source venv/bin/activate"
echo "3. python app.py"
