const express = require("express");
const alamatRouter = express.Router();
const { Alamat } = require("../models/alamat");

alamatRouter.get("/api/alamats/", async (req, res) => {
  try {
    const alamats = await Alamat.find({}).exec();
    //res.send("tes");
    res.json(alamats);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

alamatRouter.post("/api/add-alamat/", async (req, res) => {
  // const { tes } = req.body;
  // console.log(tes);
  try {
    const { provinsi, kota, kecamatan, desa } = req.body;
    // const provinsi = "tes";
    // const kota = "tes";
    // const kecamatan = "tes";
    // const desa = "tes";

    let alamat = new Alamat({
      provinsi,
      kota,
      kecamatan,
      desa,
    });

    alamat = await alamat.save();
    res.json(alamat);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = alamatRouter;
