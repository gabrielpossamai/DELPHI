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
  ON UPDATE NO ACTION
, ADD INDEX `fk_manifesto_procedencia1` (`ID_Procedencia` ASC) 
, ADD INDEX `fk_manifesto_residuo1` (`ID_Residuo` ASC) 
, ADD INDEX `fk_manifesto_acondicionamento1` (`ID_Acond` ASC) 
, ADD INDEX `fk_manifesto_estadofisico1` (`ID_EstadoFisico` ASC) 
, ADD INDEX `fk_manifesto_manifestoestado1` (`ID_Status` ASC) 
, ADD INDEX `fk_manifesto_unidademedida1` (`ID_Unidade` ASC) 
, ADD INDEX `fk_manifesto_origem1` (`ID_Origem` ASC) ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
