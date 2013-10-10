class Tracker.Sighting extends Batman.Model
  @resourceName: 'sighting'
  @storageKey: 'sightings'

  @persist Batman.LocalStorage

  @encode 'title', 'body', 'tags', 'published', 'published_on'

