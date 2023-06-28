# FRONTEND
kubectl apply -f frontend/karsajobs-ui-service.yml -f frontend/karsajobs-ui-deployment.yml

# Jeda 15 detik
echo 'Almost done...'
sleep 15

# Cek semua objek pada namespace default
kubectl get all -n default
