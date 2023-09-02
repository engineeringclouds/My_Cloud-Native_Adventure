### Key Terms 

Key terms to know as you start your Kubernetes learning journey.

* **Control Plane:** Container orchestration layer that exposes the API to define, deploy, and manage the lifecycle of containers.
* **kube-apiserver:** Component of Kubernetes Control Plane that exposes the API. It is the frontend for the Kubernetes Control Plane.
* **etcd:** Consistent and highly-available key value store used as Kubernetes' backing store for all cluster data.
* **kube-scheduler:** Control plane component that watches for newly created Pods with no assigned node, and selects a node for them to run on.
* **kube-controller-manager:** Control plane component that runs controller processes.
* **Kubelet:** An agent that runs on each cluster node. It ensures that containers are running in a Pod.
* **kube-proxy:** Network proxy that runs on each node in your cluster, implementing part of the Kubernetes Service concept.
* **Node:** A worker machine in Kubernetes.
* **Pods:** Smallest deployable unit of compute in Kubernetes. A Pod is a group of one or more containers with shared storage and network resources.
* **Container Runtime Interface (CRI):** CRI is a plugin that enables the kubelet to use a variety of container runtimes. It is the main protocol for communication between the kubelet and Container Runtime.
* **Container Runtime:** A fundamental component that empowers Kubernetes to run containers effectively. It is responsible for managing the execution and lifecycle of containers within the Kubernetes environment. Examples include _containerd_, _CRI-O_, etc.


> Reference: [Kubernetes Components](https://kubernetes.io/docs/concepts/overview/components/)