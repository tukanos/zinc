# NOTES

The tonelize branch marks the point at which we should merge new commits from the master branch using the createZincClientProjectAndPackages.stone script. Downstream from the tonelize SHA on the rowanize branch, changes are made directly to the packages that are part of the port.

The script createZincClientProjectAndPackages.stone deletes the rowan directory structure, to convert the filetree packages to tonel packages so we need a point where the conversion of new master branch commits will not destroy GemStone porting information ...
