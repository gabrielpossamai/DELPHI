SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

ALTER TABLE `ferpan`.`manifesto` 
  ADD CONSTRAINT `fk_manifesto_procedencia1`
  FOREIGN KEY (`ID_Procedencia` )
  REFERENCES `ferpan`.`procedencia` (`ID_Procedencia` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_residuo1`
  FOREIGN KEY (`ID_Residuo` )
  REFERENCES `ferpan`.`residuo` (`ID_Residuo` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_acondicionamento1`
  FOREIGN KEY (`ID_Acond` )
  REFERENCES `ferpan`.`acondicionamento` (`ID_Acondicionamento` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_estadofisico1`
  FOREIGN KEY (`ID_EstadoFisico` )
  REFERENCES `ferpan`.`estadofisico` (`ID_EstadoFisico` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_manifestoestado1`
  FOREIGN KEY (`ID_Status` )
  REFERENCES `ferpan`.`manifestoestado` (`ID_ManifestoEstado` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_unidademedida1`
  FOREIGN KEY (`ID_Unidade` )
  REFERENCES `ferpan`.`unidademedida` (`ID_UnidadeMedida` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_origem1`
  FOREIGN KEY (`ID_Origem` )
  REFERENCES `ferpan`.`origem` (`ID_Origem` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_tratdisp1`
  FOREIGN KEY (`ID_TratDisp` )
  REFERENCES `ferpan`.`tratdisp` (`ID_TratDisp` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_empresa1`
  FOREIGN KEY (`GerID_Empresa` )
  REFERENCES `ferpan`.`empresa` (`ID_Empresa` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_responsavel1`
  FOREIGN KEY (`GerID_Responsavel` )
  REFERENCES `ferpan`.`responsavel` (`ID_Responsavel` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_empresa2`
  FOREIGN KEY (`TransID_Empresa` )
  REFERENCES `ferpan`.`empresa` (`ID_Empresa` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_responsavel2`
  FOREIGN KEY (`TransID_Responsavel` )
  REFERENCES `ferpan`.`responsavel` (`ID_Responsavel` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_empresa3`
  FOREIGN KEY (`RecepID_Empresa` )
  REFERENCES `ferpan`.`empresa` (`ID_Empresa` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_manifesto_responsavel3`
  FOREIGN KEY (`RecepID_Responsavel` )
  REFERENCES `ferpan`.`responsavel` (`ID_Responsavel` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
, ADD INDEX `fk_manifesto_procedencia1` (`ID_Procedencia` ASC) 
, ADD INDEX `fk_manifesto_residuo1` (`ID_Residuo` ASC) 
, ADD INDEX `fk_manifesto_acondicionamento1` (`ID_Acond` ASC) 
, ADD INDEX `fk_manifesto_estadofisico1` (`ID_EstadoFisico` ASC) 
, ADD INDEX `fk_manifesto_manifestoestado1` (`ID_Status` ASC) 
, ADD INDEX `fk_manifesto_unidademedida1` (`ID_Unidade` ASC) 
, ADD INDEX `fk_manifesto_origem1` (`ID_Origem` ASC) 
, ADD INDEX `fk_manifesto_tratdisp1` (`ID_TratDisp` ASC) 
, ADD INDEX `fk_manifesto_empresa1` (`GerID_Empresa` ASC) 
, ADD INDEX `fk_manifesto_responsavel1` (`GerID_Responsavel` ASC) 
, ADD INDEX `fk_manifesto_empresa2` (`TransID_Empresa` ASC) 
, ADD INDEX `fk_manifesto_responsavel2` (`TransID_Responsavel` ASC) 
, ADD INDEX `fk_manifesto_empresa3` (`RecepID_Empresa` ASC) 
, ADD INDEX `fk_manifesto_responsavel3` (`RecepID_Responsavel` ASC) ;

ALTER TABLE `ferpan`.`responsavel` 
  ADD CONSTRAINT `fk_responsavel_cargo1`
  FOREIGN KEY (`ID_Cargo` )
  REFERENCES `ferpan`.`cargo` (`ID_Cargo` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_responsavel_tratamento1`
  FOREIGN KEY (`ID_Tratamento` )
  REFERENCES `ferpan`.`tratamento` (`ID_Tratamento` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
, ADD INDEX `fk_responsavel_cargo1` (`ID_Cargo` ASC) 
, ADD INDEX `fk_responsavel_tratamento1` (`ID_Tratamento` ASC) ;

ALTER TABLE `ferpan`.`usuario` 
  ADD CONSTRAINT `fk_usuario_setor1`
  FOREIGN KEY (`ID_Setor` )
  REFERENCES `ferpan`.`setor` (`ID_Setor` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
, ADD INDEX `fk_usuario_setor1` (`ID_Setor` ASC) ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
