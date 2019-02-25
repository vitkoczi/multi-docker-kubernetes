#Kuick notes during the course#

* kubectl apply -f filename
* kubectl get pods
* kubectl get services
* minikube ip, do not use localhost
* goto that ip in port 31515 there you will see the application
* kubectl describe type objectName
* kubectl.exe describe pod client-pod

### will delete pod what specified in the yaml
* kubectl.exe delete -f client-pod.yaml
* $ kubectl.exe get deployments

* kubectl.exe get pods -o wide
The ip adress here is only internal, should not be used, as could be recreated frequently with pods
NAME                                 READY     STATUS    RESTARTS   AGE       IP           NODE
client-deployment-568cd76755-2nk6n   1/1       Running   0          3m        172.17.0.4   minikube


**update the image in the deployment - by not rewriting the version file**
* kubectl.exe set image <objectType> / <container-name>=<new image name>
* kubectl.exe set image deployment/client-deployment client=vitkoczi/multiclient:0.1
# get logs
kubectl.exe logs <pod-name>

**kubectl.exe  logs pod name**

###Secrets###
kubectl.exe describe storageclass
* https://kubernetes.io/docs/concepts/storage/storage-classes/

** kubectl create secret <generics/dockerhub/tls> 
** secret can store multiple key value pairs**
kubectl create secret generic pgpassword --from-literal PGPASSWORD=123asdf


Ingress
Mandatory command: 
from https://kubernetes.github.io/ingress-nginx/deploy/

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml
minikube addons enable ingress



kubectl.exe get pvc - check persistent volume claim


### miniqube dashboard
