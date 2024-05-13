#!/bin/bash

set -e

######################################################################################
#                                                                                    #
# Project 'pelican-installer'                                                        #
#                                                                                    #
# Copyright (C) 2018 - 2024, Vilhelm Prytz, <vilhelm@prytznet.se>                    #
#                                                                                    #
#   This program is free software: you can redistribute it and/or modify             #
#   it under the terms of the GNU General Public License as published by             #
#   the Free Software Foundation, either version 3 of the License, or                #
#   (at your option) any later version.                                              #
#                                                                                    #
#   This program is distributed in the hope that it will be useful,                  #
#   but WITHOUT ANY WARRANTY; without even the implied warranty of                   #
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                    #
#   GNU General Public License for more details.                                     #
#                                                                                    #
#   You should have received a copy of the GNU General Public License                #
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.           #
#                                                                                    #
# https://github.com/AnthonySSC/pelican-installer/blob/main/LICENSE                  #
#                                                                                    #
# This script is not associated with the official Pelican Project.                   #
# https://github.com/AnthonySSC/pelican-installer                                    #
#                                                                                    #
######################################################################################

export GITHUB_SOURCE="main"
export GITHUB_BASE_URL="https://raw.githubusercontent.com/AnthonySSC/pelican-installer"
export CONFIGURE_FIREWALL=true
export CONFIGURE_DBHOST=true
export INSTALL_MARIADB=true
export CONFIGURE_DB_FIREWALL=true
export MYSQL_DBHOST_PASSWORD="test"

# shellcheck source=lib/lib.sh
source /tmp/lib.sh

update_repos

install_packages "curl"

bash /vagrant/installers/wings.sh
