#!/bin/bash

echo Example dockerfile Alfa-college 

/etc/init.d/apache2 start
/etc/init.d/ssh start

# Start een shell voor interactive 
/bin/bash

# Tail de access log om de container draaiende te houden
tail -f /var/log/apache2/access.log