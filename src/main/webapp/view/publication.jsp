<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=0.2, minimum-scale=0.2, maximum-scale=1.0, user-scalable=yes">

    <title>PUBLICATION</title>

    <link type="text/css" rel="stylesheet" href="/resources/css/font-awesome.min.css"/>

    <link type="text/css" rel="stylesheet" href="/resources/css/normal.css"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/main.css"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/index.css"/>
    <style>
        .shareHide {
            display: none;
        }
    </style>
</head>

<body>

<header>
    <div class="title">
        <div class="content">
            <h2>Visual Computing and Learning</h2>
            <div class="icon-content">
                <div class="icon" style="cursor:pointer">
                    <span class="icon-1" onclick="toBannerDetail('https://cfcs.pku.edu.cn/english/')" alt=""></span>
                </div>
                <div class="icon" style="cursor:pointer">
                    <span class="icon-2" onclick="toBannerDetail('http://english.pku.edu.cn/')" alt=""></span>
                </div>
            </div>
        </div>
    </div>
    <div class="navigation">
        <div class="content">
            <ul class="list">
                <li>
                    <a href="/home/index">Home</a>
                </li>
                <li class="active">
                    <a href="/home/publication">Publication</a>
                </li>
                <li>
                    <a href="/home/media">Media</a>
                </li>
                <li>
                    <a href="/home/people">People</a>
                </li>
                <li>
                    <a href="/home/activities">Activities</a>
                </li>
                <li>
                    <a href="/home/education">Education</a>
                    <div class="sub-menu">
                        <p>
                            <a href="/home/education">Courses</a>
                        </p>
                        <p>
                            <a href="/home/education">Sum-camp</a>
                        </p>
                        <p>
                            <a href="/home/education">Reference Course</a>
                        </p>
                    </div>
                </li>
                <li>
                    <a href="/home/join-us">Join us</a>
                </li>
            </ul>
        </div>
    </div>
</header>

<section class="banner-content">
    <img src="/resources/images/publication-banner.jpg" alt="">
</section>

