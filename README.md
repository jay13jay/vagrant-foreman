# Vagrant-Foreman

<br>

## Description
_______

a vagrant file and collection of bash scripts and ansible roles to configure a foreman/freeipa environment


## QuickStart
_______
- Have VirtualBox installed
- Have Git installed

1) Clone the repo and change into the directory
    ```
    git clone https://github.com/jay13jay/vagrant-foreman.git && cd vagrant-foreman
    ```
2) Set the variables
  - Defaults
    - "scripts/common/vars/main.yml"
      ```
      # vars file for common
      admin_user: admin
      admin_pass: pass

      norm_user: jay
      norm_pass: test

      common_packages:
        - vim
        - nmap
        - python-pip
        - git

      pip_packages:
        - passlib
      ```
    - For questions, please check the individual roles README file
      ```
      {PROJECT_DIRECTORY}/scripts/{ROLE_NAME}/README.md
      ```

2) Bring the vagrant box up
    ```
    vagrant up
    ```

