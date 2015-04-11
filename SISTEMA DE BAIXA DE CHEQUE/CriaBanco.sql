create table alineas (
   codigo         smallint         Not Null,
   descricao      Varchar(255)     Not Null,
   constraint pk_alineas primary key (codigo));

create table bancos (
   codigo         smallint         Not Null,
   Nome           varchar(50)      Not Null,
   constraint pk_bancos primary key(codigo));

create index idx_bancos_nome on bancos(nome);

create table clientes (
   cnpj           char(14)         Not Null,
   nome           varchar(45)      Not Null,
   fone           varchar(15),
   constraint pk_clientes primary key(cnpj) 
   );
create index idx_clientes_nome on clientes(nome);

create table cheques (
   cnpj           char(14)         Not Null,
   banco          smallint         Not Null,
   agencia        smallint         Not null,
   conta          smallint         Not Null,
   numero         smallint         Not Null,
   valor          Float            Not Null,
   emissao        date             Not Null,
   alinea         smallint         Not Null,
   constraint pk_cheques           primary key(cnpj,banco,agencia,conta,numero),
   constraint fk_cheques_alineas   foreign key(alinea) references alineas(codigo),
   constraint fk_cheques_bancos    foreign key(banco)  references bancos(codigo),
   constraint fk_cheques_clientes  foreign key(cnpj)   references clientes(cnpj)
   );


insert into Alineas values (11,'Cheque sem fundo - 1ª apresentação');
insert into Alineas values (12,'Cheque sem fundo - 2ª apresentação');
insert into Alineas values (13,'Conta encerrada');
insert into Alineas values (14,'Prática espuria');
insert into Alineas values (21,'Contra ordem (ou revogação) ou oposição ( ou sustação) ao pagamento pelo emitente ou pelo legítimo portador');
insert into Alineas values (22,'Divergência ou insufucuência de assinatura');
insert into Alineas values (23,'Cheques emitidos por entidades e Orgãos da Administração Pública Federal direta e indireta em desacordo com os requisitos constantes do art. 74, parágrafo 2., do D.L. nº 200, de 25/02/1967');
insert into Alineas values (24,'Bloqueio judicial ou determinação do Banco Central do Brasil');
insert into Alineas values (25,'Cancelamento de talonário pelo Banco Sacado');
insert into Alineas values (26,'Inoperância temporária de transporte');
insert into Alineas values (27,'Feriado municipal não previsto');
insert into Alineas values (28,'Contra ordem (ou revogação) ou oposição (ou sustação) ao pagamento por furto ou roubo, cuja utilização fica condicionada a apresentação pelo emitente ou portador legitimado (no caso de oposição ou sustação), da respectiva ocorrência policial');
insert into Alineas values (29,'Cheque bloqueado por falta de confirmação do recebimento do talonário pelo correntista');
insert into Alineas values (30,'Furto ou roubo de malotes');
insert into Alineas values (31,'Erro formal (sem data de emissão, com mês grafado numéricamente, ausência de assinatura e não registro de valor por extenso');
insert into Alineas values (32,'Ausência ou iregularidade na aplicação do carimbo de compensação');
insert into Alineas values (33,'Divergência de endosso');
insert into Alineas values (34,'Cheque apresentado por estabelecimento bancário que não o indicado no cruzamento em preto, sem o endosso mandato');
insert into Alineas values (35,'Cheque fraudado');
insert into Alineas values (36,'Cheque emitido com mais de um endosso');
insert into Alineas values (37,'Registro inconsistente - CEL/Compensação Eletrônica');
insert into Alineas values (40,'Moéda inválida');
insert into Alineas values (41,'Cheque apresentado a banco que não o sacado');
insert into Alineas values (42,'Cheque não compensável na sessão ou sitema de compensação em que apresentaddo e Recibos Interbançarios quando trocados na sessão que não a de trocas noturnas');
insert into Alineas values (43,'Cheque devolvido anteriormente pelos motivos 21, 22, 23,  24, 31 e 34 não passível de reapresentação por persistir o motivo da devolução');
insert into Alineas values (44,'Cheque prescrito');
insert into Alineas values (45,'Cheque emitido por entidade obrigada a realizar movimentação e utilização de recursos financeiros do Tesouro Nacional mediante Ordem Bancária');
insert into Alineas values (46,'CR, quando o cheque correspondente não for entregue ao banco sacado nos prazos estabelecidos');
insert into Alineas values (47,'CR com ausência ou inconsistência de dados obrigatórios referentesao cheque correspondente');
insert into Alineas values (48,'Cheque de valor superior sem a identificação do beneficiário');
insert into Alineas values (49,'Remessa nula caracterizada pela reapresentação de cheques anteriormente devolvidos pelos motivos 12, 13, 14, 25, 28, 30, 35, 43, 44, 45 e 48');
insert into Alineas values (51,'Divergência no valor recebido');
insert into Alineas values (52,'Recebimento efetuado fora do prazo');
insert into Alineas values (53,'Apresentação indevida');
insert into Alineas values (54,'Ausência ou irregularidade do carimbo de compensação');
insert into Alineas values (55,'Ausência ou irregularidade na autenticação mecânica');
insert into Alineas values (56,'Transferência insuficiente para a finalidade indicada no documento de crédito - DOC C e Ordens Bancárias');
insert into Alineas values (60,'Padrão monetário não definido');
insert into Alineas values (61,'Papel não compensável');
insert into Alineas values (63,'Registro insuficiente');
insert into Alineas values (64,'Arquivo lógico não processado/processado parcialmente');


