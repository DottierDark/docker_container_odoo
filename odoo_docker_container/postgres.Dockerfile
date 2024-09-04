# pull official base image
FROM postgres:14.8

RUN apt update \
    && apt install sudo


SHELL ["/bin/bash", "-c"]

RUN useradd -m -g sudo -s /bin/bash odoo
# RUN sudo createuser --superuser odoo
# RUN usermod -aG root odoo
# RUN chown -R odoo:odoo /var/lib/postgresql/data
# RUN chmod -R 777 /var/lib/postgresql
# RUN chmod -R 777 /var/lib/postgresql/data
# USER odoo

