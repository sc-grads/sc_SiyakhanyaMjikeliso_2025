declare @x xml  
set @x='<Shopping ShopperName="Phillip Burton" >  
<ShoppingTrip ShoppingTripID="L1" >  
  <Item Cost="5">Bananas</Item>  
  <Item Cost="4">Apples</Item>  
  <Item Cost="3">Cherries</Item>  
</ShoppingTrip>  
<ShoppingTrip ShoppingTripID="L2" >  
  <Item>Emeralds</Item>  
  <Item>Diamonds</Item>  
  <Item>Furniture</Item>  
</ShoppingTrip>  
</Shopping>'  
select @x.query('for $ValueRetrieved in /Shopping/ShoppingTrip[1]/Item 
       order by $ValueRetrieved/@Cost
	   return concat(string($ValueRetrieved),";:)')
