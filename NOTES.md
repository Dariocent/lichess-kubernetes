# Choices to be made

- How to implement MongoDB (statefulsets vs operators) -> (helm chart)
- How to implement Redis (helm chart)
- ArgoCD: One Application for mongodb, one for redis, one for backend/lila-ws, nginx ingress controller
- Create my helm chart referencing others
    - One helm release for mongodb
    - One helm release for redis
    - One helm release for backend
    - One helm release for frontend
    #
    - One helm chart for backend
    - One helm chart for frontend
- How to serve static content (CDN best way but overengineered, build static content directly into the nginx container)
- **WebSockets** in Kubernetes and Nginx Ingress
- Discuss that scaling the backend horizontally involves a lot of complexity

- Helm vs Kustomize

# Other notes

- Include original architecture diagram from lichess repo, maybe do another diagram with the updated architecture

- Domain could be lichess-k8s.cantella.dev

- Phases: Analysis of the current architecture, choose important functionality to migrate first

- What i want to achieve is some grade of separation and modularity but also have the possibility to ship the entire application with one chart; that's because i'm using ArgoCD and i don't want to fragment the things too much.

- If you use Argo then disregard what I said about helmfile. With Argo you make one Application that is a Helm chart. And in it's template folder you put the various Applications (probably Helm charts) that make up your components. Identical to my first list.

# MongoDB

