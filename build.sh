set -o errexit

pip install -r requirements.txt
python3 manage.py collectstatic --no-input
python3 manage.py migrate

if [[$CREATE_SUPERUSER]];
then 
    python3 manage.py createsuperuser --no-input
fi