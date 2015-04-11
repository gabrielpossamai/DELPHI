/* Rodar os comandos a baixo na ferpan
ALTER TABLE MANIFESTO ADD COLUMN ID_Gerador  INT  NOT NULL;
ALTER TABLE MANIFESTO ADD COLUMN ID_Transportador  INT  NOT NULL;
ALTER TABLE MANIFESTO ADD COLUMN ID_Receptor  INT  NOT NULL;
ALTER TABLE PESSOAFISICA ADD COLUMN ID_Cargo INT NOT NULL;
ALTER TABLE GERADOR DROP COLUMN ID_Cargo;
ALTER TABLE PESSOAFISICA DROP COLUMN ID_EndCobranca;
ALTER TABLE PESSOAFISICA DROP COLUMN ID_EndContato;
ALTER TABLE PESSOAFISICA DROP COLUMN ID_EndCorresp;


*** RODAR NA SEGUNDA-FEIRA 22/11/2004 ***
ALTER TABLE MANIFESTO ADD COLUMN Obs BLOB;
ALTER TABLE MANIFESTO MODIFY COLUMN NumCertificado INT NULL;
ALTER TABLE EMPRESA   MODIFY COLUMN Endereco VARCHAR(80)  NOT NULL;
ALTER TABLE EMPRESA   MODIFY COLUMN Telefone VARCHAR(15)  NULL;
ALTER TABLE EMPRESA   ADD COLUMN ValorContrato NUMERIC(12,2) NULL;
ALTER TABLE EMPRESA   ADD COLUMN ValorTonelada NUMERIC(12,2) NULL;
ALTER TABLE RESIDUO   MODIFY COLUMN Descricao VARCHAR(50)  NOT NULL;
ALTER TABLE RESIDUO   ADD COLUMN FlagContaminado CHAR(1) NOT NULL;
ALTER TABLE RESPONSAVEL ADD COLUMN ID_Tratamento INT NOT NULL;
ALTER TABLE RESIDUO   ADD COLUMN FlagContaminado CHAR(1) NOT NULL;
ALTER TABLE EMPRESA   ADD COLUMN ValorContrato NUMERIC(12,2) NULL;
ALTER TABLE EMPRESA   ADD COLUMN ValorTonelada NUMERIC(12,2) NULL;


*** RODAR NA SEGUNDA-FEIRA 29/11/2004 ***
INSERT INTO GRUPO(
ID_Grupo,
Descricao)
VALUES(
2,
'Processos');

INSERT INTO GRUPO(
ID_Grupo,
Descricao)
VALUES(
3,
'Relatórios');


ALTER TABLE manifesto ADD COLUMN DtChegou     DATETIME NOT NULL;
ALTER TABLE manifesto ADD COLUMN DtEnvio      DATETIME NULL;
ALTER TABLE manifesto ADD COLUMN ID_Situacao  INT      NOT NULL;
ALTER TABLE manifesto ADD COLUMN ID_LoteEnvio INT      NULL;


CREATE TABLE situacao
(
ID_Situacao  INT         NOT NULL AUTO_INCREMENT,
Descricao    VARCHAR(30) NOT NULL,
PRIMARY KEY (ID_Situacao)
);

INSERT INTO situacao(
ID_Situacao,
Descricao)
VALUES(
1,
'Todos');

INSERT INTO situacao(
ID_Situacao,
Descricao)
VALUES(
2,
'Em aberto');

INSERT INTO situacao(
ID_Situacao,
Descricao)
VALUES(
3,
'Efetivado');

INSERT INTO situacao(
ID_Situacao,
Descricao)
VALUES(
4,
'Impresso e enviado');

UPDATE manifesto SET ID_situacao = 2
UPDATE manifesto SET DtChegou = curdate()




*** Cadastrar os módulos abaixo ***
------------------------------------------------------------
    NOME DO FORM               DESCRIÇÃO
------------------------------------------------------------
1 - frmRelatRetiradaResiduo  - Retirada de Resíduo
2 - frmEfetivaEnvioManifesto - Efetiva Envio do Manifesto


******************************************************************

*** RODAR NA TERÇA-FEIRA 30/11/2004 ***
*** Cadastrar os módulos abaixo ***
------------------------------------------------------------
    NOME DO FORM               DESCRIÇÃO
------------------------------------------------------------
1 - frmCancEfetivaEnvioManif  - 02 - Cancela Envio do Manif.
                                01 - Efetiva Envio do Manif.

ALTER TABLE residuo   MODIFY COLUMN FlagContaminado CHAR(1) NOT NULL DEFAULT 'F' ;
ALTER TABLE residuo   ADD COLUMN    ValorMercado NUMERIC(12,2) NULL;
ALTER TABLE empresa   ADD COLUMN    FlagRelContaminado CHAR(1) NOT NULL DEFAULT 'F' ;
ALTER TABLE empresa   ADD COLUMN    FlagRelReciclavel CHAR(1) NOT NULL DEFAULT 'F' ;
ALTER TABLE empresa   ADD COLUMN    FlagRelSucata CHAR(1) NOT NULL DEFAULT 'F' ;
ALTER TABLE manifesto MODIFY COLUMN GerDtEntrega DATETIME NULL;
ALTER TABLE manifesto MODIFY COLUMN TransDtReceb DATETIME NULL;
ALTER TABLE manifesto MODIFY COLUMN RecepDtReceb DATETIME NULL;


*** RODAR NA QUINTA-FEIRA 02/12/2004 ***
ALTER TABLE empresa   ADD COLUMN    TipoResumoGeral INT NOT NULL DEFAULT 0;

CREATE TABLE PeriodoNumero
(
ID_PeriodoNumero   INT           NOT NULL AUTO_INCREMENT,
ID_Empresa         INT           NOT NULL,
Inicio             INT           NOT NULL,
Fim                INT           NOT NULL,
Completo           VARCHAR(20)   NULL,
PRIMARY KEY (ID_PeriodoNumero)
);


,

ALTER TABLE empresa   ADD COLUMN Obs BLOB;

/*******************************************************************************
*                                                                              *
* Cria o banco de dados SGE e coloca em usu.                                   *
*                                                                              *
******************************************************************************
CREATE DATABASE SGE;
USE SGE;
*/
/*******************************************************************************
*                                                                              *
* Cria a tabela USUARIO                                                        *
*                                                                              *
*******************************************************************************/
CREATE TABLE USUARIO
(
ID_Usuario   INT           NOT NULL AUTO_INCREMENT,
Login        VARCHAR(20)   NOT NULL,
Senha        VARCHAR(20)   NOT NULL,
Nome         VARCHAR(50)   NOT NULL,
ID_Setor     INT           NOT NULL,
Ramal        VARCHAR(4),
Email        VARCHAR(30),
PRIMARY KEY (ID_Usuario)
);

