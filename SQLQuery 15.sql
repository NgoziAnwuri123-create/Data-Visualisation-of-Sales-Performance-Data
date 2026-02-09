
USE Dec_SalesTable;

SELECT * FROM SalesTableTest;

//KPI 1 TOTAL REVENUE MADE ANNUALLY//
SELECT
	YEAR (Order_Date) AS "Year",
	SUM (Total_Revenue) AS "Revenue"
FROM 
SalesTableTest
GROUP BY 
YEAR (Order_Date);


//KPI 2 Average profits achieved annually//
SELECT 
		YEAR (order_date) as "year",
		AVG (total_profit) as "average"
FROM
		SalesTableTest
GROUP BY 
		year(order_date);

// KPI 1.1 Revenue growth year on year//
SELECT 
	    YEAR(order_date) AS 'YEAR',
		SUM(total_revenue) AS 'ANNUAL REVENUE',
	   LAG(SUM(total_revenue), 1) OVER (ORDER BY YEAR(order_date)) AS 'PREVIOUS YEAR REVENUE',
	   ((SUM(total_revenue) - LAG(SUM(total_revenue), 1) OVER (ORDER BY YEAR(order_date))) 
       / LAG(SUM(total_revenue), 1) OVER (ORDER BY YEAR(order_date))) * 100 AS 'YOY Difference'
FROM   
	SalesTableTest
GROUP BY 
	YEAR(Order_Date)
ORDER BY
	YEAR;

// KPI 2.1 Profit growth year on year//
SELECT 
	    YEAR(order_date) AS 'YEAR',
		AVG(total_profit) AS 'ANNUAL AVG PROFIT',
	   LAG(avg(total_profit), 1) OVER (ORDER BY YEAR(order_date)) AS 'PREVIOUS YEAR PROFIT',
	   ((AVG(total_profit) - LAG(avg(total_profit), 1) OVER (ORDER BY YEAR(order_date))) 
       / LAG(avg(total_profit), 1) OVER (ORDER BY YEAR(order_date))) * 100 AS 'YOY Difference'
FROM   
	SalesTableTest
GROUP BY 
	YEAR(Order_Date)
ORDER BY
	YEAR;



