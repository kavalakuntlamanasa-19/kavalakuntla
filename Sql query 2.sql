1.What are the total retail sales for each supplier?

select [SUPPLIER], sum([RETAIL SALES]) as Total_Retail_sales
from [dbo].[Warehouse_and_Retail_Sales$]
group by [SUPPLIER]
order by Total_Retail_sales desc

2.Which item has the highest warehouse sales?

select Top 1 [ITEM DESCRIPTION],[WAREHOUSE SALES] 
from [dbo].[Warehouse_and_Retail_Sales$]
order by [WAREHOUSE SALES] desc

3.What is the total sales (retail + warehouse) per item type?

select [ITEM TYPE],
sum([RETAIL SALES])as TotalRetail,
sum([WAREHOUSE SALES])as TotalWarehouse,
sum([RETAIL SALES]+[WAREHOUSE SALES]) as Total_sales
from [dbo].[Warehouse_and_Retail_Sales$]
group by [ITEM TYPE]
order by Total_sales desc

4. Which month had the highest retail transfers?

select [MONTH],sum ([RETAIL TRANSFERS]) as Total_transfers
from [dbo].[Warehouse_and_Retail_Sales$]
group by [MONTH]
order by Total_transfers 
  

5.Which suppliers have sold more than a certain threshold in retail sales?

select [SUPPLIER], sum([RETAIL SALES]) AS Totalretailsales  
FROM [dbo].[Warehouse_and_Retail_Sales$]  
group by [SUPPLIER]
having sum([RETAIL SALES]) > 1000  
order by Totalretailsales desc

6.Which supplier provides the highest number of different items?

select  SUPPLIER,count(distinct [ITEM CODE]) as unique_item
from [dbo].[Warehouse_and_Retail_Sales$] 
group by SUPPLIER
order by unique_item desc

7. What is the average retail sales per item type?
 
select [ITEM TYPE], avg([RETAIL SALES]) as avg_retailsales
from [dbo].[Warehouse_and_Retail_Sales$] 
group by [ITEM TYPE]
order by avg_retailsales desc

8. What is the total sales of each supplier per year?

select [YEAR],  [SUPPLIER], 
       sum([RETAIL SALES] + [WAREHOUSE SALES]) AS Total_Sales  
from [dbo].[Warehouse_and_Retail_Sales$] 
group by [YEAR], SUPPLIER  
order by [YEAR], Total_Sales desc

9. Which items have sales in both retail and warehouse categories?

select [ITEM DESCRIPTION]  
from [dbo].[Warehouse_and_Retail_Sales$] 
where [RETAIL SALES] >0 and [WAREHOUSE SALES] >0

10. Which month had the lowest total sales (retail + warehouse)?

select [MONTH],
sum([RETAIL SALES] + [WAREHOUSE SALES]) as Total_sales
from  [dbo].[Warehouse_and_Retail_Sales$]
group by [MONTH]


sz


select * from [dbo].['flipkart_com-ecommerce_sample$']