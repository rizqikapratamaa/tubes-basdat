create table label (
	id_label CHAR(8) PRIMARY KEY NOT NULL,
	nama_label VARCHAR(50),
	asal_negara VARCHAR(50),
	tahun_berdiri VARCHAR(50),
	CHECK (tahun_berdiri REGEXP '^[0-9]{4}$')
);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL08916', 'Littel, Lemke and Casper', 'America', 2016);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL36151', 'Boyer-Bruen', 'Lebanon', 2005);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL56085', 'Borer-Jast', 'China', 2014);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL08834', 'Goldner Inc', 'Indonesia', 2015);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL98019', 'Dare, Bartell and Reichel', 'Ukraine', 2004);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL57040', 'Howe LLC', 'South Korea', 2000);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL28845', 'Jenkins-Brekke', 'Japan', 2015);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL58495', 'Aufderhar, Quigley and Pagac', 'Cyprus', 2004);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL24065', 'Davis Inc', 'Ukraine', 2016);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL04529', 'Heaney-Von', 'Philippines', 2003);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL56156', 'Harber, Kuhic and Pfeffer', 'Portugal', 2017);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL51202', 'Jacobson-Mraz', 'Brazil', 2018);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL88736', 'Ryan-Greenholt', 'Philippines', 2017);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL48380', 'Johnson and Sons', 'France', 2011);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL06402', 'Bashirian, Wintheiser and Beahan', 'Ukraine', 2016);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL26441', 'Kris-Stehr', 'China', 2005);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL92927', 'Botsford, Schowalter and Rau', 'Portugal', 2015);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL23123', 'Johns Group', 'China', 2007);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL75389', 'Runte-Murazik', 'Sweden', 0);
insert into label (id_label, nama_label, asal_negara, tahun_berdiri) values ('LBL83521', 'Cole-Bailey', 'China', 2011);
