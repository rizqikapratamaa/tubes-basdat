create table lirik (
	id_lagu VARCHAR(8),
	baris INT,
	email_penulis VARCHAR(29),
	lirik_lagu TEXT
);

--Add constrain and foreign key
ALTER TABLE lirik
ADD CONSTRAINT fk_id_lagu_lirik FOREIGN KEY (id_lagu) REFERENCES lagu(id_lagu);

ALTER TABLE lirik
ADD CONSTRAINT fk_email_penulis FOREIGN KEY (email_penulis) REFERENCES appleid(email);

insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG74486', 17, 'hritchie2@nbcnews.com', 'luctus tincidunt nulla mollis molestie');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG46619', 4, 'avaughng@dagondesign.com', 'nec nisi volutpat');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG36115', 6, 'mcanadasa@illinois.edu', 'nulla mollis molestie lorem');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG78565', 20, 'hritchie2@nbcnews.com', 'augue vestibulum rutrum rutrum neque');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG10287', 16, 'lmerigonb@admin.ch', 'nam');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG78565', 6, 'avaughng@dagondesign.com', 'justo etiam pretium iaculis justo in');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG25770', 6, 'lmerigonb@admin.ch', 'ut nunc');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG09675', 15, 'cfigurec@abc.net.au', 'mattis');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG25770', 9, 'jburnsall7@phpbb.com', 'lectus pellentesque eget nunc donec quis orci');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG25505', 11, 'avaughng@dagondesign.com', 'in eleifend quam a odio in hac habitasse platea');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG66681', 19, 'aarckoll8@google.ca', 'libero');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG43131', 18, 'clarvente@adobe.com', 'nulla tellus in sagittis dui vel nisl duis');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG63620', 6, 'avaughng@dagondesign.com', 'eget semper rutrum nulla nunc purus phasellus in felis');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG55061', 15, 'jlyptrade6@google.it', 'adipiscing lorem vitae mattis nibh ligula nec sem duis');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG04886', 16, 'epegrumh@e-recht24.de', 'ullamcorper purus');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG21308', 1, 'rfollett5@domainmarket.com', 'sem duis aliquam convallis nunc proin at turpis a');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG66607', 7, 'jburnsall7@phpbb.com', 'placerat ante nulla');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG93594', 14, 'epegrumh@e-recht24.de', 'lacus at velit vivamus vel nulla eget eros elementum');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG43131', 10, 'rfollett5@domainmarket.com', 'sed magna at');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG59693', 14, 'rfollett5@domainmarket.com', 'ac lobortis vel');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG18044', 2, 'rfollett5@domainmarket.com', 'velit nec nisi');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG74486', 5, 'jlyptrade6@google.it', 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG69722', 9, 'rcluettj@imageshack.us', 'venenatis tristique fusce congue');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG73467', 17, 'cfigurec@abc.net.au', 'nec euismod scelerisque quam turpis');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG66853', 1, 'nliston3@ihg.com', 'ante vivamus tortor duis mattis egestas metus');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG18108', 1, 'lpaudind@abc.net.au', 'ut erat id mauris vulputate elementum nullam varius');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG44306', 15, 'nluffman0@theglobeandmail.com', 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG56662', 12, 'bmacgaughey9@wordpress.com', 'tellus semper interdum mauris ullamcorper purus sit amet nulla');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG78850', 4, 'aarckoll8@google.ca', 'eleifend donec ut dolor');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG04059', 14, 'wromanf@ihg.com', 'erat tortor sollicitudin mi sit amet lobortis sapien');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG73467', 14, 'avaughng@dagondesign.com', 'donec ut mauris eget massa');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG13434', 16, 'clarvente@adobe.com', 'faucibus cursus');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG30202', 7, 'lpaudind@abc.net.au', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG66853', 13, 'rfollett5@domainmarket.com', 'justo nec');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG92539', 7, 'clarvente@adobe.com', 'in sagittis dui vel nisl duis ac nibh fusce lacus');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG53017', 4, 'aarckoll8@google.ca', 'elit ac');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG56432', 14, 'jburnsall7@phpbb.com', 'vel pede morbi porttitor');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG30202', 3, 'lmerigonb@admin.ch', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG25566', 8, 'bmacgaughey9@wordpress.com', 'ligula sit amet eleifend');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG18044', 5, 'hritchie2@nbcnews.com', 'lacus curabitur');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG56662', 15, 'mcanadasa@illinois.edu', 'ante vel ipsum praesent blandit lacinia erat vestibulum');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG85255', 12, 'avaughng@dagondesign.com', 'duis');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG70783', 2, 'acettell1@salon.com', 'lacinia');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG42416', 7, 'avaughng@dagondesign.com', 'dictumst morbi vestibulum velit id pretium');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG93594', 1, 'cfigurec@abc.net.au', 'rhoncus mauris enim');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG76985', 13, 'avaughng@dagondesign.com', 'est et tempus semper est quam pharetra');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG45689', 5, 'jlyptrade6@google.it', 'pulvinar lobortis est phasellus');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG92539', 16, 'avaughng@dagondesign.com', 'odio curabitur convallis duis consequat dui nec nisi');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG56851', 9, 'lmerigonb@admin.ch', 'natoque penatibus et');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG69722', 6, 'nluffman0@theglobeandmail.com', 'nibh in hac habitasse platea');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG13434', 7, 'hritchie2@nbcnews.com', 'est et tempus semper est');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG36115', 9, 'jlyptrade6@google.it', 'vel enim sit amet nunc');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG11686', 12, 'jlyptrade6@google.it', 'ac');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG13469', 7, 'aarckoll8@google.ca', 'vehicula consequat morbi a ipsum integer a');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG66607', 4, 'epegrumh@e-recht24.de', 'a nibh in quis justo maecenas rhoncus aliquam');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG99365', 16, 'acettell1@salon.com', 'nulla dapibus dolor vel est');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG46619', 19, 'epegrumh@e-recht24.de', 'pretium iaculis diam erat');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG63620', 17, 'wromanf@ihg.com', 'aenean');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG55826', 6, 'aarckoll8@google.ca', 'justo');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG97996', 12, 'nliston3@ihg.com', 'etiam faucibus cursus urna ut tellus nulla ut erat');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG46619', 8, 'nluffman0@theglobeandmail.com', 'nulla suspendisse potenti cras');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG46648', 3, 'wromanf@ihg.com', 'in hac habitasse platea dictumst');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG45689', 6, 'avaughng@dagondesign.com', 'quisque arcu libero rutrum');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG66681', 6, 'lmerigonb@admin.ch', 'justo sollicitudin');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG92779', 14, 'jburnsall7@phpbb.com', 'ligula pellentesque ultrices phasellus id sapien in sapien iaculis');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG18044', 18, 'lmerigonb@admin.ch', 'venenatis lacinia aenean sit amet justo morbi ut odio');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG76924', 4, 'jburnsall7@phpbb.com', 'quam pharetra magna ac consequat metus sapien');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG87383', 9, 'jlyptrade6@google.it', 'felis donec semper sapien a libero nam dui');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG54061', 4, 'avaughng@dagondesign.com', 'aliquam');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG31111', 19, 'hritchie2@nbcnews.com', 'pellentesque at nulla suspendisse potenti cras');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG66853', 2, 'lmerigonb@admin.ch', 'nibh ligula nec sem duis aliquam convallis');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG33609', 17, 'aarckoll8@google.ca', 'turpis adipiscing lorem vitae mattis nibh ligula nec');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG30202', 16, 'nliston3@ihg.com', 'risus auctor sed tristique in tempus');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG04886', 2, 'wromanf@ihg.com', 'ut rhoncus aliquet pulvinar sed');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG74486', 4, 'lmerigonb@admin.ch', 'ut dolor morbi vel lectus in quam');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG74486', 19, 'clarvente@adobe.com', 'sodales scelerisque mauris sit amet eros suspendisse accumsan');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG13434', 8, 'nliston3@ihg.com', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG25770', 1, 'nliston3@ihg.com', 'magna vulputate');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG25566', 17, 'aarckoll8@google.ca', 'massa donec');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG57419', 13, 'bmacgaughey9@wordpress.com', 'sed');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG28146', 7, 'rcluettj@imageshack.us', 'magna vulputate luctus cum sociis natoque penatibus');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG18108', 7, 'bmacgaughey9@wordpress.com', 'duis consequat dui nec nisi volutpat');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG25770', 6, 'rcluettj@imageshack.us', 'nisl duis ac nibh fusce lacus purus aliquet');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG04059', 17, 'avaughng@dagondesign.com', 'ut mauris eget massa tempor convallis nulla neque');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG85255', 11, 'bmacgaughey9@wordpress.com', 'donec ut dolor morbi vel lectus in');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG43576', 1, 'ddohr4@baidu.com', 'purus');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG62530', 20, 'ddohr4@baidu.com', 'semper');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG85255', 14, 'ddohr4@baidu.com', 'congue etiam justo etiam pretium');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG59261', 13, 'nluffman0@theglobeandmail.com', 'dapibus duis at velit eu est congue');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG31111', 11, 'rfollett5@domainmarket.com', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG70783', 9, 'epegrumh@e-recht24.de', 'luctus et ultrices posuere cubilia curae duis');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG24040', 13, 'gbaroschi@china.com.cn', 'sed');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG11591', 8, 'lmerigonb@admin.ch', 'felis ut at dolor quis odio consequat varius integer');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG05651', 11, 'clarvente@adobe.com', 'posuere cubilia curae duis faucibus accumsan odio');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG45689', 16, 'hritchie2@nbcnews.com', 'hendrerit at vulputate vitae nisl');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG66607', 3, 'bmacgaughey9@wordpress.com', 'mauris non ligula pellentesque ultrices phasellus id sapien in');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG04059', 11, 'rfollett5@domainmarket.com', 'vivamus vestibulum sagittis sapien cum');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG79564', 9, 'avaughng@dagondesign.com', 'ipsum primis in');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG31416', 5, 'hritchie2@nbcnews.com', 'erat volutpat in congue etiam justo');
insert into lirik (id_lagu, baris, email_penulis, lirik_lagu) values ('SNG28583', 4, 'clarvente@adobe.com', 'a libero nam dui proin leo odio');
