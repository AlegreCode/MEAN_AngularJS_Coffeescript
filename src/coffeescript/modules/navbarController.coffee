appAngular = require("./appAngular.coffee")

module.exports = appAngular.controller("navbarController",["$scope", "$location", ($scope, $location) ->
    $scope.goHome = ->
        $location.path("/")
    $scope.goLista = ->
        $location.path("/lista")

    $scope.esActivo = (rutaActual) ->
        return rutaActual == $location.path()
])
