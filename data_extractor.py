import re

# Blok teks dengan perintah insert into playlist
sql_text = """
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG37466', 'acettell1@salon.com', 'LBL31824', 'nonummy', 133, '2003-08-24');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG09121', 'epegrumh@e-recht24.de', 'LBL50417', 'erat fermentum', 199, '2020-04-08');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG28146', 'jlyptrade6@google.it', 'LBL84900', 'risus', 387, '2022-01-24');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG92539', 'wromanf@ihg.com', 'LBL97934', 'proin risus praesent', 421, '2010-01-06');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG28583', 'bmacgaughey9@wordpress.com', 'LBL64261', 'aliquet maecenas leo', 209, '2016-08-29');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG02891', 'lpaudind@abc.net.au', 'LBL79668', 'sollicitudin mi', 451, '2006-10-22');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG36115', 'acettell1@salon.com', 'LBL59117', 'nullam porttitor lacus', 534, '2005-11-02');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG54082', 'jlyptrade6@google.it', 'LBL58613', 'vestibulum velit', 489, '2011-01-22');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG87383', 'jlyptrade6@google.it', 'LBL71296', 'consequat morbi', 417, '2005-02-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG66681', 'acettell1@salon.com', 'LBL39760', 'augue vel', 222, '2023-02-11');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG94198', 'jlyptrade6@google.it', 'LBL23796', 'quis', 500, '2013-02-05');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG63620', 'lmerigonb@admin.ch', 'LBL81647', 'accumsan', 360, '2003-06-07');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG11591', 'acettell1@salon.com', 'LBL05957', 'commodo', 409, '2013-09-27');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG92779', 'wromanf@ihg.com', 'LBL53625', 'suspendisse ornare consequat', 486, '2001-02-01');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG66607', 'acettell1@salon.com', 'LBL35276', 'placerat', 110, '2017-10-01');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG84525', 'epegrumh@e-recht24.de', 'LBL14677', 'leo maecenas pulvinar', 240, '2022-03-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG47766', 'bmacgaughey9@wordpress.com', 'LBL75791', 'velit donec diam', 191, '2023-07-08');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG30250', 'nluffman0@theglobeandmail.com', 'LBL10105', 'vulputate', 452, '2018-07-07');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG00891', 'bmacgaughey9@wordpress.com', 'LBL70277', 'praesent blandit', 92, '2020-04-08');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG30202', 'jlyptrade6@google.it', 'LBL31883', 'molestie nibh', 599, '2016-10-07');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG24040', 'jlyptrade6@google.it', 'LBL28131', 'rutrum neque aenean', 522, '2022-09-27');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG66853', 'avaughng@dagondesign.com', 'LBL13126', 'leo', 528, '2006-09-03');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG09675', 'acettell1@salon.com', 'LBL08776', 'morbi', 79, '2002-03-04');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG04886', 'lpaudind@abc.net.au', 'LBL81602', 'quis turpis', 521, '2001-10-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG43588', 'lpaudind@abc.net.au', 'LBL63968', 'fermentum', 497, '2019-07-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG45689', 'wromanf@ihg.com', 'LBL01545', 'nec dui luctus', 464, '2012-09-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG76833', 'lpaudind@abc.net.au', 'LBL58768', 'ipsum', 461, '2018-03-30');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG73389', 'rcluettj@imageshack.us', 'LBL14044', 'eu massa', 217, '2019-11-12');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG54061', 'bmacgaughey9@wordpress.com', 'LBL40486', 'at turpis donec', 15, '2003-02-07');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG31111', 'lpaudind@abc.net.au', 'LBL55474', 'pede', 327, '2018-06-14');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG23463', 'lmerigonb@admin.ch', 'LBL37067', 'cum sociis natoque', 582, '2021-06-20');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG59693', 'wromanf@ihg.com', 'LBL58014', 'tortor id', 105, '2019-12-26');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG27716', 'lpaudind@abc.net.au', 'LBL42596', 'amet sapien', 240, '2004-02-06');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG63985', 'acettell1@salon.com', 'LBL41526', 'nam', 338, '2014-04-01');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG43799', 'rcluettj@imageshack.us', 'LBL02316', 'vulputate luctus cum', 530, '2004-11-15');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG11686', 'lmerigonb@admin.ch', 'LBL53973', 'maecenas rhoncus aliquam', 169, '2017-02-27');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG78565', 'avaughng@dagondesign.com', 'LBL24755', 'ante ipsum primis', 390, '2009-12-13');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG55736', 'lmerigonb@admin.ch', 'LBL91017', 'rhoncus sed vestibulum', 569, '2023-11-05');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG10287', 'lpaudind@abc.net.au', 'LBL84296', 'a libero', 333, '2015-06-28');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG56432', 'bmacgaughey9@wordpress.com', 'LBL73753', 'arcu adipiscing', 302, '2006-04-25');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG70783', 'acettell1@salon.com', 'LBL51499', 'turpis', 148, '2021-07-24');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG18838', 'rcluettj@imageshack.us', 'LBL07609', 'morbi', 379, '2011-01-11');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG33609', 'nluffman0@theglobeandmail.com', 'LBL55147', 'justo nec condimentum', 103, '2003-06-27');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG13197', 'lmerigonb@admin.ch', 'LBL59292', 'ultrices mattis odio', 109, '2009-03-16');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG31416', 'epegrumh@e-recht24.de', 'LBL04180', 'felis fusce posuere', 529, '2003-12-25');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG43131', 'nluffman0@theglobeandmail.com', 'LBL15577', 'diam vitae', 361, '2012-11-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG93148', 'jlyptrade6@google.it', 'LBL63419', 'porta volutpat', 54, '2004-08-29');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG46648', 'lpaudind@abc.net.au', 'LBL02384', 'et', 496, '2005-03-26');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG62530', 'wromanf@ihg.com', 'LBL19530', 'erat tortor', 279, '2011-01-04');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG99365', 'jlyptrade6@google.it', 'LBL92835', 'convallis duis', 501, '2016-03-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG55061', 'lpaudind@abc.net.au', 'LBL38975', 'in', 342, '2017-06-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG53017', 'acettell1@salon.com', 'LBL68010', 'commodo placerat praesent', 43, '2021-11-28');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG24271', 'wromanf@ihg.com', 'LBL98686', 'in hac', 328, '2019-08-04');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG04277', 'wromanf@ihg.com', 'LBL38105', 'nascetur ridiculus', 192, '2006-06-08');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG25505', 'wromanf@ihg.com', 'LBL78545', 'cubilia curae', 248, '2013-08-31');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG85255', 'epegrumh@e-recht24.de', 'LBL65047', 'nulla facilisi', 319, '2005-12-04');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG46262', 'acettell1@salon.com', 'LBL44229', 'pellentesque viverra pede', 294, '2005-07-12');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG76985', 'wromanf@ihg.com', 'LBL20873', 'amet', 579, '2007-10-11');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG67179', 'wromanf@ihg.com', 'LBL40901', 'nulla facilisi cras', 284, '2020-06-24');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG94915', 'nluffman0@theglobeandmail.com', 'LBL09875', 'aenean fermentum', 553, '2005-09-24');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG76924', 'jlyptrade6@google.it', 'LBL91083', 'sit', 29, '2010-11-12');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG44306', 'rcluettj@imageshack.us', 'LBL15521', 'tempus sit amet', 34, '2005-11-14');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG99950', 'bmacgaughey9@wordpress.com', 'LBL44974', 'amet sapien dignissim', 377, '2001-11-04');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG93594', 'lmerigonb@admin.ch', 'LBL34348', 'tincidunt', 96, '2016-06-13');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG04059', 'rcluettj@imageshack.us', 'LBL79964', 'varius nulla facilisi', 415, '2010-02-28');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG33169', 'rcluettj@imageshack.us', 'LBL07036', 'odio cras mi', 591, '2012-02-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG18044', 'rcluettj@imageshack.us', 'LBL05232', 'vitae', 476, '2011-06-30');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG74486', 'nluffman0@theglobeandmail.com', 'LBL79056', 'sapien', 114, '2020-08-26');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG55826', 'nluffman0@theglobeandmail.com', 'LBL81078', 'duis consequat', 121, '2004-02-12');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG31108', 'nluffman0@theglobeandmail.com', 'LBL75488', 'vivamus vestibulum sagittis', 25, '2007-12-14');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG43576', 'avaughng@dagondesign.com', 'LBL90637', 'ut erat id', 460, '2018-03-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG42416', 'epegrumh@e-recht24.de', 'LBL68688', 'integer tincidunt', 346, '2001-02-19');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG56662', 'jlyptrade6@google.it', 'LBL28837', 'pede morbi porttitor', 313, '2013-01-20');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG57419', 'lmerigonb@admin.ch', 'LBL61754', 'turpis eget elit', 283, '2007-08-21');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG25770', 'nluffman0@theglobeandmail.com', 'LBL16913', 'tortor id', 137, '2016-09-25');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG70463', 'nluffman0@theglobeandmail.com', 'LBL16484', 'tempus semper', 514, '2016-04-08');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG37007', 'epegrumh@e-recht24.de', 'LBL29508', 'mi integer', 265, '2012-11-16');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG46619', 'wromanf@ihg.com', 'LBL68696', 'tortor', 474, '2007-11-20');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG56851', 'avaughng@dagondesign.com', 'LBL35087', 'mus vivamus', 581, '2021-08-24');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG78850', 'wromanf@ihg.com', 'LBL55832', 'suspendisse ornare', 69, '2019-06-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG18108', 'lpaudind@abc.net.au', 'LBL20154', 'non', 113, '2023-11-13');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG69722', 'nluffman0@theglobeandmail.com', 'LBL75255', 'amet nunc', 279, '2002-09-11');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG79564', 'wromanf@ihg.com', 'LBL62328', 'ultrices aliquet maecenas', 198, '2001-06-27');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG25566', 'bmacgaughey9@wordpress.com', 'LBL92873', 'orci luctus', 441, '2004-07-26');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG13469', 'bmacgaughey9@wordpress.com', 'LBL49007', 'id', 74, '2022-02-28');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG23725', 'rcluettj@imageshack.us', 'LBL83222', 'dolor', 224, '2006-01-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG64130', 'acettell1@salon.com', 'LBL52496', 'volutpat erat', 13, '2006-08-02');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG21308', 'rcluettj@imageshack.us', 'LBL58003', 'nulla nisl nunc', 470, '2022-12-08');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG92628', 'rcluettj@imageshack.us', 'LBL74464', 'sit', 35, '2022-03-15');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG47862', 'acettell1@salon.com', 'LBL51524', 'faucibus', 43, '2002-04-15');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG13434', 'rcluettj@imageshack.us', 'LBL51448', 'morbi non lectus', 252, '2008-05-03');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG05651', 'bmacgaughey9@wordpress.com', 'LBL81606', 'pede', 210, '2014-11-12');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG11117', 'avaughng@dagondesign.com', 'LBL27645', 'quis odio consequat', 304, '2022-12-02');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG25320', 'lpaudind@abc.net.au', 'LBL23282', 'dictumst', 116, '2017-09-22');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG15400', 'rcluettj@imageshack.us', 'LBL36904', 'quam sapien', 459, '2013-04-23');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG59261', 'wromanf@ihg.com', 'LBL49442', 'sed', 90, '2017-10-23');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG97996', 'nluffman0@theglobeandmail.com', 'LBL18224', 'ut', 163, '2004-09-08');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG73467', 'acettell1@salon.com', 'LBL18428', 'tincidunt', 117, '2017-12-12');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG65166', 'epegrumh@e-recht24.de', 'LBL98452', 'etiam faucibus cursus', 439, '2018-09-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG14032', 'wromanf@ihg.com', 'LBL81874', 'in lectus pellentesque', 428, '2019-08-31');
"""

# Pola regex untuk mengekstrak nilai id_playlist
pattern = re.compile(r"'(.*?)', '.*?', '.*?'")

# Ekstrak id_playlist menggunakan regex
id_playlists = re.findall(pattern, sql_text)

# Gabungkan hasil dengan format yang diinginkan
formatted_result = ", ".join(id_playlists)

print("data:", formatted_result)
print(f'jumlah data: {len(id_playlists)}')

unique = set(id_playlists)
print("data unik:", len(unique))