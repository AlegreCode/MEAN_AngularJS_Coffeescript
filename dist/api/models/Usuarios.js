var mongoose = require("mongoose");

var UsuariosSchema = new mongoose.Schema({
    nombre: String,
    apellido: String,
    edad: Number,
    email: String,
    tel: String,
    direccion: String
});

mongoose.model("Usuarios", UsuariosSchema);