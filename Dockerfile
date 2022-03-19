FROM python:3.10.3-slim-buster

# Install pipenv
RUN pip install pipenv

COPY main.py .
COPY Pipfile .
COPY Pipfile.lock .

# Install python dependencies
RUN pipenv install --deploy

CMD [ "pipenv", "run", "python", "./main.py" ]