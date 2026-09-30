USE macaci_utulok;

-- ULOHY --

-- Pridajte do tabulky 'inventory' hracku 'Toy fish', ktora patri do kategorie 'toy', v pocte 20 kusov --
INSERT INTO inventory (id, name, type, quantity, unit) VALUES
	(13, 'Toy fish', 'toy', 20, 'pcs');
    
-- Vypiste tabulku 'inventory'
SELECT * FROM inventory;

-- Vypiste vek vsetkych macicek z tabulky 'cats', pohlavie ktorych je zena --
SELECT age FROM cats WHERE gender = 'female';

-- Vymazte vsetky zaznamy z tabulky 'inventory', mozete aj ovetrit prazdnost tabulky
TRUNCATE TABLE inventory;
SELECT * FROM inventory;

-- Zmente nazov tabulky 'inventory' na 'inventar'
RENAME TABLE inventory TO inventar;