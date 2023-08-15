## This is a short note for database course

### Dataset for exercise 1
| ID | Name    | Age | Gender | Course  |
|----|---------|-----|--------|---------|
| 1  | Alice   | 20  | Female | Math    |
| 2  | Bob     | 22  | Male   | History |
| 3  | Charlie | 19  | Male   | Science |
| 4  | David   | 21  | Male   | Math    |
| 5  | Emily   | 20  | Female | Science |
| 6  | Fiona   | 23  | Female | History |
| 7  | George  | 19  | Male   | Math    |
| 8  | Helen   | 22  | Female | History |
| 9  | Ian     | 21  | Male   | Science |
| 10 | Jessica | 20  | Female | Math    |

**code for creating the table**
```sql 
create table Students (
    Id integer primary key autoincrement,
    Name text not null,
    Age integer not null,
    Gender text not null,
    Course tect not null
);
```
**code for insert data**
```sql
INSERT INTO Students (Name, Age, Gender, Course) VALUES
  ('Alice', 20, 'Female', 'Math'),
  ('Bob', 22, 'Male', 'History'),
  ('Charlie', 19, 'Male', 'Science'),
  ('David', 21, 'Male', 'Math'),
  ('Emily', 20, 'Female', 'Science'),
  ('Fiona', 23, 'Female', 'History'),
  ('George', 19, 'Male', 'Math'),
  ('Helen', 22, 'Female', 'History'),
  ('Ian', 21, 'Male', 'Science'),
  ('Jessica', 20, 'Female', 'Math');
```

### question for exercise 1
* Retrieve the names of all female students who are enrolled in the Math course.
```sql
test
```
* Find the oldest student in the dataset.
```sql
test
```
* Calculate the average age of female students.
```sql
test
```
* List the names of students who are enrolled in the same course as Bob.
```sql
test
```
* Count how many male students are older than 21.
```sql
test
```
* List the courses that have more than two students enrolled.
```sql
test
```
* Calculate the age difference between the youngest and oldest students.
```sql
test
```
* Retrieve the names of students whose names contain the letter 'a'.
```sql
test
```
* Find the number of students in each course.
```sql
test
```
* Delete the student record for 'Jessica'.
```sql
test
```

### Dataset for exercise 2
#### Students table
| ID | Name    |
|----|---------|
| 1  | Alice   |
| 2  | Bob     |
| 3  | Charlie |
| 4  | David   |

#### Courses table
| ID | Course  |
|----|---------|
| 1  | Math    |
| 2  | History |
| 3  | Science |

#### Enrollments table
| StudentID | CourseID |
|-----------|----------|
| 1         | 1        |
| 2         | 2        |
| 3         | 3        |
| 4         | 1        |

**code for creating the table**
```sql
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
```

### question for exercise 2
* List all students and the courses they are enrolled in: Display the student's name alongside the course(s) they are enrolled in, even if a student is not enrolled in any course.
```sql
test
```
* List all courses and the number of students enrolled in each course: Display the course name and the count of students who are enrolled in that course.
```sql
test
```
* List all students who are not enrolled in any course: Retrieve the names of students who are not present in the "Enrollments" table.
```sql
test
```
* List all courses along with the names of students enrolled in each course: Display the course name and the names of students who are enrolled in that course, comma-separated.
```sql
test
```
* List all students and the courses they are enrolled in, including students with no enrollments: Similar to the first problem, but also include students who are not enrolled in any course.
```sql
test
```
* Find the course(s) with the maximum number of enrollments and the number of students enrolled: Determine the course(s) with the highest enrollment count and show the course name alongside the enrollment count.
```sql
test
```
* List all students and their enrollment status in each course (enrolled or not enrolled): Display the student's name, course name, and an indicator whether the student is enrolled in the course or not.
```sql
test
```
* List all students who are enrolled in more than one course: Retrieve the names of students who are enrolled in more than one course.
```sql
test
```
* List all courses and the students enrolled in each course, ordered by course name: Display the course name and the names of students who are enrolled in that course, ordered by course name.
```sql
test
```
* Find students who are enrolled in the same courses as Bob: Retrieve the names of students who are enrolled in at least one course that Bob is enrolled in.
```sql
test
```
