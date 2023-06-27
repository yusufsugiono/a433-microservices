# TODO 3.1: Membuat / build image item-app dari Dockerfile
docker build --tag item-app:v1 .

# TODO 3.2: Menampilkan daftar image yang ada di lokal
docker images

# TODO 3.3: Mengubah nama image untuk di-push ke GitHub Packages
docker tag item-app:v1 ghcr.io/yusufsugiono/item-app:v1

# TODO 3.4: Docker Login ke GitHub Package
echo $PAT | docker login ghcr.io --username yusufsugiono --password-stdin

# TODO 3.5: Push image ke GitHub Packages
docker push ghcr.io/yusufsugiono/item-app:v1