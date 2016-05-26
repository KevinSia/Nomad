$(window).scroll(function() {
    if($(this).scrollTop() > 400) {
        $('.navbar-transparent').addClass('opaque');
    } else {
        $('.navbar-transparent').removeClass('opaque');
    }
});
