## Fala galera, tudo de boas!?

**Seguinte, a ideia aqui é usar o Docker para criar um projeto Laravel sem precisar ter/ou instalar qualquer outra coisa em sua máquina.**

Para isso iremos seguir os passos abaixo, ou seja, criar uma imagem Docker via Dockerfile, executar um container com PHP/Composer, instalar o Laravel Installer e por fim criar nosso projeto Laravel via container, mapeando tudo para uma pasta local em seu pc, vai ser como lançar um foguete, ejetando o propulsor a imagem e no final obter apenas a capsula, que em nosso caso é nosso projeto Laravel.

Caso precise instalar o Docker em seu OS preferido, segue link:
[Docker](https://docs.docker.com/get-docker/)

Caso seja no Linux Ubuntu 20.04:

Instalar
```
sudo apt install docker.io
```
Conceda privilégios administrativos no grupo do Docker para seu usuário executar os comandos do Docker.
```
sudo usermod -aG docker SOMEUSERNAME
```
Ativa Docker para iniciar na reinicialização do sistema:
```	
sudo systemctl enable --now docker
```

Vamos lá...

- Primeiro clone o repositório
```
git clone https://github.com/madsonar/docker-create-project-laravel.git
```
- Navegue para o diretório do projeto
```
cd docker-create-project-laravel
```
- Vamos buildar o Dockerfile para gerar a image com PHP e Composer
```
docker build -t create-project-laravel .
```


```
```


```
```


```
```




OBS: Realizei este processo no Linux, porém no MAC vc deve obter o mesmo resultado e no Windwos vc pode testar ou usar o WSL para Linux.
