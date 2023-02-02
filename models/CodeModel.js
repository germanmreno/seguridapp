import db from "../database/db.js";

import { DataTypes } from "sequelize";

const CodeModel = db.define("codigo", {
  codigo: { type: DataTypes.STRING, primaryKey: true },
  responsable: { type: DataTypes.STRING },
});

export default CodeModel;
