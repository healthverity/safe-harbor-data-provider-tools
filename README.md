# safe-harbor-data-provider-tools

Thank you and welcome to being a data provider in the HealthVerity Audience Manager ecosystem. The Safe Harbor compliant data you provide will be used to fuel state of the art machine learning and statistical modeling.

A HealthVerity team member has likely met with you to review the steps required to send your data to us. This repository serves as a shortcut to performing those steps. Rather than download and configure the appropriate tools our team has containerized the workflow for you. If you have [docker](https://www.docker.com/) and [Git](https://git-scm.com/) available, you are ready to encrypt.

## Requirements

- [docker](https://www.docker.com/) 
- [Git](https://git-scm.com/) 
- A public key file provided to you by HealthVerity

It is also helpful to have a terminal available. These instructions will work using Unix shells as well as the command prompt or PowerShell on Windows machines. It is also possible to simply use the [Docker Desktop](https://www.docker.com/products/docker-desktop/) application to run these through its built in terminal. If you are not able to use these tools please reach back out to your HealthVerity contact and we will provide you documentation and assistance to work through this within your local system.

## What is this container doing

The Audience Manager application has specific requirements around data format. Most of the difficulty providers encounter is around the encryption process. Data must be GPG encrypted and due to breaking releases we have a requirement as to what version of [GNU Privacy Guard](https://gnupg.org/) is utilized. Depending on your operating system this can be a chore to get installed. This docker configuration ensures you comply with those requirements. On a whole it will give you a single command access to:

- Read in a CSV File
- Formatting the line terminators
- Compress it using [gzip](https://www.gzip.org/) 
- Encrypt it using GNU Privacy Guard version 2.2.xx

## Usage

To use this container please do the following.

1 - Clone this repository

``` shell
git clone git@github.com:healthverity/safe-harbor-data-provider-tools.git

# or 

git clone https://github.com/healthverity/safe-harbor-data-provider-tools.git
```

2 - Move into the directory and copy your data and key into the directory

``` shell
cd /path/to/safe-harbor-data-provider-tools
cp /path/to/your_file.csv /path/to/safe-harbor-data-provider-tools/your_file.csv
cp /path/to/public_key.asc /path/to/safe-harbor-data-provider-tools/public_key.asc
```

3 - Execute the containerized process specifying your data and key

```shell
INPUT_FILE=your_file.csv PUBLIC_KEY=public_key.asc docker-compose run --rm safe-harbor-provider-tools
```

Simply replace `your_file.csv` with the csv file you wish to prepare and `public_key.asc` with the public key file you were provided by HealthVerity

4 - That's it!

After completion there will be a matching `your_file.csv.gz.gpg` containing your file encrypted per spec. You can send this to HealthVerity.

## Questions

If you have any questions regarding this tool or perhaps you were looking for information on HealthVerity's Audience Manager our home page is located [here](https://healthverity.com/audience-manager/).

If you have general questions about Audience Manager you could also email us: [info@healthverity.com](info@healthverity.com)
If you need support with this process please use this email instead:[support@healthverity.com](support@healthverity.com) 
