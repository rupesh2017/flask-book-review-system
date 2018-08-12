CREATE TABLE registered_user(id SERIAL,
userid VARCHAR NOT NULL PRIMARY KEY,
hash_password VARCHAR NOT NULL )


CREATE TABLE books (id SERIAL,
isbn VARCHAR PRIMARY KEY,
title VARCHAR NOT NULL,
author VARCHAR NOT NULL,
year VARCHAR NOT NULL
);

CREATE TABLE user_review(id SERIAL,
review VARCHAR NOT NULL,
rating INTEGER NOT NULL CHECK(rating BETWEEN 1 AND 5),
isbn VARCHAR NOT NULL,
userid  VARCHAR NOT NULL,
FOREIGN KEY(isbn) REFERENCES books(isbn),
FOREIGN KEY(userid) REFERENCES registered_user(userid),
PRIMARY KEY(isbn,userid)
);

