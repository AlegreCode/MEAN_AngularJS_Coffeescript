appAngular = require("./appAngular.coffee")

module.exports = appAngular.factory("comun",["$http", ($http)->
  comun = {}
  comun.tareas = []

  comun.tarea = {}

  # comun.eliminar = (tarea) ->
  #   i = comun.tareas.indexOf(tarea)
  #   comun.tareas.splice(i,1)

  comun.getAll = ->
    return $http.get("/api/tareas")
    .then((data)->
      angular.copy(data, comun.tareas)
      return comun.tareas
    )

  comun.add = (tarea) ->
    return $http.post("/api/tarea", tarea)
    .then((tarea) ->
      comun.tareas.data.push(tarea.data)
    )

  comun.update = (tarea) ->
    return $http.put("/api/tarea/" + tarea._id, tarea)
    .then((data) ->
      i = comun.tareas.data.indexOf(tarea)
      comun.tareas[i] = data
    )

  comun.delete = (tarea) ->
    return $http.delete("/api/tarea/" + tarea._id)
    .then( ->
      i = comun.tareas.indexOf(tarea)
      comun.tareas.data.splice(i, 1)
    )


  return comun
])
