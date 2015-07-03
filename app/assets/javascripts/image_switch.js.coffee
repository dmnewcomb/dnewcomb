class @ImageSwitch

    constructor: (@zoom, @drop_id, @image_id, @container_id) ->
        @drop_menu = $("##{@drop_id}")
        @image = $("##{@image_id}")
        @container = $("##{@container_id}")

        @switchImage()

    createImage: (image_url) ->
        new_image = document.createElement("img")
        new_image.id = @image_id
        new_image.className = "zoom"
        new_image.setAttribute('src', image_url)
        @container[0].appendChild(new_image)


    switchImage: ->
        @drop_menu.on "change", (e) =>
            chosen_text = @drop_menu[0].options[@drop_menu[0].selectedIndex].text

            $.ajax
                type: "GET"
                url: "/home/switch"
                data:
                    query: chosen_text

                success: (response) =>
                    @container[0].removeChild(@image[0])
                    image_url = response
                    @createImage(image_url)
                    new_image = $("##{@image_id}")
                    @image = new_image
                    @zoom.addZoom()

                    console.log "CHANGING IMAGE SUCCESS"

                  error: (xhr) ->
                    console.log "CHANGING IMAGE FAILURE"



