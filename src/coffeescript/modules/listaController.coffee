appAngular = require("./appAngular.coffee")

module.exports = appAngular.controller("listaController",["$scope","$location", "datos", ($scope, $location, datos) ->

  $scope.goUpdate = (user) ->
    datos.user = user
    $location.path("/update")

  datos.getAll()

  $scope.users = datos.users

  $scope.goAdd = ->
    datos.add({
      nombre: $scope.user.nombre,
      apellido: $scope.user.apellido,
      edad: parseInt($scope.user.edad),
      email: $scope.user.email,
      tel: $scope.user.tel,
      direccion: $scope.user.direccion
    })
    $scope.user.nombre = "";
    $scope.user.apellido = "";
    $scope.user.edad = "";
    $scope.user.email = "";
    $scope.user.tel = "";
    $scope.user.direccion = "";


  $scope.goDelete = (user)->
    datos.delete(user)
])
