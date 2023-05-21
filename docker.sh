echo "$(tput setaf 10)[Macci]$(tput setaf 7)Inicinado a instalção do docker..."
	sudo apt install docker.io
	clear
	echo "$(tput setaf 10)[Macci]$(tput setaf 7)Iniciando o docker..."
	sleep 3
	sudo systemctl start docker
	echo "$(tput setaf 10)[Macci]$(tput setaf 7)Habilitando o docker para ser iniciado junto com o sistema operacional.."
	clear 
	sleep 3
	echo "$(tput setaf 10)[Macci]$(tput setaf 7)Baixando a imagem do MySQL"
	clear 
	sleep 3
	sudo docker pull mysql:5.7
	sleep 3
	echo "$(tput setaf 10)[Macci]$(tput setaf 7)Agora vamos criar o container CelerattiBD"
	sleep 3
	sudo docker run -d -p 3306:3306 --name CelerattiBD -e "MYSQL_DATABASE=celeratti" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7
	sleep 3
	echo "$(tput setaf 10)[Macci]$(tput setaf 7)Ininciando o container"
	sleep 3
	sudo docker exec -i CelerattiBD  mysql -uroot -purubu100 celeratti < tabelas.sql
	echo "$(tput setaf 10)[Macci]$(tput setaf 7)Criando as tabelas necessárias..."
