# action will be run in python3 container
FROM python:3
# creating a directory name /code and setting it as our workdirectory
RUN mkdir /code
WORKDIR /code

# copying requirements.txt and install the action dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
# script.py is the file that will contain the codes that we want to run for this action.
COPY script.py .
# we will just run our script.py as our docker entrypoint by python script.py
CMD ["python", "script.py"]