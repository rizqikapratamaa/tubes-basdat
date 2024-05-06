create table subscriptionplan (
	jenis_langganan VARCHAR(10) PRIMARY KEY NOT NULL,
	harga_bulanan VARCHAR(5)
);
insert into MOCK_DATA (jenis_langganan, harga_bulanan) values ('Pelajar', 35000);
insert into MOCK_DATA (jenis_langganan, harga_bulanan) values ('Perorangan', 55000);
insert into MOCK_DATA (jenis_langganan, harga_bulanan) values ('Keluarga', 85000);
