declare @json nvarchar(4000)
set @json = '
{
"name":"Phillip",
"Shopping":
	{"ShoppingTrip":1,
	"Items":
	[
	{"Item":"Banana","Cost":5},
	{"Item":"Apples","Cost":4},
	{"Item":"Cherries","Cost":3}
	]
	}


}
'
select json_value(@json,'scrict $.name') 
select JSON_MODIFY(@json,'strict $.Shopping.Items[0]', JSON_QUERY('{"Item":"Big Bananas", "Cost":1}'))
select * from openjson(@json, '$.Shopping.Items')
                 with (Item varchar(10), Cost int)

select 'Bananas' as Item, 5 as Cost
UNION 
select 'Apples', 4 
UNION
select 'Cherries', 3
FOR XML path
