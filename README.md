# safe-harbor-data-provider-tools

Thank you and welcome to being a data provider in the HealthVerity Audience Manager ecosystem. The Safe Harbor compliant data you provide will be used to fuel state of the art machine learning and statistical modeling.

A HealthVerity team member has likely met with you to review the steps required to send your data to us. This repository serves as a shortcut to performing those steps. Rather than download, configure and perhaps automate these steps our team has containerized the workflow for you. If you have [docker](https://www.docker.com/) and [Git](https://git-scm.com/) available, you are ready to encrypt.

## Requirements

- [docker](https://www.docker.com/) 
- [Git](https://git-scm.com/) 

It is also helpful to have a terminal available. These instructions will work using unix shells as well as the command prompt or powershell on Windows machines. It is also possible to simply use the [Docker Desktop](https://www.docker.com/products/docker-desktop/) application to run these through its built in terminal. If you are not able to use these tools please reach back out to your HealthVerity contact and we will provide you documentation and assistance to work through this within your local system.

## What is this container doing

The Audience Manager application has specific requirements around data format. Most of the difficulty providers encounter is around the encryption process. Data must be GPG encrypted and due to breaking releases we have a requirement as to what version of [GNU Privacy Guard](https://gnupg.org/) is utilized. This docker configuration ensures you comply with those requirements. On a whole it will give you a single command access to:

- Read in a CSV File
- Compress it using [gzip](https://www.gzip.org/) 
- Encrypt it using GNU Privacy Guard version 2.2.xx

The primary reason for this is to remove the efforts you may need to make fighting with your system's package manager to install the required version of GPG.

## Terms and conditions

This software repository is fully open source and released under a permissive [MIT License](https://github.com/healthverity/safe-harbor-data-provider-tools/blob/main/LICENSE) which should allow you to easily integrate it into any systems you require.

## Questions

If you have any questions regarding this tool or perhaps you were looking for information on HealthVerity's Audience Manager our home page is located [here](https://healthverity.com/audience-manager/) or email [info@healthverity.com](info@healthverity.com).
