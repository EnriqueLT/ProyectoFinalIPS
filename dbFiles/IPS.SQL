CREATE database IPS;

USE IPS;
-- Create tables section -------------------------------------------------

-- Table usuario

CREATE TABLE `usuario`
(
  `UsuCod` Int NOT NULL AUTO_INCREMENT,
  `UsuNom` Char(40) NOT NULL,
  `UsuApe` Char(40) NOT NULL,
  `UsuZonId` Int NOT NULL,
  `UsuTel` Int(9) NOT NULL,
  `UsuDir` Char(40) NOT NULL,
  PRIMARY KEY (`UsuCod`, `UsuZonId`),
  UNIQUE `UsuCod` (`UsuCod`)
)
;

-- Table hospital

CREATE TABLE `hospital`
(
  `HosCod` Int NOT NULL AUTO_INCREMENT,
  `HosNom` Char(40) NOT NULL,
  `HosTipo` Char(40) NOT NULL,
  `HosCama` Int NOT NULL,
  `HosDispo` Bool NOT NULL,
  `HosZonId` Int NOT NULL,
  `HosUsuCod` Int NOT NULL,
  PRIMARY KEY (`HosCod`, `HosUsuCod`, `HosZonId`)
)
;

-- Table producto

CREATE TABLE `producto`
(
  `IdPro` Int NOT NULL,
  `ProNom` Char(40) NOT NULL,
  `ProDis` Bool NOT NULL,
  `ProCant` Int NOT NULL
)
;

ALTER TABLE `producto` ADD PRIMARY KEY (`IdPro`)
;

-- Table foro_comentario

CREATE TABLE `foro_comentario`
(
  `IDCom` Int NOT NULL AUTO_INCREMENT,
  `ComUsuCod` Int NOT NULL,
  `ComIdPro` Int NOT NULL,
  `ComDes` Text NOT NULL,
  `ComTip` Bool NOT NULL,
  `ComVis` Bool NOT NULL,
  PRIMARY KEY (`IDCom`, `ComUsuCod`, `ComIdPro`)
)
;

-- Table proveedor

CREATE TABLE `proveedor`
(
  `ProveCod` Int NOT NULL AUTO_INCREMENT,
  `ProveNom` Char(40) NOT NULL,
  `ProveIdPro` Int NOT NULL,
  `ProveUsuCod` Int NOT NULL,
  `UsuZonId` Int NOT NULL,
  PRIMARY KEY (`ProveCod`, `ProveIdPro`, `UsuZonId`, `ProveUsuCod`)
)
;

-- Table zona

CREATE TABLE `zona`
(
  `IdZon` Int NOT NULL,
  `ZonDep` Char(40) NOT NULL,
  `ZonPro` Char(40) NOT NULL,
  `ZonDis` Char(40) NOT NULL
)
;

ALTER TABLE `zona` ADD PRIMARY KEY (`IdZon`)
;

-- Create foreign keys (relationships) section -------------------------------------------------

ALTER TABLE `foro_comentario` ADD CONSTRAINT `Relationship2` FOREIGN KEY (`ComUsuCod`) REFERENCES `usuario` (`UsuCod`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `foro_comentario` ADD CONSTRAINT `Relationship3` FOREIGN KEY (`ComIdPro`) REFERENCES `producto` (`IdPro`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `proveedor` ADD CONSTRAINT `Relationship5` FOREIGN KEY (`ProveIdPro`) REFERENCES `producto` (`IdPro`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `usuario` ADD CONSTRAINT `Relationship13` FOREIGN KEY (`UsuZonId`) REFERENCES `zona` (`IdZon`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `hospital` ADD CONSTRAINT `Relationship14` FOREIGN KEY (`HosUsuCod`) REFERENCES `usuario` (`UsuCod`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `hospital` ADD CONSTRAINT `Relationship15` FOREIGN KEY (`HosZonId`) REFERENCES `zona` (`IdZon`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `proveedor` ADD CONSTRAINT `Relationship17` FOREIGN KEY (`ProveUsuCod`, `UsuZonId`) REFERENCES `usuario` (`UsuCod`, `UsuZonId`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

