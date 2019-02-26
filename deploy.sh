docker build -t vitkoczi/multi-client:latest -t vitkoczi/multi-client:$SHA -d ./client/Dockerfile ./client
docker build -t vitkoczi/multi-server:latest -t vitkoczi/multi-server:$SHA -d ./server/Dockerfile ./server
docker build -t vitkoczi/multi-worker:latest -t vitkoczi/multi-worker:$SHA -d ./worker/Dockerfile ./worker
docker push vitkoczi/multi-client:latest
docker push vitkoczi/multi-server:latest
docker push vitkoczi/multi-worker:latest
docker push vitkoczi/multi-client:$SHA
docker push vitkoczi/multi-server:$SHA
docker push vitkoczi/multi-worker:$SHA
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=vitkoczi/multi-server:$SHA
kubectl set image deployments/client-deployment client=vitkoczi/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=vitkoczi/multi-worker:$SHA
