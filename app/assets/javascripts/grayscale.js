/*!
 * Start Bootstrap - Grayscale Bootstrap Theme (http://startbootstrap.com)
 * Code licensed under the Apache License v2.0.
 * For details, see http://www.apache.org/licenses/LICENSE-2.0.
 */
// jQuery to collapse the navbar on scroll
var check = true;
$(window).scroll(function() {
    if($(".navbar").width() > 767) {
        if ($(".navbar").offset().top < 200 && check === false) {
            $(".navbar-fixed-top").addClass("top-nav-collapse");
            $("#dirk").addClass("fadeIn");
            $("#dirk").removeClass("fadeOut");
            check = true;
        } else if ($(".navbar").offset().top > 200 && check === true) {
            $("#dirk").removeClass("fadeIn");
            $("#dirk").addClass("fadeOut");
            check = false;
        } else if($(".navbar").offset().top > 275 && check === false) {
            $("#dirk").removeClass("fadeOut");
            $(".navbar-fixed-top").removeClass("top-nav-collapse");  
        }
    }
});

var check_one = false;
$(window).scroll(function() {
    if ($(".navbar").offset().top > 300 && check_one  === false) {
        $(".second-background-image").addClass("animate fadeIn");
        check_one = true;
    }
});

var check_two = false;
$(window).scroll(function() {
    if ($(".navbar").offset().top > 1250 && check_two === false) {
        $(".third-background-image").addClass("animate fadeIn");
        check_two = true;
    }
});

var check_three = false;
$(window).scroll(function() {
    if ($(".navbar").offset().top > 2250 && check_three === false) {
        $(".fourth-background-image").addClass("animate fadeIn");
        check_three = true;
    }
});

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
    $('.navbar-toggle:visible').click();
});