 ## Prerequisites
 #### Minikube: A local Kubernetes cluster.
#### Docker: For building and managing Docker containers.
#### kubectl: The Kubernetes command-line tool.
#### Java (JDK 11 or higher): For building the Java application.

### Create Docker Image
``` 
vi Dockerfile
```
#### Build the Docker image by running the following command 
```
docker build -t my-java-webapp .
 ```
 This command will create a Docker image

 ## Create Kubernetes YAML Files
 #### a. Deployment YAML
 ``` 
 vi deployment.yaml
 ```
 #### b. Service YAML
 ```
 vi service .yaml
 ```
 To check the content written inside the YAML Files
 ```
 cat deployment.yaml
 cat service.yaml
 ```


 ## Deploy on Kubernetes
Apply the Deployment and Service:

Use the kubectl command to apply the YAML files:
```
kubectl apply -f deployment.yaml
```
```
kubectl apply -f service.yaml
```
##  Verify the Deployment:

Check if the pod is running:
```
kubectl get pods
```
## Deploy to Kubernetes (Minikube)
#### Start Minikube
Ensure that Minikube is running by starting the local Kubernetes cluster:
```
minikube start
````
## Output

![logs]()