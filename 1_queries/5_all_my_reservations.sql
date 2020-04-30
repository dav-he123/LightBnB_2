Select properties.id as id, properties.title as title, properties.cost_per_night as cost_per_night, reservations.start_date as start_date, avg(property_reviews.rating) as average_rating 
from properties
JOIN reservations ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1 AND reservations.end_date < now()::date
GROUP by properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;
