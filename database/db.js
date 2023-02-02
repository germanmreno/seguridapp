import { Sequelize } from "sequelize";

const db = new Sequelize("seguridapp", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
