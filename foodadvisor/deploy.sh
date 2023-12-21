#!/bin/bash

# Usando o docker do minikube
eval $(minikube docker-env)

# Builda a imagem da API (./api)
docker build -t foodadvisor-api:0.0.1 ./api

# Builda a imagem do front (./client)
docker build -t foodadvisor-client:0.0.1 ./client


# Instala a aplicação no cluster
helm install foodadvisor ./strapi-foodadvisor
