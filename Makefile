.PHONY: test prep

syntax-check:
	ansible-playbook ubuntu-dev.playbook.yml --syntax-check -vvv

# setup machine to use this repo; install Ansible,etc.
prep:
	bash install.sh

dry-run: prep
	ansible-playbook ubuntu-dev.playbook.yml --ask-become-pass --check

# run it all for real
the-whole-shebang: prep
	ansible-playbook ubuntu-dev.playbook.yml --ask-become-pass

# TODO: Change to make install or dry-run once the repo is not in revamp mode,
# also need to install anything in requirements file before testing
test:
	docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} \
		ansible-test make syntax-check