insert into bancos values (204,'American Express Bank Brasil Banco Múltiplo S.A.');
insert into bancos values (246,'Banco ABC Brasil S.A.');
insert into bancos values (356,'Banco ABN AMRO Real S.A');
insert into bancos values (025,'Banco Alfa S.A.');
insert into bancos values (641,'Banco Alvorada S.A.');
insert into bancos values (029,'Banco Banerj S.A.');
insert into bancos values (038,'Banco Banestado S.A.');
insert into bancos values (740,'Banco Barclays S.A.');
insert into bancos values (107,'Banco BBM S.A.');
insert into bancos values (031,'Banco Beg S.A.');
insert into bancos values (036,'Banco Bem S.A.');
insert into bancos values (394,'Banco BMC S.A.');
insert into bancos values (318,'Banco BMG S.A.');
insert into bancos values (752,'Banco BNP Paribas Brasil S.A.');
insert into bancos values (248,'Banco Boavista Interatlântico S.A.');
insert into bancos values (237,'Banco Bradesco S.A.');
insert into bancos values (225,'Banco Brascan S.A.');
insert into bancos values (263,'Banco Cacique S.A.');
insert into bancos values (222,'Banco Calyon Brasil S.A.');
insert into bancos values (040,'Banco Cargill S.A.');
insert into bancos values (745,'Banco Citibank S.A.');
insert into bancos values (215,'Banco Comercial e de Investimento Sudameris S.A.');
insert into bancos values (756,'Banco Cooperativo do Brasil S.A. - BANCOOB');
insert into bancos values (748,'Banco Cooperativo Sicredi S.A. - BANSICREDI');
insert into bancos values (505,'Banco Credit Suisse (Brasil) S.A.');
insert into bancos values (229,'Banco Cruzeiro do Sul S.A.');
insert into bancos values (003,'Banco da Amazônia S.A.');
insert into bancos values (707,'Banco Daycoval S.A.');
insert into bancos values (024,'Banco de Pernambuco S.A. - BANDEPE');
insert into bancos values (456,'Banco de Tokyo-Mitsubishi UFJ Brasil S.A.');
insert into bancos values (214,'Banco Dibens S.A.');
insert into bancos values (001,'Banco do Brasil S.A.');
insert into bancos values (027,'Banco do Estado de Santa Catarina S.A.');
insert into bancos values (033,'Banco do Estado de São Paulo S.A. - Banespa');
insert into bancos values (047,'Banco do Estado de Sergipe S.A.');
insert into bancos values (037,'Banco do Estado do Pará S.A.');
insert into bancos values (041,'Banco do Estado do Rio Grande do Sul S.A.');
insert into bancos values (004,'Banco do Nordeste do Brasil S.A.');
insert into bancos values (265,'Banco Fator S.A.');
insert into bancos values (224,'Banco Fibra S.A.');
insert into bancos values (175,'Banco Finasa S.A.');
insert into bancos values (252,'Banco Fininvest S.A.');
insert into bancos values (233,'Banco GE Capital S.A.');
insert into bancos values (734,'Banco Gerdau S.A.');
insert into bancos values (612,'Banco Guanabara S.A.');
insert into bancos values (063,'Banco Ibi S.A. Banco Múltiplo');
insert into bancos values (604,'Banco Industrial do Brasil S.A.');
insert into bancos values (320,'Banco Industrial e Comercial S.A.');
insert into bancos values (653,'Banco Indusval S.A.');
insert into bancos values (630,'Banco Intercap S.A.');
insert into bancos values (249,'Banco Investcred Unibanco S.A.');
insert into bancos values (048,'Banco Itaú BBA S.A.');
insert into bancos values (652,'Banco Itaú Holding Financeira S.A.');
insert into bancos values (341,'Banco Itaú S.A.');
insert into bancos values (376,'Banco J. P. Morgan S.A.');
insert into bancos values (074,'Banco J. Safra S.A.');
insert into bancos values (757,'Banco KEB do Brasil S.A.');
insert into bancos values (600,'Banco Luso Brasileiro S.A.');
insert into bancos values (392,'Banco Mercantil de São Paulo S.A.');
insert into bancos values (389,'Banco Mercantil do Brasil S.A.');
insert into bancos values (755,'Banco Merrill Lynch de Investimentos S.A.');
insert into bancos values (151,'Banco Nossa Caixa S.A.');
insert into bancos values (045,'Banco Opportunity S.A. ');
insert into bancos values (208,'Banco Pactual S.A.');
insert into bancos values (623,'Banco Panamericano S.A.');
insert into bancos values (611,'Banco Paulista S.A.');
insert into bancos values (643,'Banco Pine S.A.');
insert into bancos values (638,'Banco Prosper S.A.');
insert into bancos values (747,'Banco Rabobank International Brasil S.A.');
insert into bancos values (633,'Banco Rendimento S.A.');
insert into bancos values (072,'Banco Rural Mais S.A.');
insert into bancos values (453,'Banco Rural S.A.');
insert into bancos values (422,'Banco Safra S.A.');
insert into bancos values (353,'Banco Santander Brasil S.A.');
insert into bancos values (008,'Banco Santander Meridional S.A.');
insert into bancos values (351,'Banco Santander S.A.');
insert into bancos values (250,'Banco Schahin S.A.');
insert into bancos values (749,'Banco Simples S.A.');
insert into bancos values (366,'Banco Société Générale Brasil S.A.');
insert into bancos values (637,'Banco Sofisa S.A.');
insert into bancos values (347,'Banco Sudameris Brasil S.A.');
insert into bancos values (464,'Banco Sumitomo Mitsui Brasileiro S.A.');
insert into bancos values (634,'Banco Triângulo S.A.');
insert into bancos values (247,'Banco UBS S.A.');
insert into bancos values (116,'Banco Único S.A.');
insert into bancos values (655,'Banco Votorantim S.A.');
insert into bancos values (610,'Banco VR S.A.');
insert into bancos values (370,'Banco WestLB do Brasil S.A.');
insert into bancos values (021,'BANESTES S.A. Banco do Estado do Espírito Santo');
insert into bancos values (719,'Banif-Banco Internacional do Funchal (Brasil)S.A.');
insert into bancos values (479,'BankBoston Banco Múltiplo S.A.');
insert into bancos values (744,'BankBoston N.A.');
insert into bancos values (073,'BB Banco Popular do Brasil S.A.');
insert into bancos values (069,'BPN Brasil Banco Mútiplo S.A.');
insert into bancos values (070,'BRB - Banco de Brasília S.A.');
insert into bancos values (104,'Caixa Econômica Federal');
insert into bancos values (477,'Citibank N.A.');
insert into bancos values (487,'Deutsche Bank S.A. - Banco Alemão');
insert into bancos values (751,'Dresdner Bank Brasil S.A.');
insert into bancos values (210,'Dresdner Bank Lateinamerika Aktiengesellschaft');
insert into bancos values (062,'Hipercard Banco Múltiplo S.A.');
insert into bancos values (399,'HSBC Bank Brasil S.A. - Banco Múltiplo');
insert into bancos values (492,'ING Bank N.V.');
insert into bancos values (488,'JPMorgan Chase Bank');
insert into bancos values (065,'Lemon Bank Banco Múltiplo S.A.');
insert into bancos values (409,'UNIBANCO - União de Bancos Brasileiros S.A.');
insert into bancos values (230,'Unicard Banco Múltiplo S.A.');
insert into bancos values (654,'Banco A.J.Renner S.A.');
insert into bancos values (213,'Banco Arbi S.A.');
insert into bancos values (035,'Banco BEC S.A.');
insert into bancos values (739,'Banco BGN S.A.');
insert into bancos values (218,'Banco Bonsucesso S.A.');
insert into bancos values (044,'Banco BVA S.A.');
insert into bancos values (412,'Banco Capital S.A.');
insert into bancos values (266,'Banco Cédula S.A.');
insert into bancos values (241,'Banco Clássico S.A.');
insert into bancos values (753,'Banco Comercial Uruguai S.A.');
insert into bancos values (075,'Banco CR2 S.A.');
insert into bancos values (721,'Banco Credibel S.A.');
insert into bancos values (300,'Banco de La Nacion Argentina');
insert into bancos values (495,'Banco de La Provincia de Buenos Aires');
insert into bancos values (494,'Banco de La Republica Oriental del Uruguay');
insert into bancos values (039,'Banco do Estado do Piauí S.A. - BEP');
insert into bancos values (626,'Banco Ficsa S.A.');
insert into bancos values (217,'Banco John Deere S.A.');
insert into bancos values (076,'Banco KDB S.A.');
insert into bancos values (212,'Banco Matone S.A.');
insert into bancos values (243,'Banco Máxima S.A.');
insert into bancos values (746,'Banco Modal S.A.');
insert into bancos values (738,'Banco Morada S.A.');
insert into bancos values (066,'Banco Morgan Stanley Dean Witter S.A.');
insert into bancos values (613,'Banco Pecúnia S.A.');
insert into bancos values (724,'Banco Porto Seguro S.A.');
insert into bancos values (735,'Banco Pottencial S.A.');
insert into bancos values (741,'Banco Ribeirão Preto S.A.');
insert into bancos values (743,'Banco Semear S.A.');
insert into bancos values (064,'Goldman Sachs do Brasil Banco Múltiplo S.A.');
insert into bancos values (254,'Paraná Banco S.A.');
commit;
