insert into user(user_name,password,nickname,az) values ('elso','$2a$10$c/.qCnqvl7plMmDpIkn.tuT9BaNvEwdifDvK0naj.unS3FNL0d5.a','Rebeka',1)
insert into user(user_name,password,nickname,az) values ('masodik','$2a$10$c/.qCnqvl7plMmDpIkn.tuT9BaNvEwdifDvK0naj.unS3FNL0d5.a','Mariska',2)
insert into user(user_name,password,nickname,az) values ('harmadik','$2a$10$c/.qCnqvl7plMmDpIkn.tuT9BaNvEwdifDvK0naj.unS3FNL0d5.a','Erzsi',3)
insert into user(user_name,password,nickname,az) values ('negyedik','$2a$10$c/.qCnqvl7plMmDpIkn.tuT9BaNvEwdifDvK0naj.unS3FNL0d5.a','Laci',4)
insert into user(user_name,password,nickname,az) values ('elso','$2a$10$c/.qCnqvl7plMmDpIkn.tuT9BaNvEwdifDvK0naj.unS3FNL0d5.a','Nagymami',5)

# egy-sok kapcsolat -> sok süti 1 felhasználó
# sok-sok kapcsolat: 1 idhez több hozzávaló és 1 hozzávalóhoz több id

# név,felh_azonosito,receptid,nehézség,sós/édes
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('sajtos pogácsa',1,1000,'könnyű',true,private)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('pizzáscsiga',2,1001 ,'közepes',true,public)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('virsis csiga',3 ,1002,'közepes',true,private)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('sajtos pogácsa',3,1003 ,'könnyű',true,private)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('sajtos pogácsa',4,1004,'könnyű',true,public)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('vajas puffancs',2,1005 ,'közepes',true,public)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('Brownie',1,1006,'közepes',false,private)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('Kukucskáló süti', 2,1007, 'nehéz',false,public)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('Brownie',3 ,1008,'könnyű',false,public)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('Mézeskalács', 5,1009,'közepes',false,public)
insert into cookie (name,az,id_recept,difficulty,salty,visibility) values ('Zserbó',5,1010 , 'nehéz',false,public)

insert into leiras (id_recept, menete ) values (1000,'1,Az átszitált lisztet alaposan összegyúrjuk a többi hozzávalóval, ha nem állna össze, pici tejet adhatunk hozzá, ha ragacsosnak érezzük, akkor még egy kis lisztet. Egy pici darabot meg is kóstolhatunk, hogy megfelelően sós a tészta vagy sem, ilyenkor még utána sózhatunk ízlés szerint.
Lisztezett gyúródeszkán 12-15 mm-esre kinyújtjuk, a tetejét megkenjük a felvert tojással, megszórjuk reszelt sajttal, kiszaggatjuk és sütőpapírral bélelt tepsibe rakosgatjuk (kis helyet érdemes hagyni közöttük, mert nőni fognak).
A leeső részeket összegyúrjuk, majd azt is kenjük, szórjuk, szaggatjuk, pakoljuk.
Előmelegitett sütőben (2 részletben) 13-15 perc alatt alsó-felső sütéssel megsütjük.')
insert into leiras (id_recept, menete ) values (1001,'egyeske')
insert into leiras (id_recept, menete ) values (1002,'ketteske')
insert into leiras (id_recept, menete ) values (1003,'hármaska')
insert into leiras (id_recept, menete ) values (1004,'négyeske')
insert into leiras (id_recept, menete ) values (1005,'ötöske')
insert into leiras (id_recept, menete ) values (1006,'hatoska')
insert into leiras (id_recept, menete ) values (1007,'heteske')
insert into leiras (id_recept, menete ) values (1008,'nyolcaska')
insert into leiras (id_recept, menete ) values (1009,'kilenceske')
insert into leiras (id_recept, menete ) values (1010,'tizeske')


# kell egy hozzávaló azonosítója amihez több hozzávaló tartozik 
# ha rákeresek 1 hozzávalóra akkor több idjű sütit is kidob
# ha megnyitok egy receptet akkor az több hozzávalót is kidob

insert into hozzavalok  (id_recept, ingredients)values(1000,'48 dkg finomliszt ,22 dkg vaj ,22 dkg krémsajt, 200 g cottage cheese (vagy tejföl) ,2 tk só ,3 tk sütőpor')
insert into hozzavalok  (id_recept, ingredients)values(1001,'tojás')
insert into hozzavalok  (id_recept, ingredients)values(1002,'finomliszt')
insert into hozzavalok  (id_recept, ingredients)values(1003,'75 g élesztő,2.25 dl tej,1.5 teáskanál cukor,85 dkg finomliszt,375 g margarin (vagy vaj),3.5 tk só,2 db tojás,225 g tejföl,10 dkg reszelt ementáli sajt,10 dkg reszelt trappista sajt,1 db tojás (a kenéshez),1 ek margarin (vagy vaj a tepsi kikenéséhez)')
insert into hozzavalok  (id_recept, ingredients)values(1004,'finomliszt')
insert into hozzavalok  (id_recept, ingredients)values(1005,'tojás,sütőpor')
insert into hozzavalok  (id_recept, ingredients)values(1006,'tej')
insert into hozzavalok  (id_recept, ingredients)values(1007,'mittudomén')
insert into hozzavalok  (id_recept, ingredients)values(1008,'víz,finomliszt')
insert into hozzavalok  (id_recept, ingredients)values(1009,'méz')
insert into hozzavalok  (id_recept, ingredients)values(1010,'csoki')





