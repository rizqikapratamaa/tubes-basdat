import re

# Blok teks dengan perintah insert into playlist
sql_text = """
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('gbaroschi@china.com.cn', 'PL657880', 'quis libero nullam');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL000152', 'donec diam neque');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL877370', 'auctor');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('acettell1@salon.com', 'PL955965', 'vestibulum');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL350728', 'magna bibendum imperdiet');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('wromanf@ihg.com', 'PL434174', 'ut volutpat sapien');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('wromanf@ihg.com', 'PL743729', 'nulla');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('jburnsall7@phpbb.com', 'PL721050', 'pede');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('hritchie2@nbcnews.com', 'PL286116', 'lacus curabitur');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL049264', 'eget tincidunt');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('lmerigonb@admin.ch', 'PL131841', 'in felis');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('lpaudind@abc.net.au', 'PL862217', 'est');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL989439', 'congue elementum');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('cfigurec@abc.net.au', 'PL636169', 'interdum');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('epegrumh@e-recht24.de', 'PL984738', 'duis');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL109835', 'rhoncus mauris');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('hritchie2@nbcnews.com', 'PL019955', 'dapibus nulla');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL655496', 'justo pellentesque viverra');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('lmerigonb@admin.ch', 'PL503365', 'vulputate');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('wromanf@ihg.com', 'PL724244', 'dictumst morbi');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('jlyptrade6@google.it', 'PL287122', 'cubilia curae');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL167541', 'luctus');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('epegrumh@e-recht24.de', 'PL498238', 'a');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('bmacgaughey9@wordpress.com', 'PL431760', 'vivamus metus arcu');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL855189', 'in faucibus');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('acettell1@salon.com', 'PL689308', 'nisi volutpat');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('gbaroschi@china.com.cn', 'PL688664', 'varius nulla');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('jlyptrade6@google.it', 'PL667277', 'venenatis');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('aarckoll8@google.ca', 'PL983007', 'condimentum');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('bmacgaughey9@wordpress.com', 'PL670162', 'in faucibus');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('nliston3@ihg.com', 'PL928353', 'pharetra magna');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL631897', 'aliquam erat');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('gbaroschi@china.com.cn', 'PL578910', 'tortor id');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('rcluettj@imageshack.us', 'PL640592', 'lorem vitae mattis');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('lmerigonb@admin.ch', 'PL617290', 'primis in faucibus');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL655935', 'pellentesque ultrices');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('epegrumh@e-recht24.de', 'PL050033', 'metus vitae');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('cfigurec@abc.net.au', 'PL190847', 'in');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('epegrumh@e-recht24.de', 'PL917481', 'morbi quis');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('nluffman0@theglobeandmail.com', 'PL813503', 'id massa id');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('hritchie2@nbcnews.com', 'PL169254', 'odio donec');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('jburnsall7@phpbb.com', 'PL324115', 'ipsum');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL923531', 'in quis');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('lpaudind@abc.net.au', 'PL015253', 'accumsan odio');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('nliston3@ihg.com', 'PL372906', 'est');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('nliston3@ihg.com', 'PL051456', 'in');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('rfollett5@domainmarket.com', 'PL619025', 'molestie sed justo');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('mcanadasa@illinois.edu', 'PL153563', 'id consequat in');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('ddohr4@baidu.com', 'PL098962', 'morbi non');
insert into Playlist (email_pembuat, id_playlist, nama_playlist) values ('wromanf@ihg.com', 'PL296563', 'lacinia eget tincidunt');
"""

# Pola regex untuk mengekstrak nilai id_playlist
pattern = re.compile(r"'.*?', '(.*?)', '.*?'")

# Ekstrak id_playlist menggunakan regex
id_playlists = re.findall(pattern, sql_text)

# Gabungkan hasil dengan format yang diinginkan
formatted_result = ", ".join(id_playlists)

print("data:", formatted_result)
