#!/bin/bash

cd /tmp
grep nginx /var/log/audit/audit.log | grep denied | audit2allow -m nginxlocalconf > nginxlocalconf.te
grep nginx /var/log/audit/audit.log | grep denied | audit2allow -M nginxlocalconf
semodule -i nginxlocalconf.pp
