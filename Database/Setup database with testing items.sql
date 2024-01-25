use eTools
go
-- cleanup for setup
update RentalEquipment
   set Available = 1
   where RentalEquipmentID in (13,16)
delete RentalDetails where RentalID = 235
delete Rentals where RentalID = 235
go
delete SaleRefundDetails
delete SaleRefunds
delete SaleDetails 
delete Sales 
go
Delete ReceiveOrderDetails where ReceiveOrderID in (32,33)
Delete ReceiveOrders where PurchaseOrderID = 361
Delete PurchaseOrderDetails where PurchaseOrderID = 361
Delete PurchaseOrders where PurchaseOrderID = 361
go
Delete Coupons where CouponID in (25,26,27)
go
-- set up new coupons
set IDENTITY_INSERT Coupons ON
go
insert into Coupons(CouponID, CouponIDValue, StartDate, EndDate, CouponDiscount) 
	values(25, 'Off7', DATEADD(dd, -10, GetDate()), DATEADD(dd, 30, GetDate()), 7)

insert into Coupons(CouponID, CouponIDValue, StartDate, EndDate, CouponDiscount) 
	values(26, 'Off10', DATEADD(dd, -10, GetDate()), DATEADD(dd, 30, GetDate()), 10)

insert into Coupons(CouponID, CouponIDValue, StartDate, EndDate, CouponDiscount) 
	values(27, 'Off5', DATEADD(dd, -10, GetDate()), DATEADD(dd, 30, GetDate()), 5)
go
set IDENTITY_INSERT Coupons Off
go
-- set up another placed purchase order with partial receiving
set IDENTITY_INSERT PurchaseOrders ON
go
insert into PurchaseOrders(PurchaseOrderID, OrderDate, VendorID,EmployeeID,TaxAmount,SubTotal,Closed,Notes) 
	values(361, DATEADD(dd, -10, GetDate()), 4, 3, 835.43, 16708.50, 0, null)
go
set IDENTITY_INSERT PurchaseOrders Off
go
set IDENTITY_INSERT PurchaseOrderDetails ON
go
insert into PurchaseOrderDetails(PurchaseOrderDetailID, PurchaseOrderID, StockItemID, PurchasePrice, Quantity) 
	values(50, 361, 5560, 7.35, 500)
insert into PurchaseOrderDetails(PurchaseOrderDetailID, PurchaseOrderID, StockItemID, PurchasePrice, Quantity) 
	values(51, 361, 5561, 7.35, 610)
insert into PurchaseOrderDetails(PurchaseOrderDetailID, PurchaseOrderID, StockItemID, PurchasePrice, Quantity) 
	values(52, 361, 5564, 8.55, 1000)
go
set IDENTITY_INSERT PurchaseOrderDetails Off
go
set IDENTITY_INSERT ReceiveOrders ON
go
insert into ReceiveOrders(ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) 
	values(32, 361, DATEADD(dd, -5, GetDate()), 3)
insert into ReceiveOrders(ReceiveOrderID, PurchaseOrderID, ReceiveDate, EmployeeID) 
	values(33, 361, DATEADD(dd, -2, GetDate()), 3)
go
set IDENTITY_INSERT ReceiveOrders Off
go
set IDENTITY_INSERT ReceiveOrderDetails ON
go
insert into ReceiveOrderDetails(ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) 
	values(92, 32, 50, 120)
insert into ReceiveOrderDetails(ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) 
	values(93, 32, 52, 350)
insert into ReceiveOrderDetails(ReceiveOrderDetailID, ReceiveOrderID, PurchaseOrderDetailID, QuantityReceived) 
	values(94, 33, 52, 150)
go
set IDENTITY_INSERT ReceiveOrderDetails Off
go
update StockItems
set QuantityOnOrder = 380
where StockItemID = 5560
go
update StockItems
set QuantityOnOrder = 610
where StockItemID = 5561
go
update StockItems
set QuantityOnOrder = 500
where StockItemID = 5564
go
-- create sales and sales refunds
set IDENTITY_INSERT Sales ON
go
insert into Sales(SaleID, SaleDate, PaymentType, EmployeeID,TaxAmount,SubTotal,CouponID,PaymentToken) 
	values(3, DATEADD(dd, -5, GetDate()), 'C', 3, 14.02, 280.35, null, null)
