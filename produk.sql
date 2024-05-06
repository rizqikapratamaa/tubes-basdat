create table produk (
    id_produk VARCHAR(8) PRIMARY KEY NOT NULL,
    email_pembuat VARCHAR(55),
    judul_produk TEXT,
    genre VARCHAR(28),
    tanggal_rilis DATE,
    tipe_produk VARCHAR(6),
    FOREIGN KEY (email_pembuat) REFERENCES appleid(email),
    CHECK (id_playlist REGEXP '^PD[0-9]{5}$')
);

insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT92852', 'epegrumh@e-recht24.de', 'Broken Arrow', 'Indie Rock', '2015-03-02', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT64411', 'bmacgaughey9@wordpress.com', 'Two Girls and a Sailor', 'Punk', '2022-11-17', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT81386', 'lpaudind@abc.net.au', 'Offside', 'Drum and Bass', '2016-04-28', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT56045', 'lmerigonb@admin.ch', 'Hound of the Baskervilles, The', 'R&B/Soul', '2006-01-30', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT40773', 'lmerigonb@admin.ch', 'Tank', 'House', '2011-08-06', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT45135', 'lpaudind@abc.net.au', 'Steam of Life (Miesten vuoro)', 'Disco', '2006-10-01', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT38764', 'avaughng@dagondesign.com', 'Bitter Creek', 'Metal', '2000-10-16', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT79847', 'bmacgaughey9@wordpress.com', 'Bordertown', 'Drum and Bass', '2023-12-17', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT31815', 'jlyptrade6@google.it', 'Anchorman: The Legend of Ron Burgundy', 'Synthpop', '2008-03-13', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT07309', 'lmerigonb@admin.ch', 'Anton Chekhov''s The Duel', 'Opera', '2008-07-18', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT02787', 'epegrumh@e-recht24.de', 'Philomena', 'Gospel', '2021-01-18', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT93087', 'wromanf@ihg.com', 'Hotel Reserve', 'Classical', '2007-02-08', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT54568', 'acettell1@salon.com', 'Escape from the Planet of the Apes', 'Pop', '2003-07-12', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT58335', 'rcluettj@imageshack.us', 'Room in Rome (Habitación en Roma)', 'Classical', '2014-06-01', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT26845', 'nluffman0@theglobeandmail.com', 'Magic Hunter (Büvös vadász)', 'Bluegrass', '2002-01-14', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT92274', 'acettell1@salon.com', 'Modern Boy (Modeon boi)', 'Synthpop', '2022-01-20', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT40912', 'avaughng@dagondesign.com', 'Zu: Warriors from the Magic Mountain (Xin shu shan jian ke)', 'Folk', '2017-10-05', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT11409', 'acettell1@salon.com', 'Beaver, The', 'Folk', '2016-07-16', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT18729', 'lmerigonb@admin.ch', 'Office Killer', 'Rock', '2023-06-06', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT24656', 'acettell1@salon.com', '1987', 'Hip-Hop/Rap', '2004-07-08', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT66237', 'lpaudind@abc.net.au', 'Gun Shy', 'Hip-Hop/Rap', '2010-08-15', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT57758', 'nluffman0@theglobeandmail.com', 'Johnny Guitar', 'Jazz', '2017-12-30', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT93712', 'lpaudind@abc.net.au', 'Dear Wendy', 'Gospel', '2021-02-05', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT75850', 'jlyptrade6@google.it', 'Sometimes They Come Back', 'Electronic Dance Music (EDM)', '2012-07-28', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT65941', 'avaughng@dagondesign.com', 'A Matador''s Mistress', 'Hip-Hop/Rap', '2020-05-30', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT72931', 'epegrumh@e-recht24.de', 'Burning, The', 'Alternative Rock', '2018-07-10', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT56691', 'rcluettj@imageshack.us', 'Dean Spanley', 'Indie Rock', '2021-05-20', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT61961', 'nluffman0@theglobeandmail.com', 'Cobra Verde', 'Disco', '2012-02-23', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT75215', 'avaughng@dagondesign.com', 'Carbine Williams', 'Gospel', '2023-06-28', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT45294', 'rcluettj@imageshack.us', 'Carnosaur', 'House', '2019-05-11', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT86955', 'jlyptrade6@google.it', 'Place in the Sun, A', 'Bluegrass', '2013-06-16', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT88065', 'rcluettj@imageshack.us', '1984', 'Opera', '2018-02-13', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT34339', 'wromanf@ihg.com', 'It''s Such a Beautiful Day', 'Disco', '2023-05-15', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT82347', 'bmacgaughey9@wordpress.com', 'Storm Rider', 'Folk', '2010-04-08', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT07357', 'nluffman0@theglobeandmail.com', 'Chicken with Plums (Poulet aux prunes)', 'Metal', '2005-10-18', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT74810', 'lpaudind@abc.net.au', 'Tristan & Isolde', 'R&B/Soul', '2019-01-02', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT92459', 'nluffman0@theglobeandmail.com', 'Universal Soldier: Day of Reckoning', 'Hip-Hop/Rap', '2014-05-13', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT12647', 'nluffman0@theglobeandmail.com', 'Denise Calls Up', 'Indie Rock', '2022-07-06', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT67542', 'nluffman0@theglobeandmail.com', 'Shogun''s Ninja (Ninja bugeicho momochi sandayu)', 'Reggae', '2024-04-02', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT67772', 'acettell1@salon.com', 'Pier, The (Jetée, La)', 'Blues', '2005-12-01', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT24525', 'rcluettj@imageshack.us', 'Back to the Secret Garden', 'Folk', '2016-06-05', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT35588', 'bmacgaughey9@wordpress.com', 'Grateful Dawg', 'Reggae', '2020-12-23', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT22478', 'acettell1@salon.com', 'L!fe Happens', 'Drum and Bass', '2011-08-18', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT47206', 'lmerigonb@admin.ch', 'Blind Swordsman: Zatoichi, The (Zatôichi)', 'Opera', '2015-01-11', 'Album');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT12138', 'lmerigonb@admin.ch', 'Patlabor: The Movie (Kidô keisatsu patorebâ: The Movie)', 'Opera', '2011-05-25', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT27159', 'lmerigonb@admin.ch', 'Prophet, A (Un Prophète)', 'Hip-Hop/Rap', '2020-04-10', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT05812', 'bmacgaughey9@wordpress.com', '8 ½ Women (a.k.a. 8 1/2 Women) (a.k.a. Eight and a Half Women)', 'Rock', '2013-09-14', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT99937', 'jlyptrade6@google.it', 'Cry Baby Lane', 'Blues', '2019-10-01', 'EP');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT35788', 'bmacgaughey9@wordpress.com', 'Brother''s Keeper', 'Disco', '2008-08-29', 'Single');
insert into produk (id_produk, email_pembuat, judul_produk, genre, tanggal_rilis, tipe_produk) values ('PDT09843', 'epegrumh@e-recht24.de', 'I Love You, Don''t Touch Me!', 'Latin', '2024-04-17', 'Album');
