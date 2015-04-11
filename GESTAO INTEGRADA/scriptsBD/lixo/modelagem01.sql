SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

ALTER TABLE `ferpan`.`modulo` 
  ADD CONSTRAINT `fk_modulo_setor1`
  FOREIGN KEY (`ID_Setor` )
  REFERENCES `ferpan`.`setor` (`ID_Setor` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_modulo_grupo1`
  FOREIGN KEY (`ID_Grupo` )
  REFERENCES `ferpan`.`grupo` (`ID_Grupo` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
, ADD INDEX `fk_modulo_setor1` (`ID_Setor` ASC) 
, ADD INDEX `fk_modulo_grupo1` (`ID_Grupo` ASC) ;

ALTER TABLE `ferpan`.`usuario_modulo` 
  ADD CONSTRAINT `fk_usuario_modulo_usuario`
  FOREIGN KEY (`ID_Usuario` )
  REFERENCES `ferpan`.`usuario` (`ID_Usuario` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION, 
  ADD CONSTRAINT `fk_usuario_modulo_modulo1`
  FOREIGN KEY (`ID_Modulo` )
  REFERENCES `ferpan`.`modulo` (`ID_Modulo` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
, ADD INDEX `fk_usuario_modulo_usuario` (`ID_Usuario` ASC) 
, ADD INDEX `fk_usuario_modulo_modulo1` (`ID_Modulo` ASC) ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
