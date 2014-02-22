TodoApp.controller 'TasksController', ['$scope', 'Tasks', ($scope, Tasks) ->
  $scope.tasks = Tasks.query()

  $scope.add = ->
    task = Tasks.save($scope.newTask)
    $scope.tasks.push(task)
    $scope.newTask = {}

  $scope.done = (id, index) ->
    alert id
    Task.done(id)

  $scope.destroy = (id, index) ->
    $scope.tasks[index].$delete()
    $scope.posts.splice(index, 1)
]
