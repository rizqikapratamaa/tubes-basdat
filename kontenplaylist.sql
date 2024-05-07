CREATE TABLE kontenplaylist (
    id_playlist VARCHAR(50) NOT NULL,
    email_pembuat_konten VARCHAR(255) NOT NULL,
    id_konten VARCHAR(50) NOT NULL,
    id_produk VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_playlist, email_pembuat_konten, id_konten, id_produk),  -- Composite primary key
    FOREIGN KEY (email_pembuat_konten) REFERENCES appleid(email),  -- References 'appleid.email'
    FOREIGN KEY (id_konten) REFERENCES pemasaran(id_lagu),          -- References 'pemasaran.id_lagu'
    FOREIGN KEY (id_produk) REFERENCES pemasaran(id_produk)         -- References 'pemasaran.id_produk'
);


DELIMITER //

CREATE TRIGGER check_email_produk
BEFORE INSERT ON kontenplaylist
FOR EACH ROW
BEGIN
    DECLARE expected_email VARCHAR(255);

    -- Get the email_pembuat for the id_produk in produk
    SELECT email_pembuat INTO expected_email 
    FROM produk 
    WHERE id_produk = NEW.id_produk;

    -- If the email_pembuat_konten doesn't match the expected email, raise an error
    IF NEW.email_pembuat_konten <> expected_email THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email_pembuat_konten must match produk.email_pembuat';
    END IF;
END //

DELIMITER ;

insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL169254', 'aarckoll8@google.ca', 'SNG00891', 'PDT02787');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL350728', 'acettell1@salon.com', 'SNG00891', 'PDT02787');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL015253', 'avaughng@dagondesign.com', 'SNG00891', 'PDT02787');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL324115', 'bmacgaughey9@wordpress.com', 'SNG00891', 'PDT05812');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL296563', 'cfigurec@abc.net.au', 'SNG02891', 'PDT05812');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL286116', 'clarvente@adobe.com', 'SNG02891', 'PDT05812');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL190847', 'ddohr4@baidu.com', 'SNG02891', 'PDT05812');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL721050', 'epegrumh@e-recht24.de', 'SNG02891', 'PDT07357');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL000152', 'gbaroschi@china.com.cn', 'SNG02891', 'PDT09843');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL578910', 'hritchie2@nbcnews.com', 'SNG02891', 'PDT09843');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL619025', 'jburnsall7@phpbb.com', 'SNG04059', 'PDT09843');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL877370', 'jlyptrade6@google.it', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL688664', 'lmerigonb@admin.ch', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL153563', 'lpaudind@abc.net.au', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL984738', 'mcanadasa@illinois.edu', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL862217', 'nliston3@ihg.com', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL153563', 'nluffman0@theglobeandmail.com', 'SNG04277', 'PDT12647');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL169254', 'rcluettj@imageshack.us', 'SNG04277', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL578910', 'rfollett5@domainmarket.com', 'SNG04277', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL051456', 'wromanf@ihg.com', 'SNG04277', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL670162', 'aarckoll8@google.ca', 'SNG04277', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL098962', 'acettell1@salon.com', 'SNG04886', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL636169', 'avaughng@dagondesign.com', 'SNG04886', 'PDT24525');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL049264', 'bmacgaughey9@wordpress.com', 'SNG04886', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL813503', 'cfigurec@abc.net.au', 'SNG04886', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL167541', 'clarvente@adobe.com', 'SNG04886', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL724244', 'ddohr4@baidu.com', 'SNG04886', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL657880', 'epegrumh@e-recht24.de', 'SNG05651', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL049264', 'gbaroschi@china.com.cn', 'SNG05651', 'PDT26845');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL923531', 'hritchie2@nbcnews.com', 'SNG05651', 'PDT31815');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL689308', 'jburnsall7@phpbb.com', 'SNG05651', 'PDT35588');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL688664', 'jlyptrade6@google.it', 'SNG09121', 'PDT35588');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL923531', 'lmerigonb@admin.ch', 'SNG09121', 'PDT35588');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL724244', 'lpaudind@abc.net.au', 'SNG09121', 'PDT35588');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL287122', 'mcanadasa@illinois.edu', 'SNG09121', 'PDT35788');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL372906', 'nliston3@ihg.com', 'SNG09121', 'PDT35788');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL721050', 'nluffman0@theglobeandmail.com', 'SNG09121', 'PDT35788');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL667277', 'rcluettj@imageshack.us', 'SNG09675', 'PDT35788');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL190847', 'rfollett5@domainmarket.com', 'SNG09675', 'PDT38764');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL670162', 'wromanf@ihg.com', 'SNG09675', 'PDT38764');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL431760', 'aarckoll8@google.ca', 'SNG09675', 'PDT40912');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL000152', 'acettell1@salon.com', 'SNG10287', 'PDT40912');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL098962', 'avaughng@dagondesign.com', 'SNG10287', 'PDT45135');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL917481', 'bmacgaughey9@wordpress.com', 'SNG10287', 'PDT45135');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL657880', 'cfigurec@abc.net.au', 'SNG10287', 'PDT45294');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL655496', 'clarvente@adobe.com', 'SNG10287', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL721050', 'ddohr4@baidu.com', 'SNG10287', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL050033', 'epegrumh@e-recht24.de', 'SNG11117', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL287122', 'gbaroschi@china.com.cn', 'SNG11117', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL923531', 'hritchie2@nbcnews.com', 'SNG11117', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL724244', 'jburnsall7@phpbb.com', 'SNG11117', 'PDT56691');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL498238', 'jlyptrade6@google.it', 'SNG11117', 'PDT57758');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL350728', 'lmerigonb@admin.ch', 'SNG11117', 'PDT58335');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL503365', 'lpaudind@abc.net.au', 'SNG11117', 'PDT61961');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL670162', 'mcanadasa@illinois.edu', 'SNG11591', 'PDT64411');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL619025', 'nliston3@ihg.com', 'SNG11591', 'PDT64411');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL813503', 'nluffman0@theglobeandmail.com', 'SNG11591', 'PDT64411');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL657880', 'rcluettj@imageshack.us', 'SNG11591', 'PDT64411');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL657880', 'rfollett5@domainmarket.com', 'SNG11686', 'PDT65941');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL190847', 'wromanf@ihg.com', 'SNG11686', 'PDT65941');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL286116', 'aarckoll8@google.ca', 'SNG11686', 'PDT66237');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL877370', 'acettell1@salon.com', 'SNG11686', 'PDT66237');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL877370', 'avaughng@dagondesign.com', 'SNG11686', 'PDT67542');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL498238', 'bmacgaughey9@wordpress.com', 'SNG13197', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL655935', 'cfigurec@abc.net.au', 'SNG13197', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL324115', 'clarvente@adobe.com', 'SNG13197', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL670162', 'ddohr4@baidu.com', 'SNG13197', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL015253', 'epegrumh@e-recht24.de', 'SNG13434', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL190847', 'gbaroschi@china.com.cn', 'SNG13434', 'PDT72931');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL657880', 'hritchie2@nbcnews.com', 'SNG13434', 'PDT72931');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL153563', 'jburnsall7@phpbb.com', 'SNG13434', 'PDT72931');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL640592', 'jlyptrade6@google.it', 'SNG13434', 'PDT74810');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL049264', 'lmerigonb@admin.ch', 'SNG13434', 'PDT74810');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL724244', 'lpaudind@abc.net.au', 'SNG13469', 'PDT75215');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL923531', 'mcanadasa@illinois.edu', 'SNG13469', 'PDT75215');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL923531', 'nliston3@ihg.com', 'SNG13469', 'PDT75850');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL167541', 'nluffman0@theglobeandmail.com', 'SNG13469', 'PDT79847');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL296563', 'rcluettj@imageshack.us', 'SNG14032', 'PDT79847');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL049264', 'rfollett5@domainmarket.com', 'SNG14032', 'PDT79847');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL051456', 'wromanf@ihg.com', 'SNG14032', 'PDT79847');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL190847', 'aarckoll8@google.ca', 'SNG14032', 'PDT81386');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL619025', 'acettell1@salon.com', 'SNG14032', 'PDT81386');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL296563', 'avaughng@dagondesign.com', 'SNG14032', 'PDT82347');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL657880', 'bmacgaughey9@wordpress.com', 'SNG15400', 'PDT82347');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL862217', 'cfigurec@abc.net.au', 'SNG15400', 'PDT82347');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL503365', 'clarvente@adobe.com', 'SNG15400', 'PDT82347');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL655935', 'ddohr4@baidu.com', 'SNG15400', 'PDT86955');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL324115', 'epegrumh@e-recht24.de', 'SNG15400', 'PDT88065');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL636169', 'gbaroschi@china.com.cn', 'SNG15400', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL923531', 'hritchie2@nbcnews.com', 'SNG18044', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL286116', 'jburnsall7@phpbb.com', 'SNG18044', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL190847', 'jlyptrade6@google.it', 'SNG18044', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL640592', 'lmerigonb@admin.ch', 'SNG18044', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL190847', 'lpaudind@abc.net.au', 'SNG18044', 'PDT92459');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL503365', 'mcanadasa@illinois.edu', 'SNG18108', 'PDT92852');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL955965', 'nliston3@ihg.com', 'SNG18108', 'PDT92852');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL636169', 'nluffman0@theglobeandmail.com', 'SNG18108', 'PDT92852');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL098962', 'rcluettj@imageshack.us', 'SNG18108', 'PDT93712');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL862217', 'rfollett5@domainmarket.com', 'SNG18108', 'PDT93712');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL296563', 'wromanf@ihg.com', 'SNG18108', 'PDT99937');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL619025', 'aarckoll8@google.ca', 'SNG00891', 'PDT02787');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL617290', 'acettell1@salon.com', 'SNG00891', 'PDT02787');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL372906', 'avaughng@dagondesign.com', 'SNG00891', 'PDT02787');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL015253', 'bmacgaughey9@wordpress.com', 'SNG00891', 'PDT05812');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL049264', 'cfigurec@abc.net.au', 'SNG02891', 'PDT05812');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL862217', 'clarvente@adobe.com', 'SNG02891', 'PDT05812');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL631897', 'ddohr4@baidu.com', 'SNG02891', 'PDT05812');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL286116', 'epegrumh@e-recht24.de', 'SNG02891', 'PDT07357');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL051456', 'gbaroschi@china.com.cn', 'SNG02891', 'PDT09843');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL000152', 'hritchie2@nbcnews.com', 'SNG02891', 'PDT09843');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL169254', 'jburnsall7@phpbb.com', 'SNG04059', 'PDT09843');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL655496', 'jlyptrade6@google.it', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL689308', 'lmerigonb@admin.ch', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL350728', 'lpaudind@abc.net.au', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL190847', 'mcanadasa@illinois.edu', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL667277', 'nliston3@ihg.com', 'SNG04059', 'PDT11409');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL657880', 'nluffman0@theglobeandmail.com', 'SNG04277', 'PDT12647');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL098962', 'rcluettj@imageshack.us', 'SNG04277', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL855189', 'rfollett5@domainmarket.com', 'SNG04277', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL923531', 'wromanf@ihg.com', 'SNG04277', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL928353', 'aarckoll8@google.ca', 'SNG04277', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL169254', 'acettell1@salon.com', 'SNG04886', 'PDT22478');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL667277', 'avaughng@dagondesign.com', 'SNG04886', 'PDT24525');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL855189', 'bmacgaughey9@wordpress.com', 'SNG04886', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL640592', 'cfigurec@abc.net.au', 'SNG04886', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL655496', 'clarvente@adobe.com', 'SNG04886', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL372906', 'ddohr4@baidu.com', 'SNG04886', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL667277', 'epegrumh@e-recht24.de', 'SNG05651', 'PDT24656');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL667277', 'gbaroschi@china.com.cn', 'SNG05651', 'PDT26845');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL640592', 'hritchie2@nbcnews.com', 'SNG05651', 'PDT31815');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL862217', 'jburnsall7@phpbb.com', 'SNG05651', 'PDT35588');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL636169', 'jlyptrade6@google.it', 'SNG09121', 'PDT35588');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL503365', 'lmerigonb@admin.ch', 'SNG09121', 'PDT35588');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL813503', 'lpaudind@abc.net.au', 'SNG09121', 'PDT35588');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL350728', 'mcanadasa@illinois.edu', 'SNG09121', 'PDT35788');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL631897', 'nliston3@ihg.com', 'SNG09121', 'PDT35788');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL855189', 'nluffman0@theglobeandmail.com', 'SNG09121', 'PDT35788');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL862217', 'rcluettj@imageshack.us', 'SNG09675', 'PDT35788');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL503365', 'rfollett5@domainmarket.com', 'SNG09675', 'PDT38764');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL989439', 'wromanf@ihg.com', 'SNG09675', 'PDT38764');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL098962', 'aarckoll8@google.ca', 'SNG09675', 'PDT40912');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL286116', 'acettell1@salon.com', 'SNG10287', 'PDT40912');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL019955', 'avaughng@dagondesign.com', 'SNG10287', 'PDT45135');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL578910', 'bmacgaughey9@wordpress.com', 'SNG10287', 'PDT45135');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL631897', 'cfigurec@abc.net.au', 'SNG10287', 'PDT45294');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL917481', 'clarvente@adobe.com', 'SNG10287', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL050033', 'ddohr4@baidu.com', 'SNG10287', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL984738', 'epegrumh@e-recht24.de', 'SNG11117', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL655935', 'gbaroschi@china.com.cn', 'SNG11117', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL917481', 'hritchie2@nbcnews.com', 'SNG11117', 'PDT54568');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL050033', 'jburnsall7@phpbb.com', 'SNG11117', 'PDT56691');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL983007', 'jlyptrade6@google.it', 'SNG11117', 'PDT57758');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL049264', 'lmerigonb@admin.ch', 'SNG11117', 'PDT58335');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL667277', 'lpaudind@abc.net.au', 'SNG11117', 'PDT61961');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL721050', 'mcanadasa@illinois.edu', 'SNG11591', 'PDT64411');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL689308', 'nliston3@ihg.com', 'SNG11591', 'PDT64411');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL503365', 'nluffman0@theglobeandmail.com', 'SNG11591', 'PDT64411');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL169254', 'rcluettj@imageshack.us', 'SNG11591', 'PDT64411');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL636169', 'rfollett5@domainmarket.com', 'SNG11686', 'PDT65941');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL923531', 'wromanf@ihg.com', 'SNG11686', 'PDT65941');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL619025', 'aarckoll8@google.ca', 'SNG11686', 'PDT66237');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL049264', 'acettell1@salon.com', 'SNG11686', 'PDT66237');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL019955', 'avaughng@dagondesign.com', 'SNG11686', 'PDT67542');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL153563', 'bmacgaughey9@wordpress.com', 'SNG13197', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL743729', 'cfigurec@abc.net.au', 'SNG13197', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL862217', 'clarvente@adobe.com', 'SNG13197', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL640592', 'ddohr4@baidu.com', 'SNG13197', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL724244', 'epegrumh@e-recht24.de', 'SNG13434', 'PDT67772');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL015253', 'gbaroschi@china.com.cn', 'SNG13434', 'PDT72931');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL657880', 'hritchie2@nbcnews.com', 'SNG13434', 'PDT72931');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL655496', 'jburnsall7@phpbb.com', 'SNG13434', 'PDT72931');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL286116', 'jlyptrade6@google.it', 'SNG13434', 'PDT74810');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL578910', 'lmerigonb@admin.ch', 'SNG13434', 'PDT74810');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL619025', 'lpaudind@abc.net.au', 'SNG13469', 'PDT75215');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL983007', 'mcanadasa@illinois.edu', 'SNG13469', 'PDT75215');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL296563', 'nliston3@ihg.com', 'SNG13469', 'PDT75850');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL923531', 'nluffman0@theglobeandmail.com', 'SNG13469', 'PDT79847');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL670162', 'rcluettj@imageshack.us', 'SNG14032', 'PDT79847');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL051456', 'rfollett5@domainmarket.com', 'SNG14032', 'PDT79847');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL296563', 'wromanf@ihg.com', 'SNG14032', 'PDT79847');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL657880', 'aarckoll8@google.ca', 'SNG14032', 'PDT81386');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL050033', 'acettell1@salon.com', 'SNG14032', 'PDT81386');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL655935', 'avaughng@dagondesign.com', 'SNG14032', 'PDT82347');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL984738', 'bmacgaughey9@wordpress.com', 'SNG15400', 'PDT82347');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL131841', 'cfigurec@abc.net.au', 'SNG15400', 'PDT82347');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL636169', 'clarvente@adobe.com', 'SNG15400', 'PDT82347');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL813503', 'ddohr4@baidu.com', 'SNG15400', 'PDT86955');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL287122', 'epegrumh@e-recht24.de', 'SNG15400', 'PDT88065');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL667277', 'gbaroschi@china.com.cn', 'SNG15400', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL955965', 'hritchie2@nbcnews.com', 'SNG18044', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL689308', 'jburnsall7@phpbb.com', 'SNG18044', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL131841', 'jlyptrade6@google.it', 'SNG18044', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL296563', 'lmerigonb@admin.ch', 'SNG18044', 'PDT92274');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL724244', 'lpaudind@abc.net.au', 'SNG18044', 'PDT92459');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL928353', 'mcanadasa@illinois.edu', 'SNG18108', 'PDT92852');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL743729', 'nliston3@ihg.com', 'SNG18108', 'PDT92852');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL619025', 'nluffman0@theglobeandmail.com', 'SNG18108', 'PDT92852');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL670162', 'rcluettj@imageshack.us', 'SNG18108', 'PDT93712');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL372906', 'rfollett5@domainmarket.com', 'SNG18108', 'PDT93712');
insert into KontenPlaylist (id_playlist, email_pembuat_konten, id_konten, id_produk) values ('PL167541', 'wromanf@ihg.com', 'SNG18108', 'PDT99937');
