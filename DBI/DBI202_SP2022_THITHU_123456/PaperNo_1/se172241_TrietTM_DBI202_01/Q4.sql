select p1.ProductID, p1.name as ProductName, Color, Cost, Price, p2.LocationID, l.Name as LocationName, p2.Shelf, p2.Bin, p2.Quantity from Product p1 left join ProductInventory p2 on p1.ProductID = p2.ProductID left join Location l on l.LocationID = p2.LocationID
where color = 'Yellow' and cost < 400