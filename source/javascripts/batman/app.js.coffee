#= require ../lib/batman
#= require ../lib/batman.jquery
#
#= require_self
#
#= require_tree ./lib
#= require_tree ./models
#= require_tree ./views
#= require_tree ./controllers

Batman.config.pathToHTML = ''

class window.Tracker extends Batman.App
  @resources 'sightings'
  @root 'sightings#index'

