# pull official base image
FROM odoo:17.0

USER root
SHELL ["/bin/bash", "-c"]
RUN apt-get update \
    # dependencies for building Python packages
    && apt-get install python3-pip

# install dependencies
RUN pip3 install --upgrade pip
RUN pip3 install ipdb
RUN pip3 install html2text
# RUN pip3 install python3-linkedin
# RUN pip3 install python-docx
# RUN pip3 install docx-mailmerge
# RUN pip3 install hijri_converter
# RUN pip3 install MechanicalSoup

