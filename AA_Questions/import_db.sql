PRAGMA foreign_keys = ON;



CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname VARCHAR,
    lname VARCHAR
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title VARCHAR,
    body VARCHAR,

    FOREIGN KEY author VARCHAR REFERENCES question_follows(user_id) 
);

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    question_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (question_id) REFERENCES questions(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE replies (
    parent_reply INTEGER PRIMARY KEY,
    child_reply INTEGER, 
    q_id integer NOT NULL,
    normal_id integer NOT NULL,

    u_id integer NOT NULL,

    r_body VARCHAR,
    FOREIGN KEY (q_id) REFERENCES questions(id),
    FOREIGN KEY (u_id) REFERENCES users(id),
    FOREIGN KEY (child_reply) REFERENCES replies(parent_reply)
);

CREATE TABLE question_likes (


    likes integer,

    id_u integer,
    id_q integer,
    FOREIGN KEY (id_u) REFERENCES users(id),

    FOREIGN KEY (id_q) REFERENCES questions(id)
);

-- INSERT INTO users (fname, lname)
-- VALUES ("John", "Doe");

-- INSERT INTO users (fname, lname)
-- VALUES ("Jane", "Doe");

-- INSERT INTO questions (title, body)
-- VALUES ("AA_Question", "What is coding?");

-- INSERT INTO replies (q_id, normal_id, u_id, r_body)
-- VALUES ( 1, 1, 1, "Coding is fun!");

-- INSERT INTO question_likes(likes, id_u, id_q)
-- VALUES (1000000, 2, 2);
