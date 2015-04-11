/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  Acumuladores Moura S/A - Código 297
------------------------------------------------------------------------------*/
DELETE FROM empresa
WHERE  ID_Empresa IN (298);

/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  Acergy Brasil S/A - Código 273
------------------------------------------------------------------------------*/
UPDATE manifesto
SET    GerID_Empresa = 273
WHERE GerID_Empresa IN (273, 286, 292, 134, 296, 329, 327, 530, 194, 385, 338, 402, 396, 168, 167, 546, 250, 337, 636);

UPDATE manifesto
SET    TransID_Empresa = 273
WHERE  TransID_Empresa IN (273, 286, 292, 134, 296, 329, 327, 530, 194, 385, 338, 402, 396, 168, 167, 546, 250, 337, 636);

UPDATE manifesto
SET    RecepID_Empresa = 273
WHERE  RecepID_Empresa IN (273, 286, 292, 134, 296, 329, 327, 530, 194, 385, 338, 402, 396, 168, 167, 546, 250, 337, 636);

DELETE FROM empresa
WHERE  ID_Empresa IN (286, 292, 134, 296, 329, 327, 530, 194, 385, 338, 402, 396, 168, 167, 546, 250, 337, 636);

UPDATE empresa
SET Telefone = "02227739964"
WHERE  ID_Empresa = "273";

/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  Aces Aluguéis de Caixas Eq. - Código 270
------------------------------------------------------------------------------*/
UPDATE empresa
SET    RazaoSocial = "Aces Aluguéis de Caixas Eq.",
       Endereco    = "Av. 01 S/Nº Lt 256 Qd 07 Balneário",
       Responsavel = "Maria do Socorro Pereira"
WHERE  ID_Empresa  = 270;

/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  Água e Seco Lavanderias Ltda - Código 125
------------------------------------------------------------------------------*/
UPDATE empresa
SET    RazaoSocial = "Água e Seco Lavanderias Ltda",
       Endereco    = "Rua Teixeira de Gouveia nº 1157",
       Municipio   = "Macaé",
       Responsavel = "Sr. Adriano de Almeida Gon"
WHERE  ID_Empresa  = 125;

/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  Aggreko Brasil Energia Ltda - Código 35
------------------------------------------------------------------------------*/
UPDATE empresa
SET    Municipio   = "Macaé",
       Responsavel = "Patricia Silva"
WHERE  ID_Empresa  = 35;

/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  Alphatec Engenharia e Inspeção S/A - Código 1
------------------------------------------------------------------------------*/
UPDATE manifesto
SET    GerID_Empresa = 1
WHERE GerID_Empresa IN (1, 398, 300);

UPDATE manifesto
SET    TransID_Empresa = 1
WHERE  TransID_Empresa IN (1, 398, 300);

UPDATE manifesto
SET    RecepID_Empresa = 1
WHERE  RecepID_Empresa IN (1, 398, 300);

DELETE FROM empresa
WHERE  ID_Empresa IN (398, 300);

/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  Apliquim Equipamentos e Produtos - Código 51
------------------------------------------------------------------------------*/
 UPDATE empresa
 SET    Municipio   = "Paulínia"
 WHERE  ID_Empresa  = 51;

/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  Arcoenge Ltda - Código 348
------------------------------------------------------------------------------*/
UPDATE empresa
SET    Endereco   = "Rua José Felix, 05 - Centro"
WHERE  ID_Empresa  = 348;

/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  B.J. Services do Brasil Ltda - Código 75
------------------------------------------------------------------------------*/
UPDATE empresa
SET    Municipio   = "Macaé",
       Responsavel = "Marco Oliveira"
WHERE  ID_Empresa  = 75;

/*------------------------------------------------------------------------------
  UPDATEs e DELETEs para ajustar os manifestos da empresa
  Baker Hughes Centrilift - Código 395
------------------------------------------------------------------------------*/
UPDATE empresa
SET    Municipio   = "Macaé"
WHERE  ID_Empresa  = 395;


/*------------------------------------------------------------------------------
------------------------------------------------------------------------------*/
UPDATE empresa
SET    Telefone   = REPLACE( REPLACE( REPLACE( REPLACE(Telefone,   '(', ''), ')', ''), '-', ''), ' ', '' ),
       TelefoneII = REPLACE( REPLACE( REPLACE( REPLACE(TelefoneII, '(', ''), ')', ''), '-', ''), ' ', '' ),
       CNPJ       = REPLACE( REPLACE( REPLACE( REPLACE(CNPJ,       '.', ''), '/', ''), '-', ''), ' ', '' );

/*------------------------------------------------------------------------------
------------------------------------------------------------------------------*/
UPDATE empresa
SET Telefone   = "2124019505",
    TelefoneII = "2124018026",
    CEP        = "21720001",
    CNPJ       = "34143693000193",
    InscEstado = "82246819",
    InscMunic  = "Isento",
    Email      = "contato@ferpan.com.br"
WHERE ID_Empresa = 57;

/*------------------------------------------------------------------------------
------------------------------------------------------------------------------*/
UPDATE empresa
SET Telefone   = "2227962100",
    TelefoneII = "2227962121",
    CEP        = "27930470",
    CNPJ       = "34143693000355",
    InscEstado = "77526374",
    InscMunic  = "0178123",
    Email      = "contato@ferpan.com.br"
WHERE  ID_Empresa IN (370, 517, 436, 116);


/*------------------------------------------------------------------------------
------------------------------------------------------------------------------*/
ALTER TABLE `ferpan`.`empresa` CHANGE COLUMN `InscEstado` `InscEstado` VARCHAR(12) NULL DEFAULT NULL;
INSERT INTO `ferpan`.`empresa` (`ID_Empresa`, `RazaoSocial`, `ID_Classificacao`, `Endereco`, `Municipio`, `UF`, `Telefone`, `ValorContrato`, `ValorTonelada`, `FlagRelContaminado`, `FlagRelReciclavel`, `FlagRelSucata`, `TipoResumoGeral`, `Responsavel`, `ID_Fantasia`, `CEP`, `CNPJ`, `InscEstado`) VALUES (0, 'Altemar J Camilo E Cia Ltda - ME', 1, 'Rua Arapongas, 222', 'Foz do Iguaçu', 'PR', '4540539061', '1', '1', 'F', 'F', 'F', 1, 'A', 187, '85859470', '07371039000164', '9033776230');
INSERT INTO `ferpan`.`fantasia` (`ID_Fantasia`, `Descricao`) VALUES (0, 'Altemar J Camilo E Cia Ltda - ME');
/*------------------------------------------------------------------------------
------------------------------------------------------------------------------*/

