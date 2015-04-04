Polymer 'caretaker-app',

  created: ->
    @app = @

  login: ->
    @$.sessionManager.connect()

  logout: ->
    @$.sessionManager.disconnect()
    @router.go '/'
    @$.sessionManager.connect()

  changePassword: ->
    @$.sessionManager.changePassword()

  sessionManagerLoaded: ->
    @login() unless @$.sessionManager.token

  editProfile: ->
    @$.sessionManager.editProfile()

  authenticationError: ->
    @unauthenticatedLocation = window.location.hash[1..]
    @$.sessionManager.reconnect()

  '$.sessionManager.tokenChanged': ->
    if @$.sessionManager.token && @unauthenticatedLocation
      @$.router.go @unauthenticatedLocation
      @unauthenticatedLocation = null

  bindRouteAttributes: (e) ->
    e.detail.model.sessionManager = @sessionManager
