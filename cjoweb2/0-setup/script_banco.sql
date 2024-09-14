-- -----------------------------------------------------
-- Criando DATABASE `banco_web2`
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BANCO_WEB2` DEFAULT CHARACTER SET UTF8MB4;
USE `BANCO_WEB2`;
/* DROP SCHEMA banco_web2 /*

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


-- -----------------------------------------------------
-- Table usuarios
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS  usuarios (
  idu INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  nome VARCHAR (255) DEFAULT NULL,
  email VARCHAR(255) NULL,
  Sexo ENUM('masculino', 'feminino'),
  senha tinytext DEFAULT NULL, 
  status ENUM('1', '0')
) ENGINE = InnoDB DEFAULT CHARSET=UTF8MB4;
/* drop table clientes */

INSERT INTO `banco_web2`.`clientes`
(`codigo`,        `nome_completo`, `sexo`,       `dt_nasc`,    `email`,             `telefone`) VALUES
('AWDRG-12QWXT',  'João Trakinas', 'Masculino', '2002-08-15' 'jt@acme.com' ,     '1255555555');

CREATE TABLE IF NOT EXISTS usuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  codigo VARCHAR(50) DEFAULT NULL,
  email VARCHAR(255) NULL,
  senha tinytext DEFAULT NULL,
  status ENUM('0', '1'),
  dt_reg DATETIME NULL,
  dt_alt DATETIME NULL
) ENGINE = InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO usuarios (codigo, email, senha, status, dt_reg, dt_alt)
VALUES (
  'USRWDR-WE77TD',        -- Código do usuário
  'trakinas@acme.com',    -- Email
  'abc@1234',             -- Senha simples
  '1',                    -- Status (1 = ativo, 0 = inativo)
  NOW(),                  -- Data de registro atual
  NOW()                   -- Data de alteração atual
);


SELECT * FROM clientes;


/*
DROP TABLE usuarios;

UPDATE clientes
SET id = 4
WHERE id = 7;

DELETE FROM CLIENTES WHERE ID = '5';
*/