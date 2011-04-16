# Collabtive-CI

Collabtive-CI is web-based project management software based on Collabtive.
The idea is to maintain the compatibility with the original project adding new features.

* Version: 0.6.5.2


## Requirements

* PHP 5.1 or higher (Recent stable build recommended).
* MySQL 4 or higher.

## Installation instructions

1. Unpack the archive.
2. Upload everything, including the empty /files and /templates_c folders, to your server.
3. Make the following folders & files writable:
* /templates_c
* /files
* /config/standard/config.php
4. Create a new MySQL database for Collabtive.
5. Point your browser to install.php and follow the instructions given.
6. If the installation was successful, delete install.php and update.php.

## Update instructions

1. Unpack the Collabtive-CI Archive
2. Retrieve your config.php from your server
3. Put your config.php in the folder /config/standard/, replacing the blank one.
4. Upload everything to your server, replacing any old Collabtive files
5. Point your browser to update.php.
6. If the update was successful, delete install.php and update.php

## Bugs

[Issue tracker](https://github.com/barbanet/collabtive-ci/issues)

## Change Log

### 0.6.5.2

* Estimated time for each task.

### 0.6.5.1

* Added priorities for tasks.
* Changed email template on Add and Edit task.
* Removed online users indicator and chat on sidebar.
* Restored calendar on sidebar.
* Added current user projects on sidebar.
* Fixed es translation for wrong select key.
* Added CL_BRANCH_VERSION and used into footer template.
* Added auto creation of folder files and templates_c on installation.

## Credits

This is just a small fork from [Collabtive](http://collabtive.o-dyn.de/) by Philipp Kiszka.