#!/bin/bash
now=$(date +"%Y-%m-%d-%H%M%S")
log_folder=logs
log_file=my_inner_nerd_packages_install
log_file=$log_file-$now.log

_base="./my_inner_nerd_packages"
_dfiles="${_base}/*.txz"

for f in $_dfiles
do
  upgradepkg --install-new --reinstall $f |& tee $log_folder/$log_file 
done
