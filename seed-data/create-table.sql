USE example;

CREATE TABLE users (
  id serial PRIMARY KEY,
  name VARCHAR (50),
  email VARCHAR (50)
);

INSERT INTO users (name, email) VALUES ('name', 'email');
