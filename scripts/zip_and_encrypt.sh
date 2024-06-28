#!/bin/bash

###################################
# Description: runs the standard zip and encrypt process that is compatible
#   with the Safe Harbor Ingestion service (SHI).
#   
#   Delivery ready files will be output to the /output folder.
###############

# for each file in /data
#   compress/zip it
#   encrypt it
#   make sure it's in the /output folder

echo "Finished zipping and encrypting the following files:"