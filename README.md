# HealthVerity Safe Harbor Data Provider Tools

## Description

This repository contains a Docker environment for data suppliers to format, compress, and encrypt their data in a consistent way that is compatible with HealthVerity Safe Harbor Ingestion service (SHI).

This environment includes the following tools:

- `dos2unix`
- `gzip`
- `bzip2`
- `gpg@2.2.19`

## Prerequisites

- [Git](https://git-scm.com/)
- [Docker Desktop](https://docs.docker.com/desktop/)
- Docker Compose (installs with Docker Desktop)

## Getting started

### Setup

1. **Clone the repository**

   ```sh
   git https://github.com/healthverity/safe-harbor-data-provider-tools
   cd safe-harbor-data-provider-tools
   ```

2. Copy your data to the `/data` folder.

3. Copy the public key provided by HealthVerity to `/keys/public-key.asc`.

4. Zip and encrypt your data with the standard procedure

    Run one of the following scripts to run the default pipeline.

    - MacOS: `init/zip_and_encrypt-mac.sh`
    - Windows: `init/zip_and_encrypt-win.ps`
    - Linux: `init/zip_and_encrypt-linux.ps`

    This imports the key and runs the standard zip and encrypt procedure on the data in the `/data` folder.

    Your outputs are available in the `/outputs` folder and are ready to deliver to HealthVerity!

### (Optional) Custom data preparation

There may be cases where you want to circumvent or customize the standard zip and encrypt procedure.
To run your own commands in a stable environment, you can use the shell.

#### Start the Bash shell

```sh
docker-compose run data-prep /bin/sh
```

Within the shell, you can run processing steps manually with the utilities installed in the container.
