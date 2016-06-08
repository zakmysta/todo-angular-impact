angular.module('todosApp').factory 'Todo', ($resource) ->
  class Todo
    constructor: (errorHandler) ->
      @service = $resource('/api/todos/:id', {id: '@id'})
      @errorHandler = errorHandler

    create: (attrs) ->
      new @service(todo: attrs).$save ((todo) -> attrs.id = todo.id), @errorHandler
      attrs

    all: ->
      @service.query((-> null), @errorHandler)