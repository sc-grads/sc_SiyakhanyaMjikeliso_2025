CREATE TABLE [AdventureWorks2022].[Sales].[visits](
visit_id INT PRIMARY KEY IDENTITY(1,1),
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
visited_at DATETIME,
Phone VARCHAR(20),
store_id INT NOT NULL,
FOREIGN KEY (store_id) REFERENCES sales.storenew(store_id)
)


CREATE TABLE [AdventureWorks2022].[Sales].[storenew](

store_id INT NOT NULL,
sales INT
)

FOREIGN KEY (store_id) REFERENCES sales.store(store_id)
)