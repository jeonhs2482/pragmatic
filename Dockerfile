FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/jeonhs2482/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo SECRET_KEY="'django-insecure--1bsecy)c3g^mv6kug7va&18%g-t(qw6vgxg-r$wncb^dhu!+$'" > my_settings.py

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]