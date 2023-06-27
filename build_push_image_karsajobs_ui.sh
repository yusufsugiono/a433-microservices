# TODO 2.1: Perintah untuk build
docker build --tag ghcr.io/yusufsugiono/karsajobs-ui:latest .

# TODO 2.2: Perintah untuk login
echo $PAT | docker login ghcr.io --username yusufsugiono --password-stdin

# TODO 2.3: Perintah untuk push image
docker push ghcr.io/yusufsugiono/karsajobs-ui:latest
