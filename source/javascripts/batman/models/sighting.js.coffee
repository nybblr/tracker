class Tracker.Sighting extends Batman.Model
  @resourceName: 'sighting'
  @storageKey: 'sightings'

  @persist Batman.LocalStorage

  @encode 'type', 'date', 'location', 'witnesses', 'name'

