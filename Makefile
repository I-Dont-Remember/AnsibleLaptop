.PHONY: test

install:
	ansible-playbook ubuntu-dev.playbook.yml --ask-become-pass


dry-run:
	ansible-playbook ubuntu-dev.playbook.yml --ask-become-pass --check

syntax-check:
	ansible-playbook ubuntu-dev.playbook.yml --syntax-check

# TODO: Change to make install or dry-run once the repo is not in revamp mode,
# also need to install anything in requirements file before testing
test:
	docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} \
		ansible-test make syntax-check
