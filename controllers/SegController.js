import RegisterModel from "../models/RegisterModel.js";
import CodeModel from "../models/CodeModel.js";

//Métodos

//Iniciar sesiòn

export const openSession = async (req, res) => {
  const { codigo } = req.body;

  if (!codigo) return res.sendStatus(400);

  try {
    const { codigo } = req.body;
    const userCode = await CodeModel.findOne({
      where: { codigo: codigo },
    });

    if (!userCode) return res.sendStatus(401);

    if (userCode) {
      return res.json({
        codigo: userCode.codigo,
        responsable: userCode.responsable,
      });
    } else {
      return res.sendStatus(401);
    }
  } catch (error) {
    res.json({ message: error.message });
  }
};

//Registrar entrada
export const registerEntry = async (req, res) => {
  try {
    const {
      nombres,
      ci,
      telefono,
      empresa,
      direccion,
      contacto,
      observaciones,
      carnet,
      diaentrada,
      horaentrada,
      registrado,
      alerta,
    } = req.body;
    console.log(req.body);
    const response = await RegisterModel.create({
      nombres,
      ci,
      telefono,
      empresa,
      direccion,
      observaciones,
      contacto,
      carnet,
      diaentrada,
      horaentrada,
      registrado,
      alerta,
    });
    res.json({
      message: "Entrada registrada exitosamente.",
    });
  } catch (error) {
    res.json({ message: error.message });
  }
};

export const getEntries = async (req, res) => {
  try {
    // const Op = Sequelize.Op;
    // const TODAY_START = new Date().setHours(0, 0, 0, 0);
    // const NOW = new Date();
    // console.log(TODAY_START);
    // const entries = await RegisterModel.findAll({
    //   where: {
    //     createdAt: {
    //       [Op.gt]: TODAY_START,
    //       [Op.lt]: NOW,
    //     },
    //   },
    // });
    const entries = await RegisterModel.findAll();
    console.log(entries);
    res.json(entries);
  } catch (error) {
    res.json({ message: error.message });
  }
};
