import express from "express";
import pool from "../config/db.js";

const router = express.Router();

// Get all medicines
router.get("/", async (req, res) => {
  const result = await pool.query("SELECT * FROM products");
  res.json(result.rows);
});

// Add medicine
router.post("/", async (req, res) => {
  const { name, brand, price, stock } = req.body;

  await pool.query(
    "INSERT INTO products(name,brand,price,stock) VALUES($1,$2,$3,$4)",
    [name, brand, price, stock]
  );

  res.json({ message: "Product added" });
});

export default router;
