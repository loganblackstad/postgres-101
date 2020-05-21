CREATE TABLE restaurant (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  address VARCHAR NOT NULL,
  category VARCHAR
);

CREATE TABLE reviewer (
  reviewer_id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  email VARCHAR,
  karma NUMERIC DEFAULT 0 CHECK (karma>=0 AND karma<=7)
);

CREATE TABLE reviews (
  review_id SERIAL PRIMARY KEY,
  reviewer_id INTEGER REFERENCES reviewer(reviewer_id), 
  stars NUMERIC NOT NULL CHECK(stars>=0 AND stars<=5),
  title VARCHAR,
  restaurant_id INTEGER REFERENCES restaurant (id)
);


-- insert values into TABLE restaurants
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


-- insert values into TABLE restaurants
INSERT INTO reviewer 
VALUES (
  DEFAULT, 
  Little Bobby Tables,
  going@fullcircle.com,
  2
),
(
  DEFAULT, 
  Lachlan Heywood
  lachlan@digital-creafts.com
  4
),
(
  DEFAULT, 
  Broomhilda,
  broomhilda@django.com
  1
);


-- insert values into TABLE reviewer
INSERT INTO reviewer 
VALUES (
  DEFAULT, 
  Little Bobby Tables,
  going@fullcircle.com,
  2
),
(
  DEFAULT, 
  Lachlan Heywood
  lachlan@digital-creafts.com
  4
),
(
  DEFAULT, 
  Broomhilda,
  broomhilda@django.com
  1
);

-- insert values into TABLE reviews
INSERT INTO reviews
VALUES (
  DEFAULT, 
  1,
  4.5,
  The Best Fried Chicken,
  4
),
(
  DEFAULT, 
  1,
  3.0,
  "It'll get things movin in your tum tum",
  3
),
(
  DEFAULT, 
  2,
  2.5,
  "Love me some Macca's",
  1
),
(
  DEFAULT, 
  3,
  4.0,
  "The BK Longue is the Place!",
  2
  );