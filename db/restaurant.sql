CREATE TABLE IF NOT EXISTS restaurants (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  meal VARCHAR(100),
  rating FLOAT
);

INSERT INTO restaurants (name, meal, rating) VALUES
('Pizza House', 'pizza', 4.6),
('Shawarma King', 'shawarma', 4.7),
('Burger Hub', 'burger', 4.4);
