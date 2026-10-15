USE macaci_utulok;

-- Uloha 1: Vypiste mena maciek a mena a priezviska ich adoptujucich
-- Zobrazte iba zaznamy, v ktorych sa ID macky zhoduje s catID adoptujuceho
SELECT cats.name, adopters.first_name, adopters.last_name
FROM cats
INNER JOIN adopters ON cats.id = adopters.catID;


-- Uloha 2: Vypiste mena vsetkych maciek a mena a priezviska ich adoptujucich
-- Zobrazte aj macky, ktore nemaju zaznam v tabulke adopters
SELECT cats.name, adopters.first_name, adopters.last_name
FROM cats
LEFT JOIN adopters ON cats.id = adopters.catID;


-- Uloha 3: Vypiste mena a priezviska vsetkych adoptujucich a mena maciek
-- ktore si adoptovali. Zobrazte aj vsetkych adoptujucich bez zodpovedajucej macky
SELECT cats.name, adopters.first_name, adopters.last_name
FROM cats
RIGHT JOIN adopters ON cats.id = adopters.catID;


-- Uloha 4: Vypiste mena maciek a mena veterinara, ktory sa o ne stara
-- Zobrazte iba macky, ktorych meno sa nachadza v stlpci cats tabulky veterinarians
SELECT cats.name, veterinarians.name
FROM cats
INNER JOIN veterinarians
ON veterinarians.cats LIKE CONCAT('%', cats.name, '%');


-- Uloha 5: Vypiste vsetky mozne dvojice mien maciek a veterinarov
SELECT cats.name, veterinarians.name
FROM cats
CROSS JOIN veterinarians;