CREATE DATABASE bee_crypt_bzz;
\c bee_crypt_bzz

CREATE TABLE accounts (id SERIAL PRIMARY KEY, user_name VARCHAR(255), user_email VARCHAR(255), password_digest VARCHAR(255), is_admin BOOLEAN);
\dt

INSERT INTO accounts (user_name, password_digest) VALUES ('adam', '1234');
# COMMENTS
# table name accounts instead of users, to avoid issues
# bcrypt requires the naming and it's ruby best practice
# password_digest is bcrypt representation of pwd
