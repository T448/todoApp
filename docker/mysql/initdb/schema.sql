USE mysqldb;

CREATE TABLE IF NOT EXISTS users (
  ulid VARCHAR(26) NOT NULL,
  email VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ulid`),
  UNIQUE KEY `UK1` (`email`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS colors (
  id VARCHAR(255) NOT NULL,
  code VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`user_email`) REFERENCES users(`email`),
  UNIQUE KEY `UK1` (`id`, `user_email`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS projects (
  id VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  color_id VARCHAR(255) NOT NULL,
  memo VARCHAR(255),
  user_email VARCHAR(255) NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_email`) REFERENCES users(`email`),
  FOREIGN KEY (`color_id`) REFERENCES colors(`id`),
  UNIQUE KEY `UK1` (`name`, `user_email`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS events (
  id VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  short_title VARCHAR(255) NOT NULL,
  project_id VARCHAR(255) NOT NULL,
  parent_event_id VARCHAR(255),
  memo VARCHAR(255),
  start_date DATE,
  end_date DATE,
  start_datetime DATETIME,
  end_datetime DATETIME,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_email`) REFERENCES users(`email`),
  FOREIGN KEY (`project_id`) REFERENCES projects(`id`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS memo_templates (
  id VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  user_email VARCHAR(255) NOT NULL,
  template VARCHAR(255) NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_email`) REFERENCES users(`email`),
  UNIQUE KEY `UK1` (`name`, `user_email`)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;