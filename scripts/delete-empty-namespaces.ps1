$out = (kubectl get namespace -o json | convertfrom-json | select -ExpandProperty items | % {kubectl get all --namespace=$($_.metadata.name) 2>&1} | select-string "no resour" | select -expand line | where {$_ -notlike '*kube-*'}).replace('No resources found in','').replace('namespace.','').trim()

$out | % {kubectl delete namespace $_}

