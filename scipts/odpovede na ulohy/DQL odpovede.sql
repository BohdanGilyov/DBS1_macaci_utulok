USE macaci_utulok;

-- Uloha 1: Vypiste meno a vek vsetkych maciek zenskeho pohlavia, vysledok usporiadajte podla veku vzostupne.
SELECT name, age
FROM cats
WHERE gender = 'female'
ORDER BY age ASC;

-- Uloha 2 - vypiste meno a plemeno vsetkyck maciek, starsich ako 5 rokov, vysledok usporiadajte podla veku zostupne.
SELECT name, breed
FROM cats
WHERE age > 5
ORDER BY age DESC;

-- Uloha 3 - vypiste nazov a mnozstvo vsetkych poloziek inventara typu 'food', vysledok usporiadajte podla mnozstva zostupne.
SELECT name, quantity
FROM inventory
WHERE type = 'food'
ORDER BY quantity DESC;

-- Uloha 4: Vypiste meno a datum prichodu vsetkych maciek, ktore prisli do utulku po 1.1.2024, vysledok usporiadajte podla datumu prichodu vzostupne.
SELECT name, date_arrival
FROM cats
WHERE date_arrival > '2024-01-01'
ORDER BY date_arrival ASC;

-- Uloha 5: Vypiste nazov a jednotku vsetkych poloziek inventara, ktorych mnozstvo je mensie ako 10, vysledok usporiadajte podla nazvu abecedne.
SELECT name, unit
FROM inventory
WHERE quantity < 10
ORDER BY name ASC;