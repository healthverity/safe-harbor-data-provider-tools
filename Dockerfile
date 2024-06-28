# Use an official Ubuntu as a parent image
FROM ubuntu:20.04

# Set the environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && \
    apt-get install -y \
    dos2unix \
    gzip \
    bzip2 \
    gnupg && \
    # Clean up
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verify the installation
RUN dos2unix --version && \
    gzip --version && \
    bzip2 --version && \
    gpg --version

# Set the working directory
WORKDIR /data

COPY entrypoint.sh /entrypoint.sh
COPY scripts/* /scripts/
RUN chmod +x /entrypoint.sh
RUN chmod +x /scripts/*

# Define entrypoint
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/scripts/key-import.sh && /bin/bash"]