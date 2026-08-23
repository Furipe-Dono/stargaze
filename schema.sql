-- Stargaze Database Schema
-- MySQL 8+

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id),
    UNIQUE KEY email_UNIQUE (email)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS publications (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    event_date DATE NOT NULL,
    location VARCHAR(150) NOT NULL,
    user_id INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id),
    KEY fk_publications_users (user_id),

    CONSTRAINT fk_publications_users
        FOREIGN KEY (user_id)
        REFERENCES users (id)
        ON DELETE CASCADE
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS likes (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    publication_id INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id),

    UNIQUE KEY unique_user_publication (
        user_id,
        publication_id
    ),

    KEY fk_likes_publications (
        publication_id
    ),

    CONSTRAINT fk_likes_publications
        FOREIGN KEY (publication_id)
        REFERENCES publications (id)
        ON DELETE CASCADE,

    CONSTRAINT fk_likes_users
        FOREIGN KEY (user_id)
        REFERENCES users (id)
        ON DELETE CASCADE
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4;
