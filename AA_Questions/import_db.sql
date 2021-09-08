PRAGMA foreign_keys = ON;



CREATE TABLE users (
    fname VARCHAR,
    lname VARCHAR
);

CREATE TABLE questions (
    title VARCHAR,
    body VARCHAR,

    author PRIMARY KEY
);

CREATE TABLE question_follows (
    question_id PRIMARY KEY,
    user_id INTEGER NOT NULL
);
CREATE TABLE replies (

    q_id integer NOT NULL,
    normal_id integer NOT NULL,

    u_id integer NOT NULL,

    r_body VARCHAR
    
);

CREATE TABLE question_likes (


    likes integer,

    id_u integer,
    id_q integer 

);

INSERT INTO users (fname, lname)
VALUES ("John", "Doe");

INSERT INTO users (fname, lname)
VALUES ("Jane", "Doe");

INSERT INTO questions (title, body)
VALUES ("AA_Question", "What is coding?");

INSERT INTO replies (q_id, normal_id, u_id, r_body)
VALUES ( 1, 1, 1, "Coding is fun!");

INSERT INTO question_likes(likes, id_u, id_q)
VALUES (1000000, 2, 2);