/*******************************************************************************
*                                                                              *
* Inclui o usuário Administrador                                               *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO (
ID_Usuario,
Login,
Senha,
Nome,
ID_Setor)
VALUES (
1,
'ADM',
'ADM',
'Administrador',
1);

/*******************************************************************************
*                                                                              *
* Cria a tabela USUARIO_MODULO                                                 *
*                                                                              *
*******************************************************************************/
CREATE TABLE USUARIO_MODULO
(
ID_Usuario_Modulo	INT    NOT NULL AUTO_INCREMENT,
ID_Usuario	      INT    NOT NULL,
ID_Modulo 	      INT    NOT NULL,
PRIMARY KEY (ID_Usuario_Modulo)
);

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Usuários    *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
1,
1, /* Usuário Administrador */
1) /* Módulo Cadastro de Usuários */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Setores     *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
2,
1, /* Usuário Administrador */
2) /* Módulo Cadastro de Setores */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Módulos     *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
3,
1, /* Usuário Administrador */
3) /* Módulo Cadastro de Módulos */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Grupos      *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
4,
1, /* Usuário Administrador */
4) /* Módulo Cadastro de Grupos */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Mód. para Usuários. *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
5,
1, /* Usuário Administrador */
5) /* Módulo Cadastro de Mód. para Usuários */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Clientes.   *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
6,
1, /* Usuário Administrador */
6) /* Módulo Cadastro de Clientes */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Sexos.      *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
7,
1, /* Usuário Administrador */
7) /* Módulo Cadastro de Sexos */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Residuos.   *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
8,
1, /* Usuário Administrador */
8) /* Módulo Cadastro de Resíduos */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Estados Fís.*
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
9,
1, /* Usuário Administrador */
9) /* Módulo Cadastro de Estados Físico */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Acondiciona.*
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
10,
1, /* Usuário Administrador */
10) /* Módulo Cadastro de Acondicionamento */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Origem      *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
11,
1, /* Usuário Administrador */
11) /* Módulo Cadastro de Origem */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cadastro de Procedência *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
12,
1, /* Usuário Administrador */
12) /* Módulo Cadastro de Procedência */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cad. de Tratamento/Disp.*
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
13,
1, /* Usuário Administrador */
13) /* Módulo Cadastro de Tratamento/Disposição */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cad. de Manifesto       *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
14,
1, /* Usuário Administrador */
14) /* Módulo Cadastro de Manifesto */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cad. Unidades de Med.   *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
15,
1, /* Usuário Administrador */
15) /* Módulo Cadastro de Unidades de Medida */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cad. de Status do Manifesto *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
16,
1, /* Usuário Administrador */
16) /* Módulo Cadastro de Status do Manifesto */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cad. de Cargos          *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
17,
1, /* Usuário Administrador */
17) /* Módulo Cadastro de Cargos */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cad. de Tipos de Empresas *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
18,
1, /* Usuário Administrador */
18) /* Módulo Cadastro de Tipos de Empresas */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cad. de Responsável     *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
19,
1, /* Usuário Administrador */
19) /* Módulo Cadastro de Responsável */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cad. de Empresas        *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
20,
1, /* Usuário Administrador */
20) /* Módulo Cadastro de Tipos Empresas */ ;

