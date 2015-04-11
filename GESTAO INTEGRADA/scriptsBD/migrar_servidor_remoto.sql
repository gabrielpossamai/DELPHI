grant all on ferpan.* to martine@"%" identified by "oT7v1B" with grant option;
grant all on ferpan.* to eliana@"%" identified by "eliana" with grant option;
grant all on ferpan.* to renata@"%" identified by "2112" with grant option;
grant all on ferpan.* to marcele@"%" identified by "2404" with grant option;
grant all on ferpan.* to andrea@"%" identified by "vitor17" with grant option;



USE ferpan;

DROP TABLE usuario_modulo_bkp;
ALTER TABLE acondicionamento ENGINE = InnoDB;
ALTER TABLE bairro ENGINE = InnoDB;
ALTER TABLE cargo ENGINE = InnoDB;
ALTER TABLE classificacao ENGINE = InnoDB;
ALTER TABLE cliente ENGINE = InnoDB;
ALTER TABLE documento ENGINE = InnoDB;
ALTER TABLE doc_tipo ENGINE = InnoDB;
ALTER TABLE eleitor ENGINE = InnoDB;
ALTER TABLE empresa ENGINE = InnoDB;
ALTER TABLE endereco ENGINE = InnoDB;
ALTER TABLE end_tipo ENGINE = InnoDB;
ALTER TABLE estadofisico ENGINE = InnoDB;
ALTER TABLE fantasia ENGINE = InnoDB;
ALTER TABLE grupo ENGINE = InnoDB;
ALTER TABLE logradourotipo ENGINE = InnoDB;
ALTER TABLE logra_tipo ENGINE = InnoDB;
ALTER TABLE manifesto ENGINE = InnoDB;
ALTER TABLE manifestoestado ENGINE = InnoDB;
ALTER TABLE modulo ENGINE = InnoDB;
ALTER TABLE origem ENGINE = InnoDB;
ALTER TABLE periodonumero ENGINE = InnoDB;
ALTER TABLE pessoafisica ENGINE = InnoDB;
ALTER TABLE pessoajuridica ENGINE = InnoDB;
ALTER TABLE procedencia ENGINE = InnoDB;
ALTER TABLE residuo ENGINE = InnoDB;
ALTER TABLE responsavel ENGINE = InnoDB;
ALTER TABLE setor ENGINE = InnoDB;
ALTER TABLE sexo ENGINE = InnoDB;
ALTER TABLE situacao ENGINE = InnoDB;
ALTER TABLE telefone ENGINE = InnoDB;
ALTER TABLE tel_tipo ENGINE = InnoDB;
ALTER TABLE titrelat ENGINE = InnoDB;
ALTER TABLE tratamento ENGINE = InnoDB;
ALTER TABLE tratdisp ENGINE = InnoDB;
ALTER TABLE unidademedida ENGINE = InnoDB;
ALTER TABLE usuario ENGINE = InnoDB;
ALTER TABLE usuario_modulo ENGINE = InnoDB;


ALTER TABLE empresa ADD COLUMN InscMunic VARCHAR(9) AFTER InscEstado,
 ADD COLUMN Email VARCHAR(50) AFTER InscMunic,
 ADD COLUMN TelefoneII VARCHAR(15) AFTER Email;


CREATE TABLE orgao_emissor (
  ID_Orgao_Emissor INTEGER NOT NULL AUTO_INCREMENT,
  Descricao VARCHAR(30) NOT NULL,
  PRIMARY KEY (ID_Orgao_Emissor)
)
ENGINE = InnoDB;




ALTER TABLE logra_tipo ADD COLUMN Sigla VARCHAR(10) NOT NULL AFTER Descricao;


CREATE TABLE logradouro (
  ID_logradouro INTEGER NOT NULL AUTO_INCREMENT,
  Descricao VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_logradouro)
)
ENGINE = InnoDB;


CREATE TABLE logra_bairro (
  ID_logra_bairro INTEGER NOT NULL AUTO_INCREMENT,
  Descricao VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_logra_bairro)
)
ENGINE = InnoDB;


ALTER TABLE usuario ADD COLUMN Identidade VARCHAR(15) AFTER Email;


CREATE TABLE `ferpan`.`protoc_empresa` (
  `Id_Protoc_Empresa` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `ProcedenciaResiduo` VARCHAR(30) NOT NULL,
  `MesAno` VARCHAR(20) NOT NULL,
  `NumManifesto` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`Id_Protoc_Empresa`)
)
ENGINE = InnoDB;


