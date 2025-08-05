CREATE TABLE `turnStatus` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `typeDay` (
  `id` int,
  `name` string,
  `description` float
);

CREATE TABLE `userStatus` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `garageStatus` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `dictionary` (
  `id` int,
  `lable` string,
  `lang` string,
  `description` string
);

CREATE TABLE `logUsers` (
  `id` int,
  `idUser` int,
  `idDictionary` int,
  `detail` string,
  `query` string,
  `fileName` string,
  `date` date,
  FOREIGN KEY (`idUser`)
      REFERENCES `dictionary`(`id`)
);

CREATE TABLE `typeTurn` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `turns` (
  `id` int,
  `idGarage` int,
  `idTypeTurn` int,
  `idTypeDay` int,
  `begin` datetime,
  `end` datetime,
  `idStTurn` int,
  FOREIGN KEY (`idStTurn`)
      REFERENCES `turnStatus`(`id`),
  FOREIGN KEY (`idTypeTurn`)
      REFERENCES `typeTurn`(`id`),
  FOREIGN KEY (`idTypeDay`)
      REFERENCES `typeDay`(`id`)
);

CREATE TABLE `countries` (
  `id` int,
  `name` string
);

CREATE TABLE `typeGarage` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `logSys` (
  `id` int,
  `idDictionary` int,
  `detail` string,
  `query` string,
  `fileName` string,
  `date` datetime,
  FOREIGN KEY (`idDictionary`)
      REFERENCES `dictionary`(`id`)
);

CREATE TABLE `balanceStatus` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `balance` (
  `id` int,
  `amount` float,
  `idStBal` int,
  FOREIGN KEY (`idStBal`)
      REFERENCES `balanceStatus`(`id`)
);

CREATE TABLE `typeMovemet` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `typeUser` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `Users` (
  `id` int,
  `name` string,
  `surName` string,
  `user` mail,
  `sha` string,
  `phone` string,
  `patent` string,
  `cvu` string,
  `idBlance` int,
  `IdTypeUser` int,
  `begin` datetime,
  `last` datetime,
  `IdStUser` id,
  FOREIGN KEY (`IdTypeUser`)
      REFERENCES `typeUser`(`id`),
  FOREIGN KEY (`IdStUser`)
      REFERENCES `userStatus`(`id`)
);

CREATE TABLE `movementStatus` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `movement` (
  `id` int,
  `idTypeMov` Tipo,
  `idLandlord` int,
  `idTenant` int,
  `worth` float,
  `idAgreement` int,
  `idDetail` int,
  `date` datetime,
  `idStMov` int,
  FOREIGN KEY (`idTypeMov`)
      REFERENCES `typeMovemet`(`id`),
  FOREIGN KEY (`idLandlord`)
      REFERENCES `Users`(`id`),
  FOREIGN KEY (`idTenant`)
      REFERENCES `Users`(`id`),
  FOREIGN KEY (`idStMov`)
      REFERENCES `movementStatus`(`id`)
);

CREATE TABLE `cities` (
  `id` int,
  `name` string,
  `idCountry` int,
  FOREIGN KEY (`idCountry`)
      REFERENCES `countries`(`id`)
);

CREATE TABLE `agreementStatus` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `agreements` (
  `Id` int,
  `idTurn` int,
  `begin` datetime,
  `end` datetime,
  `idUser` int,
  `IdStAgr` int,
  FOREIGN KEY (`idUser`)
      REFERENCES `Users`(`id`),
  FOREIGN KEY (`IdStAgr`)
      REFERENCES `agreementStatus`(`id`),
  FOREIGN KEY (`idTurn`)
      REFERENCES `turns`(`id`)
);

CREATE TABLE `typeDoc` (
  `id` int,
  `name` string,
  `description` string
);

CREATE TABLE `documents` (
  `Id` int,
  `idTypeDoc` int,
  `nameFile` string,
  `idUser` int,
  FOREIGN KEY (`idTypeDoc`)
      REFERENCES `typeDoc`(`id`)
);

CREATE TABLE `detailMovements` (
  `id` int,
  `Description` string
);

CREATE TABLE `neighborhoods` (
  `id` int,
  `name` string,
  `idCity` int,
  FOREIGN KEY (`idCity`)
      REFERENCES `cities`(`id`)
);

CREATE TABLE `garages` (
  `Id` int,
  `IdUser` int,
  `idTypeGarage` string,
  `idStGarge` int,
  `amount` int,
  `idCountry` int,
  `idCity` int,
  `idNeig` int,
  FOREIGN KEY (`idStGarge`)
      REFERENCES `garageStatus`(`id`),
  FOREIGN KEY (`idNeig`)
      REFERENCES `neighborhoods`(`id`),
  FOREIGN KEY (`Id`)
      REFERENCES `turns`(`idGarage`),
  FOREIGN KEY (`IdUser`)
      REFERENCES `Users`(`IdStUser`),
  FOREIGN KEY (`idCity`)
      REFERENCES `cities`(`id`),
  FOREIGN KEY (`idTypeGarage`)
      REFERENCES `typeGarage`(`id`),
  FOREIGN KEY (`idCountry`)
      REFERENCES `countries`(`id`)
);

