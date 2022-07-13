#!/bin/sh

VALUES="values.yaml"

curl -fks --connect-timeout 5 https://git.127-0-0-1.nip.io \
    || VALUES="values-seed.yaml"

helm template \
    --include-crds \
    --namespace argocd \
    --values "${VALUES}" \
    argocd . \
    | kubectl apply -n argocd -f -
