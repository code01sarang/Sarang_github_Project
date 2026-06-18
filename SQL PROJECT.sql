CREATE DATABASE farmer_db;
USE farmer_db;
CREATE TABLE farmers (
    Farmer_ID INT,
    Farmer_Name VARCHAR(100),
    State VARCHAR(50),
    Crop_Type VARCHAR(50),
    Land_Area_Acres FLOAT,
    Annual_Production_Tons FLOAT,
    Annual_Income_INR FLOAT,
    Irrigation_Type VARCHAR(50),
    Loan_Status VARCHAR(10)
);
select * from farmer_cleaned_large_dataset ;

SELECT COUNT(*) AS total_farmers
FROM farmer_cleaned_large_dataset ;

SELECT State, COUNT(*) AS total
FROM farmer_cleaned_large_dataset 
GROUP BY State
ORDER BY total DESC;


SELECT State, AVG(Annual_Income_INR) AS avg_income
FROM farmer_cleaned_large_dataset 
GROUP BY State
ORDER BY avg_income DESC;

SELECT *
FROM farmer_cleaned_large_dataset 
ORDER BY Annual_Income_INR DESC
LIMIT 5;

SELECT Crop_Type, SUM(Annual_Production_Tons) AS total_production
FROM farmer_cleaned_large_dataset 
GROUP BY Crop_Type
ORDER BY total_production DESC;


SELECT *
FROM farmer_cleaned_large_dataset 
WHERE Land_Area_Acres > 15;


SELECT *
FROM farmers
WHERE Annual_Income_INR BETWEEN 300000 AND 700000;

SELECT Irrigation_Type, AVG(Annual_Production_Tons) AS avg_prod
FROM farmers
GROUP BY Irrigation_Type
ORDER BY avg_prod DESC;

SELECT Loan_Status, COUNT(*) AS total
FROM farmers
GROUP BY Loan_Status;

SELECT State, MAX(Annual_Production_Tons) AS max_production
FROM farmers
GROUP BY State;

SELECT Farmer_ID,
       Annual_Income_INR / Land_Area_Acres AS income_per_acre
FROM farmers
ORDER BY income_per_acre DESC;

SELECT State, SUM(Annual_Income_INR) AS total_income
FROM farmers
GROUP BY State
ORDER BY total_income DESC
LIMIT 3;


