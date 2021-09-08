PRAGMA foreign_keys = ON;



add TABLE users (
    fname VARCHAR
    lname VARCHAR
    
)

add TABLE questions (
    title VARCHAR
    body VARCHAR
    author INTEGER 
    FOREIGN KEY (author)
)

add TABLE question_follows (
    question_id INTEGER NOT NULL
    user_id INTEGER NOT NULL
    PRIMARY KEY (question_id)
    PRIMARY KEY (user_id)
)
add TABLE replies (

    q_id INTEGER NOT NULL
    normal_id INTEGER NOT NULL

    u_id INTEGER NOT NULL

    r_body VARCHAR

    PRIMARY KEY (normal_id)
    FOREIGN KEY (q_id)
    FOREIGN KEY (u_id)
    
)