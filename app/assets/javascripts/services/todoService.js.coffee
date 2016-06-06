angular.module('todosApp').factory 'Todo', ($resource, $http) ->
  class Todo
    constructor: (taskListId, errorHandler) ->
      @service = $resource('/api/todos/:id', {id: '@id'})
      @errorHandler = errorHandler

    create: (attrs) ->
      new @service(task: attrs).$save ((task) -> attrs.id = task.id), @errorHandler
      attrs

    all: ->
      @service.query((-> null), @errorHandler)