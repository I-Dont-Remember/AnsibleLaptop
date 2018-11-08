# AnsibleLaptop

Use Ansible to put our machine setup and preferences into version control, making life easier if my laptop spontaneously combusts.

**Continuing Question:** What is the best way to keep this repo up to date and make it simle to incrementally add pieces? Documentation is inherently stale as soon as it's written, so how can we approach this?

## Layout

`roles/` holds a single level of all roles and `group-roles/` helps to gather similar ones together, such as `browsers`.  
This ideally helps our playbooks to be easily-readable and we can change the inner workings of either `roles` or `group-roles` without affecting the playbooks.

## Usage

-   On a fresh installation of Ubuntu (also probably functional on any distro using `apt`), install git and your editor of choice and clone this repo
-   After cloning, running the provided Makefile options will allow you to either fully run the
    playbook, dry-run, test, or just check the playbook syntax.
-   That's it!

### Windows Setup Guide (Indefinite hold since we never use Windows)

Using Ansible seemed overkill for the small amount I use it, if my usage goes up significantly I will
reinvigorate this section with automation.

### Mac Setup Guide

Since we've been forced to use Macbooks at work and that seems like a common trend for tech companies, we need a plan
to handle getting our setup done on OSX. Most of this should be able to be handled within each role, checking OS
from the ansible facts and acting accordingly.

### Lost Phone Plan (In progress)

A "script" I can run on my life if I ever lose my phone again. Give myself concrete steps to follow
and give myself the best chance at retrieval and damage minimization.

#### Useful Examples

-   https://odolbeau.fr/blog/how-to-install-your-laptop-with-ansible.html
-   https://github.com/Benoth/ansible-ubuntu
-   https://blog.josephkahn.io/articles/ansible/
-   https://spin.atomicobject.com/2015/09/21/ansible-configuration-management-laptop/
-   https://github.com/ksylvan/AnsibleLaptop
-   https://github.com/iknite/ansible-spotify

#### Testing

The Dockerfile is laid out to build a fresh image ready for testing. Build it and run `docker run image-name make install`
to apply the Ansible playbook. In the future it is probably worth switching over to [provision_docker](https://github.com/chrismeyersfsu/provision_docker).
Other testing strategies are being researched as well and will be added in the coming months.
There is also a `make test` available for the image built by `make build`.
To test a single role while developing it (Only set up for Ubuntu 18.04 testing currently), use `make test-local-role role=<role-name>`.

###### Notes

-   See `dotfiles` role for reference to run as the user instead of as root
