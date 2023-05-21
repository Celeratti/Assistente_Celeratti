use celeratti;

CREATE TABLE empresa(
  id INT NOT NULL auto_increment,
  nomeFantasia VARCHAR(150) NULL,
  razaoSocial VARCHAR(150) NULL,
  cnpj char(14),
  numero int,
  senha varchar(25),
  PRIMARY KEY (id));

CREATE TABLE linha(
  id INT NOT NULL,
  nome VARCHAR(45) NULL,
  qtdEstacao VARCHAR(45) NULL,
  PRIMARY KEY (id));

CREATE TABLE estacao(
  id INT NOT NULL,
  nome VARCHAR(125) NULL,
  Numero VARCHAR(125) NULL,
  andar INT NULL,
  cep INT NULL,
  qtdMaquinas VARCHAR(145) NULL,
  estacaocol VARCHAR(45) NULL,
  linha_id INT NOT NULL,
  PRIMARY KEY (id, linha_id),
  CONSTRAINT fk_estacao_linha1 FOREIGN KEY (linha_id) REFERENCES linha (id));

CREATE TABLE maquina (
  id INT NOT NULL,
  fabricante VARCHAR(125) NULL,
  nomeIdentificador VARCHAR(45) NULL,
  sistemaOperacional VARCHAR(45) NULL,
  status INT NOT NULL,
  fkempresa INT NOT NULL,
  fkestacao INT NOT NULL,
  PRIMARY KEY (id, fkempresa, fkestacao),
  CONSTRAINT fk_maquina_empresa1 FOREIGN KEY (fkempresa) REFERENCES empresa (id),
  CONSTRAINT fk_maquina_estacao1 FOREIGN KEY (fkestacao) REFERENCES estacao (id));



CREATE TABLE funcionario (
  id INT NOT NULL,
  nome VARCHAR(150) NULL,
  sobrenome VARCHAR(150) NULL,
  telefone CHAR(11) NULL,
  email VARCHAR(150) NULL,
  senha VARCHAR(125) NULL,
  cargo VARCHAR(45) NULL,
  esta_ativo INT NULL,
  fkempresa INT NOT NULL,
  PRIMARY KEY (id, fkempresa),
  CONSTRAINT fk_funcionario_empresa FOREIGN KEY (fkempresa) REFERENCES empresa (id));

CREATE TABLE grupoComponentes(
  id INT NOT NULL auto_increment,
  memoriaEmUso DOUBLE NULL,
  discoUso DOUBLE NULL,
  cpuUtilizacao INT NULL,
  dataHoraInsercao datetime NULL,
  fkMaquina INT NOT NULL,
  PRIMARY KEY (id, fkMaquina),
  CONSTRAINT fk_grupoComponentes_maquina1 FOREIGN KEY (fkMaquina) REFERENCES maquina (id));

CREATE TABLE especificacoesHardware(
  id INT NOT NULL auto_increment,
  memoriaTotal DOUBLE NULL,
  tamanhoDisco DOUBLE NULL,
  processador VARCHAR(45) NULL,
  cpuTotal VARCHAR(45) NULL,
  ipv4 VARCHAR(45) NULL,
  ipv6 VARCHAR(45) NULL,
  fkMaquina INT NOT NULL,
  PRIMARY KEY (id, fkMaquina),
  CONSTRAINT fk_especificacoesHardware_maquina1 FOREIGN KEY (fkMaquina) REFERENCES maquina(id));


CREATE TABLE alertas(
  id INT NOT NULL,
  status VARCHAR(45) NULL,
  componenteCausa VARCHAR(45) NULL,
  PRIMARY KEY (id));

 echo "$(tput setaf 10)[Macci]$(tput setaf 7) Saindo do banco de dados..."
sleep 3
	exit
 echo "$(tput setaf 10)[Macci]$(tput setaf 7)Saindo do docker CelerattiBD..."
sleep 3
exit
