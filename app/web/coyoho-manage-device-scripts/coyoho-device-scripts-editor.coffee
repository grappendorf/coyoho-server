Polymer 'coyoho-device-scripts-editor',

  idChanged: ->
    @$.editor.load @id

  back: ->
    @router.go "/device_scripts"