/*******************************************************************************
*                                                                              *
* Inclui acesso ao usuário Administrador para o módulo Cad. de Tratamento      *
*                                                                              *
*******************************************************************************/
INSERT INTO USUARIO_MODULO(
ID_Usuario_Modulo,
ID_Usuario,
ID_Modulo)
VALUES(
21,
1, /* Usuário Administrador */
21) /* Módulo Cadastro de Tratamento */ ;

/*******************************************************************************
*                                                                              *
* Cria a tabela GRUPO                                                          *
*                                                                              *
*******************************************************************************/
CREATE TABLE GRUPO
(
ID_Grupo	INT         NOT NULL AUTO_INCREMENT,
Descricao	VARCHAR(30) NOT NULL,
PRIMARY KEY (ID_Grupo)
);

/*******************************************************************************
*                                                                              *
* Inclui o grupo Cadastros                                                     *
*                                                                              *
*******************************************************************************/
INSERT INTO GRUPO(
ID_Grupo,
Descricao)
VALUES(
1,
'Cadastros');

/*******************************************************************************
*                                                                              *
* Cria a tabela MODULO                                                         *
*                                                                              *
*******************************************************************************/
CREATE TABLE MODULO
(
ID_Modulo	 INT         NOT NULL AUTO_INCREMENT,
ID_Grupo	 INT         NOT NULL,
ID_Setor	 INT         NOT NULL,
Descricao  VARCHAR(50) NOT NULL,
Nome_Form  VARCHAR(40) NOT NULL,
PRIMARY KEY (ID_Modulo)
);

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Usuários                                         *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
1,
1, /*Grupo Cadastros*/
1, /*Setor Suporte*/
'Cadastro de Usuários',
'frmCadUsuario');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Setores                                          *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
2,
1, /* Grupo Cadastros */
1, /* Setor Suporte */
'Cadastro de Setores',
'frmCadSetor');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Módulos                                          *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
3,
1, /* Grupo Cadastros */
1, /* Setor Suporte */
'Cadastro de Módulos',
'frmCadModulo');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Grupos                                           *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
4,
1, /* Grupo Cadastros */
1, /* Setor Suporte */
'Cadastro de Grupos',
'frmCadGrupo');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Módulos para Usuários.                           *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
5,
1, /* Grupo Cadastros */
1, /* Setor Suporte */
'Cadastro de Módulo Para Usuarios',
'frmCadModuloUsuario');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Clientes.                                        *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
6,
1, /* Grupo Cadastros */
2, /* Setor Comercial */
'Cadastro de Clientes',
'frmCadClientes');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Sexos.                                           *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
7,
1, /* Grupo Cadastros */
1, /* Setor Suporte */
'Cadastro de Sexos',
'frmCadSexo');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Resíduos.                                        *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
8,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Resíduos',
'frmCadResiduo');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Estados Físico                                   *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
9,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Estados Físico',
'frmCadEstadoFisico');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Acondicionamento                                 *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
10,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Acondicionamento',
'frmCadAcond');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Origem                                           *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
11,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Origem',
'frmCadOrigem');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Procedência                                      *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
12,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Procedência',
'frmCadProcedencia');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Tratamento/Disposição                            *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
13,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Tratamento/Disposição',
'frmCadTratDisp');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Manifesto                                        *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
14,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Manifesto de Resíduos',
'frmCadManifesto');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Unidades de Medida                               *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
15,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Unidades de Medida',
'frmCadUnidadeMedida');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Status do Manifesto                              *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
16,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Status do Manifesto',
'frmCadManifestoEstado');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Cargos                                           *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
17,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Cargos',
'frmCadCargo');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Tipos de Empresas                                *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
18,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Tipos de Empresas',
'frmCadTipoEmpresa');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Responsáveis                                     *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
19,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Responsáveis',
'frmCadResponsavel');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Empresas                                         *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
20,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Empresas',
'frmCadEmpresa');

