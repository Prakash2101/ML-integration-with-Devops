FROM centos
RUN yum install python36 -y
RUN yum install epel-release -y
RUN yum update -y

RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python3 get-pip.py

RUN pip install setuptools
RUN pip install keras
RUN pip install pillow
RUN pip install scikit-learn
RUN pip install matplotlib
RUN pip install seaborn
RUN pip install pandas
RUN pip install opencv-python
RUN pip3 install tensorflow
RUN pip install pyyaml

COPY CNN_code.py .
COPY Adding_layers.yaml .
COPY Mail.py .