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