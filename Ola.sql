CREATE DATABASE Ola;
USE ola;

SELECT*FROM ola;
 
 ## OLA ANALYSIS 
## 1. Retrieve all successful bookings

SELECT * FROM Ola
WHERE Booking_Status = 'Success';


 ## 2. Find the average ride distance for each vehicle type
 
 SELECT Vehicle_Type AS VEHICHLE_TYPE, AVG(Ride_Distance) AS AVG_DISTANCE FROM Ola
 GROUP BY VEHICHLE_TYPE;


 ## 3. Get the total number of cancelled rides by customers
 
 SELECT count(Booking_Status) FROM Ola
WHERE Booking_Status = 'Canceled by Customer';
 
 
 ## 4. List the top 5 customers who booked the highest number of rides
 
SELECT Customer_id AS CUSTOMER, COUNT(Booking_ID) AS TOTAL_RIDES FROM Ola
GROUP BY Customer_id
ORDER BY TOTAL_RIDES DESC LIMIT 5;


## 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

SELECT COUNT(Canceled_Rides_by_Driver) AS CANCELED_BY_DRIVER FROM Ola
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';


 ## 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 
 SELECT Vehicle_Type  AS VEHICLE, MAX(Driver_Ratings),MIN(Driver_Ratings)
 FROM Ola
 WHERE Vehicle_Type = 'Prime Sedan';
 
 
 ## 7. Retrieve all rides where payment was made using UPI
 
 SELECT * FROM Ola
 WHERE Payment_Method = 'UPI';


## 8. Find the average customer rating per vehicle type:

SELECT Vehicle_Type  AS VEHICLE, AVG(Customer_Rating)
 FROM Ola
 GROUP BY VEHICLE;
 

 ##	9. Calculate the total booking value of rides completed successfully
 
 SELECT Booking_Status, SUM(Booking_Value) FROM Ola
 WHERE Booking_Status = 'Success';
 
 
 ## 10. List all incomplete rides along with the reason
 
 SELECT Incomplete_Rides, Incomplete_Rides_Reason
FROM Ola
WHERE Incomplete_Rides = 'Yes';

## 11. Pickup location frequency

SELECT pickup_location, COUNT(*) AS total_pickups
FROM ola
GROUP BY pickup_location
ORDER BY total_pickups DESC;

## 12. Categorize rides by distance
SELECT *,
       CASE
           WHEN ride_distance <= 5 THEN 'Short'
           WHEN ride_distance <= 20 THEN 'Medium'
           ELSE 'Long'
       END AS distance_category
FROM ola
WHERE booking_status = 'Success';

## 13. Number of rides canceled by driver vs customer

SELECT booking_status, COUNT(*) AS total
FROM ola
WHERE booking_status LIKE 'Canceled%'
GROUP BY booking_status;


