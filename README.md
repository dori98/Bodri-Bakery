# Bodri-Bakery
 
* Projektötlet

  Az alapötlet egy Bodri Bakery nevű receptes oldal lenne.
Regisztráció nélkül a felhasználó megnézheti az addig feltöltött recepteket , regisztráció után pedig feltöltheti saját receptjeit  is.
A feltöltött recepteket be lehet sorolni kategóriákba gyerekbarát elkészítés  és időtartam  alapján.
A receptek lehetnek publikusak vagy privátak.
A receptekhez rendelhetők kulcsszavak és azok alapján lehet keresni(süti neve és hozzávalók). 
A recepteket lehet értékelni finomság alapján.
A moderátorok egy nem az oldalhoz illő, illetve nem szalonképes recepteket priváttá tehetnek, amely többé nem állítható vissza publikusra a felhasználó által.
Az adminisztrátor ezen felül adhat vagy elvehet moderátori jogot.

* Funkcionális követelmények:
 	* Regisztráció
 	* Publikus receptek listázása
 	* Receptek közötti keresés(név és hozzávaló alapján)
 	* Találatok rendezése
 	* Felhasználók listázása
 	
 	* A receptek értékeléseinek megtekintése
 	* Kulcsszavakhoz tartozó receptek listázása
  * Tagok által elérhető funkciók:
 	 * Saját receptek böngészése
 	 * Receptek létrehozása, módosítása, törlése
 	 * Egy recept lehet publikus vagy privát
 	* Recepthez tartozhat:
      * név
      * hozzávalók
      * leírás
      * kulcsszavak
 	* A receptek lehetnek publikusak vagy privátok
 	* Több recept feltöltése egyszerre, egyenként vagy .zip állományban
 * Moderátorok által elérhető funkciók:
 	* Nem szalonképes publikus receptek véglegesen priváttá állítása
* Adminisztrátor:
 	* Felhasználóknak moderátori jog adása
 	* Felhasználóktól moderátori jog elvétele
* Nem funkcionális elvárások

* Felhasználóbarát, egyszerű, letisztult felület
 	* Keresési eredmények gyors megjelenítése
 	* Jelszavas azonosítás, jelszavak biztonságos tárolása
 	* Privát receptek biztonságos elrejtése a látogatók elől
* Szakterületi fogalomjegyzék
 	* kulcsszó: egy rövid (1-2 szavas) kifejezés, amely összefüggésbe hozható recepttel
 	* .zip fájl: tömörített, több fájlt összefogó archívum

* IDE: NetBeans ,IntelliJ
* Database: H2
*Használt technológiák:
	* Java Spring Boot technológia 
	* MVC modell
	* REST API
	* H2
	* lombok
	* apache commons

Könyvtárstruktúrák:
* controllers
  	* ReceiptController
  	* UserController
* entities
 	 * customized
   		 * CustomizedReceipt
  	 * Ingredient
 	 * Receipt
 	 * ReceiptDescription
 	 * ReceiptIngredient
 	 * User
* repositories
 	 * ReceiptRepository
 	 * UserRepository
* response
 	 * UserResponse
* security
 	 * AuthenticatedUser
 	 * CustomBasicAuthenticationEntryPoint
 	 * MyUseDetailsService
 	 * WebSecurityConfig
* services
	
Végpontok:
* GET/receipts : publikus receptek lekérdezése
* GET/users : userek lekérdezése
* POST/users/register  :  regisztrációs adatok elküldése
* POST/login : belépés adatok elküldése

! [Database UML diagram] (uml_bodri-bakery.png)


