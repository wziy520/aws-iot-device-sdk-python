FROM python:2.7

WORKDIR /usr/src/app

##RUN pip install --no-cache-dir -r requirements.txt

RUN pip install AWSIoTPythonSDK
RUN git clone https://github.com/wziy520/aws-iot-device-sdk-python.git

COPY . .

EXPOSE 30002
EXPOSE 8000
EXPOSE 80
CMD ["python ./aws-iot-device-sdk-python/samples/basicPubSub/basicPubSub.py -e a37hraacjg2y51-ats.iot.us-east-1.amazonaws.com -r root-CA.crt -c pdus-002.cert.pem -k pdus-002.private.key -t pdus-002/occupied -id pdus-002" ]