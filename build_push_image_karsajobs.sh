# TODO 2.1: Perintah untuk build
docker build --tag ghcr.io/yusufsugiono/karsajobs:latest .

# TODO 2.2: Docker Login ke GitHub Package
echo $PAT | docker login ghcr.io --username yusufsugiono --password-stdin

# TODO 2.3: Push image ke GitHub Packages
docker push ghcr.io/yusufsugiono/karsajobs:latest
