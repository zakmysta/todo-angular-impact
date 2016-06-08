todosApp = angular.module('todosApp', ['ngResource', 'ngRoute'])

todosApp.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken