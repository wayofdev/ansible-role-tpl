###
### Variables
###

ANSIBLE_FORCE_COLOR = 1

# https://serverfault.com/questions/1031491/display-ansible-playbook-output-properly-formatted
# https://stackoverflow.com/questions/50009505/ansible-stdout-formatting
ANSIBLE_STDOUT_CALLBACK = unixy


### Playbook name
playbook ?= test.yml
workdir ?= ./tests
inventory ?= inventory.yml
reqs ?= requirements.yml

### Lint yaml files
lint:
	cd $(workdir) && ansible-lint $(playbook) -c ../.ansible-lint
	cd $(workdir) && ansible-playbook $(playbook) --syntax-check
.PHONY: lint

### Run tests
test:
	cd $(workdir) && ansible-playbook $(playbook)
.PHONY: test

test-idempotence:
	idempotence=$(mktemp)
	cd $(workdir) && ansible-playbook $(playbook) | tee -a ${idempotence}
	tail ${idempotence} \
		| grep -q 'changed=0.*failed=0' \
		&& (echo 'Idempotence test: pass' && exit 0) \
		|| (echo 'Idempotence test: fail' && exit 1)
.PHONY: test-idempotence

### List all hostnames
ls-host:
	cd $(workdir) && ansible all -i $(inventory) -m shell -a "hostname;"
.PHONY: ls-host

### Check playbook syntax
check-syntax:
	cd $(workdir) && ansible-playbook $(playbook) -i $(inventory) --syntax-check
.PHONY: check-syntax

### Install ansible dependencies
install-deps:
	ansible-galaxy install -r $(reqs)
.PHONY: install-deps

install-py-deps:
	pip3 install yamllint
	pip3 install ansible-lint
.PHONY: install-py-deps

install-all-deps: install-py-deps install-deps
.PHONY: install-all-deps

### Git
hooks:
	pre-commit install
.PHONY: install-hooks
