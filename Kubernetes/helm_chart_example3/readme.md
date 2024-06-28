## Installing Helm and Deploying PostgreSQL with Helm

This guide walks you through installing Helm and using it to deploy a PostgreSQL instance on your Kubernetes cluster.

### Prerequisites

* A Kubernetes cluster with Beta APIs enabled
* Git installed on your system

### Installing Helm

1. **Download Helm:**
   - Visit the Helm releases page on GitHub: [https://github.com/helm/helm/releases](https://github.com/helm/helm/releases)
   - Download the appropriate Helm binary for your system.

2. **Unpack the archive:**
   ```bash
   tar -zxvf helm-v3.0.0-linux-amd64.tar.gz (replace with your downloaded filename)
   ```

3. **Move the helm binary:**
   ```bash
   mv linux-amd64/helm /usr/local/bin/helm
   ```

   This places the `helm` binary in a standard location on your system path.

### Deploying PostgreSQL with Helm

1. **Add the Bitnami Helm repository:**
   ```bash
   helm repo add bitnami https://charts.bitnami.com/bitnami
   ```

2. **Install PostgreSQL:**
   ```bash
   helm install my-postgresql bitnami/postgresql --version 15.5.10
   ```

   - This command installs a PostgreSQL instance named `my-postgresql` using the Bitnami Helm chart for PostgreSQL.
   - The `--version 15.5.10` flag specifies the desired PostgreSQL version.

This guide provides a basic example of deploying PostgreSQL with Helm. The Bitnami PostgreSQL chart offers various customization options through values files. Refer to the Bitnami documentation for further details on configuring the deployment.

## helm upgrade
 helm upgrade  my-traefik traefik-28.3.0.tgz -f value.yaml -n default 