<section class="publication-container">
    <div class="content">
        <div class="index-title">Research Pulication</div>
        <div class="container">
            <div class="item-left" id="public_left">
                <%--<div class="year active">--%>
                <%--<i></i>--%>
                <%--<span>2019</span>--%>
                <%--</div>--%>
                <%--<div class="year">--%>
                <%--<i></i>--%>
                <%--<span>2018</span>--%>
                <%--</div>--%>
                <%--<div class="year">--%>
                <%--<i></i>--%>
                <%--<span>2017</span>--%>
                <%--</div>--%>
                <%--<div class="year">--%>
                <%--<i></i>--%>
                <%--<span>2016</span>--%>
                <%--</div>--%>
                <%--<div class="year">--%>
                <%--<i></i>--%>
                <%--<span>2015</span>--%>
                <%--</div>--%>

            </div>
            <div class="item-right" id="public_right">
                <%--<div class="item">--%>
                <%--<div class="cover" style="background-image: url(/resources/images/temp/publication_03.png);"></div>--%>
                <%--<ul>--%>
                <%--<li class="name">A General Decoupled Learning Framework for Parameterized Image Operators</li>--%>
                <%--<li class="tips">Manyi Li, Akshay Gadi Patil, Kai Xu, Siddhartha Chaudhuri, Owais Khan, Ariel Shamir, Changhe Tu, Baoquan Chen, Daniel Cohen-Or, Hao Zhang</li>--%>
                <%--<li class="size">IEEE TPAMI 2019</li>--%>
                <%--<li class="download">--%>
                <%--<a href="/home/project" class="link" >more</a>--%>
                <%--<span class="file pdf"></span>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                <%--<div class="cover" style="background-image: url(/resources/images/temp/publication_03.png);"></div>--%>
                <%--<ul>--%>
                <%--<li class="name">A General Decoupled Learning Framework for Parameterized Image Operators</li>--%>
                <%--<li class="tips">Manyi Li, Akshay Gadi Patil, Kai Xu, Siddhartha Chaudhuri, Owais Khan, Ariel Shamir, Changhe Tu, Baoquan Chen, Daniel Cohen-Or, Hao Zhang</li>--%>
                <%--<li class="size">IEEE TPAMI 2019</li>--%>
                <%--<li class="download">--%>
                <%--<span class="file pdf"></span>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                <%--<div class="cover" style="background-image: url(/resources/images/temp/publication_03.png);"></div>--%>
                <%--<ul>--%>
                <%--<li class="name">A General Decoupled Learning Framework for Parameterized Image Operators</li>--%>
                <%--<li class="tips">Manyi Li, Akshay Gadi Patil, Kai Xu, Siddhartha Chaudhuri, Owais Khan, Ariel Shamir, Changhe Tu, Baoquan Chen, Daniel Cohen-Or, Hao Zhang</li>--%>
                <%--<li class="size">IEEE TPAMI 2019</li>--%>
                <%--<li class="download">--%>
                <%--<span class="file pdf"></span>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                <%--<div class="cover" style="background-image: url(/resources/images/temp/publication_03.png);"></div>--%>
                <%--<ul>--%>
                <%--<li class="name">A General Decoupled Learning Framework for Parameterized Image Operators</li>--%>
                <%--<li class="tips">Manyi Li, Akshay Gadi Patil, Kai Xu, Siddhartha Chaudhuri, Owais Khan, Ariel Shamir, Changhe Tu, Baoquan Chen, Daniel Cohen-Or, Hao Zhang</li>--%>
                <%--<li class="size">IEEE TPAMI 2019</li>--%>
                <%--<li class="download">--%>
                <%--<a href="/home/project" class="link" target="_blank">more</a>--%>
                <%--<span class="file pdf"></span>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                <%--<div class="cover" style="background-image: url(/resources/images/temp/publication_03.png);"></div>--%>
                <%--<ul>--%>
                <%--<li class="name">A General Decoupled Learning Framework for Parameterized Image Operators</li>--%>
                <%--<li class="tips">Manyi Li, Akshay Gadi Patil, Kai Xu, Siddhartha Chaudhuri, Owais Khan, Ariel Shamir, Changhe Tu, Baoquan Chen, Daniel Cohen-Or, Hao Zhang</li>--%>
                <%--<li class="size">IEEE TPAMI 2019</li>--%>
                <%--<li class="download">--%>
                <%--<a href="" class="link">more</a>--%>
                <%--<span class="file pdf"></span>--%>
                <%----%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                <%--<div class="cover" style="background-image: url(/resources/images/temp/publication_03.png);"></div>--%>
                <%--<ul>--%>
                <%--<li class="name">A General Decoupled Learning Framework for Parameterized Image Operators</li>--%>
                <%--<li class="tips">Manyi Li, Akshay Gadi Patil, Kai Xu, Siddhartha Chaudhuri, Owais Khan, Ariel Shamir, Changhe Tu, Baoquan Chen, Daniel Cohen-Or, Hao Zhang</li>--%>
                <%--<li class="size">IEEE TPAMI 2019</li>--%>
                <%--<li class="download">--%>
                <%--<a href="" class="link">more</a>--%>
                <%--<span class="file pdf"></span>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                <%--<div class="cover" style="background-image: url(/resources/images/temp/publication_03.png);"></div>--%>
                <%--<ul>--%>
                <%--<li class="name">A General Decoupled Learning Framework for Parameterized Image Operators</li>--%>
                <%--<li class="tips">Manyi Li, Akshay Gadi Patil, Kai Xu, Siddhartha Chaudhuri, Owais Khan, Ariel Shamir, Changhe Tu, Baoquan Chen, Daniel Cohen-Or, Hao Zhang</li>--%>
                <%--<li class="size">IEEE TPAMI 2019</li>--%>
                <%--<li class="download">--%>
                <%--<a href="" class="link">more</a>--%>
                <%--<span class="file pdf"></span>--%>
                <%--</li>--%>
                <%--</ul>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</section>
