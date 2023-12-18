#!/bin/bash

# Usando o docker do minikube
eval $(minikube docker-env)

# Builda a imagem da API (./api)
docker build -t foodadvisor-api:1.0.0 ./api

# Builda a imagem do front (./client)
docker build -t foodadvisor-client:1.0.0 ./client


# Instala a aplicação no cluster
helm install foodadvisor ./strapi-foodadvisor