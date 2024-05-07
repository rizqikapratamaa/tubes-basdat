CREATE TABLE kualitaslagu (
    id_lagu VARCHAR(8) NOT NULL,
    kualitas_audio VARCHAR(15) CHECK (kualitas_audio IN ('Dolby Atmos', 'Hi-Res Lossless')),
    PRIMARY KEY (id_lagu, kualitas_audio),
	FOREIGN KEY (id_lagu) REFERENCES lagu(id_lagu)
);

insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG43131', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG70463', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG55061', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG66681', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG92628', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG11686', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG66681', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG11686', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG92779', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG46262', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG55736', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG73389', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG56662', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG13469', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG71808', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG24271', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG93594', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG43576', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG31108', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG31111', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG24271', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG00891', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG33169', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG15400', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG43799', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG13197', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG25320', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG13434', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG18838', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG63985', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG13197', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG18044', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG23463', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG05651', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG14032', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG64130', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG21308', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG70463', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG63985', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG99950', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG00476', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG13434', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG66607', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG45689', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG18838', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG47766', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG84525', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG99950', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG63620', 'Hi-Res Lossless');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG25566', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG25566', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG25566', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG09121', 'Dolby Atmos');
insert into kualitaslagu (id_lagu, kualitas_audio) values ('SNG09121', 'Hi-Res Lossless');
