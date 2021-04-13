#! /bin/bash
# Este script deve ser executado nos Dados do Usuário de cada instância EC2 enquanto estiver inicializando. O script usa o
# scripts run-nmad e run-cônsul para configurar e iniciar nômades e cônsul no modo cliente. Note que este script

set -e

exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

# Essas variáveis são passadas via interplação de modelo Terraform
/opt/consul/bin/run-consul --server --cluster-tag-key "${cluster_tag_key}" --cluster-tag-value "${cluster_tag_value}"
/opt/nomad/bin/run-nomad --server --num-servers "${num_servers}"