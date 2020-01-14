FROM python:3.7
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN mkdir /code
COPY . /code
WORKDIR /code
CMD python /code/parse/parse_data_v1.py

