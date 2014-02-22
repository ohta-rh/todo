TodoApp.factory 'Tasks', ['$resource', ($resource) ->
  $resource '/api/tasks/:id'
]
