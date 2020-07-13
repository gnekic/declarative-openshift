# Route Sharding in Openshift 4 

You can deploy all of these yaml files to Openshift with ```oc apply -f {filename}.yaml```
The ```01_router-internal.yaml``` file defines the internal ingress controller. Be sure to change the domain name with your own.
The ```02_create_app_ns.yaml``` file creates a new namespace/project for your test application.
Deploy a django postgresQL example with ```oc new-app jango-psql-example```. By default this route from this application is exposed to the router-default. Applying the ```03_route-django-psql-example.yaml``` file will allow you to use the internal router due to the ```type: internal```.
The ```03_route-django-psql-example.yaml``` file creates a route. Be sure to use the namespace/project name you just created. Also adjust the value to the host key with the subdomain ```internalapps``` instead of just ```apps```.
