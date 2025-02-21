FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     tzdata python3.10 python3-pip python3-venv     postgresql postgresql-contrib     openssh-server     supervisor     && ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime     && dpkg-reconfigure --frontend noninteractive tzdata     && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install --no-cache-dir flask gunicorn psycopg2-binary

RUN mkdir /var/run/sshd && echo 'root:rootpassword' | chpasswd     && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN mkdir -p /var/lib/postgresql/data && chown -R postgres:postgres /var/lib/postgresql

WORKDIR /app
COPY . /app

RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8000 9001 22 5432

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
