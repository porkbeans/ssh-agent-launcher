# ssh-agent-launcher
Enable / Disable ssh-agent to launch automatically on terminal opened.

## Usage
```
ssh-agent-launcher <SUBCOMMAND> [<ARGS>]
ssh-agent-launcher help
ssh-agent-launcher { enable | disable } [<SHELL>]

SUBCOMMAND:
	help:		Print usage.
	enable:		Enable ssh-agent to start automatically specified shell.
	disable:	Disable ssh-agent to start automatically specified shell.

SHELL:	ssh-agent starts automatically on target shell.
		If no shell given, the environment variable $SHELL will be used.
```

Currently Available Shell:
* bash
* dash
* sh
* ksh
* zsh

## Prerequisite
Common:
* POSIX compliant shell (e.g. bash, dash, etc.)

RHEL, Fedora, CentOS:

* coreutils
* sed
* openssh-clients

Debian, Ubuntu:

* coreutils
* sed
* openssh-client

## Install
```
git clone https://github.com/porkbeans/ssh-agent-launcher.git
cd ssh-agent-launcher
make install
```

## Uninstall
In the local ssh-agent-launcher repository:
```
make uninstall
```

## Example
### Case 1: Simply enable.
If you use dash, to enable ssh-agent to start automatically from then new terminal opened:
```
$ ssh-agent-launcher enable dash
The plugin for dash loaded.
Complete: ssh-agent enabled.
```

### Case 2: Enable and open new terminals.
If you use dash, to enable ssh-agent to start automatically from then new terminal opened:
```
$ ssh-agent-launcher enable bash
The plugin for bash loaded.
Complete: ssh-agent enabled.
```

When new terminal is opened and ssh-agent isn't started yet:
```
Could not open a connection to your authentication agent.
ssh-agent: Starting....Agent pid 39423
Enter passphrase for /home/user/.ssh/id_ed25519: 
Identity added: /home/user/.ssh/id_ed25519 (/home/user/.ssh/id_ed25519)
$
```

When new terminal is opened and SSH keys has already added:
```
ssh-agent: Identity already exists.
$
```

