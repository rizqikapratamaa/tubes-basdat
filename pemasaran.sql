CREATE TABLE pemasaran (
    id_lagu VARCHAR(8) NOT NULL,
    id_produk VARCHAR(8) NOT NULL
);

ALTER TABLE pemasaran
ADD CONSTRAINT fk_id_lagu_pemasaran FOREIGN KEY (id_lagu) REFERENCES lagu(id_lagu);

ALTER TABLE pemasaran
ADD CONSTRAINT fk_id_produk FOREIGN KEY (id_produk) REFERENCES produk(id_produk);

DELIMITER //

CREATE TRIGGER email_sama_trigger
BEFORE INSERT ON pemasaran
FOR EACH ROW
BEGIN
    DECLARE lagu_email VARCHAR(255);
    DECLARE produk_email VARCHAR(255);
    
    -- Get the email associated with the id_lagu from the Lagu table
    SELECT email_artis INTO lagu_email FROM Lagu WHERE id_lagu = NEW.id_lagu;
    
    -- Get the email associated with the id_produk from the Produk table
    SELECT email_pembuat INTO produk_email FROM Produk WHERE id_produk = NEW.id_produk;
    
    -- Check if the emails are the same, if not, raise an error
    IF lagu_email <> produk_email THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The email associated with the song and product must be the same.';
    END IF;
END;
//

DELIMITER ;



