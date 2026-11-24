create DATABASE yeticave
  DEFAULT CHARACTER SET uft8
  DEFAULT COLLATE utf8_general_ci;

CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(128) NOT NULL UNIQUE,
  code VARCHAR(128) NOT NULL UNIQUE
);

INSERT INTO category SET title = 'Доски и лыжи', code = 'boards';
INSERT INTO category SET title = 'Крепления', code = 'attachment';
INSERT INTO category SET title = 'Ботинки', code = 'boots';
INSERT INTO category SET title = 'Одежда', code = 'clothing';
INSERT INTO category SET title = 'Инструменты', code = 'tools';
INSERT INTO category SET title = 'Разное', code = 'other';

CREATE TABLE lots (
  id INT AUTO_INCREMENT PRIMARY KEY,
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  title VARCHAR(128),
  description TEXT,
  src TEXT,
  start_price INT,
  end_date TIMESTAMP,
  bid_increment INT,
  FOREIGN KEY (author_id) REFERENCES user (id),
  FOREIGN KEY (winner_id) REFERENCES user (id),
  FOREIGN KEY (category_id) REFERENCES category (id)
);

CREATE TABLE bets (
  id INT AUTO_INCREMENT PRIMARY KEY,
  date TIMESTAMP,
  sum INT,
  FOREIGN KEY (user_id) REFERENCES user (id),
  FOREIGN KEY (lot_id) REFERENCES lots(id)
);

CREATE TABLE user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  register_date TIMESTAMP,
  email VARCHAR(128),
  name VARCHAR(128),
  password VARCHAR(255),
  contacts TEXT,
  FOREIGN KEY (created_lots) REFERENCES lots (id),
  FOREIGN KEY (bets) REFERENCES bets (id)
);
