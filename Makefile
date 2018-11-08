.PHONY: test prep

playbook := dev-machine.playbook.yml
singleRolePlaybook := test-single-role.playbook.yml
testPlaybook := testPlaybook.yml
image := ansible-test
role := brave

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

# use sed to change what our role under test is in the single playbook file,
# easier than trying to do workaround with tags
test-local-role:
	cp ${singleRolePlaybook} ${testPlaybook} && sed -i "s/&&&/${role}/g" ${testPlaybook} && \
		echo "[*] testing role ${role}..." && docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} ${image} ansible-playbook ${testPlaybook}; \
		rm ${testPlaybook}