class Tracker.SightingsController extends Batman.Controller
  routingKey: 'sightings'

  index: (params) ->
    @set 'types', ["Horrid", "Ghastly", "Benine"]

    Tracker.Sighting.load (err, results) =>
      throw err if err

      @set 'sightings', Tracker.Sighting.get('loaded')

  show: (params) ->
    Tracker.Sighting.find parseInt(params.id, 10), (err, record) =>
      throw err if err

      @set 'sighting', record

  new: (params) ->
    @set 'sighting', new Tracker.Sighting

  create: (params) ->
    @get('sighting').save (err) =>
      throw err if err

      @redirect '/sightings'

  edit: (params) ->
    Tracker.Sighting.find parseInt(params.id, 10), (err, record) =>
      throw err if err

      @set 'sighting', record

  update: (params) ->
    @get('sighting').save (err) =>
      throw err if err

      @redirect '/sightings'

  destroy: (node, callback, context) ->
    context.get('sighting').destroy (err) =>
      throw err if err

      @redirect '/sightings'

