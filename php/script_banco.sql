-- -----------------------------------------------------
-- Criando DATABASE `BANCO_web2`
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BANCO_WEB2` DEFAULT CHARACTER SET UTF8MB4;
USE `BANCO_WEB2`;
/* DROP SCHEMA BANCO_web /*

-- -----------------------------------------------------
-- Table clientes
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS clientes (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  codigo VARCHAR(50) DEFAULT NULL,
  nome_completo VARCHAR(255) NULL,
  sexo ENUM('masculino', 'feminino'),
  dt_nasc date DEFAULT NULL,
  email VARCHAR(255) DEFAULT NULL,
  telefone VARCHAR(15) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET=UTF8MB4;
/* drop table clientes */

/*
INSERT INTO `banco_web2`.`clientes`
(`codigo`,   `nome_completo`, `dt_nasc`, `email`,  `telefone`) VALUES
('codigo',   'nome_completo', 'dt_nasc', 'email' , 'telefone');
*/

INSERT INTO `banco_web2`.`clientes`
(`codigo`,     `nome_completo`, `dt_nasc`,    `email`,             `telefone`) VALUES
('abcs-1234',  'Abraão Garcia', '2003-12-10', 'abraao.garcia1012@gmail.com.com' , '11764186702');

SELECT * FROM CLIENTES;




