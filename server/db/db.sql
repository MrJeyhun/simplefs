CREATE TYPE user_status AS ENUM ('BLOCKED', 'ACTIVE');

CREATE TABLE users (
    id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255)  UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    status user_status,
    register_time timestamp DEFAULT current_timestamp,
    last_login timestamp
);