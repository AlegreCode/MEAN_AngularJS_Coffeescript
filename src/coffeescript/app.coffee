window.jQuery = require('jquery')
bootstrap = require('../../node_modules/bootstrap-sass/assets/javascripts/bootstrap.js')

appAngular = require("./modules/appAngular.coffee")
appConfig = require("./modules/angularConfig.coffee")
navbarController = require("./modules/navbarController.coffee")
listaController = require("./modules/listaController.coffee")
updateController = require("./modules/updateController.coffee")
errorController = require("./modules/errorController.coffee")
factoryUsuarios = require("./modules/factoryUsuarios.coffee")

do ($ = jQuery) ->
    console.log "Work!"
