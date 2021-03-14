CREATE DATABASE  IF NOT EXISTS `groupproject` ;
USE `groupproject`;

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

insert into tb_user(id_user,user_name,user_password,points) values(1,'test','123',0),(2,'test2','321',0);

DROP TABLE IF EXISTS `tb_thing`;
CREATE TABLE `tb_thing` (
  `id_thing` int(11) NOT NULL AUTO_INCREMENT,
  `thing_name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `description` longtext,
  `points` double DEFAULT NULL,
  PRIMARY KEY (`id_thing`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

insert into tb_thing(id_thing,thing_name,type,description,points) 
	values(1, 'Litter', 'LitterPicking', 'desc1', 1),
	(2, 'Can', 'Recycling', 'desc2', 1),
	(3, 'GlassBottle', 'Recycling', 'desc3', 2),
	(4, 'Paper', 'Recycling', NULL, 0.1),
	(5, 'PlasticBottl', 'Recycling', NULL, 1),
	(6, 'Cutlery', 'ReusableItems', NULL, 0.5),
	(7, 'Straws', 'ReusableItems', NULL, 0.5),
	(8, 'Tupperware', 'ReusableItems', NULL, 0.5);

DROP TABLE IF EXISTS `tb_action`;
CREATE TABLE `tb_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(45) DEFAULT NULL,
  `action_point` double DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_thing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_action`),
  KEY `user_idx` (`id_user`),
  KEY `thing_idx` (`id_thing`),
  CONSTRAINT `thing` FOREIGN KEY (`id_thing`) REFERENCES `tb_thing` (`id_thing`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
