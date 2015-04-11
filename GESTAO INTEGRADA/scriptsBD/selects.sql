*/------------------------------------------------------------------------------
(314, 301, 218, 124, 38, 117, 394, 219, 220, 287, 288, 255, 221, 240, 315, 107, 362, 222, 358, 223, 289, 400, 415, 242, 228, 224, 302, 293, 37)

ID_Fanasia  = 3
RazaoSocial = Baker Hughes do Brasil Ltda

(37, 124, 218, 219, 220, 221, 222, 223, 224, 228, 240, 242, 255, 287, 288, 289, 293, 301, 302, 314, 315, 358, 362, 394, 400, 415)
*/------------------------------------------------------------------------------*/

Ferpan
(57, 370, 517, 436, 116)

/*------------------------------------------------------------------------------
  SELECT com os totais de manifestos por empresa.
------------------------------------------------------------------------------*/
 SELECT   e.ID_Empresa,
          e.RazaoSocial,
          COUNT(m.GerID_Empresa) AS Total
 FROM     manifesto m RIGHT JOIN empresa e ON m.GerID_Empresa = e.ID_Empresa
 GROUP BY e.ID_Empresa
 ORDER BY e.ID_Empresa;


/*------------------------------------------------------------------------------
  SELECT que verifica se existe algum manifesto com o código da
  empresa sendo usado como Geradora, Transportadora ou Receptora.
------------------------------------------------------------------------------*/
 SELECT *
 FROM   manifesto
 WHERE  (GerID_Empresa   = 337)
    OR  (TransID_Empresa = 337)
    OR  (RecepID_Empresa = 337);


 SELECT GerID_Empresa,
        TransID_Empresa,
        RecepID_Empresa
 FROM   manifesto
 WHERE  (GerID_Empresa   = 337)
    OR  (TransID_Empresa = 337)
    OR  (RecepID_Empresa = 337);


SELECT   *
FROM     empresa
ORDER BY RazaoSocial;

 SELECT *
 FROM   manifesto
 WHERE  (GerID_Empresa   = 35)
    OR  (TransID_Empresa = 35)
    OR  (RecepID_Empresa = 35);

 SELECT GerID_Empresa,
        TransID_Empresa,
        RecepID_Empresa
 FROM   manifesto
 WHERE  (GerID_Empresa   = 35);

 SELECT GerID_Empresa,
        TransID_Empresa,
        RecepID_Empresa
 FROM   manifesto
 WHERE  (TransID_Empresa = 35);

 SELECT GerID_Empresa,
        TransID_Empresa,
        RecepID_Empresa
 FROM   manifesto
 WHERE  (RecepID_Empresa = 35);

/*------------------------------------------------------------------------------
  SELECT com os totais de registro que a Acergy Brasil S/A - Código 273
  vai passar a ter.
------------------------------------------------------------------------------*/
SELECT COUNT(*) AS TOTAL
FROM manifesto
WHERE GerID_Empresa IN (273, 286, 292, 134, 296, 329, 327, 530, 194, 385, 338, 402, 396, 168, 167, 546, 250, 337, 636);
