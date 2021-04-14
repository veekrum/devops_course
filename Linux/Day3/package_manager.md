### Diff Package manager for diff distros
1. DPKG – Debian Package Management System
    - Aptitude Package Manager
2. RPM (Red Hat Package Manager)
    - RPM - redhat
    - YUM (Yellowdog Updater, Modified) - centos
    - DNF – Dandified Yum - redhat
3. Pacman Package Manager – Arch Linux
4. Zypper Package Manager – openSUSE
5. Portage Package Manager – Gentoo

### popular ways to install packages
1. Install by package manager
2. Install by deb packages
3. Install by compling binaries

link: https://www.softwaretestinghelp.com/3-major-ways-how-to-install-new-software-on-linux/

link: https://www.tecmint.com/apt-advanced-package-command-examples-in-ubuntu/

## search the package

The apt package manager works on a local database/cache of available packages from various repositories. This database contains the information about the available package version, dependencies etc. It doesn’t contain the entire package itself. The packages are downloaded from the remote repositories.
When you run the `sudo apt update` command, this cache is created/updated in the `/var/lib/apt/lists/` directory. The `apt search` and `apt show` commands utilize this cache.

Check certain package is available to install via apt package manager?

`$ apt search tree`

`$ apt-cache search tree`

The apt show command provides detailed information on a package:
`$ apt show tree`

The option ‘clean’ or ‘autoclean’ remove all old local repository of downloaded package files. 
`$ sudo apt autoclean`

### Diff between the purge and the remove 

When you run apt with remove, it only removes the package files but configuration files remain on the system. Therefore to remove a package and it’s configuration files, you will have to use purge.

`$ sudo apt purge tree`

`$ sudo apt remove tree`

### Diff between update and upgrade

The update command only updates the package list with the latest available versions, however, it does not install or upgrade the package. The upgrade command actually upgrades and installs the latest versions of packages that are already installed.

`$ sudo apt update`

`$ sudo apt upgrade`

`$ sudo apt dist-upgrade`

### help
apt --help


