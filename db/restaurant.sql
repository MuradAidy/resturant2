CREATE TABLE IF NOT EXISTS restaurants (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  meal TEXT,
  rating REAL
);

INSERT INTO restaurants (name, meal, rating) VALUES
('Pizza House', 'pizza', 4.6),
('Shawarma King', 'shawarma', 4.7),
('Burger Hub', 'burger', 4.4);
