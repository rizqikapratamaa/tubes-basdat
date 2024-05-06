CREATE TABLE Pemasaran (
    id_lagu VARCHAR(8) NOT NULL,
    id_produk VARCHAR(8) NOT NULL,
    FOREIGN KEY (id_lagu) REFERENCES Lagu(id_lagu),
    FOREIGN KEY (id_produk) REFERENCES Produk(id_produk)
);

DELIMITER //

CREATE TRIGGER email_sama_trigger
BEFORE INSERT ON Pemasaran
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



INSERT INTO Pemasaran (id_lagu, id_produk) VALUES
('SNG28583', 'PDT11409'),
('SNG31108', 'PDT11409'),
('SNG31111', 'PDT11409'),
('SNG43576', 'PDT11409'),
('SNG47766', 'PDT11409'),
('SNG55061', 'PDT11409'),
('SNG78565', 'PDT11409'),
('SNG28583', 'PDT22478'),
('SNG31108', 'PDT22478'),
('SNG31111', 'PDT22478'),
('SNG43576', 'PDT22478'),
('SNG47766', 'PDT22478'),
('SNG55061', 'PDT22478'),
('SNG78565', 'PDT22478'),
('SNG28583', 'PDT24656'),
('SNG31108', 'PDT24656'),
('SNG31111', 'PDT24656'),
('SNG43576', 'PDT24656'),
('SNG47766', 'PDT24656'),
('SNG55061', 'PDT24656'),
('SNG78565', 'PDT24656'),
('SNG28583', 'PDT54568'),
('SNG31108', 'PDT54568'),
('SNG31111', 'PDT54568'),
('SNG43576', 'PDT54568'),
('SNG47766', 'PDT54568'),
('SNG55061', 'PDT54568'),
('SNG78565', 'PDT54568'),
('SNG28583', 'PDT67772'),
('SNG31108', 'PDT67772'),
('SNG31111', 'PDT67772'),
('SNG43576', 'PDT67772'),
('SNG47766', 'PDT67772'),
('SNG55061', 'PDT67772'),
('SNG78565', 'PDT67772'),
('SNG28583', 'PDT92274'),
('SNG31108', 'PDT92274'),
('SNG31111', 'PDT92274'),
('SNG43576', 'PDT92274'),
('SNG47766', 'PDT92274'),
('SNG55061', 'PDT92274'),
('SNG78565', 'PDT92274'),
('SNG24271', 'PDT38764'),
('SNG25566', 'PDT38764'),
('SNG30202', 'PDT38764'),
('SNG64130', 'PDT38764'),
('SNG66681', 'PDT38764'),
('SNG94915', 'PDT38764'),
('SNG24271', 'PDT40912'),
('SNG25566', 'PDT40912'),
('SNG30202', 'PDT40912'),
('SNG64130', 'PDT40912'),
('SNG66681', 'PDT40912'),
('SNG94915', 'PDT40912'),
('SNG24271', 'PDT65941'),
('SNG25566', 'PDT65941'),
('SNG30202', 'PDT65941'),
('SNG64130', 'PDT65941'),
('SNG66681', 'PDT65941'),
('SNG94915', 'PDT65941'),
('SNG24271', 'PDT75215'),
('SNG25566', 'PDT75215'),
('SNG30202', 'PDT75215'),
('SNG64130', 'PDT75215'),
('SNG66681', 'PDT75215'),
('SNG94915', 'PDT75215'),
('SNG02891', 'PDT05812'),
('SNG18044', 'PDT05812'),
('SNG25320', 'PDT05812'),
('SNG28146', 'PDT05812'),
('SNG36115', 'PDT05812'),
('SNG67179', 'PDT05812'),
('SNG74486', 'PDT05812'),
('SNG76924', 'PDT05812'),
('SNG92779', 'PDT05812'),
('SNG02891', 'PDT35588'),
('SNG18044', 'PDT35588'),
('SNG25320', 'PDT35588'),
('SNG28146', 'PDT35588'),
('SNG36115', 'PDT35588'),
('SNG67179', 'PDT35588'),
('SNG74486', 'PDT35588'),
('SNG76924', 'PDT35588'),
('SNG92779', 'PDT35588'),
('SNG02891', 'PDT35788'),
('SNG18044', 'PDT35788'),
('SNG25320', 'PDT35788'),
('SNG28146', 'PDT35788'),
('SNG36115', 'PDT35788'),
('SNG67179', 'PDT35788'),
('SNG74486', 'PDT35788'),
('SNG76924', 'PDT35788'),
('SNG92779', 'PDT35788'),
('SNG02891', 'PDT64411'),
('SNG18044', 'PDT64411'),
('SNG25320', 'PDT64411'),
('SNG28146', 'PDT64411'),
('SNG36115', 'PDT64411'),
('SNG67179', 'PDT64411'),
('SNG74486', 'PDT64411');
