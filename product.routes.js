import express from "express";
const router = express.Router();

router.get("/", async (req, res) => {
  // fetch products
  res.json({ message: "All products" });
});

router.post("/", async (req, res) => {
  // add product
  res.json({ message: "Product created" });
});

export default router;
