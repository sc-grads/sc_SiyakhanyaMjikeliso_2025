begin tran
create table tblGeom2
(GXY geometry,
Description varchar(20),
IDtblGeom2 int Constraint PK_tblGeom2 Primary key identity(5,1))

insert into tblGeom2
values (geometry:: STGeomFromText('LINESTRING(1 1, 5 5)',0), 'First line'),
       (geometry::STGeomFromText('LINESTRING (5 1, 1 4, 2 5, 5 1)', 0),'Second line'),
	   (geometry::STGeomFromText('MULTILINESTRING ((1 5, 2 6), (1 4, 2 5))', 0),'Third line'),
	   (geometry::STGeomFromText('POLYGON ((4 1, 6 3, 8 3, 6 1, 4 1))', 0), 'Polygon'),
	      (geometry::STGeomFromText('CIRCULARSTRING (1 0, 0 1, -1 0, 0 -1, 1 0)', 0), 'Circle')
select * from tblGeom2
rollback tran