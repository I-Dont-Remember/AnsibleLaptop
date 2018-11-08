.PHONY: test prep

playbook := dev-machine.playbook.yml
image := ansible-test

syntax-check:
	ansible-playbook ${playbook} --syntax-check -vvv

# setup machine to use this repo; install Ansible,etc.
prep:
	bash install.sh

dry-run: prep
	ansible-playbook ${playbook}--ask-become-pass --check

# run it all for real
the-whole-shebang: prep
	ansible-playbook ${playbook} --ask-become-pass

build:
	docker build -t ${image} .

# TODO: Change to make install or dry-run once the repo is not in revamp mode,
# also need to install anything in requirements file before testing
test:
	docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} \
		${image} make syntax-check
