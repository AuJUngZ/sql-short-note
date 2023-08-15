CREATE TABLE Students (
 ID integer PRIMARY KEY autoincrement,
 Name text NOT NULL,
 Age integer NOT NULL,
 Gender text NOT NULL,
 Course text NOT null
);

INSERT INTO Students (Name, Age, Gender, Course) VALUES
  ('Bob', 22, 'Male', 'History'),
  ('Charlie', 19, 'Male', 'Science'),
  ('David', 21, 'Male', 'Math'),
  ('Emily', 20, 'Female', 'Science'),
  ('Fiona', 23, 'Female', 'History'),
  ('George', 19, 'Male', 'Math'),
  ('Helen', 22, 'Female', 'History'),
  ('Ian', 21, 'Male', 'Science'),
  ('Jessica', 20, 'Female', 'Math');
  
-- item 1
 SELECT * from Students s where Gender = 'Female' AND Course = 'Math';

-- item 2
select MAX(Age), Name from Students s;

select * from Students s order by Age DESC limit 0,1;

-- item 3
select AVG(Age) as 'AVG OF Female' from Students s WHERE Gender = 'Female';
SELECT SUM(Age) / COUNT(*) from Students s WHERE Gender = 'Female';

-- item 4
select Name from Students s where Course = (select Course from Students s where Name = 'Bob')AND Name != 'Bob';
select s.Name from Students s left join Students s2 on s2.Name  = 'Bob' where s.Course = s2.Course AND s.Name != 'Bob'; -- join come before where

-- item 5
select COUNT(*), Name  from Students s WHERE Gender = 'Male' AND Age > 21;

-- item 6
select COUNT() as count, Course  from Students s Group by Course
having count > 2;

-- item 7
select MAX(age) - MIN(age) from Students s ;

-- special item to find student who age > min and age < max
select * from Students s where Age < (select MAX(Age) from Students s2 ) AND Age > (select Min(Age) from Students s2 ) order by Age;

-- item 8
SELECT Name from Students s WHERE Name Like '%a%';

-- item 9
select COUNT(Course), Course  from Students s Group by Course;

--item 10
DELETE FROM Students WHERE Name = 'Jessica';


drop table Students 
