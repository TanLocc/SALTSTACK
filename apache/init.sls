install_apache:
 pkg.installed:
  - pkg.latest:
    - httpd
index_html:
 file.managed:
     - name: /var/www/html/index.html
     - source: salt://apache/templates/index.html
     - user: apache
     - group: apache
     - mode: 644

apache_service:
 service.running:
  - name: httpd
  - enable: True
        