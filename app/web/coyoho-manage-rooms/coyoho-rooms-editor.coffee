Polymer 'coyoho-rooms-editor',

  idChanged: ->
    @$.editor.load @id

  back: ->
    @router.go "/buildings/#{@buildingId}/floors/#{@floorId}/rooms"

  nameOfBuilding: (names, id) ->
    id

  nameOfFloor: (names, id) ->
    id
