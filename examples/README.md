# AMI do Ubuntu com o Nomad e Consul

![Capa da materia](https://raw.githubusercontent.com/robertoleao/terraform-aws-nomad/master/images/packer.png)


Aqui vc encontrara as pasta :

- nomad-consul-ami - Codigo para iniciar a criação do AMI do projeto
- root-example - Pasta com script

Sera utilizado a ferramenta Packer para criar AMIs (Amazon Machine Images, imagens de máquinas da Amazon) que têm nômades e cônsul instalados em cima de:

Ubuntu 18.04

Essas AMIs terão o Cônsul e o Nômade instalados e configurados para se juntarem automaticamente a um cluster durante o inicialização.


###Iniciar

1. git clone 
2. instale o Packer - [link de apoio](https://learn.hashicorp.com/tutorials/packer/getting-started-install)
3. Configure as credencias AWS no codigo - [link de apoio](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
4. Rode o comando na pasta `examples/nomad-consul-ami` :

```HashiCorp Configuration Language
packer build nomad-consul.json
```

Apos o termino da compilação, ela irá produzir o ID da nova AMI, Anote esse numero vc pode encontra esse ID no console da AWS