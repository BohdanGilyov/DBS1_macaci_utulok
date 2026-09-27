DROP DATABASE IF EXISTS macaci_utulok;
CREATE DATABASE IF NOT EXISTS macaci_utulok;
USE macaci_utulok;

DROP TABLE IF EXISTS adopters;

CREATE TABLE adopters (
    adopterID INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    catID INT NOT NULL,
    adoption_date DATE NOT NULL,
    phone_num VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO adopters (adopterID, first_name, last_name, catID, adoption_date, phone_num, email) VALUES
    (1, 'Tony', 'Stark', 3, '2025-05-23', '+380000000001', 'erlgjwei@fdijr.com'),
    (2, 'Captain', 'America', 4, '2026-01-30', '+6754758743', 'ywervf@bjhdfh.com'),
    (3, 'Spider', 'Men', 4, '2025-06-02', '+84587879549', 'srigeisgh@rgiu.com'),
    (4, 'Darth', 'Veider', 5, '2025-06-18', '+8945823495', 'dskfbgreourlrkgje@dsjgh.com'),
    (5, 'Princess', 'Cinderella', 6, '2025-07-07', '+3049593759', 'dfgqhfjrheio@rgkjq.com'),
    (6, 'Professor', 'McGonagall', 7, '2025-07-25', '+43782985596', 'daflkghjge@ergjn.com'),
    (7, 'Harry', 'Potter', 8, '2025-08-11', '+489560234', 'jteuyjyfiy@earlig.com');

DROP TABLE IF EXISTS cats;

CREATE TABLE cats (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender ENUM('male', 'female') NOT NULL,
    age INT NOT NULL,
    breed VARCHAR(100),
    health TEXT NOT NULL,
    cat_character TEXT NOT NULL,
    recommendations TEXT,
    date_arrival DATE NOT NULL
);

INSERT INTO cats (id, name, gender, age, breed, health, cat_character, recommendations, date_arrival) VALUES
    (1, 'Luna', 'female', 3, 'American Curl',
     'Healthy. No known health problems.',
     'Curious, playful, sociable and enjoys climbing and exploring.',
     'Provide toys, climbing areas and regular playtime. Monitor the ears during routine check-ups.',
     '2026-08-14'),

    (2, 'Milo', 'male', 5, 'British Shorthair',
     'Healthy. Slight tendency to gain weight.',
     'Calm, independent, affectionate and intelligent.',
     'Control food portions and provide regular physical activity. Avoid overfeeding.',
     '2026-08-21'),

    (3, 'Simba', 'female', 2, 'Bengal',
     'Healthy. No known health problems.',
     'Active, curious, intelligent and sociable. Enjoys playing with water.',
     'Provide plenty of interactive toys and opportunities for physical activity.',
     '2026-09-02'),

    (4, 'Leo', 'male', 7, 'Maine Coon',
     'Generally healthy. Requires regular coat care.',
     'Gentle, balanced, sociable and friendly. Can tolerate being alone.',
     'Brush the coat regularly and provide enough food and fresh water. Monitor general health due to large body size.',
     '2026-08-05'),

    (5, 'Oliver', 'male', 4, 'Munchkin',
     'Healthy. No known health problems.',
     'Active, friendly, intelligent and confident.',
     'Keep indoors and provide safe climbing and playing areas. Avoid excessive jumping from high places.',
     '2026-09-10'),

    (6, NULL, 'male', 1, NULL,
     'Under observation after arrival. Mild digestive problems.',
     'Shy and cautious around people. Slowly becomes more comfortable.',
     'Provide a quiet environment, monitor eating and drinking, and follow the prescribed diet.',
     '2026-09-15'),

    (7, 'Nala', 'female', 6, 'Siamese',
     'Healthy. No known health problems.',
     'Energetic, loyal, communicative and very attached to people.',
     'Provide regular interaction and playtime. Avoid leaving the cat alone for long periods.',
     '2026-08-28'),

    (8, 'Mia', 'female', 3, 'Nevsky Masquerade',
     'Healthy. No known health problems.',
     'Calm, gentle, affectionate and cautious around strangers.',
     'Brush the coat regularly and provide a quiet resting place.',
     '2026-09-04'),

    (9, NULL, 'female', 2, NULL,
     'Minor skin irritation. Treatment in progress.',
     'Calm but somewhat nervous around unfamiliar people.',
     'Follow the veterinary treatment plan and monitor the skin condition. Keep the sleeping area clean.',
     '2026-09-12'),

    (10, 'Charlie', 'male', 8, 'Asian',
     'Healthy. No known health problems.',
     'Calm, affectionate, intelligent and sociable.',
     'Provide a warm and comfortable resting area. Avoid prolonged periods of loneliness.',
     '2026-07-30'),

    (11, 'Bella', 'female', 2, 'British Shorthair',
     'Healthy. No known health problems.',
     'Calm, affectionate and friendly. Enjoys spending time near people.',
     'Provide balanced food, regular playtime and routine veterinary check-ups.',
     '2026-08-03'),

    (12, 'Oscar', 'male', 4, 'Maine Coon',
     'Healthy. No known health problems.',
     'Gentle, sociable and playful. Gets along well with other cats.',
     'Brush the coat regularly and provide enough space for activity.',
     '2026-08-11'),

    (13, 'Cleo', 'female', 5, 'Siamese',
     'Healthy. No known health problems.',
     'Very social, vocal, intelligent and strongly attached to people.',
     'Provide plenty of interaction and interactive toys.',
     '2026-08-19'),

    (14, 'Toby', 'male', 3, 'Bengal',
     'Healthy. High energy level.',
     'Very active, curious and playful. Loves exploring new places.',
     'Provide climbing structures, toys and daily physical activity.',
     '2026-08-25'),

    (15, 'Sophie', 'female', 6, 'Munchkin',
     'Healthy. No known health problems.',
     'Friendly, playful and confident.',
     'Provide safe toys and avoid excessive jumping from high surfaces.',
     '2026-09-01'),

    (16, 'Max', 'male', 9, 'British Shorthair',
     'Healthy. Slightly overweight.',
     'Calm, independent and affectionate.',
     'Control food portions and encourage daily physical activity.',
     '2026-07-26'),

    (17, 'Lily', 'female', 1, NULL,
     'Healthy. Vaccination schedule is being completed.',
     'Shy but playful. Quickly becomes comfortable in a quiet environment.',
     'Provide a calm space and continue the recommended vaccination schedule.',
     '2026-09-17'),

    (18, 'Rocky', 'male', 7, 'Maine Coon',
     'Mild dental problems. Treatment recommended.',
     'Calm, friendly and patient.',
     'Follow dental care recommendations and schedule regular oral check-ups.',
     '2026-08-07'),

    (19, 'Daisy', 'female', 4, 'American Curl',
     'Healthy. No known health problems.',
     'Playful, curious and affectionate.',
     'Provide interactive toys and regularly check the ears.',
     '2026-08-30'),

    (20, 'Jack', 'male', 5, NULL,
     'Recovering from a minor respiratory infection.',
     'Quiet, gentle and somewhat cautious around strangers.',
     'Keep the sleeping area warm and clean and monitor breathing.',
     '2026-09-06'),

    (21, 'Ruby', 'female', 3, 'Nevsky Masquerade',
     'Healthy. No known health problems.',
     'Gentle, calm and affectionate.',
     'Brush the coat regularly and provide a comfortable resting place.',
     '2026-08-16'),

    (22, 'Finn', 'male', 2, 'Bengal',
     'Healthy. No known health problems.',
     'Extremely energetic, intelligent and curious.',
     'Provide daily exercise, climbing areas and mentally stimulating toys.',
     '2026-09-08'),

    (23, 'Chloe', 'female', 8, 'Siamese',
     'Healthy. No known health problems.',
     'Affectionate, vocal and very attached to her owner.',
     'Provide regular human interaction and avoid prolonged isolation.',
     '2026-07-22'),

    (24, 'Theo', 'male', 6, 'Asian',
     'Healthy. No known health problems.',
     'Intelligent, calm and sociable.',
     'Provide regular playtime and a comfortable resting area.',
     '2026-08-09'),

    (25, 'Zoe', 'female', 2, 'American Curl',
     'Minor ear irritation. Under observation.',
     'Active, curious and friendly.',
     'Keep the ears clean according to veterinary instructions and monitor irritation.',
     '2026-09-13'),

    (26, 'Archie', 'male', 10, 'British Shorthair',
     'Generally healthy for age. Requires regular monitoring.',
     'Calm, independent and patient.',
     'Provide senior-appropriate food and schedule regular veterinary examinations.',
     '2026-07-18'),

    (27, 'Ivy', 'female', 5, NULL,
     'Healthy. No known health problems.',
     'Reserved at first but affectionate after gaining trust.',
     'Give her time to adapt and provide a quiet hiding place.',
     '2026-08-23'),

    (28, 'Jackie', 'female', 3, 'Munchkin',
     'Healthy. No known health problems.',
     'Friendly, playful and sociable.',
     'Avoid high surfaces and provide toys suitable for indoor play.',
     '2026-09-03'),

    (29, 'Cooper', 'male', 4, 'Maine Coon',
     'Healthy. No known health problems.',
     'Gentle, playful and sociable.',
     'Brush regularly and provide a large scratching post.',
     '2026-08-27'),

    (30, NULL, 'male', 1, NULL,
     'Under observation. No serious health problems detected.',
     'Very shy and cautious. Needs time to become comfortable around people.',
     'Provide a quiet separate space, fresh water and regular meals. Minimize stress during adaptation.',
     '2026-09-19');

DROP TABLE IF EXISTS inventory;

CREATE TABLE inventory (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    quantity DECIMAL(10,2) NOT NULL,
    unit VARCHAR(20) NOT NULL
);

INSERT INTO inventory (id, name, type, quantity, unit) VALUES
    (1, 'Cat food', 'food', 50.00, 'kg'),
    (2, 'Canned cat food', 'food', 120.00, 'pcs'),
    (3, 'Rabies vaccine', 'vaccine', 15.00, 'pcs'),
    (4, 'Panleukopenia vaccine', 'vaccine', 20.00, 'pcs'),
    (5, 'Antibiotics', 'medicine', 30.00, 'pcs'),
    (6, 'Anti-parasite medicine', 'medicine', 25.00, 'pcs'),
    (7, 'Cat litter', 'hygiene', 80.00, 'kg'),
    (8, 'Toy mouse', 'toy', 27.00, 'pcs'),
    (9, 'Cat scratching post', 'toy', 12.00, 'pcs'),
    (10, 'Cat water bowl', 'accommodation', 27.00, 'pcs'),
    (11, 'Cat feeder', 'accommodation', 27.00, 'pcs'),
    (12, 'Cat cage', 'accommodation', 27.00, 'pcs');

DROP TABLE IF EXISTS veterinarians;

CREATE TABLE veterinarians (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    work_duration VARCHAR(50) NOT NULL,
    cats TEXT NOT NULL
);

INSERT INTO veterinarians (id, name, age, work_duration, cats) VALUES
    (1, 'Andrii Koval', 24, '10 mesiacov',
     'Luna, Milo, Simba, Leo, Oliver, Nala'),

    (2, 'Martin Šimko', 33, '2,5 roka',
     'Mia, Charlie, Bella, Oscar, Cleo, Toby'),

    (3, 'Oleksii Bondarenko', 27, '1 rok',
     'Sophie, Max, Lily, Rocky, Daisy, Jack'),

    (4, 'Pavol Hruška', 48, '4 mesiace',
     'Ivy, Jackie, Cooper, Bez mena č. 1, Bez mena č. 2'),

    (5, 'Mykola Tkachenko', 55, '3 roky',
     'Ruby, Finn, Chloe, Theo, Zoe, Archie');

SELECT * FROM adopters;
SELECT * FROM cats;
SELECT * FROM inventar;
SELECT * FROM veterinarians;