-- Create Students table
CREATE TABLE Students (
  ID INTEGER PRIMARY KEY,
  Name TEXT NOT NULL
);

-- Insert data into Students table
INSERT INTO Students (Name) VALUES
  ('Alice'),
  ('Bob'),
  ('Charlie'),
  ('David');

-- Create Courses table
CREATE TABLE Courses (
  ID INTEGER PRIMARY KEY,
  Course TEXT NOT NULL
);

-- Insert data into Courses table
INSERT INTO Courses (Course) VALUES
  ('Math'),
  ('History'),
  ('Science');

-- Create Enrollments table
CREATE TABLE Enrollments (
  StudentID INTEGER NOT NULL,
  CourseID INTEGER NOT NULL,
  PRIMARY KEY (StudentID, CourseID),
  FOREIGN KEY (StudentID) REFERENCES Students(ID),
  FOREIGN KEY (CourseID) REFERENCES Courses(ID)
);

-- Insert data into Enrollments table
INSERT INTO Enrollments (StudentID, CourseID) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 1);



--item 1
select s.Name, c.Course  from Students s
join Enrollments e on s.ID = e.StudentID
join Courses c on e.CourseID = c.ID;

--item2
select c.Course , COUNT(*) as count from Enrollments e 
join Courses c on e.CourseID = c.ID 
group by(e.CourseID);

--item3 
select * from (select * from Students s left join Enrollments e on s.ID = e.StudentID) as test 
where test.StudentID is null;


select * from Students s 
left join Enrollments e on s.ID = e.StudentID 
where e.StudentID is null;

select s.Name from Students s
where s.ID NOT IN (select e.StudentID from Enrollments e);

--item4
select s.Name, c.Course from Enrollments e 
join Students s on s.ID = e.StudentID
join Courses c on c.ID = e.CourseID;

--item6
select COUNT(*) as count, c.Course  from Enrollments e 
join Courses c on c.ID = e.CourseID
group by (e.CourseID)
ORDER by count DESC
limit 1;

--item7
select s.Name,c.Course, CASE WHEN e.StudentID IS NULL THEN 'NOT' ELSE 'YES' END AS status
from Students s 
join Enrollments e on e.StudentID = s.ID
join Courses c on e.CourseID = c.ID;

--item8
select s.Name, GROUP_CONCAT(c.Course) as course_name from Enrollments e
join Students s on s.ID = e.StudentID
join Courses c on c.ID = e.CourseID 
group by e.StudentID 
HAVING COUNT(*) > 1;

--item9
select s.Name , c.Course from Enrollments e 
join Students s on s.ID = e.StudentID
join Courses c ON c.ID  = e.CourseID
order by c.Course;

--item10
select Name from Enrollments e2 
join Students s on s.ID = e2.StudentID
where ( SELECT e.CourseID  from Enrollments e join Students s2 on s2.ID = e.StudentID where s2.name = 'Bob') = e2.CourseID 
AND Name != 'Bob';
