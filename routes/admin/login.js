var express = require("express");
var router = express.Router();
var usuariosModel = require("./../../models/usuariosModel");

/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("admin/login", {
    //login.hbs
    layout: "admin/layout", //layout.hbs
  });
});

router.get("/logout", function (req,res, next) {
  req.session.destroy(); //destruir las variables de sesion 
  res.render("admin/login", {
    layout: "admin/layout"
  });
});

router.post("/", async (req, res, next) => {
  try {
    var usuario = req.body.usuario; //captura la info
    var password = req.body.password; //captura la info

    var data = await usuariosModel.getUserByUsernameAndPassword(
      usuario,
      password
    );

    if (data != undefined) {
      req.session.id_usuario = data.id;
      req.session.nombre = data.uduario;

      res.redirect("/admin/novedades");
    } else {
      res.render("admin/login", {
        layout: "admin/layout",
        error: true,
      });
    }
  } catch (error) {
    console.log(error);
  }
}); //cierro router.post

module.exports = router;
