var express = require("express");
var router = express.Router();
var novedadesModel = require("../../models/novedadesModel");

/* listar novedades */
router.get("/", async function (req, res, next) {
  var novedades = await novedadesModel.getNovedades();

  res.render("admin/novedades", {
    layout: "admin/layout",
    usuario: req.session.nombre,
    novedades,
  });
});

// diseño de agregar
router.get("/agregar", (req, res, next) => {
  res.render("admin/agregar", {
    layout: "admin/layout",
  });
});

// insertar novedad
router.post("/agregar", async (req, res, next) => {
  try {
    console.log(req.body);
    if (
      req.body.titulo != "" &&
      req.body.subtitulo != "" &&
      req.body.descripcion != ""
    ) {
      await novedadesModel.insertNovedades(req.body);
      res.redirect("/admin/novedades");
    } else {
      res.render("admin/agregar", {
        layout: "admin/layout",
        error: true,
        message: "Todos los campos son requeridos",
      });
    }
  } catch (error) {
    console.log(error);
    res.render("admin/agregar", {
      layout: "admin/layout",
      error: true,
      message: "No se cargo la novedad",
    });
  }
});

// eliminar
router.get("/eliminar/:id", async (req, res, next) => {
  var id = req.params.id;

  await novedadesModel.deleteNovedadesById(id);
  res.redirect("/admin/novedades");
});

// modificar la vista -> formulario y datos cargados
router.get("/modificar/:id", async (req, res, next) => {
  var id = req.params.id;
  // console.log(req.params.id);
  var novedad = await novedadesModel.getNovedadesById(id);

  res.render("admin/modificar", {
    layout: "admin/layout",
    novedad,
  });
});

// actualizar
router.post("/modificar", async (req, res, next) => {
  try {
    var obj = {
      titulo: req.body.titulo,
      subtitulo: req.body.subtitulo,
      descripcion: req.body.descripcion,
    };
    // console.log(obj)

    await novedadesModel.modificarNovedadesById(obj, req.body.id);
    res.redirect("/admin/novedades");

  } catch (error) {
    console.log(error);
    res.render("admin/modificar", {
      layout: "admin/layout",
      error: true,
      message: "No se modifico la novedad",
    });
  }
});

module.exports = router;
