# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Task.create(title: "Task1", description: "Task memo1", priority: 1, end_on: Date.new(2014,2,19), done: true)
Task.create(title: "Task2", description: "Task memo2", priority: 3, end_on: Date.new(2014,2,22), done: false)
Task.create(title: "Task3", description: "Task memo3", priority: 2, end_on: Date.new(2014,2,22), done: false)
