/*  
    
    To use this file, comment out the majority of the file except 
    for the query statement that you want to run:

    \i 'C:\\Users\\Logan\\Projects-DC\\sql-101\\quieriesv2.sql'
    
*/

/* List all the reviews for a given restaurant given a specific restaurant ID. */
-- SELECT title 
-- FROM reviews
-- JOIN restaurant
-- ON reviews.restaurant_id = restaurant.id
-- WHERE restaurant.id = 1;


/* List all the reviews for a given restaurant, given a specific restaurant name. */
-- SELECT title 
-- FROM reviews
-- JOIN restaurant
-- ON reviews.restaurant_id = restaurant.id
-- WHERE restaurant.name LIKE '%BK Longue%';


/* List all the reviews for a given reviewer, given a specific author name. */
-- SELECT reviewer.name, reviews.title
-- FROM reviewer
-- JOIN reviews 
-- ON reviewer.reviewer_id = reviews.reviewer_id
-- WHERE reviewer.name LIKE '%Lachlan%';


/* List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text. */


/* Get the average stars by restaurant. The result should have the restaurant name and its average star rating. */
SELECT restaurant.name as Name, ROUND(AVG(reviews.stars),1) as Average_Rating
FROM reviews
JOIN restaurant
ON reviews.restaurant_id = restaurant.id
GROUP BY Name;


/* Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.*/


/* List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together. */

/* Get the average stars given by each reviewer. (reviewer name, average star rating) */

/* Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating) */


/* Get the number of restaurants in each category. (category name, restaurant count) */

/* Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count) */

/* Get the average star rating for a food category. (category name, average star rating) */


