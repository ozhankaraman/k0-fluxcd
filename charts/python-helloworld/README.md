# python-helloworld application helm charts
---

## Installing Helm Chart manually
```
helm install python-helloworld-prod -f v.yaml .
```

## Debugging Helm Chart in dry-run mode with predefined values from v.yaml file
```
helm install --debug --dry-run python-helloworld-prod -f v.yaml .
````

## Removing an Installed Helm Chart from current Kubernetes namespace
```
helm delete python-helloworld-prod
````

## List Installed Helm Charts on All Kubernetes namespaces
```
helm ls -A
```