insert into Sales(SaleID, SaleDate, PaymentType, EmployeeID,TaxAmount,SubTotal,CouponID,PaymentToken) 
	values(4, DATEADD(dd, -5, GetDate()), 'D', 3, 31.09, 621.98, 25, null)
go
set IDENTITY_INSERT Sales Off
go
set IDENTITY_INSERT SaleDetails ON
go
insert into SaleDetails(SaleDetailID,SaleID,StockItemID,SellingPrice,Quantity) 
	values(1, 3, 5567, 1, 14.95)
insert into SaleDetails(SaleDetailID,SaleID,StockItemID,SellingPrice,Quantity) 
	values(2, 3, 87, 10, 12.99)
insert into SaleDetails(SaleDetailID,SaleID,StockItemID,SellingPrice,Quantity) 
	values(3, 3, 88, 10, 13.55)
insert into SaleDetails(SaleDetailID,SaleID,StockItemID,SellingPrice,Quantity) 
	values(4, 4, 5585, 1, 347.00)
insert into SaleDetails(SaleDetailID,SaleID,StockItemID,SellingPrice,Quantity) 
	values(5, 4, 5577, 2, 37.99)
insert into SaleDetails(SaleDetailID,SaleID,StockItemID,SellingPrice,Quantity) 
	values(6, 4, 5587, 1, 199.00)
go
set IDENTITY_INSERT SaleDetails Off
go
set IDENTITY_INSERT SaleRefunds ON
go
insert into SaleRefunds(SaleRefundID, SaleRefundDate, SaleID, EmployeeID,TaxAmount,SubTotal) 
	values(1, DATEADD(dd, -2, GetDate()), 3, 3, 4.60, 92.05)
insert into SaleRefunds(SaleRefundID, SaleRefundDate, SaleID, EmployeeID,TaxAmount,SubTotal) 
	values(2, DATEADD(dd, -1, GetDate()), 3, 3, 1.36, 27.10)
go
set IDENTITY_INSERT SaleRefunds Off
go
set IDENTITY_INSERT SaleRefundDetails ON
go
insert into SaleRefundDetails(SaleRefundDetailID,SaleRefundID,StockItemID,SellingPrice,Quantity) 
	values(1, 1, 87, 12.99, 5)
insert into SaleRefundDetails(SaleRefundDetailID,SaleRefundID,StockItemID,SellingPrice,Quantity) 
	values(2, 1, 88, 13.55, 2)
insert into SaleRefundDetails(SaleRefundDetailID,SaleRefundID,StockItemID,SellingPrice,Quantity) 
	values(3, 2, 88, 13.55, 2)
go
set IDENTITY_INSERT SaleRefundDetails Off
go
--set up of rentals

set IDENTITY_INSERT Rentals ON
go
insert into Rentals(RentalID,CustomerID,EmployeeID,CouponID,SubTotal,TaxAmount,RentalDateOut,RentalDateIn,PaymentType) 
	values(235, 49, 5, 25, 0.00, 0.00,  DATEADD(dd, -3, GetDate()),  DATEADD(dd, -3, GetDate()), 'C')
go
set IDENTITY_INSERT Rentals Off
go
set IDENTITY_INSERT RentalDetails ON
go
insert into RentalDetails(RentalDetailID,RentalID,RentalEquipmentID,RentalDays,RentalRate,OutCondition,InCondition,DamageRepairCost,Comments) 
	values(877, 235, 13, 3, 18.95, 'good', 'out', 0.00, null)
insert into RentalDetails(RentalDetailID,RentalID,RentalEquipmentID,RentalDays,RentalRate,OutCondition,InCondition,DamageRepairCost,Comments) 
	values(878, 235, 16, 3, 22.95, 'good', 'out', 0.00, null)
go
set IDENTITY_INSERT RentalDetails Off
go
update RentalEquipment
   set Available = 0
   where RentalEquipmentID in (13,16)
go