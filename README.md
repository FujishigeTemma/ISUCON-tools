# ISUCON tools

## pre-requisite
- ansible 2.13.1
- python 3.10.5
- local settings
  - SSH config
  - hosts file
- secrets
  - `vault.yaml`
  - `roles/common/files/id_ed25519(.pub)`

## workflow
0. `export ANSIBLE_VAULT_PASSWORD_FILE=./vault_pass.txt`
1. `vars`の調整
2. `ansible-playbook playbooks/1-install.yml`
3. `ansible-playbook playbooks/2-cleanup.yml --tags "cleanup"`

## commands
| command    | function                                                   |
| ---------- | ---------------------------------------------------------- |
| `diagnose` | インスタンスのスペックやパラメーターに関する各種情報の表示 |

## alias
| alias | full command     | memo |
| ----- | ---------------- | ---- |
| `sc`  | `systemctl`      |      |
| `jc`  | `jounalctl`      |      |
| `rt`  | `exec $SHELL -l` |      |

### git
| alias | full command                         | memo |
| ----- | ------------------------------------ | ---- |
| `lg ` | `log --stat --graph --decorate=full` |      |
