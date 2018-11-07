#!/bin/bash

# dirname of this file
ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="$ROOT/ansible"

sudo ansible-playbook -i "$DIR/hosts" "$DIR/playbook.yml" $@

