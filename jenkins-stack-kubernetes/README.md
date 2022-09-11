# jenkins-stack-kubernetes

![Visits Badge](https://badges.pufler.dev/visits/ssbostan/jenkins-stack-kubernetes)
[![GitHub license](https://img.shields.io/github/license/ssbostan/jenkins-stack-kubernetes)](https://github.com/ssbostan/jenkins-stack-kubernetes/blob/master/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/ssbostan/jenkins-stack-kubernetes)](https://github.com/ssbostan/jenkins-stack-kubernetes/stargazers)
![Twitter Follow](https://img.shields.io/twitter/follow/b9t_ir?style=social)
![LinkedIn Follow](https://shields.io/badge/style-ssbostan-black?logo=linkedin&label=LinkedIn&link=https://www.linkedin.com/in/ssbostan)

Stargaze ![GitHub Repo stars](https://img.shields.io/github/stars/ssbostan/jenkins-stack-kubernetes?style=social) if you find it useful.

Scripts and manifests to deploy Jenkins containers CI/CD stack on Kubernetes.

The [Docker-compose](https://github.com/ssbostan/jenkins-stack-docker) version is also available.

Copyright 2021 Saeid Bostandoust <ssbostan@linuxmail.org>

### This stack contains:

 - **Jenkins (with a complete set of tools and plugins).**
 - **Docker (on Kubernetes for building images and running Jenkins jobs).**
 - **Docker registry (as a image repository).**
 - **Gitea (as a version control system).**

### Installed tools and plugins:

  - Installed tools in Jenkins:
    1. Git client (latest)
    2. Docker client (latest)
    3. Kubernetes client (latest)
    4. Ansible (latest) + A complete set of useful collections
    5. Helm (latest)
    6. Terraform (latest)
    7. Pulumi (latest)
    8. MAASTA (latest)
  - Jenkins plugins:
    1. [50 most useful Jenkins plugins](Dockerfile)
  - Ansible collections:
    1. [13 most useful Ansible collections](ansible.yaml)

## How to deploy the stack:

The stack is tested on Kubernetes 1.20+, should works on earlier versions.

### Prerequisites:

  1. Kubernetes should supports LoadBalancer service type.
  2. Kubernetes should be configured to creating PVC dynamically.
  3. OpenSSL to creating self-signed certificates.

### Get started:

```sh
./deploy
```

![demo](https://raw.githubusercontent.com/ssbostan/jenkins-stack-kubernetes/master/demo.gif)

## How to contribute:

Don't hesitate! all contributions are welcomed.

### TODO:

  - [x] Update tools to the latest stable version
  - [ ] SSL/TLS for Jenkins
  - [ ] SSL/TLS for Gitea
  - [ ] Expose Jenkins behind Ingress object
  - [ ] Expose Docker registry behind Ingress object
  - [ ] Expose Gitea behind Ingress object

## Changelog:

##### 15 May 2022:

  1. Jenkins updated to the latest LTS version.
  2. All tools updated to the latest stable version.
  3. Some new Jenkins plugins installed, See [Dockerfile](Dockerfile).
  4. Install Helm and Terraform via their package repositories.
  5. Pulumi was added to the Jenkins environment.

##### 08 Feb 2022:

  1. Jenkins updated to the latest LTS version.
  2. All tools updated to the latest stable version.
  3. Some new Jenkins plugins installed, See [Dockerfile](Dockerfile).
  4. MAASTA to integrates MAAS, Terraform and Ansible.

##### 13 Oct 2021:

  1. Jenkins updated to the latest LTS version.
  2. All tools updated to the latest stable version.
  3. Some new Jenkins plugins installed, See [Dockerfile](Dockerfile).
  4. Several new Ansible collections were installed.
