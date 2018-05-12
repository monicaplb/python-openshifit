FROM centos


RUN yum install epel-release -y
RUN yum install git -y
RUN git clone -b upload https://github.com/AlissonMMenezes/python-openshift.git 
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install python36u
RUN yum -y install python-pip
RUN yum -y groupinstall development
RUN pip install --upgrade pip
RUN pip install -r python-openshift/requirements.txt

CMD ["python", "python-openshift/app.py"]

