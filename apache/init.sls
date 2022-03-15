install_apache:
 pkg.installed:
  - name: apache2
index_html:
 file.managed:
     - name: /var/www/html/index.html
     - source: salt://apache/templates/index.html
     - user: www-data
     - group: www-data
     - mode: 644

apache_service:
 service.running:
  - name: httpd
  - enable: True
        