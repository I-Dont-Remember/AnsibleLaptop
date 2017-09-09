

install:
	ansible-playbook -i hosts  kubuntu.yml --ask-become-pass
