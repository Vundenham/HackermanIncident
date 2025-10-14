#!/bin/bash
#Make sure you're running as root
ssh-keyscan -t rsa 10.1.1.75 > ~/.ssh/known_hosts && sudo ansible-playbook -i inventory.ini hackerMan.yml --ask-become-pass -e "ansible_remote_tmp=/tmp/"
