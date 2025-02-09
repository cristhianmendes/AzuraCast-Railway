FROM ubuntu:latest

# Instala dependências básicas
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    lsb-release \
    ca-certificates \
    sudo \
    wget \
    git \
    unzip

# Baixa o AzuraCast (versão 0.19.0)
RUN curl -fsSL https://github.com/AzuraCast/AzuraCast/archive/refs/tags/0.19.0.tar.gz -o azuracast-docker.tar.gz \
    && tar -xvzf azuracast-docker.tar.gz \
    && rm azuracast-docker.tar.gz

# Expõe a porta necessária
EXPOSE 80

CMD ["bash", "./docker.sh"]
