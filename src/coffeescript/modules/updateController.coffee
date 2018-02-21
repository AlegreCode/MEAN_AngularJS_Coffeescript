appAngular = require("./appAngular.coffee")

module.exports = appAngular.controller("updateController",["$scope","$location","datos",($scope, $location, datos)->

  $scope.user = datos.user

  $scope.goList = ->
    $location.path("/lista")

  $scope.goUpdate = ->
    datos.update($scope.user)
    $location.path("/lista")

])
