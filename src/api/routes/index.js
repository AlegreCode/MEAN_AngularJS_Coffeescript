const express = require("express");
const path = require("path");

var router = express.Router();

var mongoose = require("mongoose");
var Usuarios = mongoose.model("Usuarios");


router.get("/api/usuarios", function(req, res) {
    Usuarios.find(function(error, usuarios) {
        if (error) {
            return res.send(error);
        }
        res.json(usuarios);
    });
});

router.post("/api/usuario", function(req, res) {
    var usuario = new Usuarios(req.body);

    usuario.save(function(error, usuario) {
        if (error) {
            return res.send(error);
        }
        res.json(usuario);
    });
});

router.put("/api/usuario/:id", function(req, res) {
    Usuarios.findById(req.params.id, function(error, usuario) {
        usuario.nombre = req.body.nombre;
        usuario.apellido = req.body.apellido;
        usuario.edad = req.body.edad;
        usuario.email = req.body.email;
        usuario.tel = req.body.tel;
        usuario.direccion = req.body.direccion;

        usuario.save(function(error) {
            if (error) {
                return res.send(error);
            }
            res.json(usuario);
        });
    });
});

router.delete("/api/usuario/:id", function(req, res) {
    Usuarios.findByIdAndRemove(req.params.id, function(error) {
        if (error) {
            return res.send(error);
        }
        res.json({ message: "Item deleted" });
    });
});

router.get("*", function(req, res) {
    res.sendFile(path.join(__dirname, "../../", "index.html"));
});

module.exports = router;