/*******************************************************************************
*                                                                              *
* Inclui o módulo Cadastro de Tratamento                                       *
*                                                                              *
*******************************************************************************/
INSERT INTO MODULO(
ID_Modulo,
ID_Grupo,
ID_Setor,
Descricao,
Nome_Form)
VALUES(
21,
1, /* Grupo Cadastros */
3, /* Setor Gerência de Resíduos */
'Cadastro de Tratamentos',
'frmCadTratamento');

/*******************************************************************************
*                                                                              *
* Cria a tabela SETOR                                                          *
*                                                                              *
*******************************************************************************/
CREATE TABLE SETOR
(
ID_Setor	INT         NOT NULL AUTO_INCREMENT,
Descricao	VARCHAR(20) NOT NULL,
PRIMARY KEY (ID_Setor)
);

/*******************************************************************************
*                                                                              *
* Inclui o setor Suporte                                                       *
*                                                                              *
*******************************************************************************/
INSERT INTO SETOR(
ID_Setor,
Descricao)
VALUES(
1,
'Suporte');

/*******************************************************************************
*                                                                              *
* Inclui o setor Comercial                                                     *
*                                                                              *
*******************************************************************************/
INSERT INTO SETOR(
ID_Setor,
Descricao)
VALUES(
2,
'Comercial');

/*******************************************************************************
*                                                                              *
* Inclui o setor Gerência de Resíduos                                          *
*                                                                              *
*******************************************************************************/
INSERT INTO SETOR(
ID_Setor,
Descricao)
VALUES(
3,
'Gerência de Resíduos');

