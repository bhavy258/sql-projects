create database blinkit;

show databases;

use blinkit;

show tables;

desc grocery_store;

select * from grocery_store;


-- 1.	Import Data from table Grocery Sales using the provided CSV File.
select * from grocery_store;

-- 2.	Write an SQL query to show all Item_Identifier
select item_identifier from grocery_store;

-- 3.	Write an SQL query to show count of total Item_Identifier.
select count(item_identifier) from grocery_store;

-- 4.	Write an SQL query to show maximum Item Weight.
select max(item_weight) from grocery_store;

-- 5.	Write an SQL query to show minimum Item Weight.
select min(item_weight) from grocery_store;

-- 6.	Write an SQL query to show average Item_Weight.
select avg(item_weight) from grocery_store;

-- 7.	Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(*) from grocery_store where item_fat_content = 'low fat';

-- 8.	Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(*) from grocery_store where item_fat_content = 'regular';

-- 9.	Write an SQL query to show maximum Item_MRP 
select max(item_mrp) from grocery_store;

-- 10.	Write an SQL query to show minimum Item_MRP
select min(item_mrp) from grocery_store;

-- 11.	Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.
select Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP from grocery_store where item_mrp > 200;

-- 12.	Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat 
select max(item_mrp) from grocery_store where item_fat_content = 'Low Fat';

-- 13.	Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 
select min(item_mrp) from grocery_store where item_fat_content = 'Low Fat';

-- 14.	Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select * from grocery_store where item_mrp between 50 and 100;

-- 15.	Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct item_fat_content from grocery_store;

-- 16.	Write an SQL query to show ALL UNIQUE value of Item_Type
select distinct item_type from grocery_store;

-- 17.	Write an SQL query to show ALL DATA in descending ORDER by Item MRP 
select * from grocery_store order by item_mrp desc;

-- 18.	Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from grocery_store order by Item_Outlet_Sales asc;

-- 19.	Write an SQL query to show ALL DATA in ascending by Item_Type 
select * from grocery_store order by Item_type asc;

-- 20.	Write an SQL query to show DATA of item_type dairy & Meat
select * from grocery_store where item_type in ('dairy','meat');

-- 21.	Write an SQL query to show ALL UNIQUE value of Outlet_Size 
select distinct outlet_size from grocery_store;

-- 22.	Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct Outlet_Location_Type from grocery_store;

-- 23.	Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct Outlet_type from grocery_store;

-- 24.	Write an SQL query to show count of number of items by Item_Type and order it in descending order
select item_type,count(*) from grocery_store group by item_type order by count(*) desc;

-- 25.	Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order 
select outlet_size,count(*) from grocery_store group by outlet_size order by count(*) asc;

-- 26.	Write an SQL query to show count of number of items by Outlet_Type and ordered it in descending order.
select outlet_type,count(*) from grocery_store group by outlet_type order by count(*) desc;

-- 27.	Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order
select outlet_location_type,count(*) from grocery_store group by outlet_location_type order by count(*) desc;

-- 28.	Write an SQL query to show maximum MRP by Item_Type 
select item_type , max(item_mrp) from grocery_store group by item_type;

-- 29.	Write an SQL query to show minimum MRP by Item_Type 
select item_type , min(item_mrp) from grocery_store group by item_type;

-- 30.	Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select Outlet_Establishment_Year , min(item_mrp) from grocery_store group by Outlet_Establishment_Year order by outlet_establishment_year desc;

-- 31.	Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
select Outlet_Establishment_Year , max(item_mrp) from grocery_store group by Outlet_Establishment_Year order by outlet_establishment_year desc;

-- 32.	Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select outlet_size , avg(item_mrp) from grocery_store group by outlet_size order by avg(item_mrp) desc; 

-- 33.	Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select outlet_type , avg(item_mrp) from grocery_store group by outlet_type order by avg(item_mrp) asc; 

-- 34.	Write an SQL query to show maximum MRP by Outlet_Type
select outlet_type ,max(item_mrp) from grocery_store group by outlet_type;

-- 35.	Write an SQL query to show maximum Item_Weight by Item_Type 
select Item_Type ,max(Item_Weight) from grocery_store group by Item_Type;

-- 36.	Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 
select Outlet_Establishment_Year, max(Item_Weight) from grocery_store group by Outlet_Establishment_Year;

-- 37.	Write an SQL query to show minimum Item_Weight by Outlet_Type 
select outlet_type,min(item_weight) from grocery_store group by outlet_type;

-- 38.	Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select Outlet_Location_Type, avg(Item_Weight) from grocery_store group by Outlet_Location_Type order by avg(item_weight) desc;

-- 39.	Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
select item_type,max(Item_Outlet_Sales) from grocery_store group by item_type;

-- 40.	Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 
select item_type,min(Item_Outlet_Sales) from grocery_store group by item_type;

-- 41.	Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
select Outlet_Establishment_Year,min(Item_Outlet_Sales) from grocery_store group by Outlet_Establishment_Year;

-- 42.	Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
select Outlet_Establishment_Year,max(Item_Outlet_Sales) from grocery_store group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc;

-- 43.	Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
select Outlet_Size , avg(Item_Outlet_Sales) as ios from grocery_store group by outlet_size order by ios desc;

-- 44.	Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
select Outlet_type , avg(Item_Outlet_Sales) as ios from grocery_store group by outlet_type;

-- 45.	Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type 
select Outlet_type , max(Item_Outlet_Sales) as ios from grocery_store group by outlet_type;

-- 46.	Write an SQL query to show total Item_Outlet_Sales by Item_Type 
select item_type , sum(Item_Outlet_Sales) from grocery_store group by item_type;

-- 47.	Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content 
select Item_Fat_Content , sum(Item_Outlet_Sales) from grocery_store group by Item_Fat_Content;

-- 48.	Write an SQL query to show maximum Item_Visibility by Item_Type
select Item_Type , max(Item_Visibility) from grocery_store group by Item_Type;

-- 49.	Write an SQL query to show Minimum Item_Visibility by Item_Type 
select Item_Type , min(Item_Visibility) from grocery_store group by Item_Type;

-- 50.	Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 
select Item_Type , sum(Item_Outlet_Sales) from grocery_store where Outlet_Location_Type = 'Tier 1'  group by Item_Type;

-- 51.	Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
select Item_Type , sum(Item_Outlet_Sales) from grocery_store where Item_Fat_Content in ('Low Fat','lf')  group by Item_Type;
