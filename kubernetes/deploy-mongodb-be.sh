# MONGODB
kubectl apply -f mongodb/mongo-secret.yml -f mongodb/mongo-configmap.yml -f mongodb/mongo-pv-pvc.yml -f mongodb/mongo-service.yml -f mongodb/mongo-statefulset.yml

# BACKEND
kubectl apply -f backend/karsajobs-service.yml -f backend/karsajobs-deployment.yml

# Jeda 15 detik
echo 'Almost done...'
sleep 15

# Cek detail service karsajobs untuk cek NodePort
kubectl describe service karsajobs-service

# Cek nodeIP
kubectl describe node | grep -i address -A 1
