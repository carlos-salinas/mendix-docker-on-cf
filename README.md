# How to deploy a Dockerized Mendix app in Cloud Foundry
This a project contains a scripts which shows how to easily deploy a Mendix app on CF using Docker.

## Requisities
* IBM bluemix account
* cf cli
* jq command

``` source deploy.sh <APP_NAME>```

## Limitations
The script is tested using IBM Bluemix and ```ElephantSQL```. Although, it should compatible with any ```CF``` installation.