# AnsibleLaptop
Use ansible to create an easy laptop configuration

## Security Mention
Yes, having my laptop configuration online does provide someone with malicious intent about my device.
That said, the convenience of a human readable record of the software I want to have and how to acquire it
far outweighs the risks that might stem from this knowledge being public.  


## Usage
- On a fresh installation of Kubuntu, install git and your editor of choice and clone this repo
- After cloning, running the provided Makefile options will allow you to either fully run the 
playbook or dry-run or check the playbook syntax
- That's it!

### Windows Setup Guide
Using Ansible seemed overkill for the small amount I use it, if my usage goes up significantly I will
reinvigorate this section with automation.

### Lost Phone Plan
A "script" I can run on my life if I ever lose my phone again.  Give myself concrete steps to follow
and give myself the best chance at retrieval and damage minimization.  

##### Useful Examples
- https://odolbeau.fr/blog/how-to-install-your-laptop-with-ansible.html  
- https://github.com/Benoth/ansible-ubuntu  
- https://blog.josephkahn.io/articles/ansible/  
- https://spin.atomicobject.com/2015/09/21/ansible-configuration-management-laptop/  
- https://github.com/ksylvan/AnsibleLaptop  
- https://github.com/iknite/ansible-spotify  

###### Notes
- See main.yml under `laptop` role for reference to run as the user instead of as root  
