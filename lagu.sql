create table lagu (
	id_lagu CHAR(8) PRIMARY KEY NOT NULL,
	email_artis VARCHAR(50),
	id_label VARCHAR(50),
	judul_konten VARCHAR(255),
	durasi INT,
	tanggal_rilis DATE,
	FOREIGN KEY (email_artis) REFERENCES appleid(email),
	FOREIGN KEY (id_label) REFERENCES label(id_label),
	CHECK (id_lagu REGEXP '^SNG[0-9]{5}$')
);

insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG37466', 'jlyptrade6@google.it', 'LBL88736', 'Body of War', 79, '2015-06-29');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG09121', 'acettell1@salon.com', 'LBL51202', 'Champagne for Caesar', 269, '2006-11-29');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG28146', 'bmacgaughey9@wordpress.com', 'LBL36151', 'Boys Life 4: Four Play', 12, '2011-04-13');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG92539', 'bmacgaughey9@wordpress.com', 'LBL48380', 'Herbie: Fully Loaded', 440, '2017-10-30');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG28583', 'wromanf@ihg.com', 'LBL83521', 'XIII: The Conspiracy', 19, '2008-11-06');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG02891', 'bmacgaughey9@wordpress.com', 'LBL57040', 'Ocho apellidos vascos', 167, '2005-09-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG36115', 'rcluettj@imageshack.us', 'LBL56156', 'Zorro, the Gay Blade', 340, '2005-09-17');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG54082', 'lmerigonb@admin.ch', 'LBL24065', 'Shot in the Dark, A', 236, '2023-11-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG87383', 'lpaudind@abc.net.au', 'LBL26441', 'Jazz Singer, The', 411, '2000-11-26');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG66681', 'nluffman0@theglobeandmail.com', 'LBL56085', 'Van, The', 402, '2012-02-23');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG94198', 'acettell1@salon.com', 'LBL36151', 'Broadway Idiot', 573, '2016-02-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG63620', 'lmerigonb@admin.ch', 'LBL57040', 'Star Is Born, A', 510, '2003-07-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG11591', 'epegrumh@e-recht24.de', 'LBL98019', 'Time of Roses (Ruusujen aika)', 595, '2002-07-15');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG92779', 'lpaudind@abc.net.au', 'LBL04529', 'Princess of Montpensier, The (La princesse de Montpensier)', 597, '2021-05-19');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG66607', 'epegrumh@e-recht24.de', 'LBL75389', 'Descendant of the Sun (Ri jie)', 36, '2008-06-07');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG84525', 'rcluettj@imageshack.us', 'LBL57040', 'Monster, The', 303, '2015-08-21');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG47766', 'nluffman0@theglobeandmail.com', 'LBL58495', 'Intact (Intacto)', 392, '2015-05-15');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG30250', 'jlyptrade6@google.it', 'LBL08916', 'School of Rock', 563, '2018-07-23');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG00891', 'avaughng@dagondesign.com', 'LBL24065', 'Madame Rosa (La vie devant soi)', 568, '2018-01-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG30202', 'lpaudind@abc.net.au', 'LBL48380', 'Jonah Who Will Be 25 in the Year 2000 (Jonas qui aura 25 ans en l''an 2000)', 412, '2007-10-17');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG24040', 'lmerigonb@admin.ch', 'LBL58495', 'Line of Sight', 394, '2015-10-08');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG66853', 'rcluettj@imageshack.us', 'LBL06402', 'Light the Fuse... Sartana Is Coming', 270, '2007-12-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG09675', 'epegrumh@e-recht24.de', 'LBL58495', 'Guilty as Sin', 49, '2018-05-29');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG04886', 'bmacgaughey9@wordpress.com', 'LBL56085', 'Tree of Life, The', 255, '2006-09-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG43588', 'bmacgaughey9@wordpress.com', 'LBL24065', 'Bound', 191, '2001-12-02');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG45689', 'jlyptrade6@google.it', 'LBL26441', 'Hell Night', 569, '2019-12-03');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG76833', 'bmacgaughey9@wordpress.com', 'LBL23123', 'Diebuster "Top wo Narae 2"', 344, '2009-12-01');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG73389', 'avaughng@dagondesign.com', 'LBL48380', 'Road, The', 506, '2014-12-12');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG54061', 'bmacgaughey9@wordpress.com', 'LBL26441', 'Freaky Friday', 296, '2008-07-06');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG31111', 'rcluettj@imageshack.us', 'LBL92927', 'Mr. Deeds Goes to Town', 167, '2018-10-05');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG23463', 'lpaudind@abc.net.au', 'LBL83521', 'Raising Helen', 161, '2021-07-08');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG59693', 'epegrumh@e-recht24.de', 'LBL98019', 'Mike Birbiglia: What I Should Have Said Was Nothing', 509, '2016-09-21');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG27716', 'bmacgaughey9@wordpress.com', 'LBL08834', 'Stray Dog (Nora inu)', 395, '2023-04-25');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG63985', 'lpaudind@abc.net.au', 'LBL48380', 'Across the Bridge', 55, '2009-10-28');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG43799', 'jlyptrade6@google.it', 'LBL56085', 'Best of Ernie and Bert, The', 50, '2010-06-03');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG11686', 'lpaudind@abc.net.au', 'LBL58495', 'Ring, The', 354, '2022-02-05');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG78565', 'acettell1@salon.com', 'LBL08834', 'Watership Down', 364, '2002-06-16');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG55736', 'epegrumh@e-recht24.de', 'LBL58495', 'Bush''s Brain', 217, '2009-08-14');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG10287', 'bmacgaughey9@wordpress.com', 'LBL56085', 'What Price Hollywood?', 329, '2023-01-30');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG56432', 'lpaudind@abc.net.au', 'LBL36151', 'Remorques (Stormy Waters)', 590, '2016-03-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG70783', 'wromanf@ihg.com', 'LBL08916', 'Brother Bear 2', 288, '2008-09-19');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG18838', 'nluffman0@theglobeandmail.com', 'LBL26441', 'End of the World', 279, '2021-04-07');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG33609', 'avaughng@dagondesign.com', 'LBL57040', 'Begotten', 215, '2010-10-30');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG13197', 'epegrumh@e-recht24.de', 'LBL04529', 'Grocer''s Son, The (Fils de l''épicier, Le)', 466, '2016-07-07');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG31416', 'lpaudind@abc.net.au', 'LBL08916', 'Liar''s Dice', 274, '2020-03-01');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG43131', 'jlyptrade6@google.it', 'LBL04529', 'Ossessione', 575, '2023-06-13');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG93148', 'nluffman0@theglobeandmail.com', 'LBL58495', 'Franz Kafka''s a Country Doctor', 573, '2007-07-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG46648', 'nluffman0@theglobeandmail.com', 'LBL98019', 'Dog of Flanders, A', 296, '2001-10-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG62530', 'jlyptrade6@google.it', 'LBL83521', 'Late George Apley, The', 406, '2016-02-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG99365', 'wromanf@ihg.com', 'LBL83521', 'Onibi: The Fire Within', 37, '2003-09-28');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG55061', 'jlyptrade6@google.it', 'LBL26441', 'Death of a Salesman', 437, '2023-11-30');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG53017', 'nluffman0@theglobeandmail.com', 'LBL56085', 'Super, The', 458, '2012-01-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG24271', 'avaughng@dagondesign.com', 'LBL88736', 'Whole Wide World, The', 494, '2018-04-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG04277', 'lpaudind@abc.net.au', 'LBL56156', 'Thin Man Goes Home, The', 134, '2001-03-14');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG25505', 'nluffman0@theglobeandmail.com', 'LBL51202', 'Commander Hamilton (Hamilton)', 233, '2006-02-02');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG85255', 'avaughng@dagondesign.com', 'LBL56156', 'Vampire Lovers, The', 323, '2000-08-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG46262', 'acettell1@salon.com', 'LBL36151', 'Manson', 110, '2013-11-15');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG76985', 'rcluettj@imageshack.us', 'LBL56085', 'Unfaithfully Yours', 446, '2012-09-27');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG67179', 'lpaudind@abc.net.au', 'LBL75389', 'Heavy', 325, '2015-06-28');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG94915', 'rcluettj@imageshack.us', 'LBL23123', 'Block-Heads', 28, '2002-01-26');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG76924', 'acettell1@salon.com', 'LBL28845', 'Macario', 233, '2011-11-22');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG44306', 'epegrumh@e-recht24.de', 'LBL57040', 'Battlestar Galactica: Blood & Chrome', 535, '2002-09-29');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG99950', 'acettell1@salon.com', 'LBL51202', 'Haunted, The', 232, '2014-05-27');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG93594', 'wromanf@ihg.com', 'LBL04529', 'Strawberry Statement, The', 246, '2000-06-26');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG04059', 'bmacgaughey9@wordpress.com', 'LBL06402', 'Seventh Heaven (Septième ciel, Le)', 268, '2004-03-22');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG33169', 'jlyptrade6@google.it', 'LBL56085', 'Rurouni Kenshin (Rurôni Kenshin: Meiji kenkaku roman tan)', 53, '2002-12-26');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG18044', 'rcluettj@imageshack.us', 'LBL06402', 'Zizek!', 269, '2010-09-21');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG74486', 'acettell1@salon.com', 'LBL48380', 'Stromberg - Der Film', 548, '2019-04-30');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG55826', 'lmerigonb@admin.ch', 'LBL98019', 'The Dust Bowl', 391, '2012-04-21');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG31108', 'acettell1@salon.com', 'LBL06402', 'Killing Me Softly', 179, '2004-06-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG43576', 'jlyptrade6@google.it', 'LBL83521', 'Juarez', 21, '2007-05-06');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG42416', 'rcluettj@imageshack.us', 'LBL57040', 'Fade to Black', 120, '2014-11-30');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG56662', 'nluffman0@theglobeandmail.com', 'LBL58495', 'Tyler Perry''s The Single Moms Club', 447, '2009-12-03');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG57419', 'lpaudind@abc.net.au', 'LBL56085', 'Smoking/No Smoking', 172, '2022-08-21');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG25770', 'acettell1@salon.com', 'LBL56156', 'Nicholas and Alexandra', 86, '2015-11-11');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG70463', 'nluffman0@theglobeandmail.com', 'LBL08916', 'I Am David', 465, '2014-04-01');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG37007', 'lmerigonb@admin.ch', 'LBL58495', 'Year Zero: The Silent Death of Cambodia', 568, '2008-07-23');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG46619', 'bmacgaughey9@wordpress.com', 'LBL51202', 'Frownland', 184, '2007-04-09');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG56851', 'acettell1@salon.com', 'LBL26441', 'Joy Ride 2: Dead Ahead', 522, '2007-03-15');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG78850', 'nluffman0@theglobeandmail.com', 'LBL08916', 'Ultraviolet', 584, '2007-02-20');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG18108', 'acettell1@salon.com', 'LBL08916', 'You''re Missing the Point', 320, '2017-08-04');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG69722', 'nluffman0@theglobeandmail.com', 'LBL08834', 'Madadayo (a.k.a. Not Yet)', 62, '2011-01-15');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG79564', 'epegrumh@e-recht24.de', 'LBL98019', 'Sonny Boy', 577, '2010-09-29');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG25566', 'rcluettj@imageshack.us', 'LBL23123', 'Two Men Went to War', 308, '2022-04-23');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG13469', 'avaughng@dagondesign.com', 'LBL24065', 'First Love (Primo Amore)', 326, '2010-10-24');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG23725', 'wromanf@ihg.com', 'LBL36151', 'Smoking/No Smoking', 586, '2005-09-11');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG64130', 'jlyptrade6@google.it', 'LBL24065', 'Fearless Hyena II (Long teng hu yue)', 458, '2000-06-20');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG21308', 'lpaudind@abc.net.au', 'LBL75389', 'Stevie', 296, '2002-05-22');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG92628', 'lpaudind@abc.net.au', 'LBL24065', 'Chaos', 177, '2003-05-22');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG47862', 'acettell1@salon.com', 'LBL48380', 'Raid', 301, '2015-04-06');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG13434', 'acettell1@salon.com', 'LBL83521', 'Devil', 18, '2007-09-10');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG05651', 'jlyptrade6@google.it', 'LBL04529', 'First Love (Primo Amore)', 525, '2012-09-22');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG11117', 'nluffman0@theglobeandmail.com', 'LBL26441', 'And Along Come Tourists (Am Ende kommen Touristen)', 57, '2005-06-07');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG25320', 'bmacgaughey9@wordpress.com', 'LBL26441', 'Beyond the Law (Beyond the Law - Blue)', 471, '2007-12-01');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG15400', 'acettell1@salon.com', 'LBL26441', 'Alice in Murderland', 405, '2020-04-20');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG59261', 'lpaudind@abc.net.au', 'LBL48380', 'Shock', 597, '2012-07-20');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG97996', 'rcluettj@imageshack.us', 'LBL75389', 'Hellzapoppin''', 581, '2016-05-04');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG73467', 'bmacgaughey9@wordpress.com', 'LBL57040', 'Seven Thieves', 388, '2003-03-27');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG65166', 'avaughng@dagondesign.com', 'LBL48380', 'Crazy Stone (Fengkuang de shitou)', 181, '2018-05-18');
insert into lagu (id_lagu, email_artis, id_label, judul_konten, durasi, tanggal_rilis) values ('SNG14032', 'acettell1@salon.com', 'LBL56156', 'Enfer, L''', 393, '2000-01-22');