CREATE  TABLE `ferpan`.`local_de_origem` (
  `ID_Local_Origem` INT NOT NULL ,
  `ID_Empresa` INT NOT NULL ,
  `Descricao` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`ID_Local_Origem`) )
ENGINE = InnoDB;

ALTER TABLE procedencia ADD COLUMN Id_Empresa INT(11) NULL  AFTER Descricao;

DELETE FROM usuario_modulo WHERE ID_Usuario_Modulo IN (129, 130, 131, 133, 135, 136, 137, 138, 236, 140);

//
CREATE  TABLE `ferpan`.`residuo_solid_ind` (
  `ID_Residuo_Solid_Ind` INT NOT NULL ,
  `Codigo` VARCHAR(4) NOT NULL ,
  `Descricao` VARCHAR(100) NOT NULL ,
  `Classe` INT NOT NULL ,
  PRIMARY KEY (`ID_Residuo_Solid_Ind`) )
COMMENT = 'Tabela com os resíduos sólidos industrias' ;
//
ALTER TABLE `ferpan`.`residuo_solid_ind` CHANGE COLUMN `ID_Residuo_Solid_Ind` `ID_Residuo_Solid_Ind` INT(11) NOT NULL AUTO_INCREMENT;
//ALTER TABLE `ferpan`.`residuo_solid_ind` CHANGE COLUMN `Codigo` `Codigo` VARCHAR(6) NOT NULL;

