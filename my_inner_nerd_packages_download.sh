#!/bin/bash
now=$(date +"%Y-%m-%d-%H%M%S")
log_folder=logs
log_file=my_inner_nerd_packages_download
log_file=$log_file-$now.log

wget --no-check-certificate --output-file=$log_folder/$log_file --directory-prefix=my_inner_nerd_packages --input-file=my_inner_nerd_packages.lst --timestamping --show-progress
