proyecto = angular.module('proyecto',[
  'templates',
  'ngRoute',
  'controllers',
])

proyecto.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'ProyectosController'
      )
])

cursos = [
  {
    id: 1,
    nombre: 'Programación Básica',
    profesor: 'Roberto Jofre'
  },
  {
    id: 2,
    nombre: 'Programación Media',
    profesor: 'Roberto Jofre'
  },
  {
    id: 3,
    nombre: 'Programación Avanzada',
    profesor: 'Roberto Jofre'
  },
  {
    id: 4,
    nombre: 'Cocina Básica',
    profesor: 'Tania Altozano'
  },
  {
    id: 5,
    nombre: 'Cocina Media',
    profesor: 'Tania Altozano'
  },
  {
    id: 6,
    nombre: 'Cocina Avanzada',
    profesor: 'Tania Altozano'
  },

  {
    id: 7,
    nombre: 'Guitarra Básica',
    profesor: 'Segundo Irribarren'
  },
  {
    id: 8,
    nombre: 'Guitarra Media',
    profesor: 'Segundo Irribarren'
  },
  {
    id: 9,
    nombre: 'Guitarra Avanzada',
    profesor: 'Segundo Irribarren'
  }
]


controllers = angular.module('controllers',[])
controllers.controller("ProyectosController", [ '$scope', '$routeParams', '$location',
  ($scope,$routeParams,$location)->
    $scope.search = (keywords)->  $location.path("/").search('keywords',keywords)

    if $routeParams.keywords
      keywords = $routeParams.keywords.toLowerCase()
      $scope.cursos = cursos.filter (curso)-> curso.nombre.toLowerCase().indexOf(keywords) != -1
    else
      $scope.cursos = []
])
