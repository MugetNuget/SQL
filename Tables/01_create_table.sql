CREATE TABLE persons (
	id int,
    name varchar(50),
    age int,
    email varchar(50),
    created date
);

CREATE TABLE persons2 (
	id int NOT NULL,
    name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created date
);

CREATE TABLE persons3 (
	id int NOT NULL,
    name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id)
);

CREATE TABLE persons4 (
	id int NOT NULL,
    name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id)
);

CREATE TABLE persons6 (
	id int NOT NULL,
    name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

CREATE TABLE persons7 (
	id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

CREATE TABLE dni (
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);
    