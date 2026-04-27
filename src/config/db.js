import pkg from "pg";
import dotenv from "dotenv";

dotenv.config();

const { Pool } = pkg;

const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: "medcart",
  password: process.env.DB_PASS,
  port: 5432,
});

export default pool;
