# How to deploy a Dockerized Mendix app in Cloud Foundry
This project contains a script which shows how to easily deploy a Mendix app in CF using Docker.

## Requisities
* IBM bluemix account
* cf cli
* jq command

``` source deploy.sh <APP_NAME>```

## Limitations
The script is tested using IBM Bluemix and ```ElephantSQL```. Although, it should be compatible with any ```CF``` installation.
