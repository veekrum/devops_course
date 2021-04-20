#!/bin/bash
set -xe
echo
echo " Covid is on the Way, Which class do you prefer?"
echo "   1) Physical Class (recommended)"
echo "   2) Virtual Class"
read -p "choose class : " class
until [[ -z "$class" || "$class" =~ ^[12]$ ]]; do
	echo "$class: invalid selection."
	read -p "class : " class
done
case "$class" in
	1|"") 
	echo "You choosed $class: Physical Class"
	;;
	2) 
	echo "You choosed $class: Virtual Class"
	;;
esac
