# docker build -t korzhynskiy/multi-client:latest -t korzhynskiy/multi-client:$GIT_SHA -f ./client/Dockerfile ./client
# docker build -t korzhynskiy/multi-server:latest -t korzhynskiy/multi-server:$GIT_SHA -f ./server/Dockerfile ./server
# docker build -t korzhynskiy/multi-worker:latest -t korzhynskiy/multi-worker:$GIT_SHA -f ./worker/Dockerfile ./worker

# docker push korzhynskiy/multi-client:latest
# docker push korzhynskiy/multi-server:latest
# docker push korzhynskiy/multi-worker:latest

# docker push korzhynskiy/multi-client:$GIT_SHA
# docker push korzhynskiy/multi-server:$GIT_SHA
# docker push korzhynskiy/multi-worker:$GIT_SHA

kubectl apply -f k8s

# kubectl set image deployments/client-deployment client=korzhynskiy/multi-client:$GIT_SHA
# kubectl set image deployments/server-deployment server=korzhynskiy/multi-server:$GIT_SHA
# kubectl set image deployments/worker-deployment worker=korzhynskiy/multi-worker:$GIT_SHA