create table playlist (
	email_pembuat VARCHAR(29),
	id_playlist VARCHAR(50) PRIMARY KEY,
	nama_playlist TEXT,
	CHECK (id_playlist REGEXP '^PL[0-9]{6}$')
);

ALTER TABLE playlist
ADD CONSTRAINT fk_email_pembuat_playlist FOREIGN KEY (email_pembuat) REFERENCES appleid(email);

insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('gbaroschi@china.com.cn', 'PL657880', 'quis libero nullam');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL000152', 'donec diam neque');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL877370', 'auctor');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('acettell1@salon.com', 'PL955965', 'vestibulum');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL350728', 'magna bibendum imperdiet');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('wromanf@ihg.com', 'PL434174', 'ut volutpat sapien');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('wromanf@ihg.com', 'PL743729', 'nulla');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('jburnsall7@phpbb.com', 'PL721050', 'pede');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('hritchie2@nbcnews.com', 'PL286116', 'lacus curabitur');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL049264', 'eget tincidunt');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('lmerigonb@admin.ch', 'PL131841', 'in felis');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('lpaudind@abc.net.au', 'PL862217', 'est');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL989439', 'congue elementum');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('cfigurec@abc.net.au', 'PL636169', 'interdum');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('epegrumh@e-recht24.de', 'PL984738', 'duis');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL109835', 'rhoncus mauris');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('hritchie2@nbcnews.com', 'PL019955', 'dapibus nulla');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL655496', 'justo pellentesque viverra');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('lmerigonb@admin.ch', 'PL503365', 'vulputate');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('wromanf@ihg.com', 'PL724244', 'dictumst morbi');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('jlyptrade6@google.it', 'PL287122', 'cubilia curae');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL167541', 'luctus');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('epegrumh@e-recht24.de', 'PL498238', 'a');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('bmacgaughey9@wordpress.com', 'PL431760', 'vivamus metus arcu');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL855189', 'in faucibus');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('acettell1@salon.com', 'PL689308', 'nisi volutpat');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('gbaroschi@china.com.cn', 'PL688664', 'varius nulla');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('jlyptrade6@google.it', 'PL667277', 'venenatis');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('aarckoll8@google.ca', 'PL983007', 'condimentum');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('bmacgaughey9@wordpress.com', 'PL670162', 'in faucibus');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('nliston3@ihg.com', 'PL928353', 'pharetra magna');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL631897', 'aliquam erat');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('gbaroschi@china.com.cn', 'PL578910', 'tortor id');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('rcluettj@imageshack.us', 'PL640592', 'lorem vitae mattis');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('lmerigonb@admin.ch', 'PL617290', 'primis in faucibus');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL655935', 'pellentesque ultrices');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('epegrumh@e-recht24.de', 'PL050033', 'metus vitae');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('cfigurec@abc.net.au', 'PL190847', 'in');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('epegrumh@e-recht24.de', 'PL917481', 'morbi quis');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('nluffman0@theglobeandmail.com', 'PL813503', 'id massa id');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('hritchie2@nbcnews.com', 'PL169254', 'odio donec');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('jburnsall7@phpbb.com', 'PL324115', 'ipsum');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL923531', 'in quis');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('lpaudind@abc.net.au', 'PL015253', 'accumsan odio');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('nliston3@ihg.com', 'PL372906', 'est');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('nliston3@ihg.com', 'PL051456', 'in');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL619025', 'molestie sed justo');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL153563', 'id consequat in');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL098962', 'morbi non');
insert into playlist (email_pembuat, id_playlist, nama_playlist) values ('wromanf@ihg.com', 'PL296563', 'lacinia eget tincidunt');
