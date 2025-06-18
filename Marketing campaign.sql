create schema marketing;



CREATE TABLE campaign_data (
    CustomerID INT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Country VARCHAR(30),
    CampaignSource VARCHAR(30),
    CampaignCost DECIMAL(10,2),
    Clicks INT,
    Conversions INT
);

INSERT INTO campaign_data VALUES
(101, 'John Smith', 32, 'Male', 'USA', 'Google', 100, 50, 10),
(102, 'Maria Lopez', 28, 'Female', 'Canada', 'Facebook', 120, 60, 20),
(103, 'Karan Mehta', 35, 'Male', 'India', 'Email', 80, 20, 5),
(104, 'Emily Wong', 41, 'Female', 'Singapore', 'LinkedIn', 150, 45, 15),
(105, 'Ahmed Khan', 29, 'Male', 'UAE', 'Google', 130, 70, 30),
(106, 'Sarah Kim', 26, 'Female', 'South Korea', 'Instagram', 110, 55, 18),
(107, 'Mike Jones', 37, 'Male', 'USA', 'Facebook', 140, 65, 12),
(108, 'Priya Desai', 33, 'Female', 'India', 'LinkedIn', 160, 40, 17),
(109, 'Zhang Wei', 39, 'Male', 'China', 'WeChat', 90, 35, 7),
(110, 'Fatima Noor', 30, 'Female', 'UAE', 'Instagram', 125, 60, 25),
(111, 'James Clark', 45, 'Male', 'UK', 'Google', 115, 50, 20),
(112, 'Linda Scott', 31, 'Female', 'USA', 'Email', 85, 40, 14),
(113, 'Chen Li', 27, 'Male', 'China', 'WeChat', 100, 30, 8),
(114, 'Elena Garcia', 34, 'Female', 'Spain', 'Facebook', 135, 55, 21),
(115, 'Rajiv Patil', 38, 'Male', 'India', 'Google', 145, 70, 26),
(116, 'Nora Ibrahim', 25, 'Female', 'Egypt', 'Instagram', 95, 45, 19),
(117, 'Tom Lee', 36, 'Male', 'Singapore', 'LinkedIn', 155, 60, 16),
(118, 'Isabella Rossi', 29, 'Female', 'Italy', 'Email', 105, 25, 6),
(119, 'Omar Aziz', 33, 'Male', 'Saudi Arabia', 'Google', 130, 55, 22),
(120, 'Yuki Tanaka', 40, 'Female', 'Japan', 'Instagram', 160, 65, 27),
(121, 'David Miller', 31, 'Male', 'USA', 'Facebook', 140, 58, 23),
(122, 'Anita Nair', 26, 'Female', 'India', 'Email', 95, 28, 9),
(123, 'Brian O’Connor', 43, 'Male', 'Ireland', 'LinkedIn', 150, 50, 15),
(124, 'Sana Ahmed', 27, 'Female', 'Pakistan', 'Instagram', 115, 52, 20),
(125, 'Lucas Müller', 35, 'Male', 'Germany', 'Facebook', 125, 48, 18);



select*from campaign_data;

select 
Name , Country , CampaignSource from campaign_data;

SELECT 
DISTINCT CampaignSource FROM campaign_data;

select 
SUM(CampaignCost) as TotalCampaignCost 
from campaign_data;

select 
Clicks,CampaignSource from campaign_data
order by Clicks asc ;

SELECT
round(avg(Conversions),2) as AVGConversion 
from campaign_data;

select CampaignSource,
ROUND(Conversions/Clicks*100,3) as ROI 
from campaign_data order by ROI desc;
#PEDMAS

select 
Name,Age,Gender from campaign_data 
ORDER BY Age desc 
limit 5;

SELECT DISTINCT(Gender)
from campaign_data;

SELECT 
GENDER,COUNT(*) from campaign_data 
group by GENDER;

SELECT 
CampaignSource,SUM(CampaignCost) as TotalCostSpend from campaign_data 
group by CampaignSource;


select Campaignsource from campaign_data group by Campaignsource;

SELECT 
CampaignSource,count(Campaignsource) as Campaignreach from campaign_data group by Campaignsource order by Campaignreach desc;



select avg(Clicks) as avgclicks from campaign_data;

select avg(Conversions) as avgconversion from campaign_data;


