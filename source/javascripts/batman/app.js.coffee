#= require ../lib/batman
#= require ../lib/batman.jquery
#
#= require_self
#
#= require_tree ./lib
#= require_tree ./models
#= require_tree ./views
#= require_tree ./controllers

Batman.config.pathToHTML = '/assets/batman/templates'

class window.Tracker extends Batman.App
  @resources 'sightings'

  # @resources 'pages', ->
  #   @collection 'count'
  #   @member 'duplicate'

  # @route 'apps', 'apps#index'
  # @route 'apps/private', 'apps#private', as: 'privateApps'

  @root 'sightings#index'

