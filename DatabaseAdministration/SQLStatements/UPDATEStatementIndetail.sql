select * from sales.vSalesPerson

select firstname + ' ' + Lastname AS Fullname,
[TerritoryName],
[TerritoryGroup],
[SalesQuota],
[SalesYTD],[SalesLastYear]
 into salesstaff
 from sales.vSalesPerson

 drop table salesstaff

 select * from salesstaff

 update salesstaff set salesQuota = 50000

 update salesstaff set salesQuota = salesQuota + 1550000

 update salesstaff set salesQuota = salesQuota + 1550000, SalesYTD =  SalesYTD - 500, SalesLastYear = SalesLastYear * 1.5

 update salesstaff set [TerritoryName] = 'UK' where [TerritoryName] = 'United Kingdom'

 update salesstaff set [TerritoryName] = 'UK' where [TerritoryGroup] is null and fullname = 'syed Abbas'

 update salesstaff set SalesQuota = sp.salesquota
from salesstaff ss
inner join sales.vSalesPerson sp
on ss.Fullname = (sp.firstname + ' ' + sp.lastname)