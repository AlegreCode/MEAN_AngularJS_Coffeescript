appAngular = require("./appAngular.coffee")

module.exports = appAngular.config(["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider) ->
    $locationProvider.html5Mode(true)

    $routeProvider.when("/",{
        templateUrl: "views/home.html"
    })
    .when("/lista",{
        templateUrl: "views/lista.html"
    })
    .when("/update",{
        templateUrl: "views/update.html"
    })
    .when("/404",{
        templateUrl: "views/error.html",
        controller: "errorController"
    })
    .otherwise({
        redirectTo: "/404"
    })
])
