USE Students; -- Using the database called Students

UPDATE StudentRecords
SET Email = 'john.doe@updatedexample.com'  -- Update Student Email on the table called StudentRecords where StudentID =1  
WHERE StudentID = 1;