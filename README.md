This READE.md file contains instructions on how to deploy and test the application locally 

The application runs locally, so the application must be cloned from the GitHub repo. The application makes use of a minikube cluster to host the node and the pods, therefore docker will be needed.
After installation of docker, run minkikube start to start the cluster.

Then run the following commands 
          kubectl apply -f deployment.yaml
          kubectl apply -f service.yaml 
          kubectl apply -f role.yaml
          kubectl apply -f rolebinding.yaml
This will start up the application and also add certificate and RBAC security.

To setup monitoring, you must install Prometheus and Grafana using helm. Then create a namespace for monitoring using kubectl create namespace monitoring. 

You can access Grafana GUI by port-forwarding to any port of your choice. 
