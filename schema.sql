-- commands ripped from our stage 2 doc
CREATE TABLE Student (
    sID INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE Professor (
    iID INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE Course (
    cID INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    term VARCHAR(50) NOT NULL,
    section VARCHAR(20),
    iID INT NOT NULL,
    FOREIGN KEY (iID) REFERENCES Professor(iID)
);

CREATE TABLE Assignment (
    aID INT PRIMARY KEY,
    cID INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    descript TEXT,
    dueDate TIMESTAMP NOT NULL,
    FOREIGN KEY (cID) REFERENCES Course(cID)
);

CREATE TABLE CourseMaterial (
    mID INT PRIMARY KEY,
    cID INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    postedTime TIMESTAMP NOT NULL,
    loc VARCHAR(500),
    FOREIGN KEY (cID) REFERENCES Course(cID)
);

CREATE TABLE Announcement (
    annID INT PRIMARY KEY,
    cID INT NOT NULL,
    iID INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    contents TEXT NOT NULL,
    sentAt TIMESTAMP NOT NULL,
    FOREIGN KEY (cID) REFERENCES Course(cID),
    FOREIGN KEY (iID) REFERENCES Professor(iID)
);

CREATE TABLE Submission (
    sID INT,
    aID INT,
    subTime TIMESTAMP NOT NULL,
    loc VARCHAR(500),
    grade DECIMAL(5,2),
    gradedAt TIMESTAMP,
    PRIMARY KEY (sID, aID),
    FOREIGN KEY (sID) REFERENCES Student(sID),
    FOREIGN KEY (aID) REFERENCES Assignment(aID)
);

CREATE TABLE Enrollment (
    sID INT,
    cID INT,
    PRIMARY KEY (sID, cID),
    FOREIGN KEY (sID) REFERENCES Student(sID),
    FOREIGN KEY (cID) REFERENCES Course(cID)
);
