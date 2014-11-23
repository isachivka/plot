$(document).ready(() ->
  sections_height(577)
)

sections_height = (min) ->
  array = [
    'header' 
    'section.s1' 
    'section.s2' 
    'section.s3'
    'section.s4' 
    'section.s5' 
    'section.s6' 
    'section.s7' 
    'section.s9'
  ]

  set_heights = (array) ->
    px = $(window).height()
    set_height(elem, px) for elem in array

  set_height = (elem, px) ->
    px = min if px < min 
    $(elem).height px

  set_heights(array)
  
  $(window).resize(() ->
    set_heights(array)
  )