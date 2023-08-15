create table Students (
	Id integer primary key autoincrement,
	Name text not null,
	Age integer not null,
	Gender text not null,
	Course tect not null
);

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