DROP SCHEMA IF EXISTS lana_dog_walking; 
CREATE SCHEMA lana_dog_walking; 
USE lana_dog_walking;
-- 1. OWNERS (no dependencies)
CREATE TABLE OWNERS (
    owner_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);
-- 2. WALKERS (no dependencies)
CREATE TABLE WALKERS (
    walker_id INT PRIMARY KEY,
    walker_name VARCHAR(100),
    phone_emergency VARCHAR(20)
);
-- 3. DOGS (depends on OWNERS)
CREATE TABLE DOGS (
    dog_id INT PRIMARY KEY,
    owner_id INT,
    dog_name VARCHAR(50),
    breed VARCHAR(50),
    age INT,
    weight_size VARCHAR(20),
    health_concerns VARCHAR(255),
    photo_url VARCHAR(255),
    FOREIGN KEY (owner_id) REFERENCES OWNERS(owner_id)
);
-- 4. WALKS (depends on WALKERS and DOGS)
CREATE TABLE WALKS (
    walk_id INT PRIMARY KEY,
    walker_id INT,
    dog_id INT,
    walk_date DATE,
    start_time TIME,
    duration_minutes INT,
    gps_tracking VARCHAR(255),
    FOREIGN KEY (walker_id) REFERENCES WALKERS(walker_id),
    FOREIGN KEY (dog_id) REFERENCES DOGS(dog_id)
);
-- 5. PAYMENTS (depends on OWNERS and WALKS)
CREATE TABLE PAYMENTS (
    payment_id INT PRIMARY KEY,
    owner_id INT,
    walk_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    payment_method VARCHAR(50),
    FOREIGN KEY (owner_id) REFERENCES OWNERS(owner_id),
    FOREIGN KEY (walk_id) REFERENCES WALKS(walk_id)
);