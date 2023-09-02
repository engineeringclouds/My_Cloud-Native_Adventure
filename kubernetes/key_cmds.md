### Key Commands

See below for key commands to be familar with as you get to grips with Kubernetes.

```shell
# Apply YAML File to Kubernetes Cluster:
kubectl apply -f file.yaml
```

```shell
# Create Pod YAML using Dry Run:
kubectl run nginx --image=nginx --dry-run=client > nginx-pod.yaml
```