CREATE TABLE langganan (
    id_langganan INT,
    email VARCHAR(50),
    jenis_langganan VARCHAR(10),
    tanggal_mulai DATE,
    tanggal_berakhir DATE,
    status_aktif BOOLEAN AS (tanggal_berakhir > CURDATE()),
    PRIMARY KEY (id_langganan, email),
    FOREIGN KEY (email) REFERENCES AppleID(email),
    FOREIGN KEY (jenis_langganan) REFERENCES subscriptionplan(jenis_langganan)
);

DELIMITER //
CREATE TRIGGER tambah_id_langganan
BEFORE INSERT ON langganan
FOR EACH ROW
BEGIN
    DECLARE last_id INT;

    -- Ambil nilai id_langganan terakhir untuk pengguna yang bersangkutan
    SELECT MAX(id_langganan) INTO last_id
    FROM langganan
    WHERE email = NEW.email;

    -- Jika tidak ada langganan sebelumnya, atur last_id menjadi 0
    IF last_id IS NULL THEN
        SET last_id = 0;
    END IF;

    -- Tambahkan 1 ke last_id untuk mendapatkan id_langganan baru
    SET NEW.id_langganan = last_id + 1;
END;

CREATE TRIGGER status_update
BEFORE UPDATE ON langganan
FOR EACH ROW
BEGIN
    IF NEW.status_aktif = TRUE AND OLD.status_aktif = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'status langganan tidak dapat berubah dari FALSE menjadi TRUE';
    END IF;
END;
//
DELIMITER ;


insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rcluettj@imageshack.us', 'Perorangan', '2004-09-02', '2004-10-02');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('ddohr4@baidu.com', 'Pelajar', '2001-07-14', '2001-08-14');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rfollett5@domainmarket.com', 'Keluarga', '2013-07-26', '2013-08-26');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('wromanf@ihg.com', 'Perorangan', '2013-02-01', '2013-03-01');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('aarckoll8@google.ca', 'Pelajar', '2002-03-22', '2002-04-22');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('acettell1@salon.com', 'Keluarga', '2018-04-06', '2018-05-06');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('hritchie2@nbcnews.com', 'Perorangan', '2021-04-09', '2021-05-09');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lmerigonb@admin.ch', 'Pelajar', '2021-01-08', '2021-02-08');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('aarckoll8@google.ca', 'Keluarga', '2000-11-29', '2000-12-29');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rcluettj@imageshack.us', 'Perorangan', '2022-06-18', '2022-07-18');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('acettell1@salon.com', 'Pelajar', '2002-08-29', '2002-09-29');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nliston3@ihg.com', 'Keluarga', '2016-08-18', '2016-09-18');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rcluettj@imageshack.us', 'Perorangan', '2005-12-10', '2006-01-10');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('hritchie2@nbcnews.com', 'Pelajar', '2021-11-30', '2021-12-30');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('mcanadasa@illinois.edu', 'Keluarga', '2013-04-14', '2013-05-14');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rfollett5@domainmarket.com', 'Perorangan', '2000-09-11', '2000-10-11');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nliston3@ihg.com', 'Pelajar', '2006-01-14', '2006-02-14');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('mcanadasa@illinois.edu', 'Keluarga', '2015-03-25', '2015-04-25');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('acettell1@salon.com', 'Perorangan', '2004-09-13', '2004-10-13');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('aarckoll8@google.ca', 'Pelajar', '2006-09-14', '2006-10-14');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jburnsall7@phpbb.com', 'Keluarga', '2019-08-16', '2019-09-16');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jburnsall7@phpbb.com', 'Perorangan', '2019-09-27', '2019-10-27');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('wromanf@ihg.com', 'Pelajar', '2007-10-03', '2007-11-03');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('bmacgaughey9@wordpress.com', 'Keluarga', '2002-09-27', '2002-10-27');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lpaudind@abc.net.au', 'Perorangan', '2012-08-11', '2012-09-11');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('bmacgaughey9@wordpress.com', 'Pelajar', '2023-09-15', '2023-10-15');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rcluettj@imageshack.us', 'Keluarga', '2005-06-07', '2005-07-07');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('clarvente@adobe.com', 'Perorangan', '2003-12-17', '2004-01-17');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nliston3@ihg.com', 'Pelajar', '2010-05-29', '2010-06-29');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('avaughng@dagondesign.com', 'Keluarga', '2008-04-25', '2008-05-25');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('bmacgaughey9@wordpress.com', 'Perorangan', '2006-11-04', '2006-12-04');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jlyptrade6@google.it', 'Pelajar', '2002-12-21', '2003-01-21');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('clarvente@adobe.com', 'Keluarga', '2012-11-11', '2012-12-11');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('gbaroschi@china.com.cn', 'Perorangan', '2018-12-06', '2019-01-06');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nluffman0@theglobeandmail.com', 'Pelajar', '2002-10-19', '2002-11-19');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('epegrumh@e-recht24.de', 'Keluarga', '2018-01-31', '2018-02-28');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jlyptrade6@google.it', 'Perorangan', '2014-05-18', '2014-06-18');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('ddohr4@baidu.com', 'Pelajar', '2006-01-17', '2006-02-17');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lmerigonb@admin.ch', 'Keluarga', '2007-01-13', '2007-02-13');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rfollett5@domainmarket.com', 'Perorangan', '2015-04-29', '2015-05-29');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nliston3@ihg.com', 'Pelajar', '2014-10-06', '2014-11-06');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('ddohr4@baidu.com', 'Keluarga', '2000-04-12', '2000-05-12');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('wromanf@ihg.com', 'Perorangan', '2018-04-17', '2018-05-17');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('wromanf@ihg.com', 'Pelajar', '2010-07-06', '2010-08-06');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rfollett5@domainmarket.com', 'Keluarga', '2019-05-25', '2019-06-25');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jlyptrade6@google.it', 'Perorangan', '2023-03-21', '2023-04-21');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('bmacgaughey9@wordpress.com', 'Pelajar', '2018-05-19', '2018-06-19');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('acettell1@salon.com', 'Keluarga', '2003-03-29', '2003-04-29');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nliston3@ihg.com', 'Perorangan', '2023-06-29', '2023-07-29');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jburnsall7@phpbb.com', 'Pelajar', '2015-11-14', '2015-12-14');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('clarvente@adobe.com', 'Keluarga', '2012-08-28', '2012-09-28');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lpaudind@abc.net.au', 'Perorangan', '2013-03-10', '2013-04-10');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('epegrumh@e-recht24.de', 'Pelajar', '2017-10-12', '2017-11-12');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jlyptrade6@google.it', 'Keluarga', '2010-04-18', '2010-05-18');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lmerigonb@admin.ch', 'Perorangan', '2015-06-06', '2015-07-06');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rfollett5@domainmarket.com', 'Pelajar', '2020-06-02', '2020-07-02');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rcluettj@imageshack.us', 'Keluarga', '2000-09-16', '2000-10-16');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nluffman0@theglobeandmail.com', 'Perorangan', '2008-02-09', '2008-03-09');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jlyptrade6@google.it', 'Pelajar', '2021-01-16', '2021-02-16');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('bmacgaughey9@wordpress.com', 'Keluarga', '2000-03-08', '2000-04-08');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('wromanf@ihg.com', 'Perorangan', '2001-07-03', '2001-08-03');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('epegrumh@e-recht24.de', 'Pelajar', '2011-11-14', '2011-12-14');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('gbaroschi@china.com.cn', 'Keluarga', '2012-05-09', '2012-06-09');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lpaudind@abc.net.au', 'Perorangan', '2014-11-23', '2014-12-23');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('epegrumh@e-recht24.de', 'Pelajar', '2016-09-24', '2016-10-24');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nluffman0@theglobeandmail.com', 'Keluarga', '2004-01-13', '2004-02-13');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('clarvente@adobe.com', 'Perorangan', '2003-12-02', '2004-01-02');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('clarvente@adobe.com', 'Pelajar', '2002-04-10', '2002-05-10');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('cfigurec@abc.net.au', 'Keluarga', '2016-02-25', '2016-03-25');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lmerigonb@admin.ch', 'Perorangan', '2006-12-28', '2007-01-28');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('epegrumh@e-recht24.de', 'Pelajar', '2017-02-13', '2017-03-13');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('acettell1@salon.com', 'Keluarga', '2001-08-07', '2001-09-07');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jburnsall7@phpbb.com', 'Perorangan', '2022-02-08', '2022-03-08');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nluffman0@theglobeandmail.com', 'Pelajar', '2011-12-15', '2012-01-15');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lpaudind@abc.net.au', 'Keluarga', '2014-03-11', '2014-04-11');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jlyptrade6@google.it', 'Perorangan', '2015-05-24', '2015-06-24');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('epegrumh@e-recht24.de', 'Pelajar', '2011-03-08', '2011-04-08');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('clarvente@adobe.com', 'Keluarga', '2009-01-20', '2009-02-20');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jburnsall7@phpbb.com', 'Perorangan', '2019-07-14', '2019-08-14');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('acettell1@salon.com', 'Pelajar', '2000-11-02', '2000-12-02');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('epegrumh@e-recht24.de', 'Keluarga', '2004-09-25', '2004-10-25');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rcluettj@imageshack.us', 'Perorangan', '2007-01-26', '2007-02-26');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lpaudind@abc.net.au', 'Pelajar', '2006-03-18', '2006-04-18');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('acettell1@salon.com', 'Keluarga', '2011-07-26', '2011-08-26');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('wromanf@ihg.com', 'Perorangan', '2018-11-12', '2018-12-12');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('avaughng@dagondesign.com', 'Pelajar', '2020-02-21', '2020-03-21');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('ddohr4@baidu.com', 'Keluarga', '2002-11-24', '2002-12-24');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('acettell1@salon.com', 'Perorangan', '2018-12-10', '2019-01-10');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lmerigonb@admin.ch', 'Pelajar', '2014-10-26', '2014-11-26');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('cfigurec@abc.net.au', 'Keluarga', '2023-10-25', '2023-11-25');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('bmacgaughey9@wordpress.com', 'Perorangan', '2008-04-22', '2008-05-22');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('wromanf@ihg.com', 'Pelajar', '2008-09-03', '2008-10-03');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('gbaroschi@china.com.cn', 'Keluarga', '2015-08-20', '2015-09-20');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nliston3@ihg.com', 'Perorangan', '2012-10-02', '2012-11-02');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('clarvente@adobe.com', 'Pelajar', '2000-08-18', '2000-09-18');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('epegrumh@e-recht24.de', 'Keluarga', '2010-07-13', '2010-08-13');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rfollett5@domainmarket.com', 'Perorangan', '2014-02-07', '2014-03-07');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('gbaroschi@china.com.cn', 'Pelajar', '2007-02-03', '2007-03-03');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nluffman0@theglobeandmail.com', 'Keluarga', '2017-06-21', '2017-07-21');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('cfigurec@abc.net.au', 'Perorangan', '2008-07-26', '2008-08-26');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nluffman0@theglobeandmail.com', 'Perorangan', '2024-05-17', '2024-06-17');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('acettell1@salon.com', 'Keluarga', '2024-05-12', '2024-06-12');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('nliston3@ihg.com', 'Pelajar', '2024-05-30', '2024-06-30');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('ddohr4@baidu.com', 'Perorangan', '2024-05-11', '2024-06-11');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jlyptrade6@google.it', 'Pelajar', '2024-05-16', '2024-06-16');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('jburnsall7@phpbb.com', 'Perorangan', '2024-05-25', '2024-06-25');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('aarckoll8@google.ca', 'Pelajar', '2024-05-03', '2024-06-03');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('bmacgaughey9@wordpress.com', 'Pelajar', '2024-05-11', '2024-06-11');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lmerigonb@admin.ch', 'Perorangan', '2024-05-14', '2024-06-14');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('lpaudind@abc.net.au', 'Perorangan', '2024-05-13', '2024-06-13');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('clarvente@adobe.com', 'Keluarga', '2024-05-20', '2024-06-20');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('wromanf@ihg.com', 'Perorangan', '2024-05-08', '2024-06-08');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('avaughng@dagondesign.com', 'Pelajar', '2024-05-08', '2024-06-08');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('epegrumh@e-recht24.de', 'Pelajar', '2024-05-05', '2024-06-05');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rcluettj@imageshack.us', 'Pelajar', '2024-05-03', '2024-06-03');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('mcanadasa@illinois.edu', 'Keluarga', '2024-05-06', '2024-06-06');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('gbaroschi@china.com.cn', 'Keluarga', '2024-05-30', '2024-06-30');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('cfigurec@abc.net.au', 'Pelajar', '2024-05-22', '2024-06-22');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('hritchie2@nbcnews.com', 'Perorangan', '2024-05-16', '2024-06-16');
insert into langganan (email, jenis_langganan, tanggal_mulai, tanggal_berakhir) values ('rfollett5@domainmarket.com', 'Pelajar', '2024-05-05', '2024-06-05');