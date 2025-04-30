INSERT INTO users (name, email, password)
VALUES   
  ('Kaladin Stormblessed', 'kaladin@roshar.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Vin Venture', 'vin@scadrial.net', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Hoid', 'wit@cosmere.infinite', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

  INSERT INTO properties 
  (owner_id, title, description, thumbnail_photo_url, cover_photo_url,
  cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms,
  country, street, city, province, post_code, active) 
VALUES
  (1, 'Stormlight Haven', 'A cozy stonekeep with highstorms view. Stormlight-infused spa included.', 'https://example.com/thumbs/stormlight.jpg', 'https://example.com/covers/stormlight.jpg', 150, 2, 2, 3, 'Alethkar', '10 Kholin Way', 'Urithiru', 'Eastern Roshar', 'KH123', TRUE),

  (2, 'Luthadel Loft', 'Modern high-rise with mist-covered skyline views. Ideal for Mistborn.', 'https://example.com/thumbs/luthadel.jpg', 'https://example.com/covers/luthadel.jpg', 120, 1, 1, 2, 'Scadrial', '22 Venture Ave', 'Luthadel', 'Central Dominance', 'VD456', TRUE),

  (3, 'Worldhopper Retreat', 'Multiversal gateway hub with free storytelling sessions. No questions asked.', 'https://example.com/thumbs/hoid.jpg', 'https://example.com/covers/hoid.jpg', 200, 0, 1, 1, 'Unknown', '1 Wits End', 'Shadesmar', 'Cosmere Fringe', 'HOID0', TRUE);


INSERT INTO reservations (start_date, end_date, property_id, guest_id) 
VALUES
  ('2025-05-10', '2025-05-15', 1, 2), -- Vin staying at Kaladin’s place
  ('2025-06-01', '2025-06-05', 2, 3), -- Hoid at Vin’s loft
  ('2025-07-12', '2025-07-20', 3, 1); -- Kaladin at Hoid’s retreat


 INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) 
 VALUES
  (2, 1, 1, 5, 'Felt like flying with the windspren. Wonderful stay!'),
  (3, 2, 2, 4, 'Very misty but peaceful. Slightly too many inquisitors nearby.'),
  (1, 3, 3, 5, 'Best place to rest after a battle. Hoids stories were the highlight.');
