# python-helloworld application helm charts
---

## Installing Helm Chart manually
```
helm install python-helloworld-prod -f v-prod.yaml .
```

## Debugging Helm Chart in dry-run mode with predefined values from v-prod.yaml file
```
helm install --debug --dry-run python-helloworld-prod -f v-prod.yaml .
````

## Dry Run Helm Chart without debug with predefined values from v-prod.yaml file
```
helm install --dry-run python-helloworld-prod -f v-prod.yaml .
````

## Removing an Installed Helm Chart from current Kubernetes namespace
```
helm delete python-helloworld-prod
````

## List Installed Helm Charts on All Kubernetes namespaces
```
helm ls -A
```

