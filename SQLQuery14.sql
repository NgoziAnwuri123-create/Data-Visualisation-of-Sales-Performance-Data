Use November_class_2025;

Select * From [dbo.Sales_Table];

Select
Region,
ItemType,
Totalrevenue

From 
[dbo.Sales_Table];

Select* From [dbo.Sales_Table]
Where Region = 'Asia' and itemtype='clothes';

Select 
Region,
totalrevenue
From [dbo.Sales_Table]
Where not Region = 'Asia'

USE Dec_SalesTable;

Select * From SalesTableTest;

Alter table SalesTableTest 
Add Units_Sold_Convert int;

Update SalesTableTest
Set Units_Sold_Convert = Convert(int,Units_Sold);

Alter Table SalesTableTest
Drop column Units_Sold;

use November_class_2025;

/Average order Value/ Total Revenue/Total number of orders/
Select * From [dbo.Sales_Table]


//Create a view//

create view Sales_Table_View as 
Select * From [dbo.Sales_Table];
use Dec_SalesTable;
select  * From SalesTableTest;

