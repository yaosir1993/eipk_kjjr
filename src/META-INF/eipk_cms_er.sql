CREATE TABLE `t_user` (
`userId` int NOT NULL AUTO_INCREMENT ,
`userCode` varchar(20) NULL,
`userSId` varchar(20) NULL,
`password` varchar(32) NULL,
`lastLoginIp` varchar(15) NULL,
`lastLoginTime` timestamp NULL,
`validity` timestamp NULL,
PRIMARY KEY (`userId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_section` (
`sectionId` int NOT NULL AUTO_INCREMENT ,
`sectionName` varchar(100) NULL,
`parentSection` int NULL,
`sectionType` int NULL,
`sortId` int NULL,
PRIMARY KEY (`sectionId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_article` (
`articleId` int NOT NULL AUTO_INCREMENT ,
`pubUnit` int NULL,
`pubDate` timestamp NULL,
`docId` int NULL,
`sectionId` int NULL,
`title` varchar(200) NULL,
`hits` int NULL,
`checked` int NULL,
`userId` int NULL,
`onHomePage` int NULL,
`content` mediumtext NULL,
PRIMARY KEY (`articleId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_appendix` (
`appendixId` int NOT NULL AUTO_INCREMENT ,
`articleId` int NULL,
`fileId` int NULL,
`sortId` int NULL,
PRIMARY KEY (`appendixId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_dir` (
`dirId` int NOT NULL AUTO_INCREMENT ,
`dirName` varchar(100) NULL,
`parentDir` int NULL,
PRIMARY KEY (`dirId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_file` (
`fileId` int NOT NULL AUTO_INCREMENT ,
`fileName` varchar(100) NULL,
`fileDiskName` varchar(32) NULL,
`fileSize` bigint NULL,
`fileType` int NULL,
`url` varchar(200) NULL,
`userId` int NULL,
`uploadIp` varchar(15) NULL,
`uploadTime` timestamp NULL,
`dirId` int NULL,
`fileRight` int NULL,
PRIMARY KEY (`fileId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_person` (
`personId` int NOT NULL AUTO_INCREMENT ,
`userId` int NULL,
`personName` varchar(30) NULL,
`personSex` int NULL,
`personTel` varchar(50) NULL,
`personMobile` varchar(20) NULL,
`depId` int NULL,
`proxyRole` varchar(50) NULL,
`roleId` int NULL,
`personEmail` varchar(150) NULL,
PRIMARY KEY (`personId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_dep` (
`depId` int NOT NULL AUTO_INCREMENT ,
`depName` varchar(100) NULL,
`parentId` int NULL,
`depType` int NULL,
`depDescription` text NULL,
`contact` varchar(50) NULL,
PRIMARY KEY (`depId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_role` (
`roleId` int NOT NULL AUTO_INCREMENT ,
`roleName` varchar(100) NULL,
`roleDescription` text NULL,
`validity` timestamp NULL,
PRIMARY KEY (`roleId`) 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE `t_article` ADD CONSTRAINT `sectionId` FOREIGN KEY (`sectionId`) REFERENCES `t_section` (`sectionId`);
ALTER TABLE `t_article` ADD CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `t_user` (`userId`);
ALTER TABLE `t_dir` ADD CONSTRAINT `parent_dir` FOREIGN KEY (`parentDir`) REFERENCES `t_dir` (`dirId`);
ALTER TABLE `t_file` ADD CONSTRAINT `file_dir` FOREIGN KEY (`dirId`) REFERENCES `t_dir` (`dirId`);
ALTER TABLE `t_file` ADD CONSTRAINT `file_user` FOREIGN KEY (`userId`) REFERENCES `t_user` (`userId`);
ALTER TABLE `t_appendix` ADD CONSTRAINT `appendix_file` FOREIGN KEY (`fileId`) REFERENCES `t_file` (`fileId`);
ALTER TABLE `t_appendix` ADD CONSTRAINT `appendix_article` FOREIGN KEY (`articleId`) REFERENCES `t_article` (`articleId`);
ALTER TABLE `t_section` ADD CONSTRAINT `parent_section` FOREIGN KEY (`parentSection`) REFERENCES `t_section` (`sectionId`);
ALTER TABLE `t_person` ADD CONSTRAINT `person_user` FOREIGN KEY (`userId`) REFERENCES `t_user` (`userId`);
ALTER TABLE `t_dep` ADD CONSTRAINT `parent_dep` FOREIGN KEY (`parentId`) REFERENCES `t_dep` (`depId`);
ALTER TABLE `t_person` ADD CONSTRAINT `person_dep` FOREIGN KEY (`depId`) REFERENCES `t_dep` (`depId`);
ALTER TABLE `t_person` ADD CONSTRAINT `person_role` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`roleId`);

