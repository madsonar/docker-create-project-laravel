## Fala galera, tudo de boas!?

**Seguinte, a ideia aqui é usar o Docker para criar um projeto Laravel sem precisar ter/ou instalar qualquer outra coisa em sua máquina.**

Para isso iremos seguir os passos abaixo, ou seja, criar uma imagem Docker via Dockerfile, executar um container com PHP/Composer, instalar o Laravel Installer e por fim criar nosso projeto Laravel via container mapeando tudo para uma pasta local em seu pc, vai ser como lançar um foguete, ejetando o propulsor, a imagem, para no final obter apenas a capsula, que em nosso caso é o projeto Laravel.

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

- Vamos buildar o Dockerfile para gerar a imagem com PHP, Composer e Laravel Intaller
```
docker build -t create-project-laravel ./docker-setup --no-cache --rm
```

Listar a imagem recém criada
```
docker image ls | grep create-project-laravel
```

Vamos rodar nosso container em segundo plano baseado na imagem recém criada
```
docker run -d --name create-project-laravel -p:8000:8000 --mount type=bind,source="$(pwd)",target=/var/www create-project-laravel
```

Agora vamos lista nosso container para ver o mesmo em execução
```
docker container ls | grep create-project-laravel
```

Visualizar o volume mapeado para criar seu projeto fora do container
```
docker inspect -f '{{ .Mounts }}' create-project-laravel
```

Para criar nosso projeto precisamos acesso nosso container que contém o PHP/Composer/Laravel Installer
```
docker exec -it create-project-laravel /bin/sh
```

Comando para criar o projeto
```
composer create-project laravel/laravel nome-seu-projeto
```

Comandos para rodar o Laravel com container e verificar resultado no browser
```
cd nome-seu-projeto
php artisan serve --port=8000
```

Comandos para parar e executar o container
```
docker container stop create-project-laravel
docker container start create-project-laravel
```

Comando para remover o container
```
docker container rm create-project-laravel --force
```

Comando para remover a imagem
```
docker rmi create-project-laravel --force
```


OBS: Realizei este processo no Linux, porém você pode testar MAC e no Windwos vc pode testar usando o WSL para Linux.