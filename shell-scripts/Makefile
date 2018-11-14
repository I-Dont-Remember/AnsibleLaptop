.PHONY: test-single

single-template := test-single-template.sh
single-test := test-single-function.sh
function := install-firefox
image := 18.04-configuration

build:
	docker build -t ${image} .


shell:
		docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} \
		${image} /bin/bash

test-single:
		cp ${single-template} ${single-test} && sed -i "s/&&&/${function}/g" ${single-test} && \
		echo "[*] testing function ${function}..." && docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} ${image} /bin/bash ${single-test}; \
		rm ${single-test}