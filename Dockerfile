FROM python:3.6
EXPOSE 8000
RUN pip install django
CMD python -m http.server
