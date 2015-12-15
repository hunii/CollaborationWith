
class Dashing.Iframeweb extends Dashing.Widget

  ready: ->
    $(@node).find(".iframe").attr('src', @get('src'))

  onData: (data) ->
    $(@node).find(".iframe").attr('src', data.src)