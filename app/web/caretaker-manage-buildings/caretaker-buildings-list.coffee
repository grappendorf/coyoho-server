Polymer 'caretaker-buildings-list',

  ready: ->
    @$.table.load()

  edit: (e) ->
    @router.go "/buildings/#{e.detail.id}"

  new: ->
    @router.go '/buildings/new'

  showFloors: (e) ->
    @router.go "/buildings/#{e.detail.id}/floors"