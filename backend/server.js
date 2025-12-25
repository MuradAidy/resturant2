const express = require("express");
const app = express();

app.get("/api/recommend", (req, res) => {
  const meal = req.query.meal?.toLowerCase().trim();
  const restaurants = [
    { name: "Pizza House", meal: "pizza", rating: 4.6 },
    { name: "Shawarma King", meal: "shawarma", rating: 4.7 },
    { name: "Burger Hub", meal: "burger", rating: 4.4 }
  ];

  const best = restaurants
    .filter(r => r.meal === meal)
    .sort((a, b) => b.rating - a.rating)[0];

  if (!best) return res.json({ meal, message: "No recommendation found" });
  res.json({ meal, recommended: best });
});

app.get("/api/health", (req, res) => res.json({ ok: true }));

app.listen(3001, () => console.log("Backend running on 3001"));
