#!/bin/sh
pnum=3

apt update && apt upgrade
echo "Repositories updated (1/$pnum)"

pkg install proot proot-distro
echo "Proot and proot-distro installed (2/$pnum)"

# Available distros:
#	alpine
#	archlinux
#	nethunter
#	ubuntu

proot-distro install archlinux 
echo "Arch linux installed (3/$pnum)"
#	proot-distro help
#	proot-distro list
#	proot-distro install
#	proot-distro login
#	proot-distro remove
#	proot-distro reset

proot-distro login archlinux

