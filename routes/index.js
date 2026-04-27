import express from "express";

import authRoutes from "./auth.routes.js";
import productRoutes from "./product.routes.js";
import doctorRoutes from "./doctor.routes.js";
import orderRoutes from "./order.routes.js";

const router = express.Router();

router.use("/auth", authRoutes);
router.use("/products", productRoutes);
router.use("/doctors", doctorRoutes);
router.use("/orders", orderRoutes);

export default router;
