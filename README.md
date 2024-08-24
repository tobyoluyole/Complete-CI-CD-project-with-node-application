This READE.md file contains instructions on how to deploy and test the application locally 

The application runs locally, so you will need to clone the github repo. The application makes use of a minikube cluster to host the node and the pods, so docker will be needed
After installation of docker, run minkikube start to start the cluster 
Then run the followimg commands 
          kubectl apply -f deployment.yaml
          kubectl apply -f service.yaml 
          kubectl apply -f role.yaml
          kubectl apply -f rolebinding.yaml
This will start up the application and also add certificate and RBAC security 

To setup monitoring, you will need to install prometheus and grafana using helm. Then create a name space for monitoring using kubectl create namespace monitoring. 

You can access grafana GUi by port-forwarding to any port of your choice. 
