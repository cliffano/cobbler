<img align="right" src="https://raw.github.com/cliffano/cobbler/main/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/cliffano/cobbler/workflows/CI/badge.svg)](https://github.com/cliffano/cobbler/actions?query=workflow%3ACI)
[![Security Status](https://snyk.io/test/github/cliffano/cobbler/badge.svg)](https://snyk.io/test/github/cliffano/cobbler)
<br/>

CobblerExample
----------

CobblerExample is a Example Ansible Role for Cobbler .

Usage
-----

Use the role in your playbook:

    - hosts: all

      vars:
        ans_reverse: true
        ans_transformation: 'upper'

      roles:
        - cliffano.cobblerexample