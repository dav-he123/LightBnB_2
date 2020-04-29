INSERT INTO users (name, email, password) 
VALUES ('Tom', 'tom@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('David', 'david@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('John', 'john@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, country, street, city, province, post_code, cost_per_night, active, parking_spaces)
VALUES (1, 'House', 'description', '1200px-Toronto_Raptors_logo.svg.png', 'photo-1512867616096-c91ed9daf1eb.jpeg', 'Canada', 'Shawn Street', 'Montreal', 'Quebec', 'L3E', 287, true, 2),
(2, 'Condo', 'description', '1200px-Toronto_Raptors_logo.svg.png', 'photo-1512867616096-c91ed9daf1eb.jpeg', 'Canada', 'Shawn Street', 'Montreal', 'Quebec', 'L3E', 235, true, 2),
(3, 'John', 'description', '1200px-Toronto_Raptors_logo.svg.png', 'photo-1512867616096-c91ed9daf1eb.jpeg', 'Canada', 'Albert Street', 'Toronto', 'Ontario', 'L2R', 785, true, 3);


INSERT INTO reservations (start_date, end_date, property_id, guest_id) 
VALUES ('2018-09-11', '2018-09-26', 2, 3),
('2019-01-04', '2019-02-01', 2, 2),
('2021-10-01', '2021-10-14', 2, 4);


INSERT INTO property_reviews (message, rating, guest_id, property_id, reservation_id)
VALUES ('message', 1, 1, 2, 118),
('message', 2, 2, 2, 119),
('message', 3, 3, 3, 120);

