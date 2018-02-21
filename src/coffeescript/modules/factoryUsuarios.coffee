appAngular = require("./appAngular.coffee")

module.exports = appAngular.factory("datos", ["$http", ($http) ->
  datos = {}
  datos.users = []

  datos.user = {}

  datos.getAll = ->
    return $http.get("/api/usuarios")
    .then((data)->
      angular.copy(data, datos.users)
      return datos.users
    )

  datos.add = (user) ->
    return $http.post("/api/usuario", user)
    .then((user)->
      datos.users.data.push(user.data)
    )

  datos.update = (user) ->
    return $http.put("/api/usuario/" + user._id, user)
    .then((user)->
      i = datos.users.data.indexOf(user)
      datos.users[i] = user
    )

  datos.delete = (user) ->
    return $http.delete("/api/usuario/" + user._id)
    .then( ->
      i = datos.users.indexOf(user)
      datos.users.data.splice(i,1)
    )

  return datos

])
