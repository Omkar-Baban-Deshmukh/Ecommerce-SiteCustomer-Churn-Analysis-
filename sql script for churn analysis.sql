-- Project: Customer Churn Analysis
-- Objective: Identify churn drivers and quantify revenue impact
-- Tools Used: MySQL

CREATE DATABASE customer_churn_analysis;
USE customer_churn_analysis;

CREATE TABLE customer_churn_analysis(
    Age INT,
    Gender VARCHAR(10),
    Country VARCHAR(50),
    City VARCHAR(50),
    Membership_Years DECIMAL(5,2),
    Login_Frequency INT,
    Session_Duration_Avg DECIMAL(6,2),
    Pages_Per_Session DECIMAL(5,2),
    Cart_Abandonment_Rate DECIMAL(6,2),
    Wishlist_Items INT,
    Total_Purchases INT,
    Average_Order_Value DECIMAL(10,2),
    Days_Since_Last_Purchase INT,
    Discount_Usage_Rate DECIMAL(5,2),
    Returns_Rate DECIMAL(5,2),
    Email_Open_Rate DECIMAL(5,2),
    Customer_Service_Calls INT,
    Product_Reviews_Written INT,
    Social_Media_Engagement_Score DECIMAL(5,2),
    Mobile_App_Usage DECIMAL(5,2),
    Payment_Method_Diversity INT,
    Lifetime_Value DECIMAL(12,2),
    Credit_Balance DECIMAL(10,2),
    Churned BOOLEAN,
    Signup_Quarter VARCHAR(5),
    Membership_Group VARCHAR(20),
    Login_Freq_Group VARCHAR(20),
    Site_Engagement VARCHAR(20),
    Purchase_Group VARCHAR(20),
    Review_Group VARCHAR(20),
    Credit_Group VARCHAR(20),
    Login_Risk VARCHAR(20),
    Service_Call_Group VARCHAR(20)
);

LOAD DATA LOCAL INFILE 'D:/data analytics/personal project/raw dataset/customer_churn_final.csv'
INTO TABLE customer_churn_analysis 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- Customer Churn Analysis using SQL – Behavioral & Revenue Insights
-- This SQL script performs an in-depth analysis of customer churn using transactional and behavioral data. 
-- The objective is to identify key factors influencing churn and quantify its business impact.

SELECT 
    COUNT(*) AS total_customers,
    ROUND(SUM(Lifetime_Value), 2) AS total_revenue
FROM customer_churn_analysis;

SELECT 
      ROUND(AVG(Lifetime_Value)) AS average_revenue_of_customer
      FROM customer_churn_analysis;
   
SELECT 
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customer_churn_analysis;
-- Finding: The baseline churn rate is 28.9% 

SELECT 
    COUNT(*) AS churned_customers,
    ROUND(SUM(Lifetime_Value), 2) AS revenue_lost,
    ROUND(AVG(Lifetime_Value), 2) AS avg_revenue_per_churned_customer
FROM customer_churn_analysis
WHERE Churned = 1;

-- Finding: Churn resulted in a total loss of approximately $20.6 million in lifetime value, 
-- with an average revenue loss of $1,425.42 per churned customer.


-- Finding: Churn rates are highly consistent across all tenure segments (~28.6% - 29.1%),
--  however, the 'Early' membership group contributes the most significant financial impact with over $9.16 million in lost revenue.
-- While analyzing churn across membership segments, I found that churn rates are relatively consistent (~28–29%) across all groups. 
-- However, the Early segment contributes the highest revenue loss due to its larger customer base. 
-- This suggests that churn is more volume-driven than segment-driven, and deeper behavioral analysis is required.

-- Finding: There is a direct inverse correlation between site engagement and churn; users with 'Very Low' engagement exhibit the highest churn rate at 63.03%, 
-- while 'Very High' engagement users have the lowest at 15.85%.
-- While analyzing churn across membership segments, I found that churn rates are relatively consistent (~28–29%) across all groups. 
-- However, the Early segment contributes the highest revenue loss due to its larger customer base. 
-- This suggests that churn is more volume-driven than segment-driven, and deeper behavioral analysis is required.

SELECT 
    Site_Engagement,
    COUNT(*) AS customers,
    ROUND(SUM(CASE WHEN Churned = 1 THEN Lifetime_Value ELSE 0 END),2) AS revenue_lost,
    ROUND(AVG(Churned)*100,2) AS churn_rate
FROM customer_churn_analysis
GROUP BY Site_Engagement
ORDER BY revenue_lost DESC;

-- Finding: While 'Very Low' engagement users have the highest churn rate (63.03%), the 'Medium' engagement group accounts for the largest absolute financial loss,
-- totaling over $8.54 million due to its high customer volume.
-- While low engagement users have the highest churn rate, the biggest revenue loss actually comes from medium engagement users due to their large customer base. 
-- This shows that focusing only on churn rate can be misleading, and both volume and value must be considered.

SELECT 
    Service_Call_Group,
    COUNT(*) AS customers,
    ROUND(SUM(CASE WHEN Churned = 1 THEN Lifetime_Value ELSE 0 END), 2) AS revenue_lost,
    ROUND(AVG(Churned)*100, 2) AS churn_rate
FROM customer_churn_analysis
GROUP BY Service_Call_Group
ORDER BY revenue_lost DESC;

-- Finding: A strong correlation exists between service interactions and churn; customers in the 'Very High' group have the highest churn rate (53.81%),
-- while the 'High' group accounts for the most significant financial loss, exceeding $14.2 million.
-- I found that both low engagement and high customer service interactions are strong indicators of churn. 
-- Customers with very high service calls had churn rates above 50%, suggesting dissatisfaction. 
-- Additionally, medium engagement users contributed the highest revenue loss due to their volume. 
-- This highlights the need to focus on both user experience and engagement strategies.
