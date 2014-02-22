TodoApp.factory 'Tasks', ['$resource', ($resource) ->
  $resource '/api/tasks', {}, { index: { method: 'GET' } },
  $resource '/api/tasks/:id', { id: '@id'  }, { destroy: { method: 'DELETE' } },
  $resource '/api/tasks/:id/done', { id: '@id' }, { done: { method: 'PATCH' } }
]
