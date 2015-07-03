class @PageAnimations
    constructor: ->
        @mobile_width = 767 # Width (in pixels) when navbar stick to top of screen

        @isNavbarVisible = true

        @hasSecondImageAnimated = false
        @hasThirdImageAnimated = false
        @hasFourthImageAnimated = false

        @animations()

    animateSecond: ->
        if !@hasSecondImageAnimated
            $(".second-background-image").addClass("animate fadeIn")
            @hasSecondImageAnimated = true

    animateThird: ->
        if !@hasThirdImageAnimated
            $(".third-background-image").addClass("animate fadeIn")
            @hasThirdImageAnimated = true

    animateFourth: ->
        if !@hasFourthImageAnimated
            $(".fourth-background-image").addClass("animate fadeIn")
            @hasFourthImageAnimated = true

    toggleNavbar: (navbar_offset_top) ->
        if navbar_offset_top < 200 and !@isNavbarVisible
            $(".navbar-fixed-top").addClass("top-nav-collapse")
            $("#toggle-target").addClass("fadeIn")
            $("#toggle-target").removeClass("fadeOut")
            @isNavbarVisible = true

        else if navbar_offset_top > 200 and @isNavbarVisible
            $("#toggle-target").removeClass("fadeIn")
            $("#toggle-target").addClass("fadeOut")
            @isNavbarVisible = false

        else if navbar_offset_top > 275 and !@isNavbarVisible
            $("#toggle-target").removeClass("fadeOut")
            $(".navbar-fixed-top").removeClass("top-nav-collapse")

    animations: ->
        $(window).scroll =>
            navbar_offset_top = $(".navbar").offset().top
            navbar_width = $(".navbar").width()

            if navbar_offset_top > 300
                @animateSecond()
            else if navbar_offset_top > 1250
                @animateThird()
            else if navbar_offset_top > 2250
                @animateFourth()

            # Hides/Shows navbar based on scroll offset
            if navbar_width > @mobile_width
                @toggleNavbar(navbar_offset_top)
