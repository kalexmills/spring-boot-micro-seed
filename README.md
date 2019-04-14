# spring-boot-micro-seed
### Java 11 + Spring Boot + Docker + Kubernetes + Helm

Just a simple seed project combining a basic Spring Boot application with Java 11, Docker, Kubernetes Helm.
Built on top of [distroless by Google](https://github.com/GoogleContainerTools/distroless).

**Deploy to dev from day one!**

### Instructions
**Build with `mvn clean install`.**

Docker image should be created.
```
$ docker images
REPOSITORY                                 TAG                 IMAGE ID            CREATED             SIZE
kalexmills/microsvc-spring-boot            0.0.1-SNAPSHOT      61dbc5a1aed2        3 hours ago
```

**Deploy with `helm helm install target/microsvc-spring-boot-0.0.1.tgz`**

Helm deployment should be created.
```
$ helm list
NAME            REVISION        UPDATED                         STATUS          CHART                             NAMESPACE
dull-buffoon    8               Sun Apr 14 16:04:04 2019        DEPLOYED        microsvc-spring-boot-0.0.1        default
```

Port forward your service based on the deployment name above. With name 'dull-buffoon', we execute

`kubectl port-forward svc/dull-buffoon-microsvc-spring-boot 8080:8080`

**Test service health with `curl http://localhost:8080/healthz`**

```
$ curl http://localhost:8080/healthz
pass
```

### Tips

The helm charts included here are intended as a starter deployment for local/development environments.
Do not package *production* helm charts into your source repository, like we have done here. Important charts should be managed in a separate repository, to decouple production configuration from the app repository itself.
