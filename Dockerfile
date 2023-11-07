
FROM mysql/mysql-server

# /docker-entrypoint-initdb.d/ É um diretório especial que será executado pelo docker quando o container for iniciado, permitindo a execução de scripts SQL automaticamente ao iniciar o container.

# Copia Scripts para o conteiner
COPY scripts/ /docker-entrypoint-initdb.d/

# Cria script especial para alteração de senha do root
RUN echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';" > /docker-entrypoint-initdb.d/alter_root_password.sql

# Cria script especial para permitir conexão do root de qualquer host
RUN echo "update mysql.user set host = '%' where user='root';" > /docker-entrypoint-initdb.d/allow_root_to_connect_from_any_host.sql

EXPOSE 3306
