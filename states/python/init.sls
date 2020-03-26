dependencies:
  pkg.installed:
    - pkgs:
      - zlib1g-dev
      - libjpeg9
      - libjpeg9-dev
      - libssl-dev
      - zlib1g-dev
      - libncurses5-dev
      - libncursesw5-dev
      - libreadline-dev
      - libsqlite3-dev
      - libgdbm-dev
      - libdb5.3-dev
      - libbz2-dev
      - libexpat1-dev
      - liblzma-dev
      - libffi-dev
      - uuid-dev

get_python:
  archive.extracted:
    - name: /src
    - source: https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz
    - skip_verify: True
    - user: root
    - group: root
    - if_missing: /root/app/

configure_python:
  cmd.run:
    - name: ./configure --enable-optimizations
    - cwd: /src/Python-3.8.1

make_python:
  cmd.run:
    - name: make -j 4
    - cwd: /src/Python-3.8.1

install_python:
  cmd.run:
    - name: make altinstall
    - cwd: /src/Python-3.8.1
