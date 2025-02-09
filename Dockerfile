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

# Baixa o AzuraCast
RUN curl -fsSL https://github.com/AzuraCast/AzuraCast/releases/download/0.14.0/azuracast-docker.tar.gz -o azuracast-docker.tar.gz \
    && tar -xvzf azuracast-docker.tar.gz \
    && rm azuracast-docker.tar.gz

# Expõe a porta necessária
EXPOSE 80

CMD ["bash", "./docker.sh"]
