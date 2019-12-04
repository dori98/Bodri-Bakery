insert into user(id,username,password,nickname,enabled,role) values (1,'elso','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Rebeka', false,'ROLE_USER');
insert into user(id,username,password,nickname,enabled,role) values (2,'masodik','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Mariska', false,'ROLE_USER');
insert into user(id,username,password,nickname,enabled,role) values (6,'dori','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Dóri', false,'ROLE_USER');

insert into user(id,username,password,nickname,enabled,role) values (3,'harmadik','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Erzsi', false,'ROLE_USER');
insert into user(id,username,password,nickname,enabled,role) values (4,'negyedik','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Laci',false,'ROLE_USER');
insert into user(id,username,password,nickname,enabled,role) values (5,'otodik','$2a$10$ptitHYlcv7qGZXCpB8zCn.fIZM/K9LFIVWefgP8/MMXz2bXlzsjfa','Nagymami', false,'ROLE_USER');



insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('30 dkg lisztet összekeverem a 20 dkg olvasztott vajjal és 1 tojas sargájával, utáa adunk hozzá 2-3 evőkanál tejfölt és 1 tk sót. Ezek után a 30dkg reszelt sajt felét a tésztához gyúrom ,a másik felét félrerakom. Ezek után 1 órára pihenni tesszük a hűtőbe. Az 1 óra elteltével kivesszük és lisztezett vágódeszkán kinyújtjuk és megkenjük a maradék tojás fehérhével és rászórjuk a sajtot. 180 fokos előmelegített sütőben addig sütjük amíg aranybarna nem lesz. Jó sütést :D !','Sajtos pogácsa',1,'örökkévalóság',true,true);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('ketteske','Pizzáscsiga',2,'közepes',true,false);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('harmaska','Virsis csiga',3,'közepes',true,true);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('negyeske','Sajtos pogácsa',3 ,'könnyű',true,false);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('otoske','Sajtos pogácsa',4,'könnyű',true,true);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('hatoska','Vajas puffancs',2 ,'közepes',true,true);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('heteske','Brownie',1,'közepes',false,false);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('nyolcaska','Kukucskáló süti', 2, 'nehéz',false,true);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('kilenceske','Brownie',3 ,'könnyű',false,true);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('tzeske','Mézeskalács', 5,'közepes',false,true);
insert into receipt (description,name,user_id,difficulty,salty,visibility) values ('tizenegyeske','Zserbó',5 , 'nehéz',false,true);



insert into ingredient (id, name) values (1,'tojás');
insert into ingredient (id, name) values (2,'finomliszt');
insert into ingredient (id, name) values (3,'tej');
insert into ingredient (id, name) values (4,'eleszto');
insert into ingredient (id, name) values (5,'viz');
insert into ingredient (id, name) values (6,'méz');
insert into ingredient (id, name) values (7,'csoki');
insert into ingredient (id, name) values (8,'cukor');
insert into ingredient (id, name) values (9,'cukrozatlan kakaópor');
insert into ingredient (id, name) values (10,'sütőpor');
insert into ingredient (id, name) values (11,'só');
insert into ingredient (id, name) values (12,'sajt');
insert into ingredient (id, name) values (13,'vaj');


insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (1, 1);
insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (1, 2);
insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (1, 11);
insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (1, 12);
insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (1,13 );


insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (2, 2);
insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (1, 3);
insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (9, 1);
insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (9, 6);
insert into RECEIPT_INGREDIENTS (RECEIPT_ID , INGREDIENTS_ID) values (9, 7);



