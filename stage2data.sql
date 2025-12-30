INSERT INTO Professor (iID, name, email)
VALUES (1, 'Dr. Smith', 'smith@univ.edu');

INSERT INTO Course (cID, title, term, section, iID)
VALUES (101, 'Database Systems', 'Fall 2025', '001', 1);

INSERT INTO Student (sID, name, email)
VALUES (2001, 'Alice', 'alice@univ.edu');

INSERT INTO Enrollment (sID, cID)
VALUES (2001, 101);

INSERT INTO Assignment (aID, cID, title, descript, dueDate)
VALUES (5001, 101, 'HW1: ER Modeling', 'Draw ER diagram', '2025-09-15 23:59:00');

INSERT INTO CourseMaterial (mID, cID, title, postedTime, loc)
VALUES (3001, 101, 'Syllabus', '2025-08-20 09:00:00', '/files/dbms/syllabus.pdf');

INSERT INTO Announcement (annID, cID, iID, title, contents, sentAt)
VALUES (4001, 101, 1, 'Welcome', 'Welcome to Database Systems!', '2025-08-21 10:00:00');

INSERT INTO Submission (sID, aID, subTime, loc, grade, gradedAt)
VALUES (2001, 5001, '2025-09-15 21:30:00', '/subs/2001-hw1.pdf', 95.0, '2025-09-18 14:00:00');
