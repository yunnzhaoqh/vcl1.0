$.getUrlParam = function (name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}

function setActiveTabs(){
    var index = $.getUrlParam('t');
    if(index){
        $('.page-tabs-header .item').eq(index - 1).addClass('active').siblings().removeClass('active');
        $('.page-tabs-body .item').eq(index - 1).addClass('active').siblings().removeClass('active');
    }
}

setActiveTabs();

$(function () {
    $('.page-tabs-header .item').click(function () {
        var index = $(this).index();
        $(this).addClass('active').siblings().removeClass('active');
        $('.page-tabs-body .item').eq(index).addClass('active').siblings().removeClass('active');
    });
});