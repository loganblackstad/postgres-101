-- inline style coment

/* block comment
block comment */


CREATE TABLE restaurant (
  id SERIAL PRIMARY KEY,
  restaurant_name VARCHAR NOT NULL,
  distance NUMERIC,
  stars NUMERIC,
  category VARCHAR,
  fav_dish VARCHAR,
  takeout_avail BOOLEAN,
  visit_date TIMESTAMP
);

INSERT INTO restaurant 
VALUES (
  DEFAULT, 
  'DUCK DONUTS',
  6.0,
  4.8,
  'Donuts',
  'Chocolate',
  TRUE,
  '2020-05-21 09:45:00'
),
(
  DEFAULT, 
  'CHIPOLTE',
  3.0,
  4.5,
  'Mexican',
  'Steak Burrito',
  TRUE,
  '2020-05-18 14:45:00'
),
(
  DEFAULT, 
  'EL PORTON',
  2.2,
  4.9,
  'Mexican',
  'Chicken Chimichanga',
  TRUE,
  '2020-05-14 18:00:00'
),
(
  DEFAULT, 
  'TACO BELL',
  1.9,
  3.9,
  'FAST FOOD',
  'Crunchwrap Supreme',
  TRUE,
  '2020-05-10 23:45:00'
);
