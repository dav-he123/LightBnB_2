DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;

CREATE TABLE users(
  id SERIAL PRIMARY KEY NOT NULL,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL

);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY NOT NULL,
  title varchar(255) NOT NULL,
  description TEXT,
  cost_per_night INTEGER NOT NULL DEFAULT 0, 
  parking_spaces INTEGER NOT NULL DEFAULT 0,
  number_of_bathrooms INTEGER NOT NULL DEFAULT 0,
  number_of_bedrooms INTEGER NOT NULL DEFAULT 0,
  
  thumbnail_photo_url varchar(255) NOT NULL,
  cover_photo_url varchar(255) NOT NULL,
  
  country varchar(255) NOT NULL,
  street varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  province varchar(255) NOT NULL,
  post_code varchar(255) NOT NULL,
  
  active BOOLEAN NOT NULL DEFAULT TRUE,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE

);

CREATE TABLE reservations(
  id SERIAL PRIMARY KEY NOT NULL,

  start_date DATE NOT NULL,
  end_date DATE NOT NULL,

  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE

);

CREATE TABLE property_reviews(
  id SERIAL PRIMARY KEY NOT NULL,
  message TEXT NOT NULL,
  rating INTEGER NOT NULL DEFAULT 0,

  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE

);

