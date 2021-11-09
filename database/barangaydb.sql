

CREATE TABLE `advance_user` (
  `advance_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `advance_user_name` varchar(255) NOT NULL,
  `advance_user_email` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `advance_user_role` varchar(255) NOT NULL,
  `advance_user_password` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `verified` int(11) NOT NULL,
  `advance_user_created` datetime(6) NOT NULL,
  PRIMARY KEY (`advance_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;


INSERT INTO advance_user VALUES
("1","Admin","admin@localhost.com","Male","1","21232f297a57a5a743894a0e4a801fc3","images/download.jpg","1","2021-04-19 00:00:00.000000"),
("5","Dr. Kian Naquines","dr.kiannaquines@gmail.com","Male","2","41f4baf14231bf57eac9cdd3dce15656","images/download.jpg","1","2021-04-26 21:07:28.000000"),
("15","Kian Naquines","kiannaquines@gmail.com","Male","2","41f4baf14231bf57eac9cdd3dce15656","images/download.jpg","1","2021-05-22 00:00:00.000000"),
("21","Administrator","administrator@localhost.com","Male","1","200ceb26807d6bf99fd6f4f0d1ca54d4","images/download.jpg","1","2021-05-23 00:00:00.000000"),
("25","Administrator","administrator@gmail.com","Male","1","21232f297a57a5a743894a0e4a801fc3","images/download.jpg","1","2021-06-02 00:00:00.000000"),
("27","Staff Kian Naquines","goyec944922@geekale.com","Male","2","41f4baf14231bf57eac9cdd3dce15656","images/3443556.png","1","2021-06-29 00:00:00.000000"),
("29","rootuser","rootuser@rootuser.com","Male","1","bd53ec24918488de5ba735a952b81c7e","images/download.jpg","1","2021-06-30 00:00:00.000000");




CREATE TABLE `advance_user_profile` (
  `admin_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_address` varchar(225) NOT NULL,
  `admin_bio` varchar(100) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `admin_mobile` varchar(255) NOT NULL,
  `admin_advance_user_id` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;


INSERT INTO advance_user_profile VALUES
("10","96  Park Avenue","Lorem ipsum dolor sit amet consectetur, adipisicing elit. Possimus corporis dignissimos.","2002-10-20","09796796967","1","Roseville","n/a"),
("12","New Israel Makilala Cotabato","Im Kian Naquines the administrator of the system...","2002-08-10","09103630525","15","Cotabato City","n/a"),
("13","New Israel Makilala Cotabato","used to demonstrate the visual form of a document or a typeface","2002-10-10","09103630525","14","Cotabato City","n/a"),
("19","New Israel Makilala North Cotabato","Test Bio","2021-09-18","09103630525","27","Cotabato","n/a");




CREATE TABLE `appointment_charts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


INSERT INTO appointment_charts VALUES
("1","goyec44922@geekale.com","Pending"),
("2","goyec44922@geekale.com","Approved");




CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_fullname` varchar(255) NOT NULL,
  `appointment_email` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `patient_comment` varchar(500) NOT NULL,
  `patient_doctor` varchar(255) NOT NULL,
  `appointment_created` datetime NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4;


INSERT INTO appointments VALUES
("144","Kian Naquines","sebiwe1370@sicmag.com","19","09060714266","New Israel Makilala North Cotabato","Cotabato","Male","I\'m going to visit the eco-tourism park in New Israel.","Dr. Kian Naquines","2021-09-09 13:24:35","2021-09-09","01:23","Approved"),
("145","Kenneth Naquines","sotat65518@shensufu.com","26","09060714266","New Israel Makilala North Cotabato","Cotabato","Male","Please fill up all the fields with the correct information to avoid.","Dr. Kian Naquines","2021-09-10 10:37:19","2021-09-11","00:36","Approved"),
("146","Kenneth Naquines","sotat65518@shensufu.com","26","09060714266","New Israel Makilala North Cotabato","Cotabato","Male","Please fill up all the fields with the correct information to avoid co","Dr. Kian Naquines","2021-09-10 10:49:08","2021-09-11","10:50","Approved"),
("147","Harry Doe","26um5rl4gp@coffeetimer24.com","19","09103630646","New Israel Makilala North Cotabato","Cotabato City","Male","Please fill up all the fields with the correct information to avoid co","Dr. Kian Naquines","2021-09-14 14:34:32","2021-09-15","07:34","Approved"),
("151","Naruto Uzumaki","tkfpsmdghoxffq@uniromax.com","19","09103630525","Konoha Land of Fire","Konoha","Male","Please fill up all the fields with the correct information to avoid co","Staff Kian Naquines","2021-09-18 18:23:59","2021-09-19","18:22","Pending");




CREATE TABLE `browser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `browser` varchar(255) NOT NULL,
  `no_user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


INSERT INTO browser VALUES
("1","Firefox","5"),
("2","Chrome","6");




CREATE TABLE `browser_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `browser` varchar(255) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `loggedin_date` varchar(255) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;


INSERT INTO browser_logs VALUES
("136","Firefox","Windows 8.1","Computer","::1","120","2021-09-09"),
("137","Firefox","Windows 8.1","Computer","::1","1","2021-09-09"),
("138","Chrome","Windows 8.1","Computer","::1","5","2021-09-09"),
("139","Firefox","Windows 8.1","Computer","::1","120","2021-09-09"),
("140","Chrome","Windows 8.1","Computer","::1","121","2021-09-10"),
("141","Chrome","Windows 8.1","Computer","::1","1","2021-09-10"),
("142","Firefox","Windows 8.1","Computer","::1","5","2021-09-10"),
("143","Chrome","Windows 8.1","Computer","::1","1","2021-09-10"),
("144","Firefox","Windows 8.1","Computer","::1","1","2021-09-10"),
("145","Chrome","Windows 8.1","Computer","::1","121","2021-09-10"),
("146","Android","Windows 8.1","Computer","::1","120","2021-09-10"),
("147","Chrome","Windows 8.1","Computer","::1","121","2021-09-10"),
("148","Android","Windows 8.1","Computer","::1","121","2021-09-10"),
("149","Chrome","Windows 8.1","Computer","::1","1","2021-09-10"),
("150","Chrome","Windows 8.1","Computer","::1","121","2021-09-10"),
("151","Chrome","Windows 8.1","Computer","::1","1","2021-09-10"),
("152","Chrome","Windows 8.1","Computer","::1","1","2021-09-14"),
("153","Chrome","Windows 8.1","Computer","::1","122","2021-09-14"),
("154","Android","Windows 8.1","Computer","::1","1","2021-09-14"),
("155","Chrome","Windows 8.1","Computer","::1","122","2021-09-14"),
("156","Chrome","Windows 8.1","Computer","::1","122","2021-09-18"),
("157","Android","Windows 8.1","Computer","::1","1","2021-09-18"),
("158","Chrome","Windows 8.1","Computer","::1","122","2021-09-18"),
("159","Chrome","Windows 8.1","Computer","::1","27","2021-09-18"),
("160","Chrome","Windows 8.1","Computer","::1","122","2021-09-18"),
("161","Chrome","Windows 8.1","Computer","::1","27","2021-09-18"),
("162","Chrome","Windows 8.1","Computer","::1","123","2021-09-18"),
("163","Chrome","Windows 8.1","Computer","::1","123","2021-09-18"),
("164","Chrome","Windows 8.1","Computer","::1","124","2021-09-18"),
("165","Chrome","Windows 8.1","Computer","::1","27","2021-09-18"),
("166","Chrome","Windows 8.1","Computer","::1","125","2021-09-18"),
("167","Chrome","Windows 8.1","Computer","::1","126","2021-09-18"),
("168","Chrome","Windows 8.1","Computer","::1","1","2021-09-18"),
("169","Chrome","Windows 8.1","Computer","::1","121","2021-09-18"),
("170","Chrome","Windows 8.1","Computer","::1","1","2021-09-18"),
("171","Chrome","Windows 8.1","Computer","::1","121","2021-09-18"),
("172","Chrome","Windows 8.1","Computer","::1","121","2021-09-18"),
("173","Chrome","Windows 8.1","Computer","::1","1","2021-09-18"),
("174","Chrome","Windows 8.1","Computer","::1","1","2021-09-18"),
("175","Chrome","Windows 8.1","Computer","::1","1","2021-09-18"),
("176","Chrome","Windows 8.1","Computer","::1","1","2021-09-20"),
("177","Chrome","Windows 8.1","Computer","::1","1","2021-09-20"),
("178","Chrome","Windows 8.1","Computer","::1","1","2021-09-20");




CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_firstname` varchar(255) NOT NULL,
  `client_lastname` varchar(255) NOT NULL,
  `client_email` varchar(255) NOT NULL,
  `client_password` varchar(255) NOT NULL,
  `client_gender` varchar(50) NOT NULL,
  `client_image` varchar(255) NOT NULL,
  `account_created` datetime NOT NULL,
  `role` int(2) NOT NULL,
  `verified` int(12) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4;


INSERT INTO client VALUES
("120","Kian","Naquines","sebiwe1370@sicmag.com","b22186e696085a0eeca8e8b254d71613","Male","images/3443556.png","2021-09-09 00:00:00","0","1"),
("121","Kenneth","Naquines","sotat65518@shensufu.com","41f4baf14231bf57eac9cdd3dce15656","Male","images/3443556.png","2021-09-10 00:00:00","0","1"),
("122","Harry","Doe","26um5rl4gp@coffeetimer24.com","41f4baf14231bf57eac9cdd3dce15656","Male","images/3443556.png","2021-09-14 00:00:00","0","1"),
("123","Kian Jearard","Naquines","fpwjddbduccf@uniromax.com","41f4baf14231bf57eac9cdd3dce15656","Male","images/default.png","2021-09-18 00:00:00","0","1"),
("124","Naruto","Uzumaki","tkfpsmdghoxffq@uniromax.com","8c5b67109ac5f74e4e1e804206a696da","Male","images/3443556.png","2021-09-18 00:00:00","0","1"),
("125","Professor","James","wljmjt@uniromax.com","41f4baf14231bf57eac9cdd3dce15656","Male","images/default.png","2021-09-18 00:00:00","0","1"),
("126","Herman","Lee","difyonomddtqk@uniromax.com","1d205d7a2aef8d97e998bc2677292ab7","Male","images/default.png","2021-09-18 00:00:00","0","1");




CREATE TABLE `client_profile` (
  `client_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(255) NOT NULL,
  `client_profile_address` varchar(255) NOT NULL,
  `client_profile_birthday` varchar(255) NOT NULL,
  `client_profile_phone` varchar(255) NOT NULL,
  PRIMARY KEY (`client_profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;


INSERT INTO client_profile VALUES
("19","120","New Israel Makilala North Cotabato","2002-09-09","09103630525"),
("20","121","New Israel Makilala North Cotabato","2021-09-10","09103630373"),
("21","122","New Israel Makilala North Cotabato","2002-08-10","09103630646"),
("22","124","Konoho Land of Fire","2021-09-18","09103730525");




CREATE TABLE `log_qr` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `time_in` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;


INSERT INTO log_qr VALUES
("52","456734273013","Harry Doe","New Israel Makilala North Cotabato","09103630646","2021-09-14 14:38:15","Arrived"),
("53","456734273013","Harry Doe","New Israel Makilala North Cotabato","09103630646","2021-09-18 15:21:56","Arrived");




CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `from` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message_date` varchar(255) NOT NULL,
  `seen` int(10) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;


INSERT INTO messages VALUES
("38","Naruto Uzumaki","Send your request, and report bugs about the system.","tkfpsmdghoxffq@uniromax.com","1","Contact Administrator","18:22:46","0");




CREATE TABLE `money_accumulated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;


INSERT INTO money_accumulated VALUES
("1","5900");




CREATE TABLE `money_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `amount_payed` varchar(255) NOT NULL,
  `id_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date_payed` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;


INSERT INTO money_report VALUES
("2","Harry Doe","100","456734273013","New Israel Makilala North Cotabato","09103630646","2021-09-18 19:51:58"),
("3","Harry Doe","100","456734273013","New Israel Makilala North Cotabato","09103630646","2021-09-18 19:53:39"),
("4","Harry Doe","100","456734273013","New Israel Makilala North Cotabato","09103630646","2021-09-18 19:54:17"),
("5","Harry Doe","100","456734273013","New Israel Makilala North Cotabato","09103630646","2021-09-18 19:54:44"),
("6","Kenneth Naquines","100","456734229117","New Israel Makilala North Cotabato","09103630373","2021-09-18 20:07:49"),
("7","Kenneth Naquines","100","456734229117","New Israel Makilala North Cotabato","09103630373","2021-09-18 20:09:57"),
("8","Kenneth Naquines","100","456734229117","New Israel Makilala North Cotabato","09103630373","2021-09-18 20:10:33");




CREATE TABLE `monthly_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_client` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;


INSERT INTO monthly_client VALUES
("1","16","Jan"),
("2","20","Feb"),
("4","34","Mar"),
("6","40","Apr"),
("8","20","May"),
("11","19","Jun"),
("12","67","Jul"),
("14","90","Aug"),
("16","70","Sep"),
("18","0","Oct"),
("20","0","Nov"),
("22","0","Dec");




CREATE TABLE `qrcodes` (
  `qr_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_no` varchar(255) NOT NULL,
  `qr_image` varchar(155) NOT NULL,
  `qr_user_id` varchar(155) NOT NULL,
  PRIMARY KEY (`qr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4;


INSERT INTO qrcodes VALUES
("120","456734333273","qr_images/1631165075_QRCODE_013bcd211ac14f77b351e07da229261c.png","120"),
("121","456734229117","qr_images/1631241439_QRCODE_7744027fe817fc80f38ac94a960098c5.png","121"),
("122","456734646062","qr_images/1631242148_QRCODE_c1e23e333a6339f2ea23a1284920d016.png","121"),
("123","456734273013","qr_images/1631601272_QRCODE_17c299c33b6dc74d4d07e94ed49e3c62.png","122"),
("124","456734411964","qr_images/1631950585_QRCODE_8f63cc779bd9d2e85e46b789ba939661.png","121"),
("125","456734248302","qr_images/1631950809_QRCODE_883cee9e63203806e2d2bd266075c680.png","121"),
("126","456734311900","qr_images/1631950932_QRCODE_1329c1c5b06ec706d07f697cd034e613.png","121"),
("127","456734639567","qr_images/1631960639_QRCODE_0ed2e64bcac0f0c08d45d36fd376b4b7.png","124");




CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_role_name` text NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


INSERT INTO user_role VALUES
("1","admin"),
("2","staff");