// Classe II ou III
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A001', 'Resíduos de restaurante (restos de alimentos) ', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A002', 'Resíduos gerados fora do processo  industrial (escritório, embalagens, etc.) ', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A003', 'Resíduos de varrição de fábrica ', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A004', 'Sucata de metais ferrosos ', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A104', 'Embalagens metálicas (latas vazias)', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A204', 'Tambores metálicos', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A005', 'Sucata de metais não ferrosos (latão, etc.)', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A105', 'Embalagens de metais não ferrosos (latas vazias)', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A006', 'Resíduos de papel e papelão', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A007', 'Resíduos de plásticos polimerizados de processo', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A107', 'Bombonas de plástico não contaminadas', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A207', 'Filmes e pequenas embalagens de plástico', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A008', 'Resíduos de borracha', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A108', 'Resíduos de acetato de etil vinila (EVA)', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A208', 'Resíduos de poliuretano (PU) ', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A308', 'Espumas', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A009', 'Resíduos de madeira contendo substâncias não tóxicas', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A010', 'Resíduos de materiais têxteis', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A011', 'Resíduos de minerais não metálicos', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A111', 'Cinzas de caldeira', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A012', 'Escória de fundição de alumínio', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A013', 'Escória de produção de ferro e aço', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A014', 'Escória de fundição de latão', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A015', 'Escória de fundição de zinco', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A016', 'Areia de fundição', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A017', 'Resíduos de refratários e materiais cerâmicos', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A117', 'Resíduos de vidros', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A018', 'Resíduos sólidos compostos de metais não tóxicos', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A019', 'Resíduos sólidos de estações de tratamento de eﬂuentes contendo material biológico não tóxico', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A021', 'Resíduos sólidos de estações de tratamento de eﬂuentes contendo substâncias não tóxicas', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A022', 'Resíduos pastosos de estações de tratamento de eﬂuentes contendo substâncias não tóxicas', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A023', 'Resíduos pastosos contendo calcário', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A024', 'Bagaço de cana', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A025', 'Fibra de vidro', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A099', 'Outros resíduos não  perigosos', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A199', 'Aparas salgadas', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A299', 'Aparas de peles caleadas', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A399', 'Aparas, retalhos de couro atanado', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A499', 'Carnaça', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A599', 'Resíduos orgânico de processo (sebo, soro, ossos, sangue, outros da  indústria alimentícia, etc)', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A699', 'Casca de arroz', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A799', 'Serragem, farelo e pó de couro atanado', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A899', 'Lodo do caleiro', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A999', 'Resíduos de frutas (bagaço, mosto, casca, etc.)', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A026', 'Escória de jateamento contendo substâncias não tóxicas', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A027', 'Catalisadores usados contendo substâncias não tóxicas', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A028', 'Resíduos de sistema de  controle de emissão  gasosa contendo substâncias não tóxicas (precipitadores, ﬁ  ltros de manga, entre outros)', 2);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'A029', 'Produtos fora da especiﬁ  cação ou fora do prazo de validade contendo substâncias não perigosas', 2);
// Classe I - C001 a C009
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'C001', 'Resíduos perigosos por conterem componentes voláteis, nos quais não se aplicam testes de lixiviação e/ou de solubilização, apresentando concentrações superiores aos indicados na listagem 10 da Norma NBR-10004', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'C002', 'Resíduos perigosos por conterem componentes voláteis, nos quais não se aplicam testes de lixiviação e/ou de solubilização, apresentando concentrações superiores aos indicados na listagem 10 da Norma NBR-10004', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'C003', 'Resíduos perigosos por conterem componentes voláteis, nos quais não se aplicam testes de lixiviação e/ou de solubilização, apresentando concentrações superiores aos indicados na listagem 10 da Norma NBR-10004', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'C004', 'Resíduos perigosos por conterem componentes voláteis, nos quais não se aplicam testes de lixiviação e/ou de solubilização, apresentando concentrações superiores aos indicados na listagem 10 da Norma NBR-10004', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'C005', 'Resíduos perigosos por conterem componentes voláteis, nos quais não se aplicam testes de lixiviação e/ou de solubilização, apresentando concentrações superiores aos indicados na listagem 10 da Norma NBR-10004', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'C006', 'Resíduos perigosos por conterem componentes voláteis, nos quais não se aplicam testes de lixiviação e/ou de solubilização, apresentando concentrações superiores aos indicados na listagem 10 da Norma NBR-10004', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'C007', 'Resíduos perigosos por conterem componentes voláteis, nos quais não se aplicam testes de lixiviação e/ou de solubilização, apresentando concentrações superiores aos indicados na listagem 10 da Norma NBR-10004', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'C008', 'Resíduos perigosos por conterem componentes voláteis, nos quais não se aplicam testes de lixiviação e/ou de solubilização, apresentando concentrações superiores aos indicados na listagem 10 da Norma NBR-10004', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'C009', 'Resíduos perigosos por conterem componentes voláteis, nos quais não se aplicam testes de lixiviação e/ou de solubilização, apresentando concentrações superiores aos indicados na listagem 10 da Norma NBR-10004', 1);
//
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D001', 'Resíduos perigosos por apresentarem inﬂamabilidade', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D002', 'Resíduos  perigosos por apresentarem corrosividade', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D003', 'Resíduos perigosos por apresentarem reatividade', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D004', 'Resíduos  perigosos por apresentarem patogenicidade', 1);
// D005 a D029
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D005', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D006', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D007', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D008', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D009', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D010', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D011', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D012', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D013', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D014', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D015', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D016', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D017', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D018', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D019', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D020', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D021', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D022', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D023', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D024', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D025', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D026', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D027', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D028', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'D029', 'Listagem 7 da Norma NBR-10.004:  resíduos  perigosos caracterizados pelo teste de lixiviação', 1);
//
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'K193', 'Aparas de couro curtido ao cromo', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'K194', 'Serragem e pó de couro contendo cromo', 1);
INSERT INTO `ferpan`.`residuo_solid_ind` (`ID_Residuo_Solid_Ind`, `Codigo`, `Descricao`, `Classe`) VALUES (0, 'K195', 'Lodo de estações de  tratamento de eﬂuentes de curtimento ao cromo', 1);


ALTER TABLE `ferpan`.`residuo` ADD COLUMN `Codigo` VARCHAR(4) NOT NULL  AFTER `ValorMercado` ;
ALTER TABLE `ferpan`.`manifesto` ADD COLUMN `Cod_Residuo` VARCHAR(4) NOT NULL  AFTER `FlagEmTransito` ;

ALTER TABLE `ferpan`.`manifesto` ADD COLUMN `Origem_Outros` VARCHAR(45) NULL  AFTER `Cod_Residuo` , ADD COLUMN `Acond_Outros` VARCHAR(45) NULL  AFTER `Origem_Outros` , ADD COLUMN `Procedencia_Outros` VARCHAR(45) NULL  AFTER `Acond_Outros` , ADD COLUMN `TratDisp_Outros` VARCHAR(45) NULL  AFTER `Procedencia_Outros` ;

UPDATE origem
SET    Descricao = 'Outros'
WHERE  ID_Origem = 1;