<div class="shape-1"></div>
<div class="shape-2"></div>
<div class="shape-3"></div>
<div class="shape-4"></div>
<section class="media-detail-container">
    <div class="content">
        <div class="opts">
            <div class="media-breadcrumb">
                <a href="/home/index">home</a>
                <span>&gt;</span>
                <a href="/home/publication">publication</a>
            </div>
            <span class="back">Back</span>
        </div>

        <div class="article project-container" id="publicationDetail">
            <%--<h1>北京大学前沿计算研究中心一周年总结交流会欢乐举行</h1>--%>
            <%--<h4>2019-01-18</h4>--%>
            <%--<div class="con">--%>
            <%--2019年1月16日，北京大学前沿计算研究中心举办了一周年总结交流会。中心主任John Hopcroft教授、联合主任高文教授、国际合作部严军副部长、信息科学技术学院二十余位图灵班科研导师，以及部分兄弟院校及工业界代表出席。总结会由中心新体制助理教授孔雨晴主持。--%>

            <%--会上，John Hopcroft教授和高文教授分别致辞。Hopcroft教授对中心一年来取得的进步表示肯定，希望中心延揽国际优秀青年人才，不仅在科研上做出成绩，同时，在提升高校本科生教学方面，贡献自己的力量。高文教授对中心在跨学科交流，以及图灵班在教学改革方面取得的进步予以肯定，他欣喜地看到在座的众多年轻有为的图灵班科研导师，对中心及图灵班的发展寄予厚望。--%>
            <%--<p style="text-align: center;margin: 30px 0;">--%>
            <%--<img src="/resources/images/temp/Media-details_03.png" alt="">--%>
            <%--</p>--%>
            <%--2019年1月16日，北京大学前沿计算研究中心举办了一周年总结交流会。中心主任John Hopcroft教授、联合主任高文教授、国际合作部严军副部长、信息科学技术学院二十余位图灵班科研导师，以及部分兄弟院校及工业界代表出席。总结会由中心新体制助理教授孔雨晴主持。--%>

            <%--会上，John Hopcroft教授和高文教授分别致辞。Hopcroft教授对中心一年来取得的进步表示肯定，希望中心延揽国际优秀青年人才，不仅在科研上做出成绩，同时，在提升高校本科生教学方面，贡献自己的力量。高文教授对中心在跨学科交流，以及图灵班在教学改革方面取得的进步予以肯定，他欣喜地看到在座的众多年轻有为的图灵班科研导师，对中心及图灵班的发展寄予厚望。--%>
            <%--<p style="text-align: center;margin: 30px 0;">--%>
            <%--<img src="/resources/images/temp/Media-details_03.png" alt="">--%>
            <%--</p>--%>
            <%--2019年1月16日，北京大学前沿计算研究中心举办了一周年总结交流会。中心主任John Hopcroft教授、联合主任高文教授、国际合作部严军副部长、信息科学技术学院二十余位图灵班科研导师，以及部分兄弟院校及工业界代表出席。总结会由中心新体制助理教授孔雨晴主持。--%>

            <%--会上，John Hopcroft教授和高文教授分别致辞。Hopcroft教授对中心一年来取得的进步表示肯定，希望中心延揽国际优秀青年人才，不仅在科研上做出成绩，同时，在提升高校本科生教学方面，贡献自己的力量。高文教授对中心在跨学科交流，以及图灵班在教学改革方面取得的进步予以肯定，他欣喜地看到在座的众多年轻有为的图灵班科研导师，对中心及图灵班的发展寄予厚望。--%>
            <%--</div>--%>
        </div>
    </div>
</section>


<footer>
    <div class="cover">
        <div class="content">
            <div class="links">
                <div class="title">
                    <span>links</span>
                </div>
                <div class="items">
                    <a class="item" href="http://english.pku.edu.cn/"></a>
                    <a class="item" href="https://cfcs.pku.edu.cn/english/"></a>
                    <a class="item" href="http://eng.bfa.edu.cn/"></a>
                    <a class="item" href="http://irc.cs.sdu.edu.cn/"></a>
                    <div class="item"></div>
                    <div class="item"></div>
                </div>
            </div>
            <div class="contact">
                <div class="title">
                    <span>contact us</span>
                </div>
                <div>
                    <div class="item">
                        <div class="type">address</div>
                        <div class="detail">Jingyuan Courtyard 5, Peking University, No.5 Yiheyuan Road, Haidian
                            District, Beijing, P.R.China 100871
                        </div>
                    </div>
                    <div class="item">
                        <div class="type">phone</div>
                        <div class="detail">12345678911</div>
                    </div>
                    <div class="item">
                        <div class="type">e-mail</div>
                        <div class="detail">jianghd@pku.edu.cn</div>
                    </div>
                </div>
            </div>
            <div class="account">
                <div class="title">
                    <span>subscription</span>
                </div>
                <div class="type">Public Account</div>
                <img src="/resources/images/vcl-red_13.png" alt="">
            </div>
        </div>
    </div>
