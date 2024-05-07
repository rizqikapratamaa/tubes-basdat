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