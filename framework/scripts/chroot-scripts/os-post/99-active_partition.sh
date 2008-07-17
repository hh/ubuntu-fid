#!/bin/sh
#
#       <99-active-partition.sh>
#
#       Sets the bootable partition to be the resultant install partition
#       It's done as a final step in case there is a power outage anywhere
#       during installation
#
#       Copyright 2008 Dell Inc.
#           Mario Limonciello <Mario_Limonciello@Dell.com>
#           Hatim Amro <Hatim_Amro@Dell.com>
#           Michael E Brown <Michael_E_Brown@Dell.com>
#
#       This program is free software; you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation; either version 2 of the License, or
#       (at your option) any later version.
#
#       This program is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#
#       You should have received a copy of the GNU General Public License
#       along with this program; if not, write to the Free Software
#       Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#       MA 02110-1301, USA.

. /mnt/scripts/chroot-scripts/fifuncs ""

IFHALT "Activate bootable partition..."

#Sets the active partition to the newly installed partition
#as a last step, in the event of a possible power outage
sfdisk -A$BOOT_PART_NUM $BOOTDEV
