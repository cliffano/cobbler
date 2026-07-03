<!-- BEGIN:AVATAR -->
![Avatar](avatar.jpg)
<!-- END:AVATAR -->

<!-- BEGIN:BADGES -->
[![Build Status](https://github.com/gepeto/cobblerexample/workflows/CI/badge.svg)](https://github.com/gepeto/cobblerexample/actions?query=workflow%3ACI)
[![Security Status](https://snyk.io/test/github/gepeto/cobblerexample/badge.svg)](https://snyk.io/test/github/gepeto/cobblerexample)
<!-- END:BADGES -->

# CobblerExample

CobblerExample is a Example Ansible Role for Cobbler .

## Usage

Use the role in your playbook:

```yaml
- hosts: all

  vars:
    ans_reverse: true
    ans_transformation: 'upper'

  roles:
    - cliffano.cobblerexample
```

## Colophon

<!-- BEGIN:DEVELOPERS_GUIDE -->
[Developer's Guide](https://gepeto.github.io/developers-guide-ansible.html)
<!-- END:DEVELOPERS_GUIDE -->

<!-- BEGIN:BUILD_REPORTS -->
Build reports:

* [Lint report](https://gepeto.github.io/cobblerexample/lint/ansible-lint/report.md)
* [Test report](https://gepeto.github.io/cobblerexample/test/molecule/report.txt)

<!-- END:BUILD_REPORTS -->
