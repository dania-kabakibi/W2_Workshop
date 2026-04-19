DROP SCHEMA IF EXISTS lana_dog_walking; 
CREATE SCHEMA lana_dog_walking; 
USE lana_dog_walking;

CREATE TABLE Owner (
    owner_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE Dog (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    breed VARCHAR(100),
    age INT,
    weight_size VARCHAR(50),
    health_concern VARCHAR(255),
    picture VARCHAR(255),
    
    CONSTRAINT fk_dog_owner
        FOREIGN KEY (owner_id)
        REFERENCES Owner(owner_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Walker (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    emergency_contact VARCHAR(100) NOT NULL
);

CREATE TABLE Walk (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    walker_id INT NOT NULL,
    date DATE NOT NULL,
    time_frame VARCHAR(50) NOT NULL,
    gps_tracking VARCHAR(255),
    notes VARCHAR(255),

    CONSTRAINT fk_walk_dog
        FOREIGN KEY (dog_id)
        REFERENCES Dog(dog_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_walk_walker
        FOREIGN KEY (walker_id)
        REFERENCES Walker(walker_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    payment_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL,

    CONSTRAINT fk_payment_walk
        FOREIGN KEY (walk_id)
        REFERENCES Walk(walk_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);