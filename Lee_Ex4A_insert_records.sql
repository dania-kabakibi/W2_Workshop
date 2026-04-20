USE lana_dog_walking;
-- DogOwner (3 records)
INSERT INTO DogOwner (first_name, last_name, phone, email, address, emergency_contact_name, emergency_contact_phone)
VALUES
('Lana', 'Smith', '555-1234', 'lana@email.com', '123 Main St', 'John Smith', '555-5678'),
('Mark', 'Johnson', '555-2345', 'mark@email.com', '456 Oak Ave', 'Sarah Johnson', '555-6789'),
('Emily', 'Davis', '555-3456', 'emily@email.com', '789 Pine Rd', 'Tom Davis', '555-7890');


-- Dog (3 records)
INSERT INTO Dog (owner_id, name, age, breed, weight, health_notes, photo)
VALUES
(1, 'Buddy', 3, 'Golden Retriever', 65.50, 'No issues', 'buddy.jpg'),
(2, 'Max', 5, 'Bulldog', 50.00, 'Allergic to chicken', 'max.jpg'),
(3, 'Bella', 2, 'Poodle', 40.25, 'Needs daily exercise', 'bella.jpg');


-- Walker (2 records)
INSERT INTO Walker (first_name, last_name, phone, email)
VALUES
('Jake', 'Wilson', '555-4567', 'jake@email.com'),
('Sophie', 'Brown', '555-5678', 'sophie@email.com');


-- Walk (1 record)
INSERT INTO Walk (dog_id, walker_id, date, start_time, end_time, location, gps_tracking)
VALUES
(1, 1, '2026-04-18', '09:00:00', '09:30:00', 'Central Park', 'gps_link_1');


-- Payment (1 record)
INSERT INTO Payment (owner_id, amount, payment_method, payment_date)
VALUES
(1, 25.00, 'Card', '2026-04-18');
