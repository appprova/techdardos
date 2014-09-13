jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()
  $("#game_challenged_name").autocomplete
    source: $("#game_challenged_name").data("autocomplete-source")
    select: (event, ui) ->
      $("#game_challenged_name").val ui.item.label
      $("#game_challenged_id").val ui.item.value
      false

    focus: (event, ui) ->
      $("#game_challenged_name").val ui.item.label
      false

    change: (event, ui) ->
      unless ui.item
        $("#game_challenged_name").val ""
        $("#game_challenged_id").val ""
      return
