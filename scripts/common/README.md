# Common


- Common packages and configurations for system usability

- Passes in as a list, so configure as so:

  ```
  common_packages:
    - vim
    - nmap

  pip_packages:
    - passlib
  ```

## Requirements
------------

- None

## Role Variables
--------------

- admin_user: Administrator Username
  - Will be added to 'wheel' group, which is given passwordless sudo access
  - defaults:
    ```
    username: admin
    password: pass
    ```
- admin_pass: Administrator Users Password
  - Password to be used for the admin user
  - DO NOT set this to 'admin' or it will break ansible
    - This breakage is due to ansible hiding the password value in the output
    - if the password is the same as the username, it hides the username as well
    - this breaks the register command in ansible, breaking later tasks<br><br><br>
- norm_user: Regular user with no priviledged access, added to 'users' group
  - 'users' group may be modified to give limited sudo access, but freeipa roles will likely be used whereever this is required
  - defaults:
    ```
    username: jay
    password: user
    ```
- norm_pass: Regular Users Password
  - Password to be used for the unpriviledged user


## Dependencies
------------

None


## Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: localhost
      roles:
         - common

## License
-------

BSD

## Author Information
------------------

Josh Hackney<br>
https://github.com/jay13jay<br>
jhaxllc@gmail.com<br>
