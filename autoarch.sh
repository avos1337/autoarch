#!/bin/bash

# Dank arch machine setup starts here
pacman -Syu --noconfirm    # Update all packages

# Setup configuration and variables
./config.sh

# Move resources to their appropriate places
./sas/mover.sh

su $nonrootusr 

# Run standalone scripts
sudo ./sas/install.sh # Install binary packages

sudo ./sas/mover.sh





# Dank arch machine setup ends here
sudo pacman -Syu --noconfirm    # Update all packages

sudo reboot     #Reboot dank machine
