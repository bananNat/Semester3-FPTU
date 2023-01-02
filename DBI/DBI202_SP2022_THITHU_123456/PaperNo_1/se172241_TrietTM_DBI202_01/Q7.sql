select l.LocationID, l.Name as LocationName, p3.ProductID, p3.Name as ProductName, p2.MaxQuantity as Quantity from ProductInventory p1 inner join (select LocationID , max(Quantity) as MaxQuantity from ProductInventory group by LocationID) as p2 on p1.Quantity = p2.MaxQuantity and p1.LocationID = p2.LocationID inner join Product p3 on p3.ProductID = p1.ProductID inner join Location l on l.LocationID = p1.LocationID order by l.Name asc, p3.Name desc