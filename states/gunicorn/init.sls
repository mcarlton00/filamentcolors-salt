gunicorn_service_file:
  file.managed:
    - name: /etc/systemd/system/gunicorn.service
    - source: salt://gunicorn/files/gunicorn.service
    - mode: 755

gunicorn_socket_file:
  file.managed:
    - name: /etc/systemd/system/gunicorn.socker
    - source: salt://gunicorn/files/gunicorn.socket
    - mode: 755
