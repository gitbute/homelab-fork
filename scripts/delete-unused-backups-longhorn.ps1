$kube = (kubectl get backup --namespace longhorn-system -o json | convertfrom-json | select -expand items | where {"" -eq $_.status.snapshotname}).metadata.name 

$kube -join " "   

kubectl delete backups.longhorn.io ................. --namespace longhorn-system