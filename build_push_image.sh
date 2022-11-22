#! /bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Github Packages.
docker tag item-app:v1 ghcr.io/brandon-julio-t/item-app:v1

# Login ke Github Packages via Terminal.
export CR_PAT=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
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

# Mengunggah image ke Github Packages.
docker push ghcr.io/brandon-julio-t/item-app:v1
