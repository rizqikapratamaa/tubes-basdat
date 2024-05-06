CREATE TABLE videoekstra (
    id_video_ekstra VARCHAR(50) PRIMARY KEY NOT NULL,
    email_artis VARCHAR(50),
    email_host VARCHAR(50),
    id_label VARCHAR(50),
    durasi INT,
    tanggal_rilis DATE,
    FOREIGN KEY (email_artis) REFERENCES appleid(email),
    FOREIGN KEY (email_host) REFERENCES appleid(email),
	FOREIGN KEY (id_label) REFERENCES label(id_label),
    CHECK (email_artis <> email_host)
);

insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS10275', 'lattestone0@google.es', 'dlehuquet0@elegantthemes.com', 'LBL07449', 5345, '2015-05-24');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS33975', 'mravilus1@exblog.jp', 'rackland1@stanford.edu', 'LBL91095', 5987, '2018-11-09');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS76451', 'dciotti2@seesaa.net', 'rfeake2@networksolutions.com', 'LBL96676', 298, '2009-05-03');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS53748', 'mfursse3@theatlantic.com', 'bsabben3@oakley.com', 'LBL28275', 10322, '2001-03-08');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS48944', 'mhavercroft4@goodreads.com', 'dickeringill4@newyorker.com', 'LBL53657', 3585, '2017-11-16');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS84272', 'schrstine5@webeden.co.uk', 'bstiggles5@biglobe.ne.jp', 'LBL18267', 1559, '2001-08-22');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS11926', 'lstudeart6@salon.com', 'qpolley6@icq.com', 'LBL88033', 5738, '2016-03-23');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS75754', 'woxer7@rediff.com', 'vmccooke7@theglobeandmail.com', 'LBL89440', 9263, '2023-10-16');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS53728', 'vteale8@newyorker.com', 'kbroadbear8@msn.com', 'LBL44728', 6289, '2007-10-06');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS42117', 'ahuckin9@xing.com', 'melcoate9@smh.com.au', 'LBL93857', 8545, '2012-12-21');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS95452', 'llebatteura@prlog.org', 'mdovidiana@ning.com', 'LBL99647', 10704, '2013-09-19');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS00821', 'jcollingwoodb@guardian.co.uk', 'zmacnalleyb@com.com', 'LBL51141', 8345, '2011-12-20');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS11863', 'pcogginsc@usgs.gov', 'teslingerc@disqus.com', 'LBL28970', 9141, '2004-08-07');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS28112', 'channantd@smh.com.au', 'lbrandled@slate.com', 'LBL72678', 7353, '2009-09-19');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS91510', 'emccheynee@blogger.com', 'ehowtone@indiegogo.com', 'LBL83630', 10375, '2023-07-05');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS12594', 'tstroudf@examiner.com', 'dcrosbief@weibo.com', 'LBL13261', 641, '2003-04-23');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS73234', 'oziehmg@mlb.com', 'mrollog@businessinsider.com', 'LBL32302', 4501, '2013-08-02');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS59232', 'mmckaneh@opensource.org', 'tigoeh@skype.com', 'LBL13172', 1578, '2016-05-20');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS01855', 'hclubbi@deliciousdays.com', 'mrainardi@imdb.com', 'LBL94599', 7881, '2000-07-30');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS90248', 'hbuttsj@youtu.be', 'rsimicj@squarespace.com', 'LBL40834', 131, '2005-04-07');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS53351', 'sshakeladyk@chicagotribune.com', 'ysissensk@va.gov', 'LBL43601', 5396, '2006-06-13');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS60797', 'eminterl@howstuffworks.com', 'tdimarial@reverbnation.com', 'LBL29795', 8548, '2015-01-17');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS42994', 'dbortoluttim@prnewswire.com', 'rolifauntm@dagondesign.com', 'LBL76926', 6602, '2003-04-09');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS03257', 'rwackleyn@webnode.com', 'yferrean@auda.org.au', 'LBL26325', 6743, '2004-05-24');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS66402', 'bbenedettinio@acquirethisname.com', 'awatsamo@nhs.uk', 'LBL44953', 548, '2023-10-01');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS81434', 'adroghanp@dmoz.org', 'chawtreyp@dion.ne.jp', 'LBL37792', 8832, '2017-03-06');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS68702', 'mlowcockq@themeforest.net', 'dsainthillq@wisc.edu', 'LBL75885', 9315, '2006-08-10');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS50020', 'jcoyettr@thetimes.co.uk', 'kturgooser@ycombinator.com', 'LBL30694', 10474, '2008-02-07');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS41557', 'pscoulers@istockphoto.com', 'fwindleys@themeforest.net', 'LBL61366', 10580, '2002-05-02');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS26560', 'mkunzt@google.fr', 'lplaxtont@nifty.com', 'LBL68678', 10677, '2002-05-27');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS65849', 'enettleshipu@latimes.com', 'tkaradzasu@google.ru', 'LBL08767', 4172, '2008-09-08');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS30448', 'htrumanv@freewebs.com', 'sducketv@pbs.org', 'LBL88610', 2603, '2017-01-21');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS55278', 'mmeneelyw@japanpost.jp', 'rjanseyw@rambler.ru', 'LBL07674', 6464, '2011-07-08');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS04123', 'mgallifontx@cyberchimps.com', 'lparmiterx@wp.com', 'LBL81260', 501, '2008-12-02');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS85916', 'jharomey@tuttocitta.it', 'slinturny@dropbox.com', 'LBL19652', 7312, '2019-07-25');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS91436', 'mgundaz@guardian.co.uk', 'rfearneyz@merriam-webster.com', 'LBL11735', 4484, '2020-01-06');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS02944', 'earkley10@flavors.me', 'bpetkov10@wikimedia.org', 'LBL40660', 1681, '2022-03-27');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS16710', 'wscripture11@barnesandnoble.com', 'belson11@plala.or.jp', 'LBL78976', 7151, '2019-06-09');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS36193', 'gmoon12@irs.gov', 'bkleinert12@ted.com', 'LBL64902', 2842, '2021-10-16');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS13105', 'twiley13@arizona.edu', 'btingcomb13@arizona.edu', 'LBL60827', 9114, '2019-03-10');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS21982', 'rfish14@imdb.com', 'hpersian14@tripadvisor.com', 'LBL19735', 8963, '2006-11-10');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS82909', 'reason15@yelp.com', 'moneile15@51.la', 'LBL06251', 8370, '2003-11-22');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS49540', 'mheatherington16@comsenz.com', 'ecollar16@columbia.edu', 'LBL99591', 1318, '2004-02-22');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS94452', 'cmelwall17@google.fr', 'gmariel17@noaa.gov', 'LBL63787', 10240, '2022-08-31');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS14594', 'cdulwitch18@nymag.com', 'gygo18@smugmug.com', 'LBL88292', 7822, '2000-07-04');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS23216', 'akibbey19@sohu.com', 'charbron19@last.fm', 'LBL94665', 6763, '2012-12-05');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS63906', 'jtrimby1a@tripod.com', 'swilles1a@msu.edu', 'LBL73627', 108, '2021-03-28');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS52507', 'tharner1b@so-net.ne.jp', 'sakitt1b@studiopress.com', 'LBL23713', 7196, '2017-03-01');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS22757', 'bgodsmark1c@gravatar.com', 'wfeatherstonhaugh1c@uol.com.br', 'LBL34209', 3680, '2017-01-08');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS51841', 'dmccreedy1d@ucoz.com', 'hwaind1d@nydailynews.com', 'LBL75624', 10537, '2010-04-13');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS34297', 'aebdon1e@bizjournals.com', 'cpeche1e@purevolume.com', 'LBL89786', 4289, '2009-10-17');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS39748', 'hbaine1f@sakura.ne.jp', 'pgiacobini1f@tripod.com', 'LBL90798', 6069, '2021-11-25');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS27032', 'osouthwick1g@nsw.gov.au', 'acamolli1g@miibeian.gov.cn', 'LBL77597', 3637, '2016-08-29');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS82150', 'mpavier1h@soup.io', 'alongworthy1h@vinaora.com', 'LBL17368', 2029, '2000-12-12');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS06211', 'kmetson1i@usgs.gov', 'ssomerville1i@wikispaces.com', 'LBL45540', 7848, '2000-05-27');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS67966', 'vsaylor1j@wsj.com', 'flaviste1j@yahoo.co.jp', 'LBL83625', 6055, '2017-11-14');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS16009', 'dwakelam1k@livejournal.com', 'dgullan1k@w3.org', 'LBL83439', 7455, '2001-05-22');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS38714', 'kslayford1l@house.gov', 'mgunner1l@histats.com', 'LBL08188', 2126, '2008-02-15');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS83362', 'emacduffie1m@smugmug.com', 'sdyshart1m@eepurl.com', 'LBL08636', 5983, '2005-12-07');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS48013', 'braulstone1n@e-recht24.de', 'kcorzor1n@elpais.com', 'LBL02851', 8279, '2018-01-01');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS86971', 'kbelhomme1o@delicious.com', 'lmaclennan1o@instagram.com', 'LBL31571', 5317, '2006-09-07');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS30905', 'pspeake1p@prweb.com', 'rsegar1p@bbc.co.uk', 'LBL11065', 5354, '2021-06-15');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS19087', 'hbillows1q@acquirethisname.com', 'cfoxhall1q@netlog.com', 'LBL93301', 8426, '2008-10-29');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS83226', 'sboraston1r@slate.com', 'crunsey1r@latimes.com', 'LBL01293', 7016, '2001-04-04');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS12199', 'kwhatmough1s@reuters.com', 'tcrigin1s@purevolume.com', 'LBL80628', 10667, '2014-11-14');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS64943', 'dfontenot1t@wix.com', 'dlias1t@seesaa.net', 'LBL38876', 7310, '2007-11-09');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS73150', 'sdusting1u@harvard.edu', 'jivanusyev1u@shareasale.com', 'LBL67043', 5211, '2019-01-02');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS23907', 'mmenico1v@github.com', 'bdebnam1v@icq.com', 'LBL91491', 2231, '2014-03-02');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS87908', 'igooder1w@hhs.gov', 'wratke1w@wisc.edu', 'LBL68881', 1171, '2016-02-06');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS71959', 'dphair1x@joomla.org', 'csinfield1x@merriam-webster.com', 'LBL00794', 10775, '2005-01-17');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS55291', 'dstilly1y@hao123.com', 'pdoubrava1y@flickr.com', 'LBL54638', 9681, '2011-05-19');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS56838', 'ekernaghan1z@usda.gov', 'gjedras1z@aol.com', 'LBL34424', 8599, '2017-06-21');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS36172', 'fshadfourth20@ft.com', 'flepope20@weibo.com', 'LBL75954', 2665, '2020-06-06');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS71048', 'jscrivinor21@bloglines.com', 'tbritt21@webs.com', 'LBL21992', 5288, '2006-04-04');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS68214', 'rrackam22@discovery.com', 'rragat22@bloomberg.com', 'LBL49993', 159, '2001-04-08');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS29518', 'lbrowett23@wufoo.com', 'rmaccourt23@bravesites.com', 'LBL41739', 8886, '2004-06-24');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS49955', 'faked24@adobe.com', 'hcauderlie24@yale.edu', 'LBL57877', 4082, '2020-09-12');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS81584', 'clowery25@yolasite.com', 'rkiebes25@nydailynews.com', 'LBL00111', 10416, '2002-04-16');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS42215', 'dsargerson26@rakuten.co.jp', 'kmiranda26@ebay.co.uk', 'LBL54167', 4839, '2004-06-19');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS19263', 'ecayette27@ox.ac.uk', 'jlemoucheux27@photobucket.com', 'LBL84807', 3551, '2010-12-28');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS53120', 'ehatje28@twitpic.com', 'rquestier28@squarespace.com', 'LBL46104', 8858, '2016-07-04');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS35110', 'klavall29@globo.com', 'dpirazzi29@twitpic.com', 'LBL52341', 889, '2019-04-06');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS94627', 'eduffan2a@seattletimes.com', 'ijorcke2a@blinklist.com', 'LBL98076', 8460, '2012-06-07');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS11817', 'bfredi2b@sogou.com', 'tcaveau2b@jiathis.com', 'LBL12933', 10311, '2008-01-29');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS86673', 'jkuhnwald2c@alibaba.com', 'wdungey2c@over-blog.com', 'LBL37741', 3695, '2000-01-26');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS93824', 'nnozzolinii2d@businessweek.com', 'ghall2d@gnu.org', 'LBL54372', 2521, '2021-09-27');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS66697', 'bheis2e@nydailynews.com', 'mlatty2e@go.com', 'LBL79533', 2793, '2015-04-18');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS29922', 'himpy2f@intel.com', 'mvigurs2f@hostgator.com', 'LBL21548', 4455, '2023-03-01');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS35381', 'channy2g@dyndns.org', 'messel2g@wiley.com', 'LBL52293', 1496, '2020-11-09');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS93062', 'ggreenman2h@deliciousdays.com', 'dchezier2h@opera.com', 'LBL74161', 7821, '2010-12-16');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS91204', 'clapley2i@canalblog.com', 'kspain2i@statcounter.com', 'LBL36090', 10030, '2006-07-29');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS22058', 'hjanousek2j@soundcloud.com', 'ddeferrari2j@prlog.org', 'LBL56789', 6069, '2021-03-01');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS55111', 'mlebrun2k@europa.eu', 'lsulman2k@examiner.com', 'LBL19112', 10447, '2015-12-21');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS12075', 'pkenryd2l@alibaba.com', 'gmctavish2l@wired.com', 'LBL21160', 9685, '2014-01-13');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS00505', 'njosupeit2m@addtoany.com', 'ldaltry2m@xinhuanet.com', 'LBL58530', 9874, '2024-01-18');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS99570', 'mwescott2n@constantcontact.com', 'cwrixon2n@wordpress.org', 'LBL88388', 5563, '2012-10-07');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS60378', 'gharesnape2o@mayoclinic.com', 'rroff2o@omniture.com', 'LBL77760', 4152, '2008-11-02');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS20854', 'kwisker2p@webnode.com', 'dsurgey2p@amazon.co.jp', 'LBL48216', 2641, '2002-03-27');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS12368', 'ccookman2q@booking.com', 'emcteer2q@icq.com', 'LBL47544', 7426, '2017-05-21');
insert into videoekstra (id_video_ekstra, email_artis, email_host, id_label, durasi, tanggal_rilis) values ('EKS05678', 'jcircuit2r@epa.gov', 'bbarnes2r@oakley.com', 'LBL74098', 5169, '2015-07-05');
