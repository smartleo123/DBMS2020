
CREATE TABLE Professor(
	Name character varying,
	Sex int, --男生1/女生0
	Prof_ID int PRIMARY KEY
	
);

CREATE TABLE Labotary(
	name varchar PRIMARY KEY,
	D_id int--REFERENCES Professor(Prof_ID)
);

CREATE TABLE OtherStudent(
	Name character varying,
	Sex int, --男生1/女生0
	ID int PRIMARY KEY
);



CREATE TABLE CSstudent(
	Name character varying,
	Sex int, --男生1/女生0	
	ID int PRIMARY KEY,
	Evaluate_content varchar,
	Pro_ID int,--REFERENCES Professor(Prof_ID)
	Labname varchar--REFERENCES Labotary(name)

	
);

CREATE TABLE Course(
	Course_no int PRIMARY KEY,
	Name varchar,
	T_ID int--REFERENCES Professor(Prof_ID)

);

CREATE TABLE PreviousExam( --先不做
	content varchar,
	course_no int--REFERENCES Course(course_no)
);

CREATE TABLE EvaluateCourse( --先不做
	course_no int,--REFERENCES Course(course_no),
	CS_id int,--REFERENCES CSstudent(ID),
	O_id int--REFERENCES OtherStudent(ID)

	
);




