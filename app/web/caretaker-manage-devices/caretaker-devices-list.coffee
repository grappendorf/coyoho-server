Polymer 'caretaker-devices-list',

  ready: ->
    @loadTable()

  edit: (e) ->
    @router.go "/devices/#{e.detail.id}"

  new: ->
    self = @
    @$.newDeviceDialog.start().then (type) ->
      self.$.newDeviceDialog.end()
      self.router.go "/devices/new/#{type}"

  loadTable: ->
    @$.table.load()