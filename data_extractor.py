import re

# Blok teks dengan perintah insert into playlist
sql_text = """
insert into Pemasaran (id_lagu, id_produk) values ('SNG73389', 'PDT15976');
insert into Pemasaran (id_lagu, id_produk) values ('SNG74486', 'PDT62162');
insert into Pemasaran (id_lagu, id_produk) values ('SNG30250', 'PDT78677');
insert into Pemasaran (id_lagu, id_produk) values ('SNG93594', 'PDT54310');
insert into Pemasaran (id_lagu, id_produk) values ('SNG76985', 'PDT39144');
insert into Pemasaran (id_lagu, id_produk) values ('SNG46648', 'PDT98895');
insert into Pemasaran (id_lagu, id_produk) values ('SNG44306', 'PDT66936');
insert into Pemasaran (id_lagu, id_produk) values ('SNG55061', 'PDT05392');
insert into Pemasaran (id_lagu, id_produk) values ('SNG47766', 'PDT29796');
insert into Pemasaran (id_lagu, id_produk) values ('SNG18044', 'PDT94493');
insert into Pemasaran (id_lagu, id_produk) values ('SNG99365', 'PDT45339');
insert into Pemasaran (id_lagu, id_produk) values ('SNG23725', 'PDT04709');
insert into Pemasaran (id_lagu, id_produk) values ('SNG92628', 'PDT39144');
insert into Pemasaran (id_lagu, id_produk) values ('SNG14032', 'PDT11025');
insert into Pemasaran (id_lagu, id_produk) values ('SNG62530', 'PDT39995');
insert into Pemasaran (id_lagu, id_produk) values ('SNG00891', 'PDT11491');
insert into Pemasaran (id_lagu, id_produk) values ('SNG04886', 'PDT26678');
insert into Pemasaran (id_lagu, id_produk) values ('SNG31111', 'PDT39979');
insert into Pemasaran (id_lagu, id_produk) values ('SNG00891', 'PDT71282');
insert into Pemasaran (id_lagu, id_produk) values ('SNG23725', 'PDT50627');
insert into Pemasaran (id_lagu, id_produk) values ('SNG74486', 'PDT07081');
insert into Pemasaran (id_lagu, id_produk) values ('SNG14032', 'PDT16662');
insert into Pemasaran (id_lagu, id_produk) values ('SNG70783', 'PDT70859');
insert into Pemasaran (id_lagu, id_produk) values ('SNG94915', 'PDT11491');
insert into Pemasaran (id_lagu, id_produk) values ('SNG28146', 'PDT85093');
insert into Pemasaran (id_lagu, id_produk) values ('SNG56851', 'PDT14401');
insert into Pemasaran (id_lagu, id_produk) values ('SNG66681', 'PDT13398');
insert into Pemasaran (id_lagu, id_produk) values ('SNG11686', 'PDT45339');
insert into Pemasaran (id_lagu, id_produk) values ('SNG62530', 'PDT64685');
insert into Pemasaran (id_lagu, id_produk) values ('SNG65166', 'PDT89147');
insert into Pemasaran (id_lagu, id_produk) values ('SNG76833', 'PDT11491');
insert into Pemasaran (id_lagu, id_produk) values ('SNG13197', 'PDT45447');
insert into Pemasaran (id_lagu, id_produk) values ('SNG55826', 'PDT97115');
insert into Pemasaran (id_lagu, id_produk) values ('SNG11591', 'PDT85093');
insert into Pemasaran (id_lagu, id_produk) values ('SNG47862', 'PDT16662');
insert into Pemasaran (id_lagu, id_produk) values ('SNG46648', 'PDT70859');
insert into Pemasaran (id_lagu, id_produk) values ('SNG54061', 'PDT11025');
insert into Pemasaran (id_lagu, id_produk) values ('SNG94915', 'PDT71282');
insert into Pemasaran (id_lagu, id_produk) values ('SNG92779', 'PDT97115');
insert into Pemasaran (id_lagu, id_produk) values ('SNG46619', 'PDT75497');
insert into Pemasaran (id_lagu, id_produk) values ('SNG79564', 'PDT71282');
insert into Pemasaran (id_lagu, id_produk) values ('SNG05651', 'PDT51509');
insert into Pemasaran (id_lagu, id_produk) values ('SNG76985', 'PDT00267');
insert into Pemasaran (id_lagu, id_produk) values ('SNG92628', 'PDT08500');
insert into Pemasaran (id_lagu, id_produk) values ('SNG31111', 'PDT85093');
insert into Pemasaran (id_lagu, id_produk) values ('SNG67179', 'PDT94827');
insert into Pemasaran (id_lagu, id_produk) values ('SNG84525', 'PDT98895');
insert into Pemasaran (id_lagu, id_produk) values ('SNG55061', 'PDT54310');
insert into Pemasaran (id_lagu, id_produk) values ('SNG43576', 'PDT04709');
insert into Pemasaran (id_lagu, id_produk) values ('SNG73467', 'PDT39979');
insert into Pemasaran (id_lagu, id_produk) values ('SNG33169', 'PDT52762');
insert into Pemasaran (id_lagu, id_produk) values ('SNG99950', 'PDT34766');
insert into Pemasaran (id_lagu, id_produk) values ('SNG09675', 'PDT14364');
insert into Pemasaran (id_lagu, id_produk) values ('SNG92628', 'PDT51509');
insert into Pemasaran (id_lagu, id_produk) values ('SNG18838', 'PDT15976');
insert into Pemasaran (id_lagu, id_produk) values ('SNG27716', 'PDT08500');
insert into Pemasaran (id_lagu, id_produk) values ('SNG14032', 'PDT55904');
insert into Pemasaran (id_lagu, id_produk) values ('SNG78850', 'PDT78677');
insert into Pemasaran (id_lagu, id_produk) values ('SNG43131', 'PDT77371');
insert into Pemasaran (id_lagu, id_produk) values ('SNG66607', 'PDT94493');
insert into Pemasaran (id_lagu, id_produk) values ('SNG67179', 'PDT34766');
insert into Pemasaran (id_lagu, id_produk) values ('SNG57419', 'PDT11491');
insert into Pemasaran (id_lagu, id_produk) values ('SNG64130', 'PDT86026');
insert into Pemasaran (id_lagu, id_produk) values ('SNG78565', 'PDT11025');
insert into Pemasaran (id_lagu, id_produk) values ('SNG76985', 'PDT07081');
insert into Pemasaran (id_lagu, id_produk) values ('SNG54061', 'PDT05392');
insert into Pemasaran (id_lagu, id_produk) values ('SNG21308', 'PDT04054');
insert into Pemasaran (id_lagu, id_produk) values ('SNG57419', 'PDT64685');
insert into Pemasaran (id_lagu, id_produk) values ('SNG31108', 'PDT11025');
insert into Pemasaran (id_lagu, id_produk) values ('SNG11686', 'PDT50627');
insert into Pemasaran (id_lagu, id_produk) values ('SNG04059', 'PDT89147');
insert into Pemasaran (id_lagu, id_produk) values ('SNG04886', 'PDT94827');
insert into Pemasaran (id_lagu, id_produk) values ('SNG13434', 'PDT54310');
insert into Pemasaran (id_lagu, id_produk) values ('SNG37466', 'PDT48569');
insert into Pemasaran (id_lagu, id_produk) values ('SNG43799', 'PDT55904');
insert into Pemasaran (id_lagu, id_produk) values ('SNG42416', 'PDT86026');
insert into Pemasaran (id_lagu, id_produk) values ('SNG47862', 'PDT39979');
insert into Pemasaran (id_lagu, id_produk) values ('SNG64130', 'PDT39144');
insert into Pemasaran (id_lagu, id_produk) values ('SNG65166', 'PDT50627');
insert into Pemasaran (id_lagu, id_produk) values ('SNG18044', 'PDT05392');
insert into Pemasaran (id_lagu, id_produk) values ('SNG18044', 'PDT50627');
insert into Pemasaran (id_lagu, id_produk) values ('SNG63620', 'PDT14401');
insert into Pemasaran (id_lagu, id_produk) values ('SNG25566', 'PDT29796');
insert into Pemasaran (id_lagu, id_produk) values ('SNG11686', 'PDT09461');
insert into Pemasaran (id_lagu, id_produk) values ('SNG46619', 'PDT66936');
insert into Pemasaran (id_lagu, id_produk) values ('SNG56432', 'PDT08500');
insert into Pemasaran (id_lagu, id_produk) values ('SNG56662', 'PDT85985');
insert into Pemasaran (id_lagu, id_produk) values ('SNG55736', 'PDT39979');
insert into Pemasaran (id_lagu, id_produk) values ('SNG21308', 'PDT71282');
insert into Pemasaran (id_lagu, id_produk) values ('SNG04059', 'PDT11491');
insert into Pemasaran (id_lagu, id_produk) values ('SNG62530', 'PDT55904');
insert into Pemasaran (id_lagu, id_produk) values ('SNG69722', 'PDT34766');
insert into Pemasaran (id_lagu, id_produk) values ('SNG74486', 'PDT39995');
insert into Pemasaran (id_lagu, id_produk) values ('SNG63985', 'PDT52762');
insert into Pemasaran (id_lagu, id_produk) values ('SNG18108', 'PDT16662');
insert into Pemasaran (id_lagu, id_produk) values ('SNG47766', 'PDT39995');
insert into Pemasaran (id_lagu, id_produk) values ('SNG73467', 'PDT55904');
insert into Pemasaran (id_lagu, id_produk) values ('SNG55826', 'PDT86026');
insert into Pemasaran (id_lagu, id_produk) values ('SNG23463', 'PDT08556');
insert into Pemasaran (id_lagu, id_produk) values ('SNG15400', 'PDT66936');

"""

# Pola regex untuk mengekstrak nilai id_playlist
pattern = re.compile(r"\('\w{8}', '\w{8}'\)")

# Ekstrak id_playlist menggunakan regex
id_playlists = re.findall(pattern, sql_text)

# Gabungkan hasil dengan format yang diinginkan
formatted_result = ", ".join(id_playlists)

print("data:", formatted_result)

for match in id_playlists:
    print("Ditemukan pasangan:", match)

print(f'jumlah data: {len(id_playlists)}')



unique = set(id_playlists)
print("data unik:", len(unique))