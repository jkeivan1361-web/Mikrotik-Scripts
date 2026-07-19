# ===========================================================
# Script Name : PCQ Equal Bandwidth
# Author      : Your Name
# Version     : 1.0
# RouterOS    : v6/v7
# Description : Equal bandwidth sharing between active users
# ===========================================================

/queue type

add kind=pcq name=PCQ-UP pcq-classifier=src-address

add kind=pcq name=PCQ-DOWN pcq-classifier=dst-address

/queue simple

add name=Internet \
target=0.0.0.0/0 \
max-limit=100M/100M \
queue=PCQ-UP/PCQ-DOWN