#!/bin/bash

# dirname of this file
ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="$ROOT/ansible"

#ANSIBLE_DISPLAY_ARGS_TO_STDOUT=True
ANSIBLE_LOG_PATH=ansible.log \
ANSIBLE_STDOUT_CALLBACK=yaml \
	ansible-playbook -v -i "$DIR/hosts" "$DIR/playbook.yml" --ask-become-pass $@

