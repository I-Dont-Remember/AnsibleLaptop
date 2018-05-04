# AnsibleLaptop
Use Ansible to put our machine setup and preferences into version control, making life easier if my laptop spontaneously combusts.

## Layout
`roles/` holds a single level of all roles and `group-roles/` helps to gather similar ones together, such as `browsers`.  
This ideally helps our playbooks to be easily-readable and we can change the inner workings of either `roles` or `group-roles` without affecting the playbooks.

## Usage
- On a fresh installation of Ubuntu (also probably functional on any distro using `apt`), install git and your editor of choice and clone this repo
- After cloning, running the provided Makefile options will allow you to either fully run the 
playbook or dry-run or check the playbook syntax
- That's it!

### Windows Setup Guide
Using Ansible seemed overkill for the small amount I use it, if my usage goes up significantly I will
reinvigorate this section with automation.

### Lost Phone Plan
A "script" I can run on my life if I ever lose my phone again.  Give myself concrete steps to follow
and give myself the best chance at retrieval and damage minimization.  

#### Useful Examples
- https://odolbeau.fr/blog/how-to-install-your-laptop-with-ansible.html  
- https://github.com/Benoth/ansible-ubuntu  
- https://blog.josephkahn.io/articles/ansible/  
- https://spin.atomicobject.com/2015/09/21/ansible-configuration-management-laptop/  
- https://github.com/ksylvan/AnsibleLaptop  
- https://github.com/iknite/ansible-spotify  

#### Testing
The Dockerfile is laid out to build a fresh image ready for testing.  Build it and run `docker run image-name make install`
to apply the Ansible playbook.  In the future it is probably worth switching over to [provision_docker](https://github.com/chrismeyersfsu/provision_docker).
Other testing strategies are being researched as well and will be added in the coming months.
There is also a `make test` available if the image is named `ansible-test`

###### Notes
- See `dotfiles` role for reference to run as the user instead of as root  
