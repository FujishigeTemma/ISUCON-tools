# ISUCON tools

## pre-requisite
- ansible 2.13.1
- python 3.10.5
- local settings
  - SSH config
  - hosts file

## workflow
0. `export ANSIBLE_VAULT_PASSWORD_FILE=./vault_pass.txt`
1. setup vars
2. `ansible-playbook 1-install.yml`
3. `ansible-playbook 2-cleanup.yml`

## commands
| command    | function                      |
| ---------- | ----------------------------- |
| `diagnose` | インスタンスのスペックやパラメーターに関する各種情報の表示 |

## alias
| alias | full command      | memo             |
| ----- | ----------------- | ---------------- |
| `sc`  | `systemctl`       |                  |
| `jc`  | `jounalctl`       |                  |
| `jcf` | `jounalctl -f -u` | `-u, --unit=UNIT|PATTERN`: `jcf nginx` |
| `rt`  | `exec $SHELL -l`  |                  |

### git
| alias | full command                         | memo |
| ----- | ------------------------------------ | ---- |
| `lg ` | `log --stat --graph --decorate=full` |      |
