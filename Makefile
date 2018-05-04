

install:
	ansible-playbook ubuntu-dev-machine.yml --ask-become-pass


dry-run:
	ansible-playbook ubuntu-dev-machine.yml --ask-become-pass --check

syntax-check:
	ansible-playbook ubuntu-dev-machine.yml --syntax-check
