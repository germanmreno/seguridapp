import db from "../database/db.js";

import { DataTypes } from "sequelize";

const RegisterModel = db.define("usuarios", {
  nombres: { type: DataTypes.STRING },
  ci: { type: DataTypes.STRING },
  telefono: { type: DataTypes.STRING },
  empresa: { type: DataTypes.STRING },
  direccion: { type: DataTypes.STRING },
  contacto: { type: DataTypes.STRING },
  observaciones: { type: DataTypes.STRING },
  carnet: { type: DataTypes.STRING },
  // foto: { type: DataTypes.STRING },
  diaentrada: { type: DataTypes.DATE },
  horaentrada: { type: DataTypes.TIME },
  alerta: { type: DataTypes.STRING },
  registrado: { type: DataTypes.STRING },
});

export default RegisterModel;
