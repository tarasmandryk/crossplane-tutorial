#!/usr/bin/env bash

kubectl port-forward service/argocd-server -n argocd 8080:443
# http://localhost:8080/
echo "ArgoCD Password: $(kubectl --context kind-kind get secrets argocd-initial-admin-secret -n argocd --template="{{index .data.password | base64decode}}")"
# ArgoCD Password: 9mOBhWZmpUkStLHH
