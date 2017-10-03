

install:
	ansible-playbook -i hosts  kubuntu-laptop.yml --ask-become-pass


dry-run:
	ansible-playbook -i hosts kubuntu-laptop.yml --ask-become-pass --check

syntax-check:
	ansible-playbook kubuntu-laptop.yml --syntax-check
