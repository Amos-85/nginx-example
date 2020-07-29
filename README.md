## Nginx App  

### Guideline  

* Create the docker image by running from the project directory:  
 `docker build . -t <registry/repo/>`  

* Push the image to remote docker registry:  
 `docker push <newImage>`  

* Deploy on k8s by running:  
 `helm install nginx chart/`

* Run helm chart test:  
`helm test nginx`
