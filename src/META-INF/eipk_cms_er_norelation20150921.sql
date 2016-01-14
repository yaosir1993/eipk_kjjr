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
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_section` (
`sectionId` int NOT NULL AUTO_INCREMENT ,
`sectionName` varchar(100) NULL,
`parentSection` int NULL,
`sectionType` int NULL,
`sortId` int NULL,
PRIMARY KEY (`sectionId`) 
)
ENGINE=MyISAM
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
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_appendix` (
`appendixId` int NOT NULL AUTO_INCREMENT ,
`articleId` int NULL,
`fileId` int NULL,
`sortId` int NULL,
PRIMARY KEY (`appendixId`) 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_dir` (
`dirId` int NOT NULL AUTO_INCREMENT ,
`dirName` varchar(100) NULL,
`parentDir` int NULL,
PRIMARY KEY (`dirId`) 
)
ENGINE=MyISAM
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
ENGINE=MyISAM
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
ENGINE=MyISAM
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
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `t_role` (
`roleId` int NOT NULL AUTO_INCREMENT ,
`roleName` varchar(100) NULL,
`roleDescription` text NULL,
`validity` timestamp NULL,
PRIMARY KEY (`roleId`) 
)
ENGINE=MyISAM
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci;

