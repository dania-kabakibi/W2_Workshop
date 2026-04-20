USE lana_dog_walking;

-- =====================
-- Owner Records
-- =====================
INSERT INTO Owner (owner_id, name, phone_number, address) VALUES
(102, 'Mike Johnson', '2221113333', '12 Market St, Camden NJ 08102'),
(103, 'Sara Lee', '2225557777', '89 Broad St, Newark NJ 07104'),
(104, 'David Kim', '2228889999', '45 Park Ave, Jersey City NJ 07302'),
(105, 'Emily Clark', '2226664444', '77 River Rd, Hoboken NJ 07030'),
(106, 'Chris Brown', '2229992222', '101 Main St, Trenton NJ 08608'),
(107, 'Olivia White', '2227773333', '22 Elm St, Cherry Hill NJ 08002'),
(108, 'James Green', '2224441111', '9 Pine St, Camden NJ 08103'),
(109, 'Sophia Adams', '2223338888', '55 Oak St, Newark NJ 07105'),
(110, 'Daniel Hall', '2222226666', '88 Maple Ave, Paterson NJ 07501'),
(111, 'Liam Scott', '2221119999', '33 Cedar Rd, Edison NJ 08817');

-- =====================
-- Dog Records
-- =====================
INSERT INTO Dog (dog_id, owner_id, name, breed, age, weight_size, health_concern, picture) VALUES
(2, 102, 'Max', 'Labrador', 4, '55 lbs (Large)', 'None', 'https://example.com/dog2.jpg'),
(3, 103, 'Luna', 'Poodle', 3, '20 lbs (Medium)', 'Allergy', 'https://example.com/dog3.jpg'),
(4, 104, 'Rocky', 'Bulldog', 5, '50 lbs (Large)', 'Breathing issues', 'https://example.com/dog4.jpg'),
(5, 105, 'Milo', 'Beagle', 2, '25 lbs (Medium)', 'None', 'https://example.com/dog5.jpg'),
(6, 106, 'Coco', 'Chihuahua', 1, '8 lbs (Small)', 'None', 'https://example.com/dog6.jpg'),
(7, 107, 'Buddy', 'Golden Retriever', 6, '60 lbs (Large)', 'Hip pain', 'https://example.com/dog7.jpg'),
(8, 108, 'Daisy', 'Shih Tzu', 3, '12 lbs (Small)', 'None', 'https://example.com/dog8.jpg'),
(9, 109, 'Charlie', 'Boxer', 4, '65 lbs (Large)', 'None', 'https://example.com/dog9.jpg'),
(10, 110, 'Lucy', 'Corgi', 2, '28 lbs (Medium)', 'None', 'https://example.com/dog10.jpg'),
(11, 111, 'Bailey', 'Husky', 5, '55 lbs (Large)', 'None', 'https://example.com/dog11.jpg');

-- =====================
-- Walker Records
-- =====================
INSERT INTO Walker (walker_id, name, phone_number, emergency_contact) VALUES
(403, 'Anna Lee', '2221012020', 'John Lee, 5550001111'),
(404, 'Mark Davis', '2222023030', 'Lisa Davis, 5550002222'),
(405, 'Nina Patel', '2223034040', 'Raj Patel, 5550003333'),
(406, 'Tom Wilson', '2224045050', 'Sarah Wilson, 5550004444'),
(407, 'Eva Martinez', '2225056060', 'Carlos Martinez, 5550005555'),
(408, 'Ryan Moore', '2226067070', 'Emma Moore, 5550006666'),
(409, 'Chloe King', '2227078080', 'James King, 5550007777'),
(410, 'Noah Wright', '2228089090', 'Mia Wright, 5550008888'),
(411, 'Ava Lopez', '2229091010', 'Luis Lopez, 5550009999'),
(412, 'Ethan Young', '2220102020', 'Olivia Young, 5550010000');

-- =====================
-- Walk Records
-- =====================
INSERT INTO Walk (walk_id, dog_id, walker_id, date, time_frame, gps_tracking, notes) VALUES
(1013, 2, 403, '2026-04-18', '10:00 AM - 11:00 AM', 'https://maps.walktrack.com/path/1013', 'Dog was energetic.'),
(1014, 3, 404, '2026-04-18', '11:00 AM - 12:00 PM', 'https://maps.walktrack.com/path/1014', 'Avoided other dogs.'),
(1015, 4, 405, '2026-04-18', '12:00 PM - 01:00 PM', 'https://maps.walktrack.com/path/1015', 'Short walk due to heat.'),
(1016, 5, 406, '2026-04-18', '01:00 PM - 02:00 PM', 'https://maps.walktrack.com/path/1016', 'Very calm behavior.'),
(1017, 6, 407, '2026-04-18', '02:00 PM - 03:00 PM', 'https://maps.walktrack.com/path/1017', 'Drank water well.'),
(1018, 7, 408, '2026-04-18', '03:00 PM - 04:00 PM', 'https://maps.walktrack.com/path/1018', 'Slow walking due to hip.'),
(1019, 8, 409, '2026-04-18', '04:00 PM - 05:00 PM', 'https://maps.walktrack.com/path/1019', 'Playful and active.'),
(1020, 9, 410, '2026-04-18', '05:00 PM - 06:00 PM', 'https://maps.walktrack.com/path/1020', 'No issues.'),
(1021, 10, 411, '2026-04-18', '06:00 PM - 07:00 PM', 'https://maps.walktrack.com/path/1021', 'Good behavior.'),
(1022, 11, 412, '2026-04-18', '07:00 PM - 08:00 PM', 'https://maps.walktrack.com/path/1022', 'Very energetic.');

-- =====================
-- Payment Records
-- =====================
INSERT INTO Payment (payment_id, walk_id, amount, payment_method, payment_date, status) VALUES
(5002, 1013, 30.00, 'Cash', '2026-04-18', 'Completed'),
(5003, 1014, 32.00, 'Credit Card', '2026-04-18', 'Completed'),
(5004, 1015, 28.00, 'Debit Card', '2026-04-18', 'Completed'),
(5005, 1016, 35.00, 'Credit Card', '2026-04-18', 'Completed'),
(5006, 1017, 25.00, 'Cash', '2026-04-18', 'Completed'),
(5007, 1018, 40.00, 'Credit Card', '2026-04-18', 'Completed'),
(5008, 1019, 27.00, 'Debit Card', '2026-04-18', 'Completed'),
(5009, 1020, 33.00, 'Credit Card', '2026-04-18', 'Completed'),
(5010, 1021, 29.00, 'Cash', '2026-04-18', 'Completed'),
(5011, 1022, 38.00, 'Credit Card', '2026-04-18', 'Completed');

-- =====================
SELECT * FROM Owner;
SELECT * FROM Dog;
SELECT * FROM Walker;
SELECT * FROM Walk;
SELECT * FROM Payment;