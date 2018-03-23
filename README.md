# role-selinux

Ansible role to install and configure a comple SELinux setup

The role is fully generic and supports a variety of settings:

* Installs and guarantees that SELinux is enabled (in either permissive or enforcing mode)
* Allows configuration of booleans, ports and permissive domains
* It can set the contexts on the file systems
* It can build and install custom SELinux policies

## Requirements

The role requires RHEL/CentOS 7 to work.

## Role Variables

The variables are fully documented in the [default configuration](defaults/main.yml) file, including their default values and some examples.

| Variable                 | Default     | Description                               |
| :---                     | :---        | :---                                      |
| `selinux_policy`         | `targeted`  | Policy of SELinux.                        |
| `selinux_state`          | `enforcing` | Status of SELinux.                        |
| `selinux_booleans`       | `[]`        | Booleans to configure.                    |
| `selinux_permissive`     | `[]`        | Permissive domain in SELinux policy.      |
| `selinux_ports`          | `[]`        | SELinux network port type definitions.    |
| `selinux_fcontext`       | `[]`        | SELinux file context mapping definitions. |
| `selinux_custom_modules` | `[]`        | Compile and install custom policies.      |
| `selinux_files_context`  | `[]`        | Set contexts to file systems.             |

## Example Playbook

Using the role without any specific configuration is very simple:

```Yaml
- hosts: servers
  roles:
   - role: selinux
```

## License

MIT

## Author Information

[Fabrizio Colonna](colofabrix@tin.it)

## Contributors

Pull requests are also very welcome. Please create a topic branch for your proposed changes. If you don't, this will create conflicts in your fork after the merge.
