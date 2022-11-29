#! /bin/bash

# Perintah untuk build Docker image dari berkas Dockerfile
docker build -t brandon-julio-t/karsajobs-ui:latest .

# Mengubah nama image agar sesuai dengan format Github Packages.
docker tag brandon-julio-t/karsajobs-ui:latest ghcr.io/brandon-julio-t/karsajobs-ui:latest

# Login ke Github Packages via Terminal.
export CR_PAT=<token>
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

# Mengunggah image ke Github Packages.
docker push ghcr.io/brandon-julio-t/karsajobs-ui:latest
