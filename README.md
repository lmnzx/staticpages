# staticpages
a simple kubernetes operator for deploying static pages

```yaml
apiVersion: k8s.lemon.com/v1
kind: StaticPage
metadata:
    name: netlify
    namespace: default
spce:
    image: nginx:latest
    content: we have netlify
    replicas: 1
```