/*******************************************************************************
*                                                                              *
* Cria a tabela CLIENTE                                                        *
*                                                                              *
*******************************************************************************/
CREATE TABLE CLIENTE
(
ID_Cliente      INT          NOT NULL AUTO_INCREMENT,
ID_Pessoa       INT          NOT NULL,
Nome            VARCHAR(50)  NOT NULL,
DataNasc        TIMESTAMP(8) NOT NULL,
ID_Sexo         INT(1)       NOT NULL,
Obs             BLOB,
PRIMARY KEY (ID_Cliente)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela SEXO                                                           *
*                                                                              *
*******************************************************************************/
CREATE TABLE SEXO
(
ID_Sexo        INT         NOT NULL AUTO_INCREMENT,
Descricao      VARCHAR(30) NOT NULL,
PRIMARY KEY (ID_Sexo)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela LOGRA_TIPO                                                     *
*                                                                              *
*******************************************************************************/
CREATE TABLE LOGRA_TIPO
(
ID_Logra_Tipo  INT          NOT NULL AUTO_INCREMENT,
Descricao      VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_Logra_Tipo)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela ENDERECO                                                       *
*                                                                              *
*******************************************************************************/
CREATE TABLE ENDERECO
(
ID_Endereco    INT          NOT NULL AUTO_INCREMENT,
ID_Pessoa      INT          NOT NULL,
ID_End_Tipo    INT          NOT NULL,
ID_Tipo_Logra  INT          NOT NULL,
Logradouro     VARCHAR(30)  NOT NULL,
Numero         INT          NOT NULL,
Complemento    VARCHAR(30),
Cep            VARCHAR(08),
Bairro         VARCHAR(30),
Cidade         VARCHAR(30),
UF             VARCHAR(02),
Pais           VARCHAR(30),
PRIMARY KEY (ID_Endereco)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela END_TIPO                                                       *
*                                                                              *
*******************************************************************************/
CREATE TABLE END_TIPO
(
ID_End_Tipo    INT          NOT NULL AUTO_INCREMENT,
Descricao      VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_End_Tipo)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela TELEFONE                                                       *
*                                                                              *
*******************************************************************************/
CREATE TABLE TELEFONE
(
ID_Telefone    INT        NOT NULL AUTO_INCREMENT,
ID_Pessoa      INT        NOT NULL,
ID_Tel_Tipo    INT        NOT NULL,
DDD            VARCHAR(3) NOT NULL,
Numero         VARCHAR(8) NOT NULL,
PRIMARY KEY (ID_Telefone)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela TEL_TIPO                                                       *
*                                                                              *
*******************************************************************************/
CREATE TABLE TEL_TIPO
(
ID_Tel_Tipo     INT         NOT NULL AUTO_INCREMENT,
Descricao       VARCHAR(30) NOT NULL,
PRIMARY KEY (ID_Tel_Tipo)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela DOCUMENTO                                                      *
*                                                                              *
*******************************************************************************/
CREATE TABLE DOCUMENTO
(
ID_Documento  INT          NOT NULL AUTO_INCREMENT,
ID_Pessoa     INT          NOT NULL,
Numero        VARCHAR(30)  NOT NULL,
ID_Doc_Tipo   INT          NOT NULL,
DataEmissao   TIMESTAMP(8) NOT NULL,
PRIMARY KEY (ID_Documento)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela DOC_TIPO                                                       *
*                                                                              *
*******************************************************************************/
CREATE TABLE DOC_TIPO
(
ID_Doc_Tipo    INT         NOT NULL AUTO_INCREMENT,
Descricao      VARCHAR(30) NOT NULL,
PRIMARY KEY (ID_Doc_Tipo)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela MANIFESTO                                                      *
*                                                                              *
*******************************************************************************/
CREATE TABLE MANIFESTO
(
ID_Manifesto        INT           NOT NULL AUTO_INCREMENT,
Numero              INT           NOT NULL,
NumCertificado      INT           NOT NULL,
Quantidade          NUMERIC(15,6) NULL,
ID_Unidade          INT           NOT NULL,
ID_Residuo          INT           NOT NULL,
ID_EstadoFisico     INT           NOT NULL,
ID_Acond            INT           NOT NULL,
ID_Origem           INT           NOT NULL,
ID_Procedencia      INT           NOT NULL,
ID_TratDisp         INT           NOT NULL,
ID_Status           INT           NOT NULL,
GerDtEntrega        DATETIME      NOT NULL,
GerID_Empresa       INT           NOT NULL,
GerNumInventario    VARCHAR(30)   NULL,
GerID_Responsavel   INT           NOT NULL,
TransDtReceb        DATETIME      NOT NULL,
TransID_Empresa     INT           NOT NULL,
TransID_Responsavel INT           NOT NULL,
TransNomeMotorista  VARCHAR(30)   NULL,
TransPlacaVeiculo   VARCHAR(30)   NULL,
TransCertificado    VARCHAR(30)   NULL,
RecepDtReceb        DATETIME      NOT NULL,
RecepID_Empresa     INT           NOT NULL,
RecepNumInventario  VARCHAR(30)   NULL,
RecepID_Responsavel INT           NOT NULL,
PRIMARY KEY (ID_Manifesto)
);

CREATE UNIQUE INDEX IDXNUMERO ON MANIFESTO (Numero);


/*******************************************************************************
*                                                                              *
* Cria a tabela UNIDADEMEDIDA                                                  *
*                                                                              *
*******************************************************************************/
CREATE TABLE UNIDADEMEDIDA
(
ID_UnidadeMedida INT          NOT NULL AUTO_INCREMENT,
Descricao        VARCHAR(30)  NOT NULL,
Sigla            VARCHAR(5),
PRIMARY KEY (ID_UnidadeMedida)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela RESIDUO                                                        *
*                                                                              *
*******************************************************************************/
CREATE TABLE RESIDUO
(
ID_Residuo       INT          NOT NULL AUTO_INCREMENT,
Descricao        VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_Residuo)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela ESTADOFISICO                                                   *
*                                                                              *
*******************************************************************************/
CREATE TABLE ESTADOFISICO
(
ID_EstadoFisico INT          NOT NULL AUTO_INCREMENT,
Descricao       VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_EstadoFisico)
);

/*******************************************************************************
*                                                                              *
* Inclui um registro na tabela ESTADOFISICO: 0 - Em Trânsito                   *
*                                                                              *
*******************************************************************************/
INSERT INTO ESTADOFISICO (
ID_EstadoFisico,
Descricao)
VALUES (
0,
'Em Trânsito');

/*******************************************************************************
*                                                                              *
* Cria a tabela ORIGEM                                                         *
*                                                                              *
*******************************************************************************/
CREATE TABLE ORIGEM
(
ID_Origem INT          NOT NULL AUTO_INCREMENT,
Descricao VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_Origem)
);

/*******************************************************************************
*                                                                              *
* Inclui um registro na tabela ORIGEM: 0 - Em Trânsito                         *
*                                                                              *
*******************************************************************************/
INSERT INTO ORIGEM (
ID_Origem,
Descricao)
VALUES (
0,
'Em Trânsito');

/*******************************************************************************
*                                                                              *
* Cria a tabela ACONDICIONAMENTO                                               *
*                                                                              *
*******************************************************************************/
CREATE TABLE ACONDICIONAMENTO
(
ID_Acondicionamento INT          NOT NULL AUTO_INCREMENT,
Descricao           VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_Acondicionamento)
);

/*******************************************************************************
*                                                                              *
* Inclui um registro na tabela ACONDICIONAMENTO: 0 - Em Trânsito               *
*                                                                              *
*******************************************************************************/
INSERT INTO ACONDICIONAMENTO (
ID_Acondicionamento,
Descricao)
VALUES (
0,
'Em Trânsito');



/*******************************************************************************
*                                                                              *
* Cria a tabela PROCEDENCIA                                                    *
*                                                                              *
*******************************************************************************/
CREATE TABLE PROCEDENCIA
(
ID_Procedencia INT          NOT NULL AUTO_INCREMENT,
Descricao      VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_Procedencia)
);

/*******************************************************************************
*                                                                              *
* Inclui um registro na tabela PROCEDENCIA: 0 - Em Trânsito                    *
*                                                                              *
*******************************************************************************/
INSERT INTO PROCEDENCIA (
ID_Procedencia,
Descricao)
VALUES (
0,
'Em Trânsito');

/*******************************************************************************
*                                                                              *
* Cria a tabela TRATDISP                                                       *
*                                                                              *
*******************************************************************************/
CREATE TABLE TRATDISP
(
ID_TratDisp INT          NOT NULL AUTO_INCREMENT,
Descricao   VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_TratDisp)
);

/*******************************************************************************
*                                                                              *
* Inclui um registro na tabela TRATDISP: 0 - Em Trânsito                       *
*                                                                              *
*******************************************************************************/
INSERT INTO TRATDISP (
ID_TratDisp,
Descricao)
VALUES (
0,
'Em Trânsito');


/*******************************************************************************
*                                                                              *
* Cria a tabela CARGO                                                          *
*                                                                              *
*******************************************************************************/
CREATE TABLE CARGO
(
ID_Cargo  INT          NOT NULL AUTO_INCREMENT,
Descricao VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_Cargo)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela MANIFESTOESTADO                                                *
*                                                                              *
*******************************************************************************/
CREATE TABLE MANIFESTOESTADO
(
ID_ManifestoEstado  INT          NOT NULL AUTO_INCREMENT,
Descricao           VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_ManifestoEstado)
);

/*******************************************************************************
*                                                                              *
* Inclui o estado de Manifesto 1 - Em Trânsito                                 *
*                                                                              *
*******************************************************************************/
INSERT INTO MANIFESTOESTADO(
ID_ManifestoEstado,
Descricao)
VALUES(
1,
'Em Trânsito');

/*******************************************************************************
*                                                                              *
* Inclui o estado de Manifesto 2 - Normal                                      *
*                                                                              *
*******************************************************************************/
INSERT INTO MANIFESTOESTADO(
ID_ManifestoEstado,
Descricao)
VALUES(
2,
'Normal');

/*******************************************************************************
*                                                                              *
* Inclui o estado de Manifesto 3 - Recebido com Atraso                         *
*                                                                              *
*******************************************************************************/
INSERT INTO MANIFESTOESTADO(
ID_ManifestoEstado,
Descricao)
VALUES(
3,
'Recebido com Atraso');

/*******************************************************************************
*                                                                              *
* Cria a tabela EMPRESA                                                         *
*                                                                              *
*******************************************************************************/
CREATE TABLE EMPRESA
(
ID_Empresa       INT          NOT NULL AUTO_INCREMENT,
RazaoSocial      VARCHAR(50)  NOT NULL,
ID_Classificacao INT          NOT NULL, /* Receptor, Transportador, Gerador, Responsável pelo Recebimento */
Endereco         VARCHAR(50)  NOT NULL,
Municipio        VARCHAR(30)  NOT NULL,
UF               VARCHAR(02)  NOT NULL,
Telefone         VARCHAR(15)  NOT NULL,
NumLicencaFEEMA  VARCHAR(30)  NULL,
PRIMARY KEY (ID_Empresa)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela RESPONSAVEL                                                    *
*                                                                              *
*******************************************************************************/
CREATE TABLE RESPONSAVEL
(
ID_Responsavel       INT          NOT NULL AUTO_INCREMENT,
Nome                 VARCHAR(50)  NOT NULL,
ID_Cargo             INT          NULL,
PRIMARY KEY (ID_Responsavel)
);


/*******************************************************************************
*                                                                              *
* Cria a tabela PESSOAFISICA                                                   *
*                                                                              *
*******************************************************************************/
CREATE TABLE PESSOAFISICA
(
ID_PessoaFisica  INT          NOT NULL AUTO_INCREMENT,
ID_Pessoa        INT          NOT NULL,
ID_EndCobranca   INT          NOT NULL,
ID_EndContato    INT          NOT NULL,
ID_EndCorresp    INT          NOT NULL,
ID_Sexo          INT          NOT NULL,
ID_Cargo         INT          NOT NULL,
NomePrimeiro     VARCHAR(20)  NOT NULL,
NomeRestante     VARCHAR(30)  NOT NULL,
Apelido          VARCHAR(20)      NULL,
DataNasc         DATETIME     NOT NULL,
PRIMARY KEY (ID_PessoaFisica)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela PESSOAJURIDICA                                                 *
*                                                                              *
*******************************************************************************/
CREATE TABLE PESSOAJURIDICA
(
ID_PessoaJuridica INT          NOT NULL AUTO_INCREMENT,
ID_Pessoa         INT          NOT NULL,
RazaoSocial       VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_PessoaJuridica)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela CLASSIFICACAO                                                  *
*                                                                              *
*******************************************************************************/
CREATE TABLE CLASSIFICACAO
(
ID_Classificacao INT          NOT NULL AUTO_INCREMENT,
Descricao        VARCHAR(30)  NOT NULL, /* Receptor, Transportador, Gerador, Responsável pelo Recebimento */
PRIMARY KEY (ID_Classificacao)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela BAIRRO                                                         *
*                                                                              *
*******************************************************************************/
CREATE TABLE BAIRRO
(
ID_Bairro        INT          NOT NULL AUTO_INCREMENT,
Descricao        VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_Bairro)
);


/*******************************************************************************
*                                                                              *
* Cria a tabela ELEITOR                                                        *
*                                                                              *
*******************************************************************************/
CREATE TABLE ELEITOR
(
ID_Eleitor       INT          NOT NULL AUTO_INCREMENT,
NomePrimeiro     VARCHAR(20)  NOT NULL,
NomeRestante     VARCHAR(30)  NOT NULL,
Apelido          VARCHAR(20)      NULL,
LograID_Tipo     INT          NOT NULL,
LograDescricao   VARCHAR(30)  NOT NULL,
LograNumero      NUMERIC(6,0)     NULL,
LograComplemento VARCHAR(30)      NULL,
LograID_Bairro   INT          NOT NULL,
LograCEP         VARCHAR(08)  NOT NULL,
LograCidade      VARCHAR(30)  NOT NULL,
LograUF          VARCHAR(02)  NOT NULL,
ID_Classificacao INT          NOT NULL,
ID_Sexo          INT          NOT NULL,
ConquistadoPor   INT              NULL,
Email            VARCHAR(50)      NULL,
DataNasc         DATETIME     NOT NULL,
TitNumero        VARCHAR(11)      NULL,
TitZona          VARCHAR(03)      NULL,
TitSecao         VARCHAR(03)      NULL,
CPF              VARCHAR(11)      NULL,
PRIMARY KEY (ID_Eleitor)
);

/*******************************************************************************
*                                                                              *
* Cria a tabela LOGRADOUROTIPO                                                 *
*                                                                              *
*******************************************************************************/
CREATE TABLE LOGRADOUROTIPO
(
ID_Tipo          INT          NOT NULL AUTO_INCREMENT,
Descricao        VARCHAR(30)  NOT NULL,
PRIMARY KEY (ID_Tipo)
);


/*******************************************************************************
*                                                                              *
* Cria a tabela TITULORELATORIO                                                *
*                                                                              *
*******************************************************************************/
CREATE TABLE TITRELAT
(
ID_TitRelat      INT           NOT NULL AUTO_INCREMENT,
Descricao        VARCHAR(100)  NOT NULL,
Tipo             INT           NOT NULL,
PRIMARY KEY (ID_TitRelat)
);



SELECT ID_TitRelat,
       Descricao,
       Tipo
FROM   TITRELAT
WHERE  Tipo LIKE :sTipo
ORDER BY Descricao


/*
SELECT   ID_Eleitor,
         NomePrimeiro,
         NomeRestante,
         Apelido,
         LograID_Tipo,
         LograDescricao,
         LograNumero,
         LograComplemento,
         LograID_Bairro,
         LograCEP,
         LograCidade,
         LograUF,
         ID_Classificacao,
         ID_Sexo,
         ConquistadoPor,
         Email,
         DataNasc,
         TitNumero,
         TitZona,
         TitSecao,
         CPF
FROM     ELEITOR
ORDER BY ID_Eleitor



SELECT   ID_Tipo,
         Descricao
FROM     LOGRADOUROTIPO
ORDER BY ID_Tipo


SELECT   ID_Classificacao,
         Descricao
FROM     ELEITORCLASSIFICACAO
ORDER BY ID_Classificacao


SELECT   ID_Sexo,
         Descricao
FROM     SEXO
ORDER BY ID_Sexo


SELECT   ID_Bairro,
         Descricao
FROM     BAIRRO
ORDER BY ID_Bairro
*/
