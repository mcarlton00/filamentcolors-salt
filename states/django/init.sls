clone_app:
  git.latest:
    - name: https://github.com/itsthejoker/filamentcolors.xyz.git
    - target: /root/app
    - user: root

create_virtualenv:
  cmd.run:
    - name: /usr/local/bin/python3.8 -m venv /root/app/.venv
    - user: root

install_poetry:
  cmd.run:
    - name: /root/app/.venv/bin/pip install poetry
    - user: root

install_poetry:
  cmd.run:
    - name: /root/app/.venv/bin/poetry install
    - cwd: /root/app
    - user: root
