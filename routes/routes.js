import express from "express";
import {
  getEntries,
  openSession,
  registerEntry,
} from "../controllers/SegController.js";

const router = express.Router();

router.get("/data", getEntries);
router.post("/register", registerEntry);
router.post("/login", openSession);

export default router;
