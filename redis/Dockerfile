FROM redis:5.0.5
COPY conf /opt/
COPY launch.sh /opt
WORKDIR /opt
RUN /bin/bash -c 'mkdir -p /opt/data/8101'
RUN /bin/bash -c 'mkdir -p /opt/data/8102'
RUN /bin/bash -c 'mkdir -p /opt/data/8103'
RUN /bin/bash -c 'mkdir -p /opt/data/8104'
RUN /bin/bash -c 'mkdir -p /opt/data/8105'
RUN /bin/bash -c 'mkdir -p /opt/data/8106'
CMD /opt/launch.sh