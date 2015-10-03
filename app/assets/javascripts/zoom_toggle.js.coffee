class @ZoomToggle
    constructor: ->
        @zoomActive = true # whether or not zoom ability is active
        @toggleZoom()

    removeZoom: ->
        if $('.navbar').width() < 767
            @zoomActive = false
            # Remove zoom container from DOM
            $('.zoomContainer').remove()

    addZoomEast: ->
        $('#zoom_img_e').elevateZoom
            zoomWindowPosition: 1
            zoomWindowOffetx: -250
            zoomWindowFadeIn: 500
            zoomWindowFadeOut: 500
            zoomWindowWidth: 250
            zoomWindowHeight: 250

    addZoomWest: ->
        $('#zoom_img_w').elevateZoom
            zoomWindowPosition: 1
            zoomWindowOffetx: -250
            zoomWindowFadeIn: 500
            zoomWindowFadeOut: 500
            zoomWindowWidth: 250
            zoomWindowHeight: 250

    addZoom: ->
        if $('.navbar').width() > 767
            # Add zoom containers to DOM
            @addZoomEast()
            @zoomActive = true
            @addZoomWest()

    toggleZoom: ->
        @addZoom()
        $(window).resize =>
            if @zoomActive
                @removeZoom()
            else
                @addZoom()
