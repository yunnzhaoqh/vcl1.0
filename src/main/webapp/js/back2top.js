function initBackButton(){
    var backbutton = $('<span/>', {
        class: "back-to-top"
    }).appendTo('body');

    $(window).scroll(function() {
        if ($(this).scrollTop() > $(window).height() * 1.5) {
            backbutton.addClass('active');
        } else {
            backbutton.removeClass('active');
        }
    });

    $('.back-to-top').click(function (e) {
        e.preventDefault();
        $('body, html').animate({
            scrollTop: 0
        }, 500);
    });
}

initBackButton();