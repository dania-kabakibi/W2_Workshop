DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
-- 1. DogOwner Table
CREATE TABLE DogOwner (
    owner_id INT PRIMARY KEY AUTO_INCREMENT,   -- Integer
    first_name VARCHAR(50) NOT NULL,           -- String
    last_name VARCHAR(50) NOT NULL,            -- String
    phone VARCHAR(20),                         -- String
    email VARCHAR(100),                        -- String
    address VARCHAR(255),                       -- String
    
    emergency_contact_name VARCHAR(50) NOT NULL, -- String
    emergency_contact_phone VARCHAR(50) NOT NULL   -- String
    );
    
-- 2. Dog Table
CREATE TABLE Dog (
    dog_id INT PRIMARY KEY AUTO_INCREMENT,     -- Integer
    owner_id INT NOT NULL,                     -- Integer (FK)
    name VARCHAR(50) NOT NULL,                 -- String
    age INT,                                   -- Integer
    breed VARCHAR(50),                         -- String
    weight DECIMAL(5,2),                       -- Decimal (e.g., 45.50 lbs)
    health_notes TEXT,                         -- String (long text)
    photo VARCHAR(255),                        -- String (file path or URL)

    FOREIGN KEY (owner_id) REFERENCES DogOwner(owner_id)
);

-- 3. Walker Table
CREATE TABLE Walker (
    walker_id INT PRIMARY KEY AUTO_INCREMENT,  -- Integer
    first_name VARCHAR(50) NOT NULL,           -- String
    last_name VARCHAR(50) NOT NULL,            -- String
    phone VARCHAR(20),                         -- String
    email VARCHAR(100)                         -- String
);

-- 4. Walk Table
CREATE TABLE Walk (
    walk_id INT PRIMARY KEY AUTO_INCREMENT,    -- Integer
    dog_id INT NOT NULL,                       -- Integer (FK)
    walker_id INT NOT NULL,                    -- Integer (FK)
    date DATE NOT NULL,                        -- Date
    start_time TIME NOT NULL,                  -- Time
    end_time TIME NOT NULL,                    -- Time
    location VARCHAR(255),                     -- String
    gps_tracking VARCHAR(255),                 -- String (URL or reference)

    FOREIGN KEY (dog_id) REFERENCES Dog(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Walker(walker_id)
);

-- 5. Payment Table
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT, -- Integer
    owner_id INT NOT NULL,                     -- Integer (FK)
    amount DECIMAL(10,2) NOT NULL,             -- Decimal (money)
    payment_method VARCHAR(50),                -- String (e.g., Cash, Card)
    payment_date DATE,                         -- Date

    FOREIGN KEY (owner_id) REFERENCES DogOwner(owner_id)
);