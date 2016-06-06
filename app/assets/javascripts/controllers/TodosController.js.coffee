angular.module('todosApp').controller "TodosController", ($scope, $timeout, $routeParams, Todo) ->

  $scope.init = () ->
    @todoService = new Todo(serverErrorHandler)

    $scope.todos = @todoService.all

  $scope.addTodo = ->
    todo = @todoService.create(description: $scope.todoDescription)
    todo.priority = 1
    $scope.todos.unshift(todo)
    $scope.todoDescription = ""

  serverErrorHandler = ->
    alert("There was a server error, please reload the page and try again.")