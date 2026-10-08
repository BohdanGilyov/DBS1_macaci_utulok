USE macaci_utulok;

-- Uloha 1: Vypiste cele meno kazdeho veterinara
-- Cele meno vytvorte spojenim mena a priezviska
-- Vysledok usporiadajte podla celeho mena vzostupne

SELECT CONCAT(name, ' ') AS cele_meno
FROM veterinarians
ORDER BY cele_meno ASC;


-- Uloha 2: Vypiste nazov a zaokruhlene mnozstvo poloziek inventara
-- Mnozstvo zaokruhlite na cele cislo
-- Vysledok usporiadajte podla zaokruhleneho mnozstva zostupne

SELECT name, ROUND(quantity, 0) AS rounded_quantity
FROM inventory
WHERE quantity > 10
ORDER BY rounded_quantity DESC;


-- Uloha 3: Vypiste nazov polozky a dlzku jej nazvu
-- Zobrazte iba polozky, ktorych nazov ma viac ako 10 znakov
-- Vysledok usporiadajte podla dlzky nazvu vzostupne
SELECT name, CHAR_LENGTH(name) AS name_length
FROM inventory
WHERE CHAR_LENGTH(name) > 10
ORDER BY name_length ASC;


-- Uloha 4: Vypiste meno macky a datum jej prichodu vo formate den.mesiac.rok
-- Zobrazte iba macky, ktore prisli po 1. auguste 2026
-- Vysledok usporiadajte podla datumu prichodu vzostupne

SELECT name, DATE_FORMAT(date_arrival, '%d.%m.%Y') AS date_arrival
FROM cats
WHERE date_arrival > '2026-08-01'
ORDER BY date_arrival ASC;


-- Uloha 5: Vypiste meno, vek a kategoriu macky podla jej veku
-- Mladsiu macku ako 3 roky oznacte ako 'Mlada', macku od 3 do 6 rokov ako 'Dospela'a starsiu macku ako 'Stara'
-- Vysledok usporiadajte podla veku vzostupne

SELECT name, age,
    CASE
        WHEN age < 3 THEN 'Mlada'
        WHEN age <= 6 THEN 'Dospela'
        ELSE 'Stara'
    END AS category
FROM cats
WHERE age IS NOT NULL
ORDER BY age ASC;


-- Uloha 6: Vypiste typ inventara a priemerne mnozstvo poloziek
-- Zahrnte iba polozky s mnozstvom vacsim ako 10
-- Zobrazte iba typy, ktorych priemerne mnozstvo je vacsie ako 20
-- Vysledok usporiadajte podla priemerneho mnozstva zostupne

SELECT type, AVG(quantity) AS average_quantity
FROM inventory
WHERE quantity > 10
GROUP BY type
HAVING AVG(quantity) > 20
ORDER BY average_quantity DESC;