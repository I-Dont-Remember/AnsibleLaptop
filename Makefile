

install:
	ansible-playbook -i hosts  kubuntu.yml --ask-become-pass


dry-run:
	ansible-playbook -i hosts kubuntu.yml --ask-become-pass --check

syntax-check:
	ansible-playbook kubuntu.yml --syntax-check
