
-- name: get-user-by-username^
SELECT *
FROM users
WHERE username = :username;

-- name: create_users#
CREATE TABLE users ( userid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                     username VARCHAR(100),
                     firstname VARCHAR(100),
                     lastname VARCHAR(100)
);

-- name: insert_bob!
INSERT INTO users (username, firstname, lastname)
VALUES ('bob', 'bob', 'smith');
