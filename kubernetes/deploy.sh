# MONGODB
kubectl apply -f mongodb/mongo-secret.yml -f mongodb/mongo-configmap.yml -f mongodb/mongo-pv-pvc.yml -f mongodb/mongo-service.yml -f mongodb/mongo-statefulset.yml

# BACKEND
kubectl apply -f backend/karsajobs-service.yml -f backend/karsajobs-deployment.yml

# FRONTEND
kubectl apply -f frontend/karsajobs-ui-service.yml -f frontend/karsajobs-ui-deployment.yml

# Jeda 30 detik
sleep 30

# Cek semua objek pada namespace default
kubectl get all -n default