minikube stop;minikube delete;
minikube start --driver=docker;
kubectl create namespace clearml;
kubectl label nodes minikube app=clearml;
helm install allegroai/clearml-server-chart --namespace=clearml --generate-name --values values.yaml


clearml-task --project server1 --name lightbgmwithrequirements --script train_with_lightbgm.py --queue default --requirements requirements.txt
