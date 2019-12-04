insert into user(id,username,password,nickname,enabled,role) values (1,'elso','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Rebeka', false,'ROLE_USER');
insert into user(id,username,password,nickname,enabled,role) values (2,'masodik','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Mariska', false,'ROLE_USER');
insert into user(id,username,password,nickname,enabled,role) values (6,'dori','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Dóri', false,'ROLE_USER');

insert into user(id,username,password,nickname,enabled,role) values (3,'harmadik','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Erzsi', false,'ROLE_USER');
insert into user(id,username,password,nickname,enabled,role) values (4,'negyedik','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Laci',false,'ROLE_USER');
insert into user(id,username,password,nickname,enabled,role) values (5,'otodik','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Nagymami', false,'ROLE_USER');



insert into receipt (id,name,user_id,difficulty,salty,visibility) values (1,'Sajtos pogácsa',1,'örökkévalóság',true,true);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (2,'Pizzáscsiga',2,'közepes',true,false);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (3,'Virsis csiga',3,'közepes',true,true);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (4,'Sajtos pogácsa',3 ,'könnyű',true,false);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (5,'Sajtos pogácsa',4,'könnyű',true,true);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (6,'Vajas puffancs',2 ,'közepes',true,true);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (7,'Brownie',1,'közepes',false,false);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (8,'Kukucskáló süti', 2, 'nehéz',false,true);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (9,'Brownie',3 ,'könnyű',false,true);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (10,'Mézeskalács', 5,'közepes',false,true);
insert into receipt (id,name,user_id,difficulty,salty,visibility) values (11,'Zserbó',5 , 'nehéz',false,true);

insert into receipt_description (id, receipt_id, description ) values (1,1,'ehhez a sütihez 9 beadandó és 8év stressz kell ezeket összekeverjük és a sütőben 500 fokon tütjük amíg idegösszeropanást nem kapunk aztán juhúúú kész a sütink');
insert into receipt_description (id, receipt_id, description ) values (2,2,'ketteske');
insert into receipt_description (id, receipt_id, description ) values (3,3,'hármaska');
insert into receipt_description (id, receipt_id, description ) values (4,4,'négyeske');
insert into receipt_description (id, receipt_id, description ) values (5,5,'ötöske');
insert into receipt_description (id, receipt_id, description ) values (6,6,'hatoska');
insert into receipt_description (id, receipt_id, description ) values (7,7,'heteske');
insert into receipt_description (id, receipt_id, description ) values (8,8,'nyolcaska');
insert into receipt_description (id, receipt_id, description ) values (9,9,'kilenceske');
insert into receipt_description (id, receipt_id, description ) values (10,10,'tizeske');
insert into receipt_description (id, receipt_id, description ) values (11,11,'tizenegyeske');

insert into ingredient (id, name) values (1,'tojás');
insert into ingredient (id, name) values (2,'finomliszt');
insert into ingredient (id, name) values (3,'tej');
insert into ingredient (id, name) values (4,'eleszto');
insert into ingredient (id, name) values (5,'viz');
insert into ingredient (id, name) values (6,'méz');
insert into ingredient (id, name) values (7,'csoki');

insert into receipt_ingredient (id, receipt_id, ingredient_id) values (1, 1, 1);
insert into receipt_ingredient (id, receipt_id, ingredient_id) values (2, 1, 2);
insert into receipt_ingredient (id, receipt_id, ingredient_id) values (3, 1, 3);
insert into receipt_ingredient (id, receipt_id, ingredient_id) values (4, 9, 1);
insert into receipt_ingredient (id, receipt_id, ingredient_id) values (5, 9, 6);
insert into receipt_ingredient (id, receipt_id, ingredient_id) values (6, 9, 7);



