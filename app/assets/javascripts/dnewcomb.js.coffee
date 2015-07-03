$('.home.index').ready ->

    # Animates images on page
    animate = new PageAnimations

    # Toggles zoom on/off based on page width
    zoom = new ZoomToggle

    # Switches images in/out
    switch_east = new ImageSwitch(zoom, "drop_e", "zoom_img_e", "container_e")
    switch_west = new ImageSwitch(zoom, "drop_w", "zoom_img_w", "container_w")

    # Collapse navbar upon clicking a link
    $('.navbar-collapse ul li a').click ->
        $('.navbar-toggle:visible').click()

    # Allows for smooth scrolling to different sections
    $('a.page-scroll').bind 'click', (e) ->
        scroll_position = $($(this).attr('href')).offset().top
        $('html, body').stop().animate({ scrollTop: scroll_position}, 1500, 'easeInOutExpo')
        e.preventDefault()

    # Initialize dropdown menus for NBA Project
    $('#drop_e').selectpicker('refresh')
    $('#drop_w').selectpicker('refresh')
