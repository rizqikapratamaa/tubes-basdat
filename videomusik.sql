create table videomusik (
	id_video_musik VARCHAR(50) PRIMARY KEY,
	id_lagu VARCHAR(50),
	email_artis VARCHAR(50),
	id_label VARCHAR(50),
	judul_konten TEXT,
	durasi INT,
	tanggal_rilis DATE,
	CHECK (id_video_musik REGEXP '^MV[0-9]{6}$')
);

-- Add constrain foreign key
ALTER TABLE videomusik
ADD CONSTRAINT fk_id_lagu_mv FOREIGN KEY (id_lagu) REFERENCES lagu(id_lagu);

ALTER TABLE videomusik
ADD CONSTRAINT fk_id_label_mv FOREIGN KEY (id_label) REFERENCES label(id_label);

DELIMITER //

CREATE TRIGGER validate_email_lagu
BEFORE INSERT ON videomusik
FOR EACH ROW
BEGIN
    DECLARE valid_email VARCHAR(255);
    DECLARE valid_id_lagu VARCHAR(255);

    -- Ensure the email_artis in videomusik exists in the appleid table
    SELECT email INTO valid_email 
    FROM appleid 
    WHERE email = NEW.email_artis;

    IF valid_email IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The provided email_artis does not exist in appleid.';
    END IF;

    -- Ensure the id_lagu exists in the lagu table and matches with the provided email_artis
    SELECT id_lagu INTO valid_id_lagu 
    FROM lagu 
    WHERE id_lagu = NEW.id_lagu AND email_artis = NEW.email_artis;

    IF valid_id_lagu IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The provided id_lagu does not match with the email_artis in lagu.';
    END IF;
END //

DELIMITER ;


insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV592398', 'SNG09121', 'LBL08916', 'acettell1@salon.com', 'Out of the Past', 366, '2006-08-15');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV930256', 'SNG13434', 'LBL92927', 'acettell1@salon.com', 'Wake Wood ', 503, '2020-04-23');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV536724', 'SNG14032', 'LBL08916', 'acettell1@salon.com', 'Sugar & Spice', 462, '2011-05-24');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV107152', 'SNG15400', 'LBL48380', 'acettell1@salon.com', 'Moonfleet', 25, '2008-01-23');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV529855', 'SNG18108', 'LBL88736', 'acettell1@salon.com', 'No Way to Treat a Lady', 100, '2018-09-30');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV822603', 'SNG25770', 'LBL28845', 'acettell1@salon.com', 'Razorback', 342, '2007-12-16');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV709485', 'SNG31108', 'LBL88736', 'acettell1@salon.com', 'Arn: The Kingdom at Road''s End (Arn: Riket vid vägens slut)', 138, '2013-12-30');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV690657', 'SNG46262', 'LBL08916', 'acettell1@salon.com', 'Circle of Eight', 35, '2015-03-02');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV932360', 'SNG47862', 'LBL57040', 'acettell1@salon.com', 'Dark Mirror', 574, '2013-05-02');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV481305', 'SNG56851', 'LBL75389', 'acettell1@salon.com', 'She''s Having a Baby', 433, '2007-09-11');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV660437', 'SNG74486', 'LBL51202', 'acettell1@salon.com', 'Sambizanga', 214, '2003-02-03');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV927940', 'SNG76924', 'LBL04529', 'acettell1@salon.com', 'Looking for Comedy in the Muslim World', 285, '2008-05-26');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV664355', 'SNG78565', 'LBL08916', 'acettell1@salon.com', 'Tango', 444, '2013-07-15');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV951050', 'SNG94198', 'LBL04529', 'acettell1@salon.com', 'Slumdog Millionaire', 499, '2009-10-25');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV568563', 'SNG99950', 'LBL56085', 'acettell1@salon.com', 'Goofy Movies Number One', 411, '2007-08-24');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV180143', 'SNG00891', 'LBL56085', 'avaughng@dagondesign.com', 'Port of Call (Hamnstad)', 563, '2009-08-30');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV950128', 'SNG13469', 'LBL06402', 'avaughng@dagondesign.com', 'Jesus'' Son', 294, '2009-05-14');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV434798', 'SNG24271', 'LBL36151', 'avaughng@dagondesign.com', 'Godzilla vs. Mechagodzilla II (Gojira VS Mekagojira)', 510, '2003-07-25');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV644597', 'SNG33609', 'LBL98019', 'avaughng@dagondesign.com', 'Kevin Hart: I''m a Grown Little Man', 372, '2016-02-22');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV028480', 'SNG65166', 'LBL23123', 'avaughng@dagondesign.com', 'Man on a Mission: Richard Garriott''s Road to the Stars', 320, '2014-09-16');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV970266', 'SNG73389', 'LBL98019', 'avaughng@dagondesign.com', 'Clap, You''re Dead', 280, '2012-12-16');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV169478', 'SNG85255', 'LBL92927', 'avaughng@dagondesign.com', 'Last Vegas', 341, '2001-09-14');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV617320', 'SNG02891', 'LBL92927', 'bmacgaughey9@wordpress.com', 'Confessions of a Driving Instructor', 328, '2017-04-08');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV031303', 'SNG04059', 'LBL04529', 'bmacgaughey9@wordpress.com', 'We Don''t Live Here Anymore', 489, '2007-06-14');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV146449', 'SNG04886', 'LBL98019', 'bmacgaughey9@wordpress.com', 'Outland', 271, '2014-11-07');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV342183', 'SNG10287', 'LBL36151', 'bmacgaughey9@wordpress.com', 'Who Am I (Kein System Ist Sicher)', 314, '2014-04-06');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV971057', 'SNG25320', 'LBL98019', 'bmacgaughey9@wordpress.com', 'Beer for My Horses', 317, '2011-09-25');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV517884', 'SNG27716', 'LBL04529', 'bmacgaughey9@wordpress.com', 'Babysitters, The', 149, '2003-06-01');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV489578', 'SNG28146', 'LBL36151', 'bmacgaughey9@wordpress.com', 'Edward, My Son', 82, '2014-10-12');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV062933', 'SNG43588', 'LBL57040', 'bmacgaughey9@wordpress.com', 'Fury', 335, '2004-03-06');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV005924', 'SNG46619', 'LBL88736', 'bmacgaughey9@wordpress.com', 'Hills Have Eyes Part II, The', 323, '2011-04-04');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV140644', 'SNG54061', 'LBL08916', 'bmacgaughey9@wordpress.com', 'Frogmen, The', 417, '2008-07-28');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV016866', 'SNG73467', 'LBL08834', 'bmacgaughey9@wordpress.com', 'Killers, The', 197, '2010-03-25');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV712491', 'SNG76833', 'LBL88736', 'bmacgaughey9@wordpress.com', 'Code Name Coq Rouge', 100, '2002-02-18');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV000459', 'SNG92539', 'LBL75389', 'bmacgaughey9@wordpress.com', 'Love Wrecked', 405, '2011-02-12');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV799809', 'SNG09675', 'LBL98019', 'epegrumh@e-recht24.de', 'Punisher: War Zone', 330, '2002-02-27');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV305883', 'SNG11591', 'LBL56156', 'epegrumh@e-recht24.de', 'Amira & Sam', 40, '2016-08-23');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV375324', 'SNG13197', 'LBL58495', 'epegrumh@e-recht24.de', 'The Testimony', 441, '2021-03-18');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV815803', 'SNG44306', 'LBL56156', 'epegrumh@e-recht24.de', 'Million Dollar Mystery', 325, '2011-07-07');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV787232', 'SNG55736', 'LBL57040', 'epegrumh@e-recht24.de', 'Tough Guise: Violence, Media & the Crisis in Masculinity', 411, '2010-01-16');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV742980', 'SNG59693', 'LBL56156', 'epegrumh@e-recht24.de', 'White Fang (Zanna Bianca)', 558, '2019-09-22');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV336562', 'SNG66607', 'LBL48380', 'epegrumh@e-recht24.de', 'Springtime in a Small Town (Xiao cheng zhi chun)', 115, '2007-05-01');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV460925', 'SNG79564', 'LBL51202', 'epegrumh@e-recht24.de', 'Young Aphrodites (Mikres Afrodites)', 488, '2012-12-30');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV724556', 'SNG05651', 'LBL51202', 'jlyptrade6@google.it', 'Chicago', 569, '2006-11-14');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV543488', 'SNG30250', 'LBL48380', 'jlyptrade6@google.it', 'Musikanten', 399, '2020-04-03');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV830721', 'SNG33169', 'LBL06402', 'jlyptrade6@google.it', 'Brushfires', 213, '2004-09-04');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV215305', 'SNG37466', 'LBL98019', 'jlyptrade6@google.it', 'Winnetou: The Red Gentleman', 508, '2010-04-23');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV825449', 'SNG43131', 'LBL88736', 'jlyptrade6@google.it', 'Making ''The New World''', 598, '2022-12-28');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV976606', 'SNG43576', 'LBL83521', 'jlyptrade6@google.it', 'Slim Carter', 182, '2017-11-02');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV158045', 'SNG43799', 'LBL06402', 'jlyptrade6@google.it', 'Blueberry', 424, '2017-05-21');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV019106', 'SNG45689', 'LBL75389', 'jlyptrade6@google.it', 'Bleach: Fade to Black (Bur&#299;chi Fade to Black Kimi no Na o Yobu)', 475, '2019-08-19');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV556105', 'SNG55061', 'LBL26441', 'jlyptrade6@google.it', 'Adrift in Tokyo (Tenten)', 414, '2001-08-22');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV527354', 'SNG62530', 'LBL57040', 'jlyptrade6@google.it', 'Chameleon, The ', 566, '2013-06-20');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV096768', 'SNG64130', 'LBL24065', 'jlyptrade6@google.it', 'Bandit Queen', 81, '2014-04-05');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV903535', 'SNG24040', 'LBL06402', 'lmerigonb@admin.ch', 'Parallels', 55, '2019-06-30');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV532189', 'SNG37007', 'LBL06402', 'lmerigonb@admin.ch', 'Aviator, The', 548, '2010-06-10');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV881399', 'SNG54082', 'LBL06402', 'lmerigonb@admin.ch', 'Codependent Lesbian Space Alien Seeks Same', 575, '2016-10-26');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV002329', 'SNG55826', 'LBL56085', 'lmerigonb@admin.ch', 'Clean Slate', 144, '2018-11-11');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV426225', 'SNG63620', 'LBL24065', 'lmerigonb@admin.ch', 'Before the Revolution (Prima della rivoluzione)', 416, '2003-06-10');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV811677', 'SNG04277', 'LBL88736', 'lpaudind@abc.net.au', 'Supergirl', 193, '2019-05-12');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV597127', 'SNG11686', 'LBL08834', 'lpaudind@abc.net.au', 'Screamers', 266, '2005-02-26');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV502957', 'SNG21308', 'LBL98019', 'lpaudind@abc.net.au', '40 Pounds of Trouble', 512, '2013-06-12');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV921756', 'SNG23463', 'LBL24065', 'lpaudind@abc.net.au', 'Moine, Le (Monk, The)', 546, '2009-06-11');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV678584', 'SNG30202', 'LBL08834', 'lpaudind@abc.net.au', 'East-West (Est-ouest)', 415, '2002-01-06');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV346862', 'SNG31416', 'LBL28845', 'lpaudind@abc.net.au', 'Doctor Bull', 599, '2017-01-26');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV506306', 'SNG56432', 'LBL36151', 'lpaudind@abc.net.au', 'Other Son, The (Fils de l''autre, Le)', 302, '2005-10-14');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV152256', 'SNG57419', 'LBL08916', 'lpaudind@abc.net.au', 'Greatest, The', 469, '2004-02-18');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV367812', 'SNG59261', 'LBL92927', 'lpaudind@abc.net.au', 'Shallow Grave', 249, '2009-04-04');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV228865', 'SNG63985', 'LBL92927', 'lpaudind@abc.net.au', 'And the Band Played On', 117, '2016-10-04');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV010347', 'SNG67179', 'LBL24065', 'lpaudind@abc.net.au', 'Meet the Spartans', 203, '2015-07-07');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV213089', 'SNG87383', 'LBL28845', 'lpaudind@abc.net.au', 'Invincible Iron Man, The', 400, '2003-03-09');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV293860', 'SNG92628', 'LBL58495', 'lpaudind@abc.net.au', 'Caveman', 451, '2013-07-11');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV731028', 'SNG92779', 'LBL04529', 'lpaudind@abc.net.au', 'Thunderbolt and Lightfoot', 298, '2017-01-20');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV218890', 'SNG11117', 'LBL83521', 'nluffman0@theglobeandmail.com', 'Golden Coach, The (Le carrosse d''or)', 474, '2001-06-19');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV675222', 'SNG18838', 'LBL08834', 'nluffman0@theglobeandmail.com', 'Mrs. Soffel', 322, '2000-06-24');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV182102', 'SNG25505', 'LBL58495', 'nluffman0@theglobeandmail.com', 'Sleeping Dogs Lie (a.k.a. Stay)', 111, '2014-12-17');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV586809', 'SNG46648', 'LBL56085', 'nluffman0@theglobeandmail.com', 'Enforcer, The', 303, '2020-07-02');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV254563', 'SNG47766', 'LBL98019', 'nluffman0@theglobeandmail.com', 'The Time of Their Lives', 286, '2015-07-20');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV698032', 'SNG53017', 'LBL56085', 'nluffman0@theglobeandmail.com', 'Rashomon (Rashômon)', 584, '2006-07-15');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV930363', 'SNG56662', 'LBL51202', 'nluffman0@theglobeandmail.com', 'Belle toujours', 500, '2021-02-03');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV486330', 'SNG66681', 'LBL08834', 'nluffman0@theglobeandmail.com', 'Duel in the Sun', 598, '2001-09-14');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV125885', 'SNG69722', 'LBL88736', 'nluffman0@theglobeandmail.com', 'G-Force', 329, '2003-12-07');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV189632', 'SNG70463', 'LBL92927', 'nluffman0@theglobeandmail.com', 'Kings Row', 27, '2019-12-16');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV759361', 'SNG78850', 'LBL83521', 'nluffman0@theglobeandmail.com', 'Pokémon the Movie: White - Victini and Zekrom', 148, '2023-04-17');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV864082', 'SNG93148', 'LBL24065', 'nluffman0@theglobeandmail.com', 'Reality Bites', 206, '2007-03-27');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV702760', 'SNG18044', 'LBL04529', 'rcluettj@imageshack.us', 'Portrait of Maria (María Candelaria (Xochimilco))', 476, '2009-04-16');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV906970', 'SNG25566', 'LBL56156', 'rcluettj@imageshack.us', 'Much Ado About Nothing', 355, '2018-06-12');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV251538', 'SNG31111', 'LBL23123', 'rcluettj@imageshack.us', 'Everybody Dies But Me', 423, '2006-02-05');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV352775', 'SNG36115', 'LBL56085', 'rcluettj@imageshack.us', 'Other F Word, The', 270, '2009-10-20');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV143109', 'SNG42416', 'LBL83521', 'rcluettj@imageshack.us', 'Bridge, The (Die Brücke)', 101, '2014-06-04');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV215455', 'SNG66853', 'LBL08834', 'rcluettj@imageshack.us', 'Assault on Precinct 13', 338, '2008-10-04');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV624659', 'SNG76985', 'LBL92927', 'rcluettj@imageshack.us', 'Ironclads', 94, '2002-06-26');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV334544', 'SNG84525', 'LBL83521', 'rcluettj@imageshack.us', 'Clockwork Orange, A', 408, '2000-07-09');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV991468', 'SNG94915', 'LBL75389', 'rcluettj@imageshack.us', '3 Penny Opera, The (Threepenny Opera, The) (3 Groschen-Oper, Die)', 460, '2020-06-14');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV341373', 'SNG97996', 'LBL06402', 'rcluettj@imageshack.us', 'Chronos', 272, '2020-10-30');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV412362', 'SNG23725', 'LBL92927', 'wromanf@ihg.com', 'Meet Me in St. Louis', 341, '2022-06-14');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV827504', 'SNG28583', 'LBL58495', 'wromanf@ihg.com', 'Cavalcade', 449, '2009-08-05');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV089300', 'SNG70783', 'LBL56085', 'wromanf@ihg.com', 'A Walk in the Old City of Warsaw', 545, '2019-08-08');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV544224', 'SNG93594', 'LBL75389', 'wromanf@ihg.com', 'RoboGeisha (Robo-geisha)', 182, '2017-10-19');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV934480', 'SNG99365', 'LBL23123', 'wromanf@ihg.com', 'Good Guy, The', 330, '2022-02-07');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV624390', 'SNG09121', 'LBL48380', 'acettell1@salon.com', 'Funny People', 225, '2017-10-27');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV611860', 'SNG13434', 'LBL92927', 'acettell1@salon.com', 'Destricted', 587, '2014-07-26');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV786393', 'SNG14032', 'LBL57040', 'acettell1@salon.com', 'Acacias, Las', 191, '2022-06-28');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV526575', 'SNG15400', 'LBL98019', 'acettell1@salon.com', 'Wolfman, The', 318, '2010-04-23');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV955438', 'SNG18108', 'LBL57040', 'acettell1@salon.com', 'Children of Invention', 394, '2018-09-24');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV966865', 'SNG25770', 'LBL36151', 'acettell1@salon.com', 'Lovers, The (Les Amants)', 215, '2021-06-22');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV273013', 'SNG31108', 'LBL08916', 'acettell1@salon.com', 'Toronto Stories', 372, '2013-01-16');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV884343', 'SNG46262', 'LBL28845', 'acettell1@salon.com', 'Female Trouble', 244, '2015-09-28');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV976762', 'SNG47862', 'LBL06402', 'acettell1@salon.com', 'Big, Large and Verdone', 590, '2001-05-02');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV742351', 'SNG56851', 'LBL88736', 'acettell1@salon.com', 'Look at Me (Comme une image)', 456, '2019-12-14');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV601062', 'SNG74486', 'LBL28845', 'acettell1@salon.com', 'Pretty Maids All in a Row', 591, '2001-03-03');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV864353', 'SNG76924', 'LBL23123', 'acettell1@salon.com', '102 Dalmatians', 452, '2006-11-24');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV107833', 'SNG78565', 'LBL56156', 'acettell1@salon.com', 'Mysterious X, The (Sealed Orders) (Det hemmelighedsfulde X)', 239, '2012-03-22');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV404420', 'SNG94198', 'LBL57040', 'acettell1@salon.com', 'Foreign Student', 324, '2005-08-15');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV080257', 'SNG99950', 'LBL56156', 'acettell1@salon.com', 'We''re Not Married!', 77, '2012-10-04');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV869156', 'SNG00891', 'LBL23123', 'avaughng@dagondesign.com', 'Stand-In', 246, '2006-09-27');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV145024', 'SNG13469', 'LBL24065', 'avaughng@dagondesign.com', 'Rugrats Go Wild!', 89, '2016-04-05');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV146173', 'SNG24271', 'LBL24065', 'avaughng@dagondesign.com', 'Halloweentown', 571, '2001-06-19');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV646596', 'SNG33609', 'LBL56156', 'avaughng@dagondesign.com', 'Wind Chill', 304, '2006-01-18');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV352197', 'SNG65166', 'LBL88736', 'avaughng@dagondesign.com', 'Macbeth', 131, '2015-09-08');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV065083', 'SNG73389', 'LBL08916', 'avaughng@dagondesign.com', 'Abraham''s Valley (Vale Abraão)', 550, '2022-03-26');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV264734', 'SNG85255', 'LBL24065', 'avaughng@dagondesign.com', 'America the Beautiful 2: The Thin Commandments ', 405, '2002-03-05');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV792461', 'SNG02891', 'LBL28845', 'bmacgaughey9@wordpress.com', '101 Dalmatians', 462, '2007-06-05');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV412814', 'SNG04059', 'LBL56156', 'bmacgaughey9@wordpress.com', 'Godzilla 2000 (Gojira ni-sen mireniamu)', 82, '2009-08-30');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV652718', 'SNG04886', 'LBL56085', 'bmacgaughey9@wordpress.com', 'Stolen Collection, (Skradziona kolekcja)', 78, '2014-10-21');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV785343', 'SNG10287', 'LBL83521', 'bmacgaughey9@wordpress.com', 'Guns of Fort Petticoat, The', 143, '2015-10-02');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV505449', 'SNG25320', 'LBL36151', 'bmacgaughey9@wordpress.com', 'Good Men, Good Women (Hao nan hao nu)', 136, '2009-07-16');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV392573', 'SNG27716', 'LBL58495', 'bmacgaughey9@wordpress.com', 'Bicycle Thieves (a.k.a. The Bicycle Thief) (a.k.a. The Bicycle Thieves) (Ladri di biciclette)', 70, '2021-07-18');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV128217', 'SNG28146', 'LBL92927', 'bmacgaughey9@wordpress.com', 'Me & Isaac Newton', 76, '2015-08-19');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV478354', 'SNG43588', 'LBL83521', 'bmacgaughey9@wordpress.com', 'Fatal Instinct', 336, '2012-09-01');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV308420', 'SNG46619', 'LBL08916', 'bmacgaughey9@wordpress.com', 'Bedtime Stories', 30, '2017-11-03');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV465757', 'SNG54061', 'LBL08834', 'bmacgaughey9@wordpress.com', 'Soupe aux Choux, La', 304, '2011-01-23');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV075052', 'SNG73467', 'LBL04529', 'bmacgaughey9@wordpress.com', 'Fright Night', 92, '2006-06-11');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV139903', 'SNG76833', 'LBL98019', 'bmacgaughey9@wordpress.com', 'Jauja', 577, '2020-08-16');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV460349', 'SNG92539', 'LBL88736', 'bmacgaughey9@wordpress.com', 'Caveman''s Valentine, The', 596, '2019-03-08');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV242067', 'SNG09675', 'LBL75389', 'epegrumh@e-recht24.de', 'Madhouse', 22, '2011-07-26');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV632674', 'SNG11591', 'LBL36151', 'epegrumh@e-recht24.de', 'March of the Penguins (Marche de l''empereur, La)', 384, '2014-05-25');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV893577', 'SNG13197', 'LBL88736', 'epegrumh@e-recht24.de', 'Hellfighters', 381, '2011-08-09');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV394087', 'SNG44306', 'LBL51202', 'epegrumh@e-recht24.de', 'O.C. and Stiggs', 586, '2021-10-27');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV220004', 'SNG55736', 'LBL98019', 'epegrumh@e-recht24.de', 'Pokémon Origins', 576, '2011-01-07');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV247099', 'SNG59693', 'LBL06402', 'epegrumh@e-recht24.de', 'L.I.E.', 571, '2018-01-02');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV465521', 'SNG66607', 'LBL88736', 'epegrumh@e-recht24.de', 'Mourning Forest, The (Mogari no mori)', 101, '2007-03-11');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV136460', 'SNG79564', 'LBL26441', 'epegrumh@e-recht24.de', 'My Childhood', 136, '2010-07-31');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV750705', 'SNG05651', 'LBL08916', 'jlyptrade6@google.it', 'Jeepers Creepers', 357, '2013-07-02');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV700950', 'SNG30250', 'LBL06402', 'jlyptrade6@google.it', 'Miracle', 534, '2012-11-09');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV177159', 'SNG33169', 'LBL98019', 'jlyptrade6@google.it', 'Noi the Albino (Nói albinói)', 454, '2010-06-13');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV094096', 'SNG37466', 'LBL06402', 'jlyptrade6@google.it', 'Adventures of Ford Fairlane, The', 468, '2003-02-09');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV585846', 'SNG43131', 'LBL83521', 'jlyptrade6@google.it', 'Battle of the Rails, The (La bataille du rail)', 76, '2016-04-22');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV806453', 'SNG43576', 'LBL88736', 'jlyptrade6@google.it', 'Blue Velvet', 405, '2017-06-15');
insert into VideoMusik (id_video_musik, id_lagu, id_label, email_artis, judul_konten, durasi, tanggal_rilis) values ('MV676574', 'SNG43799', 'LBL48380', 'jlyptrade6@google.it', 'Revolution OS', 257, '2021-08-17');
SELECT 
  GROUP_CONCAT(lagu.email_artis SEPARATOR ', ') AS concatenated_emails
FROM 
  lagu
INNER JOIN 
  appleid 
ON 
  lagu.email_artis = appleid.email;

SELECT 
  GROUP_CONCAT(lagu.id_lagu SEPARATOR ', ') AS concatenated_emails
FROM 
  lagu
INNER JOIN 
  appleid 
ON 
  lagu.email_artis = appleid.email;