CREATE TABLE videoekstra (
    id_video_ekstra VARCHAR(50) PRIMARY KEY NOT NULL,
    email_artis VARCHAR(50),
    email_host VARCHAR(50),
    id_label VARCHAR(50),
    durasi INT,
    tanggal_rilis DATE,
    CHECK (email_artis <> email_host),
	CHECK (id_video_ekstra REGEXP '^EKS[0-9]{5}$')
);

-- Add constrain and foreign key
ALTER TABLE videoekstra
ADD CONSTRAINT fk_email_artis FOREIGN KEY (email_artis) REFERENCES appleid(email);

ALTER TABLE videoekstra
ADD CONSTRAINT fk_email_host FOREIGN KEY (email_host) REFERENCES appleid(email);

ALTER TABLE videoekstra
ADD CONSTRAINT fk_id_label FOREIGN KEY (id_label) REFERENCES label(id_label);

DELIMITER $$

CREATE DEFINER=CURRENT_USER TRIGGER validasi_keaktifan_artis
BEFORE INSERT ON lagu
FOR EACH ROW
BEGIN
    DECLARE email_email_artis VARCHAR(255);
    DECLARE artis_aktif BOOLEAN DEFAULT FALSE;

    -- Check if the artist's email exists
    SELECT email INTO email_email_artis
    FROM appleid
    WHERE email = NEW.email_artis
    LIMIT 1;

    IF email_email_artis IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Email artis tidak ditemukan';
    END IF;

    -- Check if the artist has an active subscription
    SELECT status_aktif INTO artis_aktif
    FROM langganan
    WHERE email = email_email_artis
    AND status_aktif = 1
    LIMIT 1;

    IF artis_aktif IS  THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Artis tidak memiliki langganan aktif';
    END IF;
END$$

DELIMITER ;


CREATE VIEW statistik_artis AS
    SELECT 
        COUNT(DISTINCT l.id_lagu) AS banyak_lagu, 
        COUNT(DISTINCT e.id_video_ekstra) AS banyak_video_ekstra, 
        COUNT(DISTINCT m.id_video_musik) AS banyak_video_musik, 
        l.email_artis
    FROM lagu l
    LEFT JOIN videoekstra e ON l.email_artis = e.email_artis
    LEFT JOIN videomusik m ON l.email_artis = m.email_artis
    GROUP BY email_artis;

CREATE DEFINER=CURRENT_USER TRIGGER one_only 
BEFORE INSERT ON produk




insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS84085', 'wromanf@ihg.com', 'aarckoll8@google.ca', 'LBL58495', 2479, '2000-08-07');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS47826', 'acettell1@salon.com', 'bmacgaughey9@wordpress.com', 'LBL83521', 10479, '2006-03-17');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS51448', 'acettell1@salon.com', 'acettell1@salon.com', 'LBL24065', 8109, '2009-08-10');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS83965', 'nluffman0@theglobeandmail.com', 'ddohr4@baidu.com', 'LBL24065', 4892, '2016-01-10');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS03082', 'rcluettj@imageshack.us', 'ddohr4@baidu.com', 'LBL08834', 6588, '2004-05-10');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS39270', 'avaughng@dagondesign.com', 'ddohr4@baidu.com', 'LBL51202', 4503, '2004-11-02');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS20072', 'acettell1@salon.com', 'ddohr4@baidu.com', 'LBL26441', 9472, '2012-06-06');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS60710', 'lpaudind@abc.net.au', 'acettell1@salon.com', 'LBL23123', 6366, '2015-08-25');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS29499', 'nluffman0@theglobeandmail.com', 'bmacgaughey9@wordpress.com', 'LBL57040', 942, '2023-03-16');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS76374', 'rcluettj@imageshack.us', 'aarckoll8@google.ca', 'LBL23123', 4641, '2018-02-05');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS84922', 'bmacgaughey9@wordpress.com', 'aarckoll8@google.ca', 'LBL26441', 2771, '2018-11-26');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS36750', 'nluffman0@theglobeandmail.com', 'lpaudind@abc.net.au', 'LBL51202', 5960, '2004-04-29');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS16005', 'rcluettj@imageshack.us', 'acettell1@salon.com', 'LBL24065', 1577, '2014-06-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS65112', 'avaughng@dagondesign.com', 'ddohr4@baidu.com', 'LBL08916', 6079, '2000-04-20');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS78678', 'acettell1@salon.com', 'ddohr4@baidu.com', 'LBL48380', 2523, '2000-06-04');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS96566', 'rcluettj@imageshack.us', 'acettell1@salon.com', 'LBL56085', 4345, '2004-05-07');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS91769', 'acettell1@salon.com', 'bmacgaughey9@wordpress.com', 'LBL58495', 5748, '2001-11-11');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS59715', 'jlyptrade6@google.it', 'lpaudind@abc.net.au', 'LBL92927', 3903, '2021-02-14');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS13963', 'wromanf@ihg.com', 'ddohr4@baidu.com', 'LBL08916', 4903, '2011-11-13');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS95665', 'lmerigonb@admin.ch', 'bmacgaughey9@wordpress.com', 'LBL06402', 2805, '2021-12-04');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS44331', 'avaughng@dagondesign.com', 'bmacgaughey9@wordpress.com', 'LBL04529', 3791, '2016-08-06');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS42013', 'epegrumh@e-recht24.de', 'acettell1@salon.com', 'LBL06402', 10399, '2000-05-31');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS54062', 'epegrumh@e-recht24.de', 'aarckoll8@google.ca', 'LBL57040', 7305, '2009-01-27');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS48708', 'acettell1@salon.com', 'ddohr4@baidu.com', 'LBL24065', 7776, '2002-08-09');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS81783', 'jlyptrade6@google.it', 'bmacgaughey9@wordpress.com', 'LBL04529', 6454, '2013-08-17');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS74726', 'avaughng@dagondesign.com', 'avaughng@dagondesign.com', 'LBL48380', 1756, '2007-02-02');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS74148', 'epegrumh@e-recht24.de', 'avaughng@dagondesign.com', 'LBL58495', 3565, '2010-09-07');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS55539', 'lpaudind@abc.net.au', 'avaughng@dagondesign.com', 'LBL75389', 9055, '2003-02-07');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS10403', 'lmerigonb@admin.ch', 'ddohr4@baidu.com', 'LBL26441', 4265, '2011-03-01');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS39751', 'avaughng@dagondesign.com', 'ddohr4@baidu.com', 'LBL98019', 4586, '2022-04-29');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS90808', 'nluffman0@theglobeandmail.com', 'lpaudind@abc.net.au', 'LBL56085', 2955, '2007-04-14');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS95280', 'lmerigonb@admin.ch', 'bmacgaughey9@wordpress.com', 'LBL23123', 2818, '2011-11-03');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS50757', 'epegrumh@e-recht24.de', 'bmacgaughey9@wordpress.com', 'LBL48380', 452, '2005-12-23');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS94787', 'wromanf@ihg.com', 'ddohr4@baidu.com', 'LBL56085', 6925, '2005-11-16');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS23062', 'jlyptrade6@google.it', 'ddohr4@baidu.com', 'LBL24065', 1330, '2009-01-14');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS62174', 'jlyptrade6@google.it', 'lpaudind@abc.net.au', 'LBL56085', 9475, '2000-07-13');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS65138', 'avaughng@dagondesign.com', 'aarckoll8@google.ca', 'LBL56156', 5426, '2017-01-07');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS34811', 'bmacgaughey9@wordpress.com', 'acettell1@salon.com', 'LBL06402', 2355, '2009-07-10');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS27364', 'epegrumh@e-recht24.de', 'avaughng@dagondesign.com', 'LBL36151', 6107, '2009-01-07');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS84809', 'bmacgaughey9@wordpress.com', 'avaughng@dagondesign.com', 'LBL57040', 1343, '2010-12-23');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS43741', 'avaughng@dagondesign.com', 'acettell1@salon.com', 'LBL56156', 10180, '2024-02-17');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS86734', 'lpaudind@abc.net.au', 'aarckoll8@google.ca', 'LBL92927', 8022, '2012-03-26');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS57989', 'lmerigonb@admin.ch', 'bmacgaughey9@wordpress.com', 'LBL75389', 10145, '2009-07-10');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS01545', 'nluffman0@theglobeandmail.com', 'bmacgaughey9@wordpress.com', 'LBL48380', 1850, '2023-03-31');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS20733', 'lpaudind@abc.net.au', 'acettell1@salon.com', 'LBL75389', 4333, '2004-10-05');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS32004', 'lpaudind@abc.net.au', 'acettell1@salon.com', 'LBL58495', 6348, '2007-10-18');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS86426', 'nluffman0@theglobeandmail.com', 'aarckoll8@google.ca', 'LBL06402', 5867, '2016-08-12');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS63040', 'lpaudind@abc.net.au', 'aarckoll8@google.ca', 'LBL28845', 691, '2003-02-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS50033', 'avaughng@dagondesign.com', 'acettell1@salon.com', 'LBL83521', 3289, '2010-02-21');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS26508', 'lpaudind@abc.net.au', 'acettell1@salon.com', 'LBL57040', 8986, '2001-12-06');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS69213', 'nluffman0@theglobeandmail.com', 'acettell1@salon.com', 'LBL08916', 3857, '2011-01-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS80955', 'avaughng@dagondesign.com', 'ddohr4@baidu.com', 'LBL36151', 6017, '2023-05-08');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS13822', 'rcluettj@imageshack.us', 'ddohr4@baidu.com', 'LBL56156', 3027, '2020-05-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS91447', 'avaughng@dagondesign.com', 'ddohr4@baidu.com', 'LBL75389', 1992, '2011-11-17');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS17978', 'wromanf@ihg.com', 'ddohr4@baidu.com', 'LBL83521', 4691, '2005-05-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS90940', 'rcluettj@imageshack.us', 'avaughng@dagondesign.com', 'LBL88736', 5373, '2015-12-29');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS77387', 'lmerigonb@admin.ch', 'avaughng@dagondesign.com', 'LBL24065', 7999, '2007-07-11');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS87916', 'jlyptrade6@google.it', 'acettell1@salon.com', 'LBL08834', 8578, '2012-09-19');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS52859', 'avaughng@dagondesign.com', 'aarckoll8@google.ca', 'LBL75389', 3511, '2004-02-08');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS86955', 'lpaudind@abc.net.au', 'ddohr4@baidu.com', 'LBL26441', 1699, '2009-08-02');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS32181', 'avaughng@dagondesign.com', 'avaughng@dagondesign.com', 'LBL08916', 2582, '2013-11-12');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS24416', 'acettell1@salon.com', 'acettell1@salon.com', 'LBL06402', 3873, '2018-07-28');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS05896', 'nluffman0@theglobeandmail.com', 'bmacgaughey9@wordpress.com', 'LBL98019', 10403, '2003-12-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS50252', 'jlyptrade6@google.it', 'acettell1@salon.com', 'LBL23123', 5658, '2012-07-19');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS91740', 'jlyptrade6@google.it', 'aarckoll8@google.ca', 'LBL36151', 3636, '2006-02-13');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS49556', 'wromanf@ihg.com', 'bmacgaughey9@wordpress.com', 'LBL06402', 8102, '2000-11-19');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS39493', 'avaughng@dagondesign.com', 'lpaudind@abc.net.au', 'LBL08916', 7709, '2017-06-09');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS31439', 'wromanf@ihg.com', 'avaughng@dagondesign.com', 'LBL48380', 1153, '2001-07-17');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS53770', 'jlyptrade6@google.it', 'acettell1@salon.com', 'LBL92927', 3124, '2008-06-11');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS58056', 'wromanf@ihg.com', 'acettell1@salon.com', 'LBL24065', 951, '2013-09-02');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS57941', 'nluffman0@theglobeandmail.com', 'acettell1@salon.com', 'LBL92927', 1084, '2013-02-25');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS67706', 'epegrumh@e-recht24.de', 'ddohr4@baidu.com', 'LBL58495', 3886, '2023-03-03');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS91899', 'jlyptrade6@google.it', 'acettell1@salon.com', 'LBL92927', 2799, '2002-06-02');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS70978', 'epegrumh@e-recht24.de', 'aarckoll8@google.ca', 'LBL83521', 8546, '2022-05-21');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS47359', 'lpaudind@abc.net.au', 'avaughng@dagondesign.com', 'LBL06402', 9337, '2008-11-11');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS92305', 'bmacgaughey9@wordpress.com', 'avaughng@dagondesign.com', 'LBL58495', 5580, '2009-12-06');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS71050', 'rcluettj@imageshack.us', 'ddohr4@baidu.com', 'LBL92927', 3235, '2020-01-15');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS16049', 'lmerigonb@admin.ch', 'acettell1@salon.com', 'LBL06402', 437, '2005-03-27');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS72602', 'epegrumh@e-recht24.de', 'aarckoll8@google.ca', 'LBL57040', 10190, '2024-01-07');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS44597', 'lpaudind@abc.net.au', 'acettell1@salon.com', 'LBL08916', 63, '2017-12-17');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS63698', 'avaughng@dagondesign.com', 'aarckoll8@google.ca', 'LBL04529', 166, '2004-06-19');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS68175', 'wromanf@ihg.com', 'ddohr4@baidu.com', 'LBL28845', 7235, '2014-08-04');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS36606', 'epegrumh@e-recht24.de', 'bmacgaughey9@wordpress.com', 'LBL51202', 7202, '2020-04-21');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS75241', 'rcluettj@imageshack.us', 'lpaudind@abc.net.au', 'LBL24065', 4531, '2020-04-17');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS64562', 'acettell1@salon.com', 'lpaudind@abc.net.au', 'LBL28845', 6579, '2015-01-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS92149', 'acettell1@salon.com', 'acettell1@salon.com', 'LBL08834', 4098, '2005-01-22');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS14722', 'nluffman0@theglobeandmail.com', 'bmacgaughey9@wordpress.com', 'LBL58495', 295, '2018-06-25');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS99192', 'lmerigonb@admin.ch', 'acettell1@salon.com', 'LBL88736', 1280, '2017-06-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS23796', 'nluffman0@theglobeandmail.com', 'acettell1@salon.com', 'LBL24065', 6915, '2000-05-17');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS79959', 'nluffman0@theglobeandmail.com', 'lpaudind@abc.net.au', 'LBL08916', 2990, '2019-09-10');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS30345', 'lmerigonb@admin.ch', 'ddohr4@baidu.com', 'LBL57040', 6402, '2000-08-18');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS49271', 'lmerigonb@admin.ch', 'ddohr4@baidu.com', 'LBL23123', 2507, '2012-06-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS02266', 'acettell1@salon.com', 'ddohr4@baidu.com', 'LBL51202', 4087, '2022-06-01');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS01022', 'rcluettj@imageshack.us', 'ddohr4@baidu.com', 'LBL75389', 1932, '2000-06-13');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS40981', 'acettell1@salon.com', 'acettell1@salon.com', 'LBL04529', 4650, '2010-09-02');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS59719', 'jlyptrade6@google.it', 'avaughng@dagondesign.com', 'LBL98019', 1456, '2018-06-10');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS40426', 'acettell1@salon.com', 'lpaudind@abc.net.au', 'LBL92927', 8990, '2000-09-21');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS81176', 'bmacgaughey9@wordpress.com', 'aarckoll8@google.ca', 'LBL58495', 7456, '2015-03-14');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS36784', 'nluffman0@theglobeandmail.com', 'bmacgaughey9@wordpress.com', 'LBL92927', 9951, '2019-11-05');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS11892', 'bmacgaughey9@wordpress.com', 'ddohr4@baidu.com', 'LBL58495', 9547, '2023-04-23');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS35240', 'avaughng@dagondesign.com', 'ddohr4@baidu.com', 'LBL83521', 2523, '2019-05-11');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS38284', 'lpaudind@abc.net.au', 'avaughng@dagondesign.com', 'LBL04529', 5648, '2011-09-10');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS45745', 'lmerigonb@admin.ch', 'aarckoll8@google.ca', 'LBL28845', 4668, '2007-07-24');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS80923', 'bmacgaughey9@wordpress.com', 'ddohr4@baidu.com', 'LBL56085', 9937, '2018-12-18');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS54981', 'rcluettj@imageshack.us', 'avaughng@dagondesign.com', 'LBL08834', 10219, '2001-02-01');
insert into VideoEkstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS24302', 'lmerigonb@admin.ch', 'bmacgaughey9@wordpress.com', 'LBL06402', 3885, '2015-07-02');