INSERT INTO pemasaran (id_lagu, id_produk) VALUES
('SNG00891', 'PDT75215'),
('SNG00891', 'PDT65941'),
('SNG00891', 'PDT40912'),
('SNG00891', 'PDT38764'),
('SNG02891', 'PDT82347'),
('SNG02891', 'PDT79847'),
('SNG02891', 'PDT64411'),
('SNG02891', 'PDT35788'),
('SNG02891', 'PDT35588'),
('SNG02891', 'PDT05812'),
('SNG04059', 'PDT82347'),
('SNG04059', 'PDT79847'),
('SNG04059', 'PDT64411'),
('SNG04059', 'PDT35788'),
('SNG04059', 'PDT35588'),
('SNG04059', 'PDT05812'),
('SNG04277', 'PDT93712'),
('SNG04277', 'PDT81386'),
('SNG04277', 'PDT74810'),
('SNG04277', 'PDT66237'),
('SNG04277', 'PDT45135'),
('SNG04886', 'PDT82347'),
('SNG04886', 'PDT79847'),
('SNG04886', 'PDT64411'),
('SNG04886', 'PDT35788'),
('SNG04886', 'PDT35588'),
('SNG04886', 'PDT05812'),
('SNG05651', 'PDT99937'),
('SNG05651', 'PDT86955'),
('SNG05651', 'PDT75850'),
('SNG05651', 'PDT31815'),
('SNG09121', 'PDT92274'),
('SNG09121', 'PDT67772'),
('SNG09121', 'PDT54568'),
('SNG09121', 'PDT24656'),
('SNG09121', 'PDT22478'),
('SNG09121', 'PDT11409'),
('SNG09675', 'PDT92852'),
('SNG09675', 'PDT72931'),
('SNG09675', 'PDT09843'),
('SNG09675', 'PDT02787'),
('SNG10287', 'PDT82347'),
('SNG10287', 'PDT79847'),
('SNG10287', 'PDT64411'),
('SNG10287', 'PDT35788'),
('SNG10287', 'PDT35588'),
('SNG10287', 'PDT05812'),
('SNG11117', 'PDT92459'),
('SNG11117', 'PDT67542'),
('SNG11117', 'PDT61961'),
('SNG11117', 'PDT57758'),
('SNG11117', 'PDT26845'),
('SNG11117', 'PDT12647'),
('SNG11117', 'PDT07357'),
('SNG11591', 'PDT92852'),
('SNG11591', 'PDT72931'),
('SNG11591', 'PDT09843'),
('SNG11591', 'PDT02787'),
('SNG11686', 'PDT93712'),
('SNG11686', 'PDT81386'),
('SNG11686', 'PDT74810'),
('SNG11686', 'PDT66237'),
('SNG11686', 'PDT45135'),
('SNG13197', 'PDT92852'),
('SNG13197', 'PDT72931'),
('SNG13197', 'PDT09843'),
('SNG13197', 'PDT02787'),
('SNG13434', 'PDT92274'),
('SNG13434', 'PDT67772'),
('SNG13434', 'PDT54568'),
('SNG13434', 'PDT24656'),
('SNG13434', 'PDT22478'),
('SNG13434', 'PDT11409'),
('SNG13469', 'PDT75215'),
('SNG13469', 'PDT65941'),
('SNG13469', 'PDT40912'),
('SNG13469', 'PDT38764'),
('SNG14032', 'PDT92274'),
('SNG14032', 'PDT67772'),
('SNG14032', 'PDT54568'),
('SNG14032', 'PDT24656'),
('SNG14032', 'PDT22478'),
('SNG14032', 'PDT11409'),
('SNG15400', 'PDT92274'),
('SNG15400', 'PDT67772'),
('SNG15400', 'PDT54568'),
('SNG15400', 'PDT24656'),
('SNG15400', 'PDT22478'),
('SNG15400', 'PDT11409'),
('SNG18044', 'PDT88065'),
('SNG18044', 'PDT58335'),
('SNG18044', 'PDT56691'),
('SNG18044', 'PDT45294'),
('SNG18044', 'PDT24525'),
('SNG18108', 'PDT92274'),
('SNG18108', 'PDT67772'),
('SNG18108', 'PDT54568'),
('SNG18108', 'PDT24656'),
('SNG18108', 'PDT22478'),
('SNG18108', 'PDT11409');
insert into pemasaran (id_lagu, id_produk) values ('SNG25770', 'PDT00001');
insert into pemasaran (id_lagu, id_produk) values ('SNG31108', 'PDT00002');
insert into pemasaran (id_lagu, id_produk) values ('SNG46262', 'PDT00003');
insert into pemasaran (id_lagu, id_produk) values ('SNG47862', 'PDT00004');
insert into pemasaran (id_lagu, id_produk) values ('SNG56851', 'PDT00005');
insert into pemasaran (id_lagu, id_produk) values ('SNG74486', 'PDT00006');
insert into pemasaran (id_lagu, id_produk) values ('SNG76924', 'PDT00007');
insert into pemasaran (id_lagu, id_produk) values ('SNG78565', 'PDT00008');
insert into pemasaran (id_lagu, id_produk) values ('SNG94198', 'PDT00009');
insert into pemasaran (id_lagu, id_produk) values ('SNG99950', 'PDT00010');
insert into pemasaran (id_lagu, id_produk) values ('SNG24271', 'PDT00011');
insert into pemasaran (id_lagu, id_produk) values ('SNG33609', 'PDT00012');
insert into pemasaran (id_lagu, id_produk) values ('SNG65166', 'PDT00013');
insert into pemasaran (id_lagu, id_produk) values ('SNG73389', 'PDT00014');
insert into pemasaran (id_lagu, id_produk) values ('SNG85255', 'PDT00015');
insert into pemasaran (id_lagu, id_produk) values ('SNG25320', 'PDT00016');
insert into pemasaran (id_lagu, id_produk) values ('SNG27716', 'PDT00017');
insert into pemasaran (id_lagu, id_produk) values ('SNG28146', 'PDT00018');
insert into pemasaran (id_lagu, id_produk) values ('SNG43588', 'PDT00019');
insert into pemasaran (id_lagu, id_produk) values ('SNG46619', 'PDT00020');
insert into pemasaran (id_lagu, id_produk) values ('SNG54061', 'PDT00021');
insert into pemasaran (id_lagu, id_produk) values ('SNG73467', 'PDT00022');
insert into pemasaran (id_lagu, id_produk) values ('SNG76833', 'PDT00023');
insert into pemasaran (id_lagu, id_produk) values ('SNG92539', 'PDT00024');
insert into pemasaran (id_lagu, id_produk) values ('SNG44306', 'PDT00025');
insert into pemasaran (id_lagu, id_produk) values ('SNG55736', 'PDT00026');
insert into pemasaran (id_lagu, id_produk) values ('SNG59693', 'PDT00027');
insert into pemasaran (id_lagu, id_produk) values ('SNG66607', 'PDT00028');
insert into pemasaran (id_lagu, id_produk) values ('SNG79564', 'PDT00029');
insert into pemasaran (id_lagu, id_produk) values ('SNG30250', 'PDT00030');
insert into pemasaran (id_lagu, id_produk) values ('SNG33169', 'PDT00031');
insert into pemasaran (id_lagu, id_produk) values ('SNG37466', 'PDT00032');
insert into pemasaran (id_lagu, id_produk) values ('SNG43131', 'PDT00033');
insert into pemasaran (id_lagu, id_produk) values ('SNG43576', 'PDT00034');
insert into pemasaran (id_lagu, id_produk) values ('SNG43799', 'PDT00035');
insert into pemasaran (id_lagu, id_produk) values ('SNG45689', 'PDT00036');
insert into pemasaran (id_lagu, id_produk) values ('SNG55061', 'PDT00037');
insert into pemasaran (id_lagu, id_produk) values ('SNG62530', 'PDT00038');
insert into pemasaran (id_lagu, id_produk) values ('SNG64130', 'PDT00039');
insert into pemasaran (id_lagu, id_produk) values ('SNG24040', 'PDT00040');
insert into pemasaran (id_lagu, id_produk) values ('SNG37007', 'PDT00041');
insert into pemasaran (id_lagu, id_produk) values ('SNG54082', 'PDT00042');
insert into pemasaran (id_lagu, id_produk) values ('SNG55826', 'PDT00043');
insert into pemasaran (id_lagu, id_produk) values ('SNG63620', 'PDT00044');
insert into pemasaran (id_lagu, id_produk) values ('SNG21308', 'PDT00045');
insert into pemasaran (id_lagu, id_produk) values ('SNG23463', 'PDT00046');
insert into pemasaran (id_lagu, id_produk) values ('SNG30202', 'PDT00047');
insert into pemasaran (id_lagu, id_produk) values ('SNG31416', 'PDT00048');
insert into pemasaran (id_lagu, id_produk) values ('SNG56432', 'PDT00049');
insert into pemasaran (id_lagu, id_produk) values ('SNG57419', 'PDT00050');
insert into pemasaran (id_lagu, id_produk) values ('SNG59261', 'PDT00051');
insert into pemasaran (id_lagu, id_produk) values ('SNG63985', 'PDT00052');
insert into pemasaran (id_lagu, id_produk) values ('SNG67179', 'PDT00053');
insert into pemasaran (id_lagu, id_produk) values ('SNG87383', 'PDT00054');
insert into pemasaran (id_lagu, id_produk) values ('SNG92628', 'PDT00055');
insert into pemasaran (id_lagu, id_produk) values ('SNG92779', 'PDT00056');
insert into pemasaran (id_lagu, id_produk) values ('SNG18838', 'PDT00057');
insert into pemasaran (id_lagu, id_produk) values ('SNG25505', 'PDT00058');
insert into pemasaran (id_lagu, id_produk) values ('SNG46648', 'PDT00059');
insert into pemasaran (id_lagu, id_produk) values ('SNG47766', 'PDT00060');
insert into pemasaran (id_lagu, id_produk) values ('SNG53017', 'PDT00061');
insert into pemasaran (id_lagu, id_produk) values ('SNG56662', 'PDT00062');
insert into pemasaran (id_lagu, id_produk) values ('SNG66681', 'PDT00063');
insert into pemasaran (id_lagu, id_produk) values ('SNG69722', 'PDT00064');
insert into pemasaran (id_lagu, id_produk) values ('SNG70463', 'PDT00065');
insert into pemasaran (id_lagu, id_produk) values ('SNG78850', 'PDT00066');
insert into pemasaran (id_lagu, id_produk) values ('SNG93148', 'PDT00067');
insert into pemasaran (id_lagu, id_produk) values ('SNG25566', 'PDT00068');
insert into pemasaran (id_lagu, id_produk) values ('SNG31111', 'PDT00069');
insert into pemasaran (id_lagu, id_produk) values ('SNG36115', 'PDT00070');
insert into pemasaran (id_lagu, id_produk) values ('SNG42416', 'PDT00071');
insert into pemasaran (id_lagu, id_produk) values ('SNG66853', 'PDT00072');
insert into pemasaran (id_lagu, id_produk) values ('SNG76985', 'PDT00073');
insert into pemasaran (id_lagu, id_produk) values ('SNG84525', 'PDT00074');
insert into pemasaran (id_lagu, id_produk) values ('SNG94915', 'PDT00075');
insert into pemasaran (id_lagu, id_produk) values ('SNG97996', 'PDT00076');
insert into pemasaran (id_lagu, id_produk) values ('SNG23725', 'PDT00077');
insert into pemasaran (id_lagu, id_produk) values ('SNG28583', 'PDT00078');
insert into pemasaran (id_lagu, id_produk) values ('SNG70783', 'PDT00079');
insert into pemasaran (id_lagu, id_produk) values ('SNG93594', 'PDT00080');
insert into pemasaran (id_lagu, id_produk) values ('SNG99365', 'PDT00081');