</footer>

<script type="text/javascript" src="/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    $(function () {
        var ido= ${id};
        var isshare= ${isshare};
        if(ido){

            // console.log(12);
            $('.media-container').addClass('active');
            $('.media-detail-container').removeClass('active');
            publicationDetail(ido,isshare);
        }else{
            initpublication(isshare);
        }
        $('.media-detail-container .back').click(function(){
            $('.publication-container').show();
            $('.shape-1').show();
            $('.shape-2').show();
            $('.shape-3').show();
            $('.shape-4').show();
            $('.media-detail-container').removeClass('active');
            initpublication(isshare);
        });

        $('.download').each(function () {
            $(this).find('.link.more').removeClass('shareHide');
            $(this).find('.link.download').addClass('shareHide');
        });
        // });
        $.ajax({
            url: "/home/initBannerData",
            data: JSON.stringify({"type": 2,}),
            contentType: 'application/json',  //请求数据类型
            // context: document.body,
            dataType: 'json',
            type: 'post'
        }).done(function (data) {
            $('.banner-content').empty();
            $('.banner-content').append(' <img src="' + data[0].bannerImg + '" alt="" onclick="toBannerDetail(\'' + data[0].bannerUrl + '\')">');

        });
    });
    function publicationDetail(id,isshare) {
        $('.publication-container').hide();
        $('.shape-1').hide();
        $('.shape-2').hide();
        $('.shape-3').hide();
        $('.shape-4').hide();
        // console.log($(this).find('input').val());
        getpublicationDetail(id,isshare);
        $('.media-detail-container').addClass('active');
        window.scrollTo(0, 0);
    }
    function getpublicationDetail(id,isshare) {
        $.ajax({
            url: '/home/findOneProject',
            data:JSON.stringify({"id":id,"type":1,"isshare":isshare}),
            async : true,
            contentType: 'application/json;charset=utf-8',  //请求数据类型
            dataType :'json',
            type:'post'
        }).done(function(data) {
            var publicationDetail=
                '<h1>'+data.main_title+'</h1>\n' +
                '                <h4>'+data.subtitle+'</h4>\n' +
                '                <div class="con">\n' +data.content+'</div>';
            if(data.project_file) {
                publicationDetail +=
                    '            <div class="download">\n' +
                    '                <p>Download</p>\n' +
                    '                <div>\n' +
                    '                    <a href="' + data.project_file + '" download="" class="item pdf">\n' +
                    '                        <ul>\n' +
                    '                            <li>' + data.fileName + '</li>\n' +
                    '                            <li>[' + data.fileSize + ']</li>\n' +
                    '                        </ul>\n' +
                    '                    </a>\n' +
                    '                </div>\n' +
                    '            </div>';
            }
            $('#publicationDetail').empty();
            $('#publicationDetail').append(publicationDetail);

        });
    }
    function shareOnclick() {
        if ($('#shareA').hasClass('active')) {
            initpublication(0);
            $('#shareA').removeClass('active');
            // $('.download').each(function () {
            //     $(this).find('.link.more').each(function () {
            //         $(this).show();
            //     })
            //     $(this).find('.link.download').each(function () {
            //         $(this).hide();
            //     })
            // });

        } else {
            initpublication(1);
            $('#shareA').addClass('active');


        }
        if ($('.index-title').html() == 'Share Resource') {
            $('.index-title').html('Research Pulication');
        } else {
            $('.index-title').html('Share Resource');
        }

    }

    function toBannerDetail(url) {
        var oA = document.createElement("a");
        oA.href = url;
        $('body').append(oA); // 修复firefox中无法触发click
        oA.click();
        $(oA).remove();
    }

    function yearclick(Year,isshare) {
        $('.year').removeClass('active');
        if (Year) {
            $('#public_left').find('.year').each(function () {
                if ($(this).find('span').html() == Year) {
                    $(this).addClass('active');
                }
            });
        } else {
            Year = null;
            $("#public_left").children(":first").addClass('active');
        }
        // $('#shareA').removeClass('active');
        $.ajax({
            url: "/home/initPublication",
            data: {'YEAR': Year, 'type': 1, 'STATUS': 1,"isshare":isshare},
            // context: document.body,
            dataType: 'json',
            type: 'post'
        }).done(function (data) {
            if (data.success) {
                var publicRight = '';
                var projects = data.obj.projects;
                for (var i in projects) {
                    if (i < 7) {
                        if(isshare){
                            publicRight += ' <a href="/home/publication?isshare='+isshare+'&type=publication&id=' + projects[i].id + '">' +
                                '<div class="item" >\n' +
                                '                        <div class="cover" style="background-image: url(' + projects[i].bg_img + ');"></div>\n' +
                                '                        <ul>\n' +
                                '                            <li class="name">' + projects[i].fileName + '</li>\n' +
                                '                            <li class="tips">' + projects[i].main_title + '</li>\n' +
                                '                            <li class="size">' + projects[i].fileSize + '</li>\n' +
                                '                            <li class="download">\n' +
                                '                                <a class="link more"  >more</a>\n';
                        }else{
                            publicRight += ' <a href="/home/publication?isshare='+isshare+'&type=publication&id=' + projects[i].id + '">' +
                                '<div class="item" >\n' +
                                '                        <div class="cover" style="background-image: url(' + projects[i].bg_img + ');"></div>\n' +
                                '                        <ul>\n' +
                                '                            <li class="name">' + projects[i].main_title + '</li>\n' +
                                '                            <li class="tips">' + projects[i].share_people + '</li>\n' +
                                '                            <li class="size">' + projects[i].subtitle + '</li>\n' +
                                '                            <li class="download">\n' +
                                '                                <a class="link more"  >more</a>\n';
                        }

                        if (projects[i].project_file) {
                            publicRight += '                                <a href="' + projects[i].project_file + '" class="link download " style="display: none" download=""  >Download</a>\n' +
                                            '                                <a class="file pdf subtitle"  href="' + projects[i].project_file + '" download="" ></a>\n';
                         }
                            publicRight +=
                            '                            </li>\n' +
                            '                        </ul>\n' +
                            '                    </div></a>'
                    }
                }
                $('#public_right').empty();
                $('#public_right').append(publicRight);
                if(isshare){
                    $("#shareA").addClass('active');
                    $('.download').each(function () {

                        $(this).find('.link.more').each(function () {
                            $(this).hide();
                        });
                        $(this).find('.link.download').each(function () {
                            $(this).show();
                        })
                    });
                }
            }
        })

    }

    function initpublication(isshare) {
        var myDate = new Date();
        var tYear = myDate.getFullYear();
        $.ajax({
            url: "/home/initPublication",
            data: {'STATUS': 1, 'type': 1,"isshare":isshare},
            context: document.body,
            dataType: 'json',
            type: 'post'
        }).done(function (data) {
            if (data.success) {
                var publicLeft = '';
                var publicRight = '';
                var projects = data.obj.projects;
                var publicYear = data.obj.publicYear;
                var banner = data.obj.banner;


                for (var i in publicYear) {
                    publicLeft += '    <div class="year" onclick="yearclick(' + publicYear[i].year + ','+isshare+')">\n' +
                        '                        <i></i>\n' +
                        '                        <span>' + publicYear[i].year + '</span>\n' +
                        '                    </div>';

                }
                publicLeft += '<div class="share" onclick="shareOnclick()">\n' +
                    '                        <span  class="icon" id="shareA">\n' +
                    '                            <p>\n' +
                    '                                <span></span>\n' +
                    '                            </p>\n' +
                    '                            <p class="text">Share</p>\n' +
                    '                        </span >\n' +
                    '                    </div>';

                $('.banner-content').empty();
                $('.banner-content').append(' <img src="' + banner[0].bannerImg + '" alt="" onclick="toBannerDetail(' + banner[0].bannerUrl + ')">');
                $('#public_left').empty();
                $('#public_left').append(publicLeft);
                $("#public_left").children(":first").addClass('active');
                yearclick(publicYear[0].year,isshare);

            }
        })
    }

    function toBannerDetail(url) {
        var oA = document.createElement("a");
        oA.href = url;
        $('body').append(oA); // 修复firefox中无法触发click
        oA.click();
        $(oA).remove();
    }
</script>

</body>
</html>