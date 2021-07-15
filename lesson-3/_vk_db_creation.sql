DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;


DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамилия', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(120) UNIQUE,
 	password_hash VARCHAR(100), -- 123456 => vzx;clvgkajrpo9udfxvsldkrn24l5456345t
	phone BIGINT UNSIGNED UNIQUE, 
	
    INDEX users_firstname_lastname_idx(firstname, lastname)
) COMMENT 'юзеры';


INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('101', 'Jed', 'Adams', 'litzy.jaskolski@example.com', '479a301d450a7725a152c470fa129ac6b350cbc0', '60');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('102', 'Dedric', 'Hintz', 'serena22@example.org', '0a0883297c82eb7daecb2b1eddb9cf5494f87bf1', '746820175');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('103', 'Glenda', 'Rath', 'abergstrom@example.org', '64f2893090769ceef50dd30ec688f99acd9cc989', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('104', 'Willie', 'Padberg', 'adela.batz@example.com', '7d371f866a17d51967d8333d0b50ad3b4a8dbd96', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('108', 'Shana', 'Heathcote', 'cremin.lazaro@example.net', '190f51b7d9933bd32d11e82000d131b6db73f874', '158682');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('110', 'Orie', 'Denesik', 'bennett46@example.org', '73df99f25ba09ed42fb495cef30b4d35781f3a2c', '450872');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('111', 'Adrienne', 'Stoltenberg', 'merdman@example.net', '0f794bd875df0e30593aaad6eba19691917e0fdd', '602477');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('112', 'Suzanne', 'Rowe', 'christy20@example.org', '2551af258cfc6ba95a0bc122da9fe7a75ec33ddc', '6027749835');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('113', 'Brisa', 'McCullough', 'victor.ratke@example.com', '4f954dd9c6c93111c7b1e1f2bac1aebe33973c82', '93258');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('114', 'Crystal', 'Wolff', 'prohaska.dovie@example.org', '870a3c72556091c411ef777ee91aa5bc63382db0', '514');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('117', 'America', 'Wintheiser', 'brooklyn83@example.net', '24f81b40a26ee43bd91e9a269dadfae8410422a0', '474');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('120', 'Samson', 'Hackett', 'amber.kihn@example.org', 'a1993e9ff23fd70281e63156bedfc9084ee16ab7', '553');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('121', 'Piper', 'Conroy', 'libby.mertz@example.org', 'caa842391c07162437b028c661a44a217a6a9115', '870568');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('122', 'Curtis', 'Dickens', 'bhowell@example.org', 'c9f419fd1c1529563fb4ef71a08d765524395895', '7853568669');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('124', 'Austyn', 'Schiller', 'macejkovic.madie@example.net', '22ccda72115c0562202e338ae5b8242a9f477820', '81');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('129', 'Ben', 'Hartmann', 'sandra.wyman@example.com', 'ac70c3451448f295431711e1809160ca50ca7d32', '547802');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('130', 'Rosario', 'Feest', 'koss.glennie@example.com', '16b11066ab784f6732571fa153ae99e8bed318d2', '893');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('131', 'Brenda', 'Johns', 'ihoeger@example.net', '5440e8083be13cf4e0e7a199b1e7a22196797b60', '9911528129');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('132', 'Winifred', 'Brown', 'rebecca45@example.net', 'eec65cce512f28ec3107a13948ce93b052864fdb', '677030');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('133', 'Leopold', 'Lang', 'eliseo.morar@example.net', '9c0d7167b5edbe0a7488d7e04b00fa1c2f57d80b', '674905');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('134', 'Tremayne', 'Kuvalis', 'raul.green@example.com', '17570bfcf7b519c128f2128f1d8735de28e04b76', '474553');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('136', 'Ashly', 'Windler', 'reymundo.bahringer@example.org', '532186053d3ca6ad24b223ceb7646576a454af36', '49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('138', 'Blair', 'Blick', 'alphonso53@example.com', 'f7d66ce5fc5244f5b26698c6f51921f4ec78f47b', '9');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('144', 'Orin', 'Douglas', 'rice.nicholaus@example.org', 'f0b9b09c1b0cdcdf301b80df4c0a0aa3cf8ab7d1', '79');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('146', 'Fletcher', 'Borer', 'kgleason@example.com', 'f56fe974e15a529fd13e39d51944836420d39931', '7982750301');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('148', 'Judy', 'Hirthe', 'jimmy.smith@example.com', 'efda552b109ad9d31f3741cc6ab2cb37e1c71723', '8279165796');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('150', 'Anais', 'Windler', 'dsauer@example.com', '976af2b910e5d3c61dbbd9085086c5cfce245c12', '9213885406');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('151', 'Idella', 'McDermott', 'doyle.lowell@example.net', '020e0c4dea962ee903a8b40e0613d18a225fdbcf', '1499839191');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('152', 'Price', 'Rowe', 'hhuel@example.org', 'e7e22aa33e3f2f62f7645daa7aea297520fd2c32', '459');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('154', 'Rosalind', 'Franecki', 'jodie.pollich@example.org', '66818ab6ad865b4bbba4c9ebb3a3896d961baa1f', '50');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('155', 'Marlee', 'Fadel', 'vlarson@example.org', 'fed0b58ac206ab3ee0234b82e8755d801332d5a3', '45375');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('156', 'Uriel', 'Ernser', 'lbatz@example.org', 'a172619c86a1be7a7c49c795de26b8ee2ed385d0', '373');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('158', 'Brent', 'Braun', 'pstracke@example.com', 'e8e6e1e9c7a84737c633bc579429a8a8bbd649a8', '396732');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('161', 'Guido', 'Lang', 'morar.junius@example.net', '3beb73c6207d7326d87ab09474c4fef47d101f62', '525');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('165', 'Anika', 'Rau', 'henderson58@example.org', 'f031b0b3dba378416394d7bdb674cfa1b88feba7', '723');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('167', 'Lucinda', 'Skiles', 'marvin.armando@example.net', 'ebe1177b7e286196e3c0d0649f6a9fb9478f716a', '875');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('168', 'Lamont', 'Durgan', 'lacy78@example.net', '19bb662e8921e26dbe55abc99646f4719b8eff6a', '560813');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('169', 'Roosevelt', 'Ruecker', 'marvin66@example.net', 'f70c2ce733eca4f5e10fc4f258428b7f21095845', '52');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('170', 'Kristin', 'Cruickshank', 'stroman.finn@example.net', 'f6d08f78a4f9e5fce5befa7acefd02d83dd06010', '737');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('172', 'Elfrieda', 'Borer', 'drosenbaum@example.com', 'fb2b12479c15af2b6af9fe1b933bd8b827ee8f11', '866');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('173', 'Uriel', 'Kiehn', 'dan30@example.com', 'a207f369985b64fbc9ed2861d5c92416d51e5fe1', '20');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('174', 'Jack', 'Berge', 'marcos79@example.net', '9961be34dd83de6e41145ab204a2ea7442a2c8be', '75');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('175', 'Brennon', 'Schinner', 'kyundt@example.org', '9d638e3ae7f48901bbd2326340ee9e1e96c24cbd', '11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('176', 'Mellie', 'Hartmann', 'elsa.cole@example.net', '056b5fa113bb51f3ecd201e5c74db6b09172f879', '443248');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('177', 'Landen', 'Rutherford', 'hand.jamar@example.org', 'db9e145d3db619f82ef600095fde4871743ec095', '760');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('179', 'Donavon', 'Weimann', 'abernathy.delia@example.com', '8b6421865a3dbf7f05717beecb6c578aec367f93', '57510');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('180', 'Augustine', 'Bruen', 'forest47@example.net', '060cab11cd29a127754d73bfae9a2c726d149f9e', '499213');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('184', 'Giles', 'Corkery', 'gutmann.kassandra@example.net', '9035ebec12b643744fb3bca16933e54468817f2c', '290');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('185', 'Elna', 'Weber', 'christine.pollich@example.com', 'ac1175c5765cb94f702683de991e4513f373d84b', '599803');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('186', 'Ludwig', 'Spinka', 'bernadine.barrows@example.org', 'f7429a890e51a83bdef7d3c437888ae5f5efe72b', '265');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('189', 'Raleigh', 'Bergnaum', 'jstracke@example.net', 'f042491ebbbece2e2c7a8713f79b2e74ebd26015', '430110');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('190', 'Ferne', 'Heidenreich', 'kbernier@example.org', '541f2755fa598a578d3787b6c669d95e511f0644', '634779');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('191', 'Geraldine', 'Goodwin', 'deborah56@example.org', '02b928e0f93728c35cc1de5111bc8660ec788ed1', '987');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('192', 'Humberto', 'Little', 'yschmitt@example.com', '5e996bfddaac43a8b345a20dc07bd49b04501cb8', '556');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('193', 'Cordell', 'Lowe', 'gschaden@example.com', 'd54eeee396b834687775b2365fa48fcc0dab41b0', '495768');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('194', 'Jamarcus', 'McKenzie', 'bonita.marvin@example.com', 'b88d81d00c14a80a830d241402b897118005f23b', '12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('196', 'Sedrick', 'Wyman', 'hsporer@example.net', '45052b5e1cacb1bd5b59f5d2b2dcaeb1df9772bd', '875762');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('200', 'Cordelia', 'Thompson', 'jovanny42@example.org', 'f1dd45e169354295fba626ebab6abaa63c6ea040', '368763');


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100)
    
    	
    -- , FOREIGN KEY (photo_id) REFERENCES media(id) -- пока рано, т.к. таблицы media еще нет
);

ALTER TABLE `profiles` ADD CONSTRAINT fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE -- (значение по умолчанию)
    ON DELETE RESTRICT; -- (значение по умолчанию)

    
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('101', NULL, '2007-05-03', '1', '1984-07-30 22:04:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('102', NULL, '1976-10-06', '2', '2019-09-08 13:05:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('103', NULL, '2016-12-14', '3', '1998-08-31 19:36:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('104', NULL, '2010-10-30', '4', '2013-05-25 07:28:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('108', NULL, '2016-01-22', '5', '2005-12-08 20:14:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('110', NULL, '2019-04-04', '6', '2005-06-23 20:27:57', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('111', NULL, '2003-03-30', '7', '2020-12-11 15:16:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('112', NULL, '1977-06-17', '8', '1970-03-22 18:50:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('113', NULL, '1996-09-21', '9', '1990-02-19 03:50:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('114', NULL, '1983-05-12', '10', '2012-05-28 13:22:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('117', NULL, '1980-10-30', '11', '2018-02-10 04:35:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('120', NULL, '2008-07-06', '12', '2002-05-25 20:49:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('121', NULL, '2005-08-14', '13', '1987-01-08 01:02:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('122', NULL, '1974-09-18', '14', '1984-02-11 00:34:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('124', NULL, '1972-06-17', '15', '2002-09-12 01:43:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('129', NULL, '2018-06-04', '16', '1971-01-13 10:28:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('130', NULL, '1997-03-25', '17', '1990-06-24 09:16:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('131', NULL, '1989-05-18', '18', '1990-12-01 05:13:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('132', NULL, '2021-05-11', '19', '1997-09-25 18:14:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('133', NULL, '1971-06-05', '20', '1979-08-14 16:29:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('134', NULL, '2017-09-01', '21', '1986-09-14 16:19:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('136', NULL, '2021-04-02', '22', '1996-07-26 10:07:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('138', NULL, '1981-11-27', '23', '2007-12-08 00:07:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('144', NULL, '1982-12-25', '24', '1972-07-03 14:13:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('146', NULL, '2019-10-16', '25', '1977-08-17 23:59:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('148', NULL, '1987-10-16', '26', '1984-07-14 03:11:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('150', NULL, '1975-10-11', '27', '1993-06-02 09:22:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('151', NULL, '1981-06-22', '28', '1998-11-12 17:28:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('152', NULL, '1993-03-08', '29', '1971-12-29 20:46:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('154', NULL, '2016-03-16', '30', '1999-05-14 14:12:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('155', NULL, '1992-03-01', '31', '1995-08-22 06:52:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('156', NULL, '2014-10-29', '32', '2013-04-26 20:41:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('158', NULL, '1998-12-08', '33', '1976-01-10 05:23:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('161', NULL, '2007-01-02', '34', '2012-03-20 06:31:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('165', NULL, '1991-03-04', '35', '1977-08-08 19:44:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('167', NULL, '1987-12-12', '36', '1989-03-31 23:48:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('168', NULL, '1993-04-24', '37', '1992-06-25 03:06:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('169', NULL, '1988-12-18', '38', '2004-07-20 03:59:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('170', NULL, '2012-02-05', '39', '1983-08-28 08:07:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('172', NULL, '1981-09-16', '40', '2019-05-24 15:46:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('173', NULL, '2003-03-28', '41', '1973-02-11 14:26:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('174', NULL, '2018-06-23', '42', '1993-02-25 10:05:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('175', NULL, '1985-02-18', '43', '1978-03-09 11:56:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('176', NULL, '1993-07-14', '44', '1991-11-08 13:10:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('177', NULL, '1983-03-04', '45', '1997-02-14 18:59:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('179', NULL, '2000-06-07', '46', '2012-06-21 04:13:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('180', NULL, '1985-03-18', '47', '2020-12-25 11:06:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('184', NULL, '1991-04-17', '48', '1974-08-28 11:35:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('185', NULL, '2007-10-24', '49', '2002-05-30 01:07:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('186', NULL, '2005-10-18', '50', '1994-01-28 20:26:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('189', NULL, '2012-04-08', '51', '1993-12-30 06:28:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('190', NULL, '2006-11-21', '52', '1986-05-25 18:08:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('191', NULL, '1998-07-13', '53', '2000-10-01 10:48:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('192', NULL, '1970-10-29', '54', '2009-04-09 22:45:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('193', NULL, '1984-06-02', '55', '2018-01-08 16:44:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('194', NULL, '1990-06-12', '56', '1989-03-19 19:18:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('196', NULL, '1989-01-20', '57', '1970-12-22 23:44:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('200', NULL, '1999-11-16', '58', '1985-02-12 01:27:29', NULL);
    
    
    
DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), -- можно будет даже не упоминать это поле при вставке

    FOREIGN KEY (from_user_id) REFERENCES users(id),
    FOREIGN KEY (to_user_id) REFERENCES users(id)
);


INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '101', '101', 'Illo odit tenetur nesciunt. Suscipit voluptatibus rerum animi illo pariatur totam autem aut. Enim doloribus at ratione laborum non.', '1996-07-31 09:04:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '102', '102', 'Eveniet laboriosam voluptate non officiis ipsam aut voluptate voluptatem. Expedita et in repellendus quia esse perspiciatis. Fugiat corrupti quas quis assumenda asperiores. Tempore et ipsum et voluptas nesciunt illum ut.', '1975-10-07 12:01:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '103', '103', 'Molestiae vero cumque est nulla eveniet sunt. Nihil repudiandae esse eos odit ab quam impedit quasi. Non distinctio neque a qui voluptatem.', '1991-10-21 16:39:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '104', '104', 'Quasi non impedit dolorem eligendi. Id qui voluptatem dignissimos natus nostrum dolorem officia. Eligendi atque consequuntur molestiae officiis.', '1983-02-01 09:58:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '108', '108', 'Non recusandae ea quo aut eum. Doloribus neque quia molestias quia reiciendis. Enim distinctio ad ut quos eaque est et iusto.', '1974-07-20 06:57:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '110', '110', 'Aut sunt adipisci voluptatem. Aut praesentium consequatur quae ullam accusamus iure voluptatibus. Quos dolores aut soluta odio mollitia ut quis.', '1983-07-25 16:31:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '111', '111', 'Esse voluptate consequatur et culpa hic. Nihil corrupti enim rem totam.', '1987-04-04 01:16:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '112', '112', 'Eligendi velit molestiae aperiam et quia incidunt. Et reprehenderit ipsa ad rerum. Accusantium mollitia in eum voluptatem reiciendis. Dolores nesciunt quia aut nam amet cupiditate autem impedit.', '1994-08-23 19:09:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '113', '113', 'Ipsum a ipsum unde qui est. Amet asperiores animi ad voluptatibus sed. Quidem voluptatem beatae optio ipsa a earum.', '1995-02-14 08:09:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '114', '114', 'Quis quaerat eum quia ipsam voluptate. Tempora cupiditate quisquam distinctio sint deleniti suscipit alias. Provident explicabo veniam enim rem rerum vitae.', '2002-05-19 02:07:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '117', '117', 'Blanditiis quia molestias laborum alias eos reiciendis repellat rerum. Ipsum placeat voluptate est qui ut est voluptatem. Natus non quasi libero maiores. Autem repudiandae voluptatem non quos qui illum eveniet.', '1986-08-27 22:15:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '120', '120', 'Amet praesentium facere ratione sunt rerum nisi non. Commodi aut debitis doloribus enim suscipit cupiditate debitis sint. Quod in nihil modi eveniet optio laboriosam repellat.', '2004-03-12 01:55:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '121', '121', 'Alias vel enim architecto a quo voluptas ut. Quis ratione aut voluptates nihil delectus quibusdam. Repellendus est laboriosam voluptatibus nobis ducimus. Eius rerum repudiandae et suscipit sunt molestiae. Commodi dolor velit et aut.', '1971-05-18 06:51:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '122', '122', 'Aperiam autem eos facilis atque ut atque sint. Rerum a deleniti laborum quia. Natus velit et iste a. Tempora ea est omnis sunt repudiandae.', '1991-03-17 09:04:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '124', '124', 'Cumque aspernatur expedita non suscipit nihil rem vero. Eos voluptatem facere sunt ut ut voluptas. Nulla est unde corrupti.', '1998-10-26 11:05:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '129', '129', 'Dolores voluptas quas sed voluptatem. Assumenda architecto est ut ut. Natus aut voluptas aut saepe praesentium dolorum fugit perferendis. Sed natus perferendis aliquid cumque fuga ut. Totam non veniam itaque velit.', '1985-04-18 01:13:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '130', '130', 'Et dicta sit aut sit ea. Quasi eum rerum delectus et consequatur. Debitis et voluptatibus enim voluptate quasi.', '2017-07-30 12:44:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '131', '131', 'Reiciendis quia qui facilis. Repudiandae mollitia quia exercitationem et sapiente praesentium. Nam ipsa non similique consequatur. Similique et mollitia unde soluta consequatur.', '1972-09-23 05:05:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '132', '132', 'Quibusdam eligendi quo aut sunt amet non porro quam. Doloremque maiores consequatur doloribus eum adipisci doloremque explicabo vero. Molestiae aut quis at. Repudiandae magnam ad sunt numquam nihil et quia.', '1973-07-29 05:43:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '133', '133', 'Assumenda velit ab quo aut omnis aperiam exercitationem quibusdam. Voluptas ut aut ea molestiae. A similique id itaque et non voluptate sint. Omnis nesciunt ut suscipit et accusamus. Nam architecto porro doloremque atque necessitatibus eligendi quas.', '1977-12-27 03:55:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '134', '134', 'Nihil vel hic tempore neque laboriosam voluptatem eos. Ea quod voluptatem ex repellendus reprehenderit nostrum quos. Architecto sunt omnis nihil. Minima aut natus vel nihil quidem.', '2010-12-08 14:43:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '136', '136', 'Qui unde et quasi quia ut esse ut et. Et cumque sed neque rem. Expedita at sunt non est ut culpa perferendis. Molestiae omnis odio alias deserunt porro quam accusantium.', '1975-12-01 18:04:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '138', '138', 'Quia fugiat dicta odit dolorum ut ut soluta vitae. Non laborum doloribus numquam vitae dolore blanditiis. Saepe et iusto minima consectetur voluptatem vero esse dolor.', '1976-03-23 20:36:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '144', '144', 'Doloremque iusto assumenda sapiente accusantium. Veritatis doloribus nam modi qui ad aut. Quisquam et dolore consequatur ullam est tempora.', '1978-07-28 03:09:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '146', '146', 'Voluptas blanditiis iure esse. Neque libero doloremque sed ut et corrupti odio. Ut aperiam voluptate ipsam iste quidem. Eligendi commodi et recusandae quibusdam eum magnam est.', '2000-05-28 14:46:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '148', '148', 'Architecto ipsa et animi voluptates nulla modi aliquid. Et quia corrupti necessitatibus repellendus porro rem. Temporibus natus sit sed quas deserunt porro. Et ea harum adipisci possimus.', '1983-08-10 00:20:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '150', '150', 'Nesciunt recusandae earum qui aut voluptates quo nostrum. Minus et saepe inventore. Et dignissimos cum voluptatem adipisci magnam sit ut. Voluptas corporis vero quisquam rerum placeat sed.', '1994-07-26 08:17:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '151', '151', 'Beatae illum quaerat vero voluptas dolores ratione. Unde fuga ipsa consectetur vel adipisci asperiores debitis. Provident ut dolor voluptas cupiditate eligendi consequatur atque.', '1979-01-04 17:45:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '152', '152', 'Incidunt doloremque provident consequatur. Qui sed adipisci iure suscipit.', '1995-12-02 20:06:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '154', '154', 'Et facilis explicabo quasi earum. Est aut hic iure quam aut cumque perferendis iure. Repellat maiores qui quo animi. Saepe incidunt est provident doloremque suscipit.', '1989-02-12 21:56:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '155', '155', 'Pariatur qui molestias alias maxime sequi ut perferendis. Est in iusto et quia ab sed voluptas. Odio sint neque accusamus enim velit et.', '1978-05-06 13:34:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '156', '156', 'Aut distinctio dolores nemo et rerum. Soluta provident non quos rerum. Odit aperiam quos totam expedita.', '1989-05-22 07:29:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '158', '158', 'Molestiae veritatis iure itaque omnis nobis. Modi ut magnam odit quidem fugiat animi officiis. Vero quidem ab sapiente officia.', '1978-08-11 12:58:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '161', '161', 'Sed rem culpa unde maiores. Dolorem cupiditate occaecati repellat labore non vitae. Et nihil omnis qui blanditiis. Sequi sunt omnis doloremque et laboriosam.', '1985-02-03 07:38:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '165', '165', 'Quas officiis libero id similique et omnis quidem. Nihil occaecati dicta eius. Sit occaecati unde nemo omnis explicabo ratione. Nobis et rerum recusandae tenetur.', '2005-09-17 11:19:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '167', '167', 'Consequatur consequuntur natus quo eaque architecto. Voluptas ipsam et deserunt sed dolores. Natus vel rem dolorum. Est qui quae aliquam.', '1988-03-12 18:48:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '168', '168', 'Vero dolores repudiandae repellendus ut tenetur error ut. Molestias repudiandae dignissimos dolore necessitatibus. Omnis et tenetur vitae sequi illum adipisci ut omnis. Totam non commodi quia omnis.', '2003-02-13 18:08:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '169', '169', 'Quia illum qui fugit modi aut molestias et suscipit. Voluptatem illum dolore expedita ab laborum. Facere odit atque quia enim est sunt velit dolor.', '2021-01-11 13:03:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '170', '170', 'At sed odio similique nemo corporis mollitia corrupti. Sed sed inventore id quae aut quas. Velit ea quia blanditiis dignissimos.', '2002-07-31 09:19:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '172', '172', 'Eos rem aut nihil animi. Placeat temporibus tenetur deleniti nobis pariatur error odit. Ut molestiae velit aut rem cum fuga placeat. Est neque rerum ratione cumque sunt nobis et. Reiciendis non beatae iusto totam quis.', '1972-01-15 13:45:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '173', '173', 'Aut aliquam ut quas doloremque impedit. Repellendus non minima dolores culpa voluptatem labore sed.', '1985-10-09 23:21:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '174', '174', 'Atque esse autem laborum rerum eveniet deserunt distinctio animi. Nemo est officiis et cupiditate. Minus distinctio quis ratione sed ut autem.', '1993-02-20 15:09:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '175', '175', 'Voluptas aliquam ipsa sint quaerat sed sed consequuntur. Totam quia facilis iste et officia. Nulla et quis maiores velit.', '2003-01-05 18:48:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '176', '176', 'Labore natus et commodi et. Occaecati laudantium laudantium rerum voluptas animi. Voluptas asperiores in velit aliquam.', '1988-07-16 22:28:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '177', '177', 'Architecto dolor eos provident corrupti autem nihil tempore. Animi dolor ut quae odit unde autem consequatur. Commodi ipsum deserunt officiis et tempore voluptatem. Sequi aspernatur nihil accusamus.', '2018-09-09 19:04:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '179', '179', 'Dolor nihil tempora animi ut veritatis. In amet natus neque atque et ex. Nam atque vel accusamus iusto et. Quaerat est non ea aut.', '1999-11-15 03:35:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '180', '180', 'Animi qui illum qui unde ad. Cum ea assumenda eos nihil. Deleniti nesciunt iusto minus. Voluptate maiores nulla culpa.', '2007-08-28 19:26:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '184', '184', 'Voluptatem sunt in voluptatem quia beatae at aliquam. Eum eum et et fugiat ut.', '2013-05-11 14:07:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '185', '185', 'Accusamus et nostrum est. Aut vel et sit. Eaque ad exercitationem blanditiis magni quidem reiciendis aut.', '1994-07-04 20:27:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '186', '186', 'Sint velit soluta quibusdam nemo nisi ut. Commodi officiis libero nobis adipisci asperiores pariatur rerum. Quia nobis sit eaque laudantium quaerat. Nihil facilis aut in sequi. Dolore rerum porro nulla quia.', '1990-04-06 13:50:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '189', '189', 'Praesentium asperiores amet nam ut nesciunt omnis enim. Harum earum enim adipisci at veniam. Fuga sit et consequatur cumque. Deserunt suscipit odio laboriosam molestias ab.', '2018-03-08 22:29:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '190', '190', 'Eaque excepturi quam consequatur inventore officia. Qui dolor sint possimus fugit amet. Et dolorem aut aliquam voluptate qui.', '1982-06-23 04:54:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '191', '191', 'Praesentium dolor corrupti cum dignissimos ut quis. Exercitationem dolorum distinctio id sit et inventore aut.', '2000-08-05 02:34:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '192', '192', 'Ipsa et quam in officia temporibus sed vel et. Animi sunt eveniet vel corporis officiis labore velit. Porro est ut debitis totam ut. Quas sint ut dolorem beatae accusamus. Asperiores omnis dolores officia assumenda omnis sint.', '1978-10-18 12:43:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '193', '193', 'Incidunt accusamus occaecati nemo deserunt. Magnam cupiditate repellendus aut rerum magni. Consequatur quam velit quaerat sint eum quo aut. Nobis facere suscipit voluptatibus rerum dicta ex.', '1971-01-17 20:58:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '194', '194', 'Voluptatem soluta sint odit voluptas quaerat optio. Non officiis animi totam dolore ipsum vel. Quisquam voluptatum distinctio laborum et et molestias.', '2012-09-03 22:20:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '196', '196', 'Unde rerum rerum sint dicta quisquam. Beatae consequatur ullam accusamus beatae error qui. Eaque dolore enim perspiciatis ipsum.', '1980-07-30 01:26:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '200', '200', 'Maxime est voluptas fuga aut magnam qui. Et placeat hic assumenda voluptatem dolorem. Est ut non quod fuga quisquam molestiae amet. Corporis eveniet id ea quo at quod.', '1995-04-25 05:57:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '101', '101', 'Ut nisi quia debitis et esse. Voluptatibus nesciunt neque provident aliquam consequatur distinctio omnis.', '1994-12-05 04:16:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '102', '102', 'Est nulla deleniti ipsa nulla asperiores. Qui aliquid nobis perspiciatis enim ea. Et accusamus ut asperiores asperiores ex officiis aspernatur.', '1976-02-19 12:03:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '103', '103', 'Quam vel qui eaque aperiam. Amet vel consectetur quia consequuntur ut exercitationem est. Enim id id eum est et impedit. Officia est voluptatem quos est.', '1985-08-10 19:43:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '104', '104', 'Vitae non sed atque modi. Quibusdam quam qui nemo rerum.', '1985-10-01 21:19:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '108', '108', 'Laudantium et hic minus pariatur aut aut explicabo. Ut tempora accusantium eveniet qui. Non dolorem sapiente labore quas aut nihil. Perferendis distinctio aliquid sed autem pariatur.', '2010-06-09 07:40:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '110', '110', 'Impedit aut dolorum deleniti autem itaque. Consectetur sequi sint et nesciunt modi maiores.', '1992-08-13 07:30:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '111', '111', 'Atque adipisci expedita quae. Qui porro labore consectetur. At architecto sit maiores nesciunt.', '2008-06-26 11:44:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '112', '112', 'Veritatis et sint a deleniti et. Qui nostrum autem porro itaque. Eos eos praesentium ipsum quia molestias nostrum. Nulla at quia quia non repudiandae consectetur sit quam.', '1986-10-25 20:52:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '113', '113', 'Aut qui aut ipsum ut temporibus et tempore. Velit doloremque rerum in animi omnis nam amet. Harum sit quod mollitia consequatur. Ut quod ullam nam quia.', '2021-06-03 10:12:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '114', '114', 'Ab sit deleniti aut sunt sint earum autem. Eaque numquam sunt commodi libero consequatur alias laboriosam. Consequuntur est illo nobis. Libero qui sit minus voluptatem laboriosam rem.', '2017-02-10 13:12:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '117', '117', 'Voluptas delectus nisi sed et explicabo quo. Ducimus eveniet quia occaecati aut laudantium earum. Nam qui est voluptas omnis delectus quis quisquam. Et dolorum eligendi voluptatem labore eligendi recusandae.', '1985-02-10 12:28:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '120', '120', 'Sunt quod exercitationem ut repellat alias. Et rerum possimus facilis expedita cumque dicta quam et. Natus dicta consequatur aliquam sit qui iste. Consequatur tempore fugiat voluptatem sit quisquam ut ut. Et praesentium consequatur sit vel ducimus eum sequi enim.', '2006-10-12 13:31:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '121', '121', 'Eum quae magni doloremque harum. Saepe eos sunt corporis dolores aut excepturi rerum. Deserunt fuga dolor unde et. Labore quo sed tempora atque accusamus distinctio.', '1999-09-04 03:08:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '122', '122', 'Impedit accusamus ut placeat eos temporibus ea. Mollitia molestiae ut consequatur quaerat quidem. Quis eum unde eius non dolorum qui. Facere odit ipsum ut.', '2013-03-14 05:52:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '124', '124', 'Beatae repudiandae omnis veritatis esse inventore quia ut. Fugit iste dolor omnis. Sed cupiditate qui placeat reprehenderit assumenda enim perspiciatis officiis.', '1979-07-05 17:25:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '129', '129', 'Dolor atque earum itaque eius quaerat iste. Sint neque perspiciatis impedit harum omnis voluptatem. Sed quia quia qui repudiandae illum. Harum ea saepe officiis reiciendis voluptas.', '1971-12-08 11:46:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '130', '130', 'Sunt ut eos amet est recusandae et sapiente nobis. Quas earum voluptas in ratione. Dolores est tempora perferendis adipisci distinctio ex eveniet.', '2000-12-25 05:46:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '131', '131', 'Alias vero iusto at autem doloremque molestias. Necessitatibus commodi eos dolor culpa aut et. Quis ducimus deleniti reprehenderit et autem consequatur fugiat. Tenetur eveniet optio deserunt.', '1998-02-03 13:54:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '132', '132', 'Rerum numquam esse laboriosam aliquid iusto recusandae. Ea totam ut atque mollitia. Et distinctio qui voluptatem mollitia ut perferendis reprehenderit. Quasi velit voluptatem harum at.', '2017-03-18 23:26:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '133', '133', 'Possimus consequatur sapiente minima ut saepe. Quasi non impedit illo ut.', '2005-05-25 20:11:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '134', '134', 'Laboriosam repellat similique reprehenderit voluptas alias ea voluptatem. Voluptatem non expedita rerum quasi. Vel et qui fugiat qui nulla.', '1984-02-07 09:44:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '136', '136', 'Provident voluptatem numquam eum accusamus rerum aspernatur. Ut omnis culpa rerum velit. Exercitationem nihil illum iste. Libero dolore autem et assumenda in consequuntur.', '1991-02-12 03:43:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '138', '138', 'Dolores eum asperiores itaque veniam exercitationem consequuntur. Est occaecati tempore libero itaque perferendis et. Provident velit qui laudantium accusantium expedita eligendi. Perferendis maxime debitis saepe.', '1980-10-29 00:05:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '144', '144', 'Quaerat aperiam est eos vel. Sed tenetur iste deserunt reprehenderit optio. Blanditiis non laudantium sed nobis veritatis aut.', '2002-11-16 13:36:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '146', '146', 'Sit dolorem tempore hic. Ducimus dicta atque non quam voluptatem similique libero accusantium. Molestiae tenetur nobis fugiat aliquid quo sit optio.', '2006-07-15 06:10:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '148', '148', 'Aliquam laborum facilis rerum quasi quia. Eum perferendis vel sit similique provident omnis pariatur. Fugiat eos incidunt in dolores maiores non officia.', '2005-03-24 03:56:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '150', '150', 'Neque perspiciatis adipisci sunt explicabo magni. Soluta pariatur assumenda sit dicta similique. Quia odit enim harum exercitationem tempore cumque officia.', '1996-05-24 12:55:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '151', '151', 'Aut earum qui tenetur amet doloribus. Facilis eius qui est fugit ipsa sapiente. Esse iure nihil debitis voluptates aut. Est dolorem ex quod numquam aperiam. Facilis minus nihil voluptates earum vero.', '1970-06-28 03:52:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '152', '152', 'Dicta corporis sunt iure aliquam delectus. Sed ab qui sequi eum repudiandae amet. Beatae esse qui magni dolorum. Facilis fugit minus repellendus nemo.', '1991-02-08 15:19:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '154', '154', 'Modi quam qui exercitationem neque quia. Consequuntur provident quod nulla ea. Incidunt et cumque voluptatem delectus cum distinctio.', '1979-08-03 11:58:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '155', '155', 'Possimus quia id cupiditate architecto nesciunt soluta qui. Possimus quidem velit et dolore voluptas. Error consequatur praesentium tenetur nisi totam numquam soluta sapiente.', '1972-03-15 11:26:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '156', '156', 'Quod error dolorum nulla enim mollitia dolores rem est. Beatae in adipisci omnis recusandae.', '1980-09-22 21:36:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '158', '158', 'Ut dolorum quibusdam ut similique nisi ut et. Autem odio ut eveniet voluptate natus velit nostrum. Aut eligendi magnam voluptates et quidem debitis.', '1994-12-09 03:10:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '161', '161', 'Quos eius deserunt et. Quibusdam delectus et reiciendis quas aut. Odio nostrum eaque corrupti voluptatem qui omnis. Quia pariatur aut excepturi consequatur ex ut.', '1981-03-19 22:14:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '165', '165', 'Repudiandae hic quibusdam et possimus eius modi. Earum eligendi assumenda commodi debitis quibusdam nam impedit. Animi illum dolore qui omnis inventore qui.', '2004-09-15 16:50:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '167', '167', 'Veniam omnis rerum et et. Consequuntur error id error voluptates voluptas fuga sint. Ea rem ipsa suscipit nulla dolorum id eos corrupti. Facere tenetur id asperiores iusto.', '2019-05-12 11:51:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '168', '168', 'Repudiandae omnis voluptas ipsum dolorum. Repellendus nulla iure dolores harum rem eaque dolor. Placeat et rerum sint dicta sed earum. Harum ut voluptas repellendus quidem nihil vel omnis adipisci.', '2017-03-31 15:00:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '169', '169', 'Voluptatem eos ut debitis veniam laboriosam sapiente deserunt. Delectus necessitatibus suscipit excepturi ex sint provident est. Reiciendis ab blanditiis nesciunt voluptatem. Assumenda nobis molestias doloremque sequi ut. Enim veniam et et et dignissimos.', '1994-02-07 05:06:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '170', '170', 'Adipisci velit voluptas et accusantium dolorum illum quo. Ut eos explicabo cumque necessitatibus nemo hic quis. Id doloribus quo quam vel. Sed optio cum tempore ut.', '1997-11-11 22:42:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '172', '172', 'Nulla quia perspiciatis optio enim. Est aspernatur ut dolore est numquam atque aut modi. Adipisci non sapiente numquam quis.', '1972-04-08 15:34:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '173', '173', 'Cupiditate sit sint dolorem dolores. Dolorem quasi est est accusamus. Repellendus et debitis quos natus voluptate.', '1977-04-22 10:52:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '174', '174', 'Commodi qui enim est exercitationem omnis et voluptas. Vel atque distinctio tempore placeat qui debitis facilis. Dolor iure provident sit aut illum. Dolores aliquid ut consectetur eveniet sed numquam.', '1975-10-02 01:29:55');


DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	-- id SERIAL, -- изменили на составной ключ (initiator_user_id, target_user_id)
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    `status` ENUM('requested', 'approved', 'declined', 'unfriended'),
    -- `status` TINYINT(1) UNSIGNED, -- в этом случае в коде хранили бы цифирный enum (0, 1, 2, 3...)
	requested_at DATETIME DEFAULT NOW(),
	updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP, -- можно будет даже не упоминать это поле при обновлении
	
    PRIMARY KEY (initiator_user_id, target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)-- ,
    -- CHECK (initiator_user_id <> target_user_id)
);
-- чтобы пользователь сам себе не отправил запрос в друзья
ALTER TABLE friend_requests 
ADD CHECK(initiator_user_id <> target_user_id);


DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL,
	name VARCHAR(150),
	admin_user_id BIGINT UNSIGNED NOT NULL,
	
	INDEX communities_name_idx(name), -- индексу можно давать свое имя (communities_name_idx)
	foreign key (admin_user_id) references users(id)
);


INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('1', 'in', '101');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('2', 'perferendis', '102');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('3', 'ratione', '103');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('4', 'dolor', '104');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('5', 'similique', '108');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('6', 'aut', '110');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('7', 'voluptatem', '111');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('8', 'libero', '112');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('9', 'aut', '113');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('10', 'voluptatem', '114');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('11', 'praesentium', '117');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('12', 'soluta', '120');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('13', 'iure', '121');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('14', 'veritatis', '122');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('15', 'voluptatibus', '124');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('16', 'magni', '129');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('17', 'eum', '130');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('18', 'fugiat', '131');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('19', 'deserunt', '132');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('20', 'est', '133');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('21', 'recusandae', '134');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('22', 'possimus', '136');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('23', 'et', '138');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('24', 'necessitatibus', '144');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('25', 'cumque', '146');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('26', 'dolore', '148');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('27', 'autem', '150');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('28', 'dolorem', '151');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('29', 'veniam', '152');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('30', 'atque', '154');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('31', 'et', '155');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('32', 'quisquam', '156');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('33', 'quo', '158');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('34', 'voluptatem', '161');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('35', 'voluptatem', '165');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('36', 'inventore', '167');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('37', 'ut', '168');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('38', 'aut', '169');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('39', 'ducimus', '170');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('40', 'quo', '172');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('41', 'tenetur', '173');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('42', 'sed', '174');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('43', 'ducimus', '175');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('44', 'voluptas', '176');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('45', 'accusamus', '177');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('46', 'provident', '179');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('47', 'beatae', '180');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('48', 'corrupti', '184');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('49', 'voluptates', '185');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('50', 'occaecati', '186');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('51', 'iste', '189');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('52', 'delectus', '190');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('53', 'id', '191');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('54', 'eligendi', '192');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('55', 'non', '193');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('56', 'qui', '194');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('57', 'laudantium', '196');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('58', 'voluptatibus', '200');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('59', 'commodi', '101');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('60', 'minus', '102');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('61', 'iusto', '103');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('62', 'doloremque', '104');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('63', 'odit', '108');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('64', 'eum', '110');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('65', 'consectetur', '111');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('66', 'et', '112');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('67', 'maxime', '113');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('68', 'ad', '114');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('69', 'quo', '117');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('70', 'ex', '120');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('71', 'voluptatem', '121');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('72', 'eum', '122');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('73', 'aliquid', '124');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('74', 'et', '129');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('75', 'mollitia', '130');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('76', 'amet', '131');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('77', 'animi', '132');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('78', 'optio', '133');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('79', 'mollitia', '134');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('80', 'qui', '136');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('81', 'voluptatem', '138');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('82', 'provident', '144');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('83', 'laboriosam', '146');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('84', 'dolorum', '148');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('85', 'aut', '150');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('86', 'deserunt', '151');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('87', 'dolorem', '152');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('88', 'magnam', '154');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('89', 'alias', '155');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('90', 'esse', '156');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('91', 'explicabo', '158');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('92', 'laboriosam', '161');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('93', 'sint', '165');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('94', 'minima', '167');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('95', 'occaecati', '168');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('96', 'facilis', '169');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('97', 'perferendis', '170');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('98', 'in', '172');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('99', 'ea', '173');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('100', 'autem', '174');


DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, community_id), -- чтобы не было 2 записей о пользователе и сообществе
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (community_id) REFERENCES communities(id)
);


INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('101', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('101', '59');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('102', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('102', '60');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('103', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('103', '61');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('104', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('104', '62');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('108', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('108', '63');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('110', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('110', '64');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('111', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('111', '65');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('112', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('112', '66');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('113', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('113', '67');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('114', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('114', '68');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('117', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('117', '69');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('120', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('120', '70');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('121', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('121', '71');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('122', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('122', '72');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('124', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('124', '73');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('129', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('129', '74');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('130', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('130', '75');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('131', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('131', '76');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('132', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('132', '77');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('133', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('133', '78');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('134', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('134', '79');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('136', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('136', '80');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('138', '23');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('138', '81');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('144', '24');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('144', '82');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('146', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('146', '83');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('148', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('148', '84');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('150', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('150', '85');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('151', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('151', '86');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('152', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('152', '87');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('154', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('154', '88');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('155', '31');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('155', '89');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('156', '32');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('156', '90');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('158', '33');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('158', '91');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('161', '34');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('161', '92');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('165', '35');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('165', '93');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('167', '36');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('167', '94');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('168', '37');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('168', '95');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('169', '38');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('169', '96');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('170', '39');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('170', '97');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('172', '40');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('172', '98');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('173', '41');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('173', '99');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('174', '42');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('174', '100');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('175', '43');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('176', '44');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('177', '45');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('179', '46');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('180', '47');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('184', '48');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('185', '49');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('186', '50');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('189', '51');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('190', '52');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('191', '53');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('192', '54');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('193', '55');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('194', '56');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('196', '57');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('200', '58');


DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL,
    name VARCHAR(255), -- записей мало, поэтому в индексе нет необходимости
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'quisquam', '1977-08-12 23:40:51', '1976-03-16 09:13:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'est', '1975-04-23 02:31:31', '1991-12-17 04:43:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'quia', '1980-07-28 13:26:11', '1996-07-16 04:12:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'consequatur', '2011-05-16 04:29:41', '1970-09-17 09:19:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'quam', '2008-01-18 04:38:20', '1987-06-29 03:31:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'nisi', '1970-08-08 05:24:03', '1998-11-12 23:48:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'voluptatum', '2007-10-16 21:50:25', '2000-04-27 14:19:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'eos', '1994-11-28 01:52:54', '2007-06-16 02:50:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'laudantium', '2006-12-19 16:36:29', '2006-06-23 01:13:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'perspiciatis', '1998-11-07 16:25:21', '2011-07-22 18:21:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'laborum', '2021-01-16 19:31:39', '2014-01-31 13:50:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'officia', '1973-10-01 21:00:57', '1991-07-06 15:44:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'reiciendis', '2011-12-06 02:39:48', '1982-07-20 09:06:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'at', '1984-12-22 19:24:14', '1985-03-25 17:18:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'ea', '1977-01-28 12:11:29', '2009-06-09 19:54:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'tempore', '1996-12-06 03:30:40', '2016-09-16 21:25:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'sapiente', '2007-04-28 00:37:51', '1986-12-01 05:56:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'est', '1983-06-21 09:59:48', '1971-04-17 20:29:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'modi', '1982-10-24 22:35:34', '2005-12-09 14:19:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'optio', '2002-06-19 07:28:50', '1977-08-16 17:23:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'laborum', '1977-01-07 04:27:16', '1983-10-03 10:45:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'accusantium', '2017-08-07 14:31:10', '1986-06-19 21:42:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'eligendi', '1991-11-27 21:38:31', '1998-03-16 01:31:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'amet', '1993-03-28 22:27:59', '2000-09-16 16:00:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'placeat', '1992-06-24 12:41:16', '2000-02-27 13:18:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'deleniti', '1992-01-11 17:21:46', '1978-01-15 01:15:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'perspiciatis', '2004-07-14 22:24:13', '1990-08-19 22:56:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'non', '1992-10-20 23:21:46', '1977-01-26 18:41:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'est', '1976-05-15 14:20:30', '1976-09-02 03:54:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'qui', '2009-04-16 08:58:11', '2005-01-26 13:23:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'ullam', '2019-09-18 19:18:40', '1975-10-18 19:25:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'est', '2021-05-03 07:40:36', '1988-01-06 17:26:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'officiis', '2019-11-09 22:20:57', '2017-02-04 22:19:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'facilis', '2015-06-20 06:16:49', '2000-11-22 11:50:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'est', '2018-01-27 10:34:27', '1996-09-19 10:42:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'qui', '1988-04-17 00:37:31', '1996-07-19 05:11:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'officia', '2006-01-06 07:43:40', '2021-04-30 00:44:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'et', '1986-08-07 02:20:34', '1978-07-23 10:13:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'tempore', '1979-03-22 12:53:08', '1986-07-09 00:37:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'minus', '1987-02-20 06:13:17', '2007-07-05 06:57:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'necessitatibus', '1974-11-03 23:58:47', '2013-07-24 22:52:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'tempore', '1982-05-20 21:10:14', '2019-01-03 08:01:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'voluptates', '1990-11-15 20:04:55', '1990-05-10 21:02:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'exercitationem', '1992-02-27 18:14:53', '2021-05-01 17:03:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'tempora', '2012-06-22 03:27:53', '2019-10-20 12:13:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'provident', '2002-09-23 09:37:26', '2013-10-09 06:44:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'accusamus', '1985-04-12 18:00:15', '2010-12-12 20:13:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'nihil', '1990-03-31 16:45:35', '1989-01-05 06:57:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'id', '1976-07-27 18:16:34', '1996-02-03 01:07:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'beatae', '1996-12-08 17:40:05', '2003-10-03 03:40:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'unde', '1989-09-04 08:34:54', '2007-12-13 21:08:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'modi', '1984-11-11 22:09:50', '1983-11-21 22:20:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'hic', '1978-06-25 15:08:06', '2015-08-07 17:48:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'laborum', '1973-06-14 02:25:57', '2009-03-10 14:44:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'quisquam', '1983-01-04 08:52:42', '1997-01-10 16:58:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'et', '1994-09-17 08:30:18', '1992-08-07 05:45:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'est', '1989-12-14 20:41:20', '1995-06-12 23:08:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'quis', '1989-03-30 02:42:57', '1970-01-05 04:31:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'vel', '1988-09-02 15:29:11', '2018-12-24 09:09:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'quas', '1987-08-09 04:25:48', '2013-05-09 13:45:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'quas', '2004-04-09 00:33:41', '2014-10-19 15:10:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'doloremque', '2003-04-26 18:34:39', '1980-07-13 00:29:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'corrupti', '1990-09-19 09:35:14', '1996-03-23 23:34:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'ea', '2018-11-01 07:21:34', '1981-02-15 20:54:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'ad', '2011-05-11 06:44:43', '2005-12-07 04:57:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'qui', '1997-08-27 20:24:50', '1975-09-25 09:24:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'ducimus', '2016-02-26 07:36:44', '1985-09-22 11:03:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'eligendi', '1998-04-08 07:44:59', '1990-04-09 15:52:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'quo', '2020-01-23 06:18:49', '1982-12-08 02:26:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'similique', '1982-08-17 01:54:27', '1994-01-13 20:45:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'modi', '2017-09-24 23:20:06', '1978-03-17 23:42:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'ipsam', '1983-06-02 01:38:49', '1993-11-30 20:59:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'iusto', '2015-12-10 17:17:08', '1991-08-05 14:37:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'doloremque', '2015-03-07 14:21:03', '1974-09-12 15:32:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'ea', '2004-08-05 00:45:25', '2000-05-15 13:28:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'cupiditate', '1978-04-15 14:19:38', '1998-03-05 14:00:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'et', '2020-07-24 03:24:48', '1971-01-27 00:26:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'error', '1998-04-17 00:18:52', '2018-12-02 12:11:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'officiis', '1990-12-05 03:34:26', '1990-02-25 04:48:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'itaque', '2000-11-26 10:59:40', '1989-06-06 13:50:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'consequatur', '1984-05-04 04:56:39', '2010-12-19 12:03:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'nisi', '1994-12-20 21:32:58', '2008-09-10 07:59:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'aut', '1974-09-08 19:02:41', '2020-06-13 05:50:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'quas', '2020-07-17 01:08:25', '2017-04-05 03:22:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'suscipit', '1986-03-19 19:38:26', '1989-05-22 15:01:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'quasi', '2010-05-09 10:33:49', '1986-08-06 05:56:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'nisi', '1997-01-04 01:33:37', '2004-01-26 17:45:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'est', '2016-06-15 16:16:52', '2001-11-19 06:24:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'assumenda', '1984-03-21 17:19:33', '1988-12-29 08:31:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'dolor', '1973-12-23 13:25:02', '1977-03-18 15:35:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'vel', '2004-05-04 10:19:04', '1996-08-24 10:10:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'modi', '2003-09-23 07:48:17', '1972-03-29 06:51:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'aliquid', '1997-09-13 07:07:40', '1993-02-04 02:16:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'sunt', '1970-10-24 01:54:39', '2007-12-16 01:10:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'eaque', '1995-07-31 23:28:57', '1992-12-25 20:59:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'ullam', '1983-09-25 21:40:08', '1994-07-08 14:12:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'suscipit', '2010-02-13 12:04:15', '1982-01-19 06:15:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'consequatur', '1986-10-08 08:20:49', '2006-09-17 21:52:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'animi', '1991-04-04 12:16:45', '2006-04-06 02:56:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'qui', '2007-12-15 15:06:14', '1994-01-23 08:29:07');


DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL,
    media_type_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    -- file blob,    	
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);


INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '101', 'Autem aut tempora qui quos. Rerum atque nam dolor velit. Et totam ut voluptate eos delectus. Sed vel atque facere aliquam.', 'sequi', 56595320, NULL, '2011-09-09 05:12:50', '1995-08-25 15:57:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '102', 'Enim quia repudiandae enim quia consequatur. Tempora possimus incidunt dolor dicta reprehenderit tempora minima. Et quas sunt culpa ipsum quia. Quibusdam et temporibus id vero eum enim.', 'facilis', 5385, NULL, '1986-06-20 20:32:51', '1990-01-10 09:57:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '103', 'Aut beatae qui esse nobis tempore aliquam. Nam nostrum illo rerum sunt ipsa magni quidem. Quibusdam laborum recusandae debitis quia qui consequatur.', 'dolorum', 989573, NULL, '2002-06-10 04:25:16', '1994-10-18 09:11:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '104', 'Non ea ut et accusamus quae ut atque aliquid. Rerum quidem itaque consequatur hic. Veniam expedita non doloremque dolorem laudantium at consequatur.', 'qui', 675640, NULL, '2004-02-28 19:41:25', '1995-04-05 20:29:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '108', 'Voluptatum accusamus officiis eos veniam provident. Est quo ut occaecati et. Ut sit mollitia dolores eaque non facere suscipit. Quasi dolor ab consequatur autem hic.', 'iure', 27187, NULL, '1992-06-15 17:36:27', '1994-01-07 04:06:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '110', 'Amet eaque et commodi harum. Accusamus quia et culpa quae. Delectus quidem voluptatum rerum autem. Omnis voluptatem quae a recusandae aperiam dolore. Dolorem natus dolorum rerum labore aut architecto rerum.', 'culpa', 199953, NULL, '1991-04-10 16:05:38', '1972-03-02 20:46:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '111', 'Officia voluptas aut unde quia. Consequuntur minima enim enim quo vero. Maxime unde deleniti unde impedit dolorem quis. Earum velit corporis quae enim.', 'id', 405, NULL, '1989-04-25 06:11:28', '2013-07-04 10:39:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '112', 'Cum laudantium aliquid ab molestias iusto sint commodi. Nisi veritatis id natus quos.', 'ab', 50859, NULL, '2010-04-01 04:31:05', '1994-04-12 22:50:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '113', 'Est adipisci dolore consequatur qui aut repellendus harum iusto. Debitis veritatis iusto doloribus dolorem omnis magnam. Possimus magni et ad autem cumque. Quam praesentium deserunt saepe quo eos dolorem amet.', 'iure', 5229, NULL, '1977-03-29 09:29:49', '2016-05-18 14:55:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '114', 'Possimus veniam itaque incidunt reprehenderit maiores. Atque debitis consequatur maiores eos sequi odio corrupti. Quis excepturi iste alias labore libero.', 'necessitatibus', 9, NULL, '1989-07-31 00:58:32', '2015-06-14 04:25:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '11', '117', 'Ea rerum voluptatibus alias eos. Modi corporis quia aut aperiam ut. Dolor ea esse qui rerum animi qui inventore rerum.', 'mollitia', 92, NULL, '1986-07-01 21:43:27', '2013-07-26 21:13:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '12', '120', 'Aut nihil quis qui voluptatem. Quos provident dolorem nobis aut eaque accusantium veniam. Doloribus omnis nihil occaecati rem tempora qui vero odit. Aliquid modi nihil officiis consequatur corporis aut similique. Odio eaque quisquam corporis reprehenderit velit.', 'porro', 0, NULL, '2013-02-04 10:20:13', '2018-03-15 14:36:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '13', '121', 'Vitae ea qui id debitis itaque quia aspernatur. Voluptas possimus itaque et eveniet voluptatum voluptas. Non deserunt unde occaecati necessitatibus.', 'eligendi', 2806063, NULL, '1992-11-11 09:11:34', '1970-12-08 00:08:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '14', '122', 'Atque omnis autem autem corrupti esse numquam sit. Voluptatem amet et qui. Ipsam quidem adipisci praesentium quis dicta et sed est. Ut expedita nihil expedita eligendi blanditiis qui.', 'totam', 38, NULL, '2005-03-24 02:01:17', '1998-03-02 17:24:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '15', '124', 'Praesentium quaerat ut omnis qui. Et et repellat excepturi vero soluta nihil eum esse.', 'error', 4557964, NULL, '2020-07-12 19:22:52', '1975-04-18 21:20:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '16', '129', 'Quia doloremque corrupti natus voluptate rerum eius libero. Eos non quidem assumenda sunt ex voluptate earum. Quaerat et rem non sit doloribus corporis iure.', 'ducimus', 532216, NULL, '2019-05-17 10:37:17', '1981-12-22 04:42:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '17', '130', 'Recusandae qui et labore repellendus et sed sed. Aliquam qui odit consectetur neque non doloremque. Aspernatur sed quidem omnis.', 'qui', 34073, NULL, '1979-03-09 18:29:42', '1983-03-11 00:03:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '18', '131', 'Velit consequatur eveniet molestiae id. Dolorem aspernatur est id minus dicta cum quas. Velit inventore molestiae recusandae similique.', 'inventore', 90134658, NULL, '1984-03-24 12:53:07', '2019-03-25 00:37:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '19', '132', 'Minus id et ullam voluptatibus praesentium et. Sint officia atque rerum omnis cumque nulla id aut. Ea nihil qui sint reiciendis aliquam voluptatem voluptatem.', 'asperiores', 8686912, NULL, '2016-07-24 20:55:35', '1971-01-17 04:19:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '20', '133', 'Non debitis animi aperiam iste aut. Enim sed doloribus voluptatem provident. Voluptas error et vel aut repellendus iusto. Perferendis itaque voluptas voluptatibus temporibus vel.', 'et', 17, NULL, '2020-10-12 12:17:52', '2017-03-24 08:29:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '21', '134', 'Et maxime et ut reprehenderit beatae aut dolorem. A assumenda deleniti excepturi expedita. Qui porro beatae excepturi esse alias non. Nihil ut aperiam natus enim illum commodi exercitationem.', 'reiciendis', 71187054, NULL, '1992-08-12 16:28:27', '2020-12-20 23:23:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '22', '136', 'Tenetur quisquam officiis inventore. Sed cum voluptatem atque error voluptatem. Est ut fugit labore reprehenderit. Alias quo ipsam qui harum deserunt.', 'molestiae', 59587617, NULL, '1986-12-01 19:47:01', '1978-03-07 10:14:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '23', '138', 'Illum illo voluptate non aut id. Corrupti voluptas ea enim enim ut. Nihil quia aperiam et temporibus doloribus. Iusto excepturi ab sed ad. Maxime aut aperiam qui minus commodi sapiente voluptas.', 'totam', 97830307, NULL, '1992-02-29 10:00:03', '2005-12-24 20:51:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '24', '144', 'Quaerat ea perspiciatis omnis numquam. Et architecto vel placeat dicta pariatur. Ipsa sint et nam sunt libero dolorum et. Architecto dolor vel rerum labore sint.', 'id', 2, NULL, '1979-03-08 14:04:20', '1986-06-20 08:31:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '25', '146', 'Praesentium quia esse dolorem iste sunt consequatur. Quia est et qui cum. Quidem et aut consequatur voluptas. Nihil tempora natus corrupti dolorum.', 'aut', 0, NULL, '2012-07-03 21:08:13', '2010-08-08 07:12:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '26', '148', 'Ut eum ea consequatur rerum veniam. Sunt facilis corporis voluptatem et labore consequatur ea. Optio aut ut possimus id ut veritatis non at. Rerum nihil ullam ipsum explicabo omnis.', 'assumenda', 435954, NULL, '2020-07-14 12:54:03', '1981-06-29 08:30:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '27', '150', 'Occaecati quo accusantium eum. Molestias corrupti dolor minima et qui excepturi. Voluptatem est repellendus consequuntur ex velit ut. Illo eos consectetur minus consequuntur.', 'qui', 411946, NULL, '1970-09-12 14:18:33', '1974-01-26 02:58:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '28', '151', 'Doloremque fugit minus quaerat nam reprehenderit sed. Unde dignissimos doloribus ut alias et ipsa et. Voluptatum doloremque earum dolore ipsa. Voluptas non repellat praesentium quos nostrum consequatur excepturi.', 'voluptatem', 6124179, NULL, '2016-03-04 04:48:55', '2002-12-04 08:51:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '29', '152', 'Accusantium dolor occaecati et eos error. Ut deleniti corporis id nobis saepe dolores voluptatem. Doloremque aliquam facere deleniti laborum facilis voluptatum harum quidem. Ratione consequuntur quod nesciunt mollitia fugit et.', 'quas', 1781, NULL, '1983-10-24 07:19:22', '1992-10-25 08:24:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '30', '154', 'Rerum voluptatem voluptatum laudantium soluta optio beatae. Exercitationem dolor itaque officiis architecto non rem. Qui fugit perspiciatis illo pariatur ut tenetur. Consequatur non aut mollitia.', 'dolorem', 415237813, NULL, '1989-04-23 11:21:34', '1979-03-08 12:14:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '31', '155', 'Sunt omnis eos dignissimos neque dolor qui. Officia sit amet qui sit aliquam. Animi reprehenderit beatae nihil ut nisi unde corrupti. Fuga dolorem voluptatibus ut magni. Aut sit autem quis qui.', 'nesciunt', 10857, NULL, '1971-10-18 22:55:58', '1985-04-07 11:56:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '32', '156', 'Ipsum porro eaque eius totam sed cum quis. Voluptates officia laborum sint ut optio aut aut. Est necessitatibus aut dolorem dignissimos.', 'consequatur', 4329068, NULL, '1978-01-17 01:10:52', '1982-09-01 09:16:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '33', '158', 'Vel beatae voluptatibus nostrum et ut ut nobis dicta. Sit maiores voluptatem et sint laudantium voluptas. Aut in voluptates facere porro blanditiis tempora est. Odit pariatur esse dignissimos ipsam.', 'qui', 726169887, NULL, '1979-11-04 06:47:43', '1999-12-30 11:24:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '34', '161', 'Omnis dolores iure dolorum voluptatem sint ullam. Cum excepturi nesciunt quos molestiae tempore voluptatem culpa. Libero fugit qui molestias sit.', 'asperiores', 487390, NULL, '1985-09-26 07:46:59', '2003-10-26 02:06:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '35', '165', 'Quibusdam non earum omnis. Et voluptatum commodi reprehenderit tempora illo tempore. Distinctio cumque expedita voluptatem iusto quidem in magni. Dicta quod excepturi nulla sapiente sunt molestias eveniet.', 'similique', 5, NULL, '1984-11-18 02:58:37', '2003-06-24 00:27:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '36', '167', 'Ducimus atque maiores tenetur mollitia dolor tenetur similique. Mollitia laboriosam non quia dolor. Officiis id tenetur non inventore similique iste magni.', 'alias', 53, NULL, '2009-10-29 20:52:53', '1984-09-23 01:43:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '37', '168', 'Voluptates tenetur nemo illum et pariatur labore. Aliquam sed ad aperiam culpa sit commodi adipisci. Vel quam earum consequatur aut numquam.', 'voluptatibus', 131970, NULL, '2019-12-12 13:16:53', '1988-04-10 10:33:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '38', '169', 'Odio laudantium unde autem neque. Ducimus et in sit possimus. Ipsam laborum exercitationem culpa dolorem. Eius facere et sit voluptatem consectetur necessitatibus et.', 'rerum', 9646, NULL, '1979-05-24 09:54:14', '1999-07-19 00:20:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '39', '170', 'Nisi recusandae dolores beatae earum eos provident inventore nemo. Reprehenderit aut soluta nostrum rem omnis aut. Voluptas dolores placeat aspernatur enim voluptatem dicta.', 'laborum', 84565, NULL, '2000-05-12 15:58:35', '2009-07-06 01:37:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '40', '172', 'Nulla quisquam quod repellat dignissimos occaecati quo facilis. Sit numquam aut impedit qui voluptas nihil. Sint et vel suscipit.', 'illum', 97130920, NULL, '1998-07-01 16:08:09', '1985-05-11 06:53:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '41', '173', 'Quis in numquam voluptatum. Officia quia sunt quasi omnis maxime laborum voluptas. Fugit maxime quisquam qui illo.', 'odio', 652, NULL, '1999-06-21 06:08:20', '1986-08-31 14:20:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '42', '174', 'Minima vero aut nulla cumque quia id consequatur. Optio laudantium et sunt a. Repellendus nisi id voluptatem ipsum magnam cupiditate architecto soluta. Quod omnis sit ratione dignissimos.', 'quam', 4258008, NULL, '1977-09-05 20:31:39', '1999-12-17 01:39:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '43', '175', 'Cumque vitae et saepe quo dolorum inventore odio. Sed vel consequatur incidunt et. Natus illum sint dolores est. Placeat et sequi rem architecto qui hic sapiente. Fugiat qui maiores commodi quae sint vel eligendi eos.', 'fuga', 747632142, NULL, '1982-06-08 11:12:43', '2012-05-25 16:45:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '44', '176', 'Ea optio dolore eum et. Quia quisquam beatae sint. Odio sequi deserunt unde omnis voluptatem aperiam. Eaque quam inventore et.', 'corporis', 49200, NULL, '2018-06-25 14:17:17', '1993-08-18 09:22:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '45', '177', 'Beatae at omnis aperiam ut atque aut. Reiciendis ab facere et assumenda tempore aut. Fuga qui cumque non autem ratione.', 'quia', 9, NULL, '2018-12-01 02:22:38', '2014-04-18 10:40:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '46', '179', 'Quia consequuntur voluptas quod iusto veritatis voluptates repudiandae quis. Error velit aperiam sapiente illum velit ut rerum. Ipsum eum eaque praesentium harum qui et.', 'assumenda', 68160511, NULL, '2010-01-29 08:33:24', '2009-12-30 10:55:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '47', '180', 'Quae est incidunt quos eligendi excepturi. Ut laborum eum porro cum id fugiat et.', 'repudiandae', 533975, NULL, '1976-03-09 22:14:23', '2017-08-15 13:24:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '48', '184', 'Et eos dignissimos velit consequatur. Est iusto doloribus voluptas aut quisquam magnam. Quod commodi omnis illum perferendis voluptates quas. Sunt quia est aut voluptas et aliquid.', 'alias', 38110, NULL, '1976-09-23 21:49:23', '2006-11-22 03:02:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '49', '185', 'Saepe dignissimos sed porro dolores tempora ad illum tempora. Consequatur distinctio tenetur eos eum. Unde accusantium in iusto quaerat. Eius nihil non quae eveniet rerum dolores.', 'aut', 0, NULL, '1970-04-11 18:39:54', '2008-09-04 21:26:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '50', '186', 'Nesciunt ipsam enim et similique qui quis sed. Libero labore nesciunt maiores iusto aut. Qui officia in necessitatibus est qui.', 'modi', 913, NULL, '1973-11-18 18:58:19', '2018-10-07 07:30:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '51', '189', 'Et sed animi eveniet et a ut tempora. Quas non quo sed qui natus odit. Omnis et reiciendis possimus corporis consequatur nisi iusto.', 'sed', 408255, NULL, '1991-01-31 11:28:15', '2000-09-10 02:44:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '52', '190', 'Minus aliquid quo a et. Id omnis corrupti sunt beatae dolor omnis qui cupiditate. Vero molestiae beatae voluptatum dolorum ut enim. Facilis nulla consequuntur possimus ut minima.', 'omnis', 93, NULL, '2011-04-28 07:37:53', '1978-07-19 13:44:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '53', '191', 'Aut dolores rerum est sed aut. Et dolorem neque impedit qui. Ullam et odit ex aliquid. Et inventore inventore veritatis exercitationem possimus illum.', 'perspiciatis', 866, NULL, '2005-01-31 13:42:52', '2011-08-08 04:16:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '54', '192', 'Sunt blanditiis consequatur minima. Modi pariatur non itaque excepturi cum voluptatem omnis vel. Repudiandae aut quisquam nesciunt aut facere rerum dolores placeat. Libero mollitia velit et temporibus.', 'perferendis', 4594274, NULL, '1989-04-08 12:31:18', '2014-03-11 08:17:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '55', '193', 'Rerum perferendis quaerat ea est itaque id. Culpa dicta quidem voluptas.', 'sunt', 36290717, NULL, '1999-07-14 21:20:26', '2000-04-02 08:54:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '56', '194', 'Reprehenderit deleniti mollitia quaerat provident consequatur. Cupiditate in omnis et minima dolor quis ut. Expedita tempora sit soluta sapiente expedita minus blanditiis suscipit.', 'magni', 2363, NULL, '2019-11-21 01:38:57', '2013-12-07 15:08:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '57', '196', 'Ipsum voluptates velit optio pariatur. Dolores quisquam maxime molestiae. Debitis dolor mollitia laudantium alias.', 'vero', 987, NULL, '1971-07-10 00:30:39', '1999-11-18 09:06:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '58', '200', 'Rerum sunt cumque cupiditate unde sit expedita. Quia enim amet sed perspiciatis alias. Iusto reiciendis sint voluptatem.', 'praesentium', 15569675, NULL, '1972-09-25 23:01:56', '1980-09-30 07:21:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '59', '101', 'Omnis rem quod voluptatem ex. Et aut consequatur ex optio aut maiores. Quidem quisquam aut hic voluptatem ullam sequi omnis. Quod molestias esse rerum voluptatem. Ipsam possimus aut qui voluptatum earum illum vel illo.', 'quae', 94345, NULL, '2008-05-04 10:01:20', '1974-08-08 06:06:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '60', '102', 'Nulla architecto voluptas consequatur id facere cupiditate vel. Nesciunt quasi voluptatem maiores suscipit labore explicabo. Corrupti reprehenderit corporis velit occaecati aspernatur soluta. Est aliquam alias esse sit et autem quia.', 'omnis', 0, NULL, '2000-04-19 21:49:59', '1984-08-02 11:56:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '61', '103', 'Nihil soluta enim corporis illum optio quod qui adipisci. Tempore similique a architecto. Dolorem ut beatae fugit sequi tempore incidunt exercitationem.', 'ut', 0, NULL, '1994-12-29 22:12:06', '1999-05-27 22:53:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '62', '104', 'Facilis in illo id earum repellat sapiente aut. Suscipit nisi provident aliquam dolore atque ut incidunt. Perferendis voluptas voluptas commodi aut eos quasi. Eveniet pariatur est pariatur aspernatur.', 'et', 0, NULL, '1980-02-27 03:24:40', '2008-11-30 12:17:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '63', '108', 'Expedita doloremque et quas dolorem. Quibusdam nemo voluptatem ut ut expedita. Aut molestias autem hic libero. Impedit molestias perferendis sed repudiandae rerum fugit enim.', 'nihil', 64030, NULL, '1971-01-31 16:03:46', '1989-08-01 09:35:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '64', '110', 'Iure aperiam odit et minus eius repellendus ipsum dolor. Nisi voluptatem facilis nihil facilis itaque. Molestiae et quod a unde unde in. Cupiditate et eos facere. Et et earum est aut est non.', 'quis', 7875, NULL, '1993-06-19 15:26:21', '2014-09-11 22:26:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '65', '111', 'Similique officia quia et omnis rerum ratione vero minima. Dolorem quia corrupti at quod rerum sapiente.', 'et', 756723167, NULL, '2016-07-28 05:02:18', '1996-09-02 04:54:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '66', '112', 'Sunt ea labore quia. Rerum consectetur aut aliquam vitae qui quo. Ut est odio temporibus veritatis ab. Molestiae mollitia et laborum cumque neque.', 'et', 980, NULL, '2011-11-03 16:28:13', '1976-02-23 05:18:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '67', '113', 'Porro quod dolorem unde laudantium non iste. Quis harum possimus ratione ratione in. Et voluptatibus aut non et magnam.', 'iste', 0, NULL, '1999-04-18 06:32:29', '2003-01-25 18:39:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '68', '114', 'Amet iusto eum minima debitis et excepturi reiciendis commodi. Ut repellat ipsum occaecati vitae. Quibusdam fugiat quidem reiciendis labore impedit autem accusamus. Rerum explicabo nesciunt est nobis.', 'optio', 8792, NULL, '1990-10-28 20:44:53', '1987-12-02 05:57:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '69', '117', 'Ut qui quidem non sint aut. Laborum tempora suscipit possimus et delectus corporis. Voluptate aut eos corrupti adipisci architecto ut. Ut in quasi iure commodi eaque ad quos expedita.', 'eius', 0, NULL, '1996-04-05 13:07:32', '2002-10-14 13:43:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '70', '120', 'Nam aut distinctio placeat totam dignissimos. Quis incidunt labore itaque error nam. Voluptate ex sed aliquam molestias veniam totam.', 'quis', 0, NULL, '1977-02-23 14:26:12', '2018-05-22 07:52:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '71', '121', 'Minus nisi repudiandae minima voluptatem expedita rerum ut molestias. Illum voluptatem fugiat recusandae tenetur est. Et voluptatibus aspernatur quo dolore corporis nesciunt. Dolor totam distinctio magnam animi. Atque dolorem itaque sed accusantium dolorem voluptatem consequatur.', 'aliquid', 914768, NULL, '1997-01-23 22:28:48', '1978-01-31 00:23:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '72', '122', 'Quia reiciendis ab sunt ut ratione velit odio. Molestias dolore facere odio voluptatem perspiciatis vel reiciendis. Non sit et quo qui aut. Dignissimos doloremque aperiam expedita at dignissimos veritatis facere magnam.', 'quisquam', 595539380, NULL, '1987-06-25 15:22:34', '1986-01-21 06:11:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '73', '124', 'Et ut harum quis itaque impedit. Delectus sunt accusantium dolores consequuntur consequatur libero perspiciatis. Nemo incidunt ea eius voluptas qui. Illo expedita sint laboriosam quos et.', 'pariatur', 29802, NULL, '2016-07-29 07:21:52', '1972-09-26 13:26:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '74', '129', 'Magnam ea provident ipsa illum. Repellat unde iste assumenda eligendi. Iure a et neque voluptatem. Eos consequatur totam quod asperiores sed.', 'ut', 0, NULL, '1981-10-20 19:38:31', '1990-10-04 08:04:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '75', '130', 'Molestiae occaecati autem ipsam ut praesentium. Dolorem ducimus temporibus id enim illo blanditiis omnis aperiam. Quibusdam quo repellendus consequatur est sed adipisci.', 'corporis', 74, NULL, '1977-06-03 18:31:24', '1978-06-01 05:14:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '76', '131', 'Quis voluptas nulla ipsum recusandae voluptatem quisquam eos. Ut culpa earum vel. Ipsa labore sunt veritatis vitae est fuga.', 'illo', 279, NULL, '1998-01-10 06:45:44', '1992-03-28 23:07:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '77', '132', 'Odio pariatur totam aut laborum explicabo eum et autem. Exercitationem voluptatem culpa quae libero. Consequuntur debitis expedita debitis rerum voluptatem. Reiciendis fuga aut consequatur consequatur.', 'autem', 999, NULL, '1985-10-04 15:41:14', '2000-04-07 21:10:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '78', '133', 'Qui nisi earum suscipit explicabo unde. Ut placeat in deleniti quo eligendi non. Doloribus voluptatem et dolore illo.', 'delectus', 33143980, NULL, '2005-09-22 05:30:55', '1981-10-10 04:40:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '79', '134', 'Non magnam quod eum voluptates quaerat repudiandae. Dolorem minus voluptas optio cum perspiciatis ex minima. Aspernatur impedit molestias natus eaque non quas autem. Nostrum sint qui incidunt recusandae quam quia.', 'iure', 654, NULL, '1971-10-13 23:43:40', '2011-01-04 21:18:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '80', '136', 'Quia eius quas praesentium aliquid. Quia quam quis in distinctio vitae aut molestias. Voluptatem perspiciatis aperiam commodi aut consequatur.', 'minus', 7, NULL, '1980-08-10 21:58:54', '2007-10-04 10:05:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '81', '138', 'Sunt hic vel quam eligendi eos consequuntur enim ullam. Nostrum est doloribus culpa quidem. Et cum possimus ut inventore quia qui rerum. Et reiciendis enim quod quia libero.', 'ullam', 21510, NULL, '1982-11-14 17:04:00', '1981-01-24 10:32:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '82', '144', 'Vitae perferendis earum similique quis. Earum qui cumque accusantium et molestias fuga et ut. Consequuntur ea numquam voluptatem adipisci sit qui reiciendis voluptas. Dolores vel aut excepturi magnam repellat corporis quis.', 'perferendis', 52, NULL, '1979-06-24 19:44:12', '1999-03-05 23:43:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '83', '146', 'Eos et est maxime dignissimos. Voluptatibus odio reiciendis quis sit provident et. Rerum autem sequi maiores impedit quia labore eum.', 'sit', 74953407, NULL, '1988-01-06 09:36:39', '2021-03-09 15:11:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '84', '148', 'Doloribus qui dolorem hic in nostrum. Alias qui quos facere deleniti sit id. Voluptatem veritatis facere consequatur ipsum. Alias quo veritatis dolor iste.', 'distinctio', 4190, NULL, '1981-10-08 18:09:31', '1989-08-01 11:38:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '85', '150', 'Molestias repellendus maiores facere earum aperiam quisquam sapiente. Qui ea quis voluptatibus rerum rem pariatur. Dolor nam eligendi dolores voluptate. Praesentium repellat dolor et quo qui molestiae. Autem molestiae nesciunt nihil.', 'sint', 373622533, NULL, '1971-11-02 01:10:50', '1975-09-24 23:14:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '86', '151', 'Beatae qui aut repellendus. Maxime explicabo et cum aut. Et autem laboriosam vel sapiente dolore dolores.', 'culpa', 2015273, NULL, '1992-08-15 02:03:08', '1983-09-02 21:20:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '87', '152', 'Alias deleniti sunt ut. Quo consequuntur ut impedit expedita enim facilis et. Perferendis eaque qui quisquam nulla nulla.', 'saepe', 9, NULL, '2019-02-04 18:13:48', '1970-12-15 02:11:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '88', '154', 'Omnis voluptate incidunt et expedita quaerat necessitatibus. Repudiandae nemo aut et sed qui amet. Velit non earum voluptatem voluptatum. Expedita eius accusantium necessitatibus dolore culpa est.', 'non', 20, NULL, '1978-08-07 03:53:14', '1995-08-07 11:08:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '89', '155', 'Sapiente quia nam totam aperiam vero doloribus. Aspernatur sit vel et voluptatem numquam animi sequi. Consequatur et officiis numquam nihil ipsum.', 'voluptatibus', 331, NULL, '2013-03-06 03:41:47', '1984-12-13 08:13:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '90', '156', 'Voluptas laboriosam tenetur sint quia fugiat sed eum. Quae quis similique voluptas perferendis sit.', 'dignissimos', 1, NULL, '1975-10-22 11:37:30', '1982-06-09 07:10:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '91', '158', 'Asperiores itaque nemo facilis omnis distinctio ipsam in. Voluptatem eaque animi odio quod. Libero impedit sed unde quia et perspiciatis dolor.', 'cupiditate', 5, NULL, '2002-01-12 04:55:31', '2007-07-22 10:11:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '92', '161', 'Nihil magnam est autem ea quia amet. Molestiae delectus qui debitis sapiente aliquam laboriosam. Atque consequatur quia omnis earum molestiae labore velit. Et nobis dignissimos nisi dolores et tempore ut.', 'repudiandae', 352552, NULL, '2016-06-05 06:48:41', '2001-01-08 01:24:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '93', '165', 'Aut repellendus voluptatem quisquam quis excepturi. Blanditiis consequatur nesciunt laudantium velit. Deserunt fugiat sed fugiat quaerat eius qui ad et.', 'illo', 0, NULL, '1989-03-21 08:11:51', '1999-02-09 09:10:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '94', '167', 'Vero voluptas quod facilis nam recusandae. Et deserunt sit laborum voluptatibus nesciunt amet. Ipsam dignissimos provident optio voluptatem. Itaque quae omnis molestiae qui repellat reprehenderit voluptates. Id repudiandae beatae voluptatem eligendi qui.', 'qui', 84222, NULL, '2011-02-04 14:50:46', '1999-01-08 12:24:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '95', '168', 'Enim provident alias aut quo quibusdam. Pariatur occaecati ex inventore nesciunt velit aut dolorem.', 'in', 7608236, NULL, '2011-08-12 16:53:38', '1996-06-01 09:36:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '96', '169', 'Est nihil quisquam enim debitis. Ipsum iste fugit ullam est ducimus quas. Inventore quam fuga similique molestias. Minus soluta consequatur facere officia.', 'minima', 7, NULL, '1995-07-03 01:59:54', '1973-09-03 22:10:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '97', '170', 'Ratione repellendus aliquid enim. Similique voluptate cupiditate delectus qui ut asperiores eum porro.', 'eveniet', 440828789, NULL, '2012-09-05 15:06:05', '1989-04-12 07:05:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '98', '172', 'Qui doloremque rerum minus odit. Est earum accusamus nulla. Ut ut ipsam dolores. Aut veniam sit non explicabo repudiandae fugiat.', 'dolorem', 282091871, NULL, '1998-07-17 16:31:40', '2011-12-08 20:19:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '99', '173', 'Dolor laboriosam et possimus nihil. Architecto et qui velit. Molestiae molestias et eaque aut tempore.', 'nihil', 70104, NULL, '1973-02-24 19:11:44', '2013-08-24 04:02:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '100', '174', 'Et modi eos illo. Sit sed error vitae saepe molestiae. Modi laboriosam iste repellat accusamus delectus itaque eos.', 'dicta', 1270, NULL, '2018-10-05 14:06:32', '1985-12-20 04:37:03');


DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (media_id) REFERENCES media(id),
    FOREIGN KEY (user_id) REFERENCES users(id)   
    

    -- PRIMARY KEY (user_id, media_id) – можно было и так вместо id в качестве PK
  	-- слишком увлекаться индексами тоже опасно, рациональнее их добавлять по мере необходимости (напр., провисают по времени какие-то запросы)  

/* намеренно забыли, чтобы позднее увидеть их отсутствие в ER-диаграмме
    , FOREIGN KEY (user_id) REFERENCES users(id)
    , FOREIGN KEY (media_id) REFERENCES media(id)
*/
);


INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '101', '1', '2001-09-21 12:40:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '102', '2', '1987-09-13 18:15:12');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '103', '3', '1982-10-02 11:00:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '104', '4', '1995-08-02 11:01:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '108', '5', '1975-07-05 17:18:43');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '110', '6', '1979-08-29 12:17:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '111', '7', '1971-04-29 15:06:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '112', '8', '1977-03-08 02:43:10');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '113', '9', '1973-07-28 22:16:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '114', '10', '1973-07-31 01:03:39');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('11', '117', '11', '2000-02-16 04:18:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('12', '120', '12', '2012-10-10 03:41:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('13', '121', '13', '1986-09-20 23:53:10');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('14', '122', '14', '1981-08-18 09:19:41');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('15', '124', '15', '1991-06-06 03:29:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('16', '129', '16', '1981-03-04 15:23:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('17', '130', '17', '1977-01-20 19:36:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('18', '131', '18', '2004-09-10 20:19:37');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('19', '132', '19', '1994-09-19 05:09:57');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('20', '133', '20', '1972-12-18 18:35:18');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('21', '134', '21', '2009-07-22 11:20:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('22', '136', '22', '1991-12-16 08:31:39');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('23', '138', '23', '2021-02-23 17:30:22');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('24', '144', '24', '1979-12-15 21:29:03');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('25', '146', '25', '1977-11-01 12:56:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('26', '148', '26', '2010-06-04 05:44:50');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('27', '150', '27', '1981-12-19 09:31:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('28', '151', '28', '1977-01-21 20:27:15');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('29', '152', '29', '1978-10-12 00:13:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('30', '154', '30', '1972-06-18 10:58:49');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('31', '155', '31', '1970-08-08 07:32:19');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('32', '156', '32', '1972-09-13 18:53:51');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('33', '158', '33', '1995-08-01 22:21:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('34', '161', '34', '2003-12-05 12:38:37');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('35', '165', '35', '1987-11-20 09:22:53');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('36', '167', '36', '1992-08-23 08:02:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('37', '168', '37', '2004-09-28 13:39:10');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('38', '169', '38', '2009-07-23 16:12:35');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('39', '170', '39', '2001-02-23 16:08:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('40', '172', '40', '1985-03-23 13:39:40');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('41', '173', '41', '1975-04-22 19:11:02');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('42', '174', '42', '2007-08-29 17:25:04');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('43', '175', '43', '1989-12-20 00:37:06');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('44', '176', '44', '2017-07-23 05:32:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('45', '177', '45', '1970-09-04 06:22:57');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('46', '179', '46', '1979-06-12 16:22:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('47', '180', '47', '1978-03-26 12:02:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('48', '184', '48', '1986-04-14 18:35:11');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('49', '185', '49', '1997-01-06 18:25:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('50', '186', '50', '2020-04-13 05:19:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('51', '189', '51', '2008-01-04 17:31:43');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('52', '190', '52', '1975-12-01 02:56:16');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('53', '191', '53', '1991-02-26 15:12:41');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('54', '192', '54', '2002-12-16 01:53:23');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('55', '193', '55', '1983-08-07 07:47:48');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('56', '194', '56', '1992-01-11 00:19:22');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('57', '196', '57', '1978-10-27 11:04:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('58', '200', '58', '1971-05-10 09:19:53');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('59', '101', '59', '2000-02-29 07:25:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('60', '102', '60', '2015-05-02 20:35:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('61', '103', '61', '2013-03-29 07:59:37');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('62', '104', '62', '2017-02-13 19:01:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('63', '108', '63', '1973-11-24 06:44:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('64', '110', '64', '1996-06-10 22:36:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('65', '111', '65', '1982-04-20 07:44:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('66', '112', '66', '1979-06-18 04:33:01');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('67', '113', '67', '1972-03-22 13:04:24');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('68', '114', '68', '1988-06-08 08:02:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('69', '117', '69', '2007-10-20 13:59:03');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('70', '120', '70', '1987-07-18 21:24:15');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('71', '121', '71', '1976-04-13 22:08:53');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('72', '122', '72', '1975-03-24 03:41:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('73', '124', '73', '2001-04-05 03:22:12');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('74', '129', '74', '1996-04-05 05:10:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('75', '130', '75', '1999-04-26 20:17:35');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('76', '131', '76', '2014-08-21 15:34:31');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('77', '132', '77', '1994-07-27 23:47:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('78', '133', '78', '1976-09-11 07:29:40');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('79', '134', '79', '1978-02-25 20:46:35');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('80', '136', '80', '2007-03-16 05:51:56');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('81', '138', '81', '1986-01-01 18:25:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('82', '144', '82', '2002-06-03 13:52:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('83', '146', '83', '1970-04-30 09:23:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('84', '148', '84', '1975-10-23 05:29:23');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('85', '150', '85', '1990-10-19 17:19:56');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('86', '151', '86', '1976-10-15 21:09:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('87', '152', '87', '1990-04-12 07:29:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('88', '154', '88', '1986-04-12 07:27:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('89', '155', '89', '1975-11-09 12:05:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('90', '156', '90', '1986-02-21 11:46:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('91', '158', '91', '2018-12-06 07:04:46');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('92', '161', '92', '2012-11-23 02:16:04');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('93', '165', '93', '1995-10-24 20:31:45');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('94', '167', '94', '1989-03-17 03:21:35');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('95', '168', '95', '2016-09-27 12:37:48');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('96', '169', '96', '2016-05-01 23:20:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('97', '170', '97', '2012-02-08 14:26:18');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('98', '172', '98', '2009-08-30 07:08:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('99', '173', '99', '1989-07-09 03:43:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('100', '174', '100', '2002-04-25 07:43:51');


DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
  	PRIMARY KEY (`id`)
);


INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'dolores', '101');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'facilis', '102');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'culpa', '103');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'animi', '104');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'debitis', '108');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'dolorem', '110');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'temporibus', '111');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'doloribus', '112');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'ut', '113');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'assumenda', '114');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'totam', '117');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'et', '120');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'praesentium', '121');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'molestiae', '122');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'qui', '124');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'officia', '129');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'expedita', '130');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'quia', '131');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'aut', '132');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'molestiae', '133');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'officia', '134');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'molestiae', '136');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'voluptas', '138');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'assumenda', '144');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'omnis', '146');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'et', '148');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'qui', '150');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'doloribus', '151');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'quia', '152');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'quisquam', '154');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'amet', '155');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'natus', '156');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'dolores', '158');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'deleniti', '161');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'nulla', '165');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'illum', '167');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'placeat', '168');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'fuga', '169');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'pariatur', '170');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'eligendi', '172');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'ut', '173');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'voluptatum', '174');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'nulla', '175');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'molestiae', '176');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'voluptatem', '177');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'et', '179');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'provident', '180');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'ut', '184');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'asperiores', '185');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'aut', '186');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'id', '189');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'voluptatem', '190');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'laborum', '191');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'et', '192');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'a', '193');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'veniam', '194');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'rerum', '196');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'maxime', '200');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'repellendus', '101');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'assumenda', '102');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'at', '103');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'nisi', '104');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'velit', '108');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'sapiente', '110');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'omnis', '111');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'ea', '112');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'sit', '113');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'facere', '114');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'in', '117');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'doloremque', '120');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'quo', '121');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'veniam', '122');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'dolorem', '124');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'provident', '129');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'recusandae', '130');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'quo', '131');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'consequatur', '132');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'quaerat', '133');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'dolorum', '134');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'eaque', '136');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'dicta', '138');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'at', '144');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'placeat', '146');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'et', '148');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'ut', '150');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'omnis', '151');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'voluptates', '152');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'numquam', '154');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'voluptate', '155');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'repellendus', '156');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'impedit', '158');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'modi', '161');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'eum', '165');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'vero', '167');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'animi', '168');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'alias', '169');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'fugiat', '170');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'nulla', '172');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'recusandae', '173');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'consequatur', '174');


DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL,
	`album_id` BIGINT unsigned NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);

/* ALTER TABLE vk.likes 
ADD CONSTRAINT likes_fk 
FOREIGN KEY (media_id) REFERENCES vk.media(id);

ALTER TABLE vk.likes 
ADD CONSTRAINT likes_fk_1 
FOREIGN KEY (user_id) REFERENCES vk.users(id);*/

ALTER TABLE vk.profiles 
ADD CONSTRAINT profiles_fk_1 
FOREIGN KEY (photo_id) REFERENCES media(id); 

