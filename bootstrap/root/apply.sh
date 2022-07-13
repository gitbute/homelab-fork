#!/bin/sh

VALUES="values.yaml"

curl -fks --connect-timeout 5 https://git.172-28-0-3.nip.io \
    || VALUES="values-seed.yaml"

helm template \
    --include-crds \
    --namespace argocd \
    --values "${VALUES}" \
    argocd . \
    | kubectl apply -n argocd -f -
