# Kameleoon 

---------------------------------------------------------------------------------------------------------------------------------------------------------

Предполагается, что у нас создана либо виртуальная машина под управлением CentOS-Stream-8, либо bare metal хост с  CentOS-Stream-8.

Ansible имеет доступ к этому хосту и может делать sudo без пароля.

Имя домена и IP адрес указываются в файле Install.yaml в секции vars.

Так же мы должны добавить записи типа: 
---

IP хоста gitlab.(мой домен)

IP хоста prometheus.(мой домен)

IP хоста grafana.(мой домен)


либо в DNS, либо как вариант в свой /etc/hosts
---

GitLab будет доступен по ссылке https://gitlab.(мой домен)

Prometheus  будет доступен по ссылке http://prometheus.(мой домен)

Grafana будет доступена по ссылке http://grafana.(мой домен)


**!!! Роль использует (отсутствующий по причине большого размера файл  ~GitLab/files/gitlab-ee-15.10.3-ee.0.el8.x86_64.rpm) !!!**

**!!! Надо либо заменить файл пустышку на пакет  gitlab-ee-15.10.3-ee.0.el8.x86_64.rpm, либо закомментировать секцию и раскомментировать вышестоящие секции !!!**


---------------------------------------------------------------------------------------------------------------------------------------------------------

It is assumed that we have created either a virtual machine running CentOS-Stream-8, or a bare metal host running CentOS-Stream-8.

Ansible has access to this host and can sudo without a password.

The domain name and IP address are specified in the Install.yaml file in the vars section.

We also need to add entries like:
---

IP of host gitlab.(my domain)

IP of host prometheus.(my domain)

IP of host grafana.(my domain)


either in DNS, or alternatively in your /etc/hosts
---

GitLab will be available at https://gitlab.(my domain) 

Prometheus will be available at http://prometheus.(my domain)

Grafana will be available at http://grafana.(my domain)


**!!! Role uses (missing file ~GitLab/files/gitlab-ee-15.10.3-ee.0.el8.x86_64.rpm due to large size) !!!**

**!!! You must either replace the empty file with the gitlab-ee-15.10.3-ee.0.el8.x86_64.rpm package, or comment out the section and uncomment the higher sections !!!**
