web-server:
  pkg.installed:
    - pkgs:
      - nginx

nginx.conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/files/nginx.conf
    - user: root
    - group: root
    - mode: 644

filamentcolors.xyz:
  file.managed:
    - name: /etc/nginx/sites-enabled/filamentcolors.xyz
    - source: salt://nginx/files/filamentcolors.xyz
    - user: root
    - group: root
    - mode: 644
