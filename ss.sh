 #!/bin/bash
sudo apt-get install pipx

git clone https://github.com/DireSky/OSEExam.git

BEAUTY=/home/nonik/OSEExam/testPrj
WEBSITE=/home/nonik/OSEExam

if [ -d "$WEBSITE" ]; then
    cd "$WEBSITE" || exit
    python3 -m venv venv
    source venv/bin/activate
    pip install django
    pip install whitenoise
    pip freeze > requirements.txt
    pip install -r requirements.txt
else
    echo "Can't find file"
fi

if [ -d "$BEAUTY" ]; then
    cd "$BEAUTY" || exit
    python manage.py runserver
else
    echo "Nothing broo"
fi