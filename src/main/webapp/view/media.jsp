<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=0.2, minimum-scale=0.2, maximum-scale=1.0, user-scalable=yes">

    <title>media</title>

    <link type="text/css" rel="stylesheet" href="/resources/css/font-awesome.min.css" />
    <link type="text/css" rel="stylesheet" href="/resources/css/bootstrap.min.css" />

    <link type="text/css" rel="stylesheet" href="/resources/css/normal.css" />
    <link type="text/css" rel="stylesheet" href="/resources/css/main.css" />
    <link type="text/css" rel="stylesheet" href="/resources/css/index.css" />
    <style>
        body{
            background-image: url(/resources/images/earth-bg.png);
            background-position: center 55px;
            background-size: 565px;
            background-repeat: no-repeat;
        }
    </style>
</head>

<body>
    
    <header>
        <div class="title">
            <div class="content">
                <h2>Visual Computing and Learning</h2>
                <div class="icon-content">
                    <div class="icon">
                        <span class="icon-1" onclick="toBannerDetail('https://cfcs.pku.edu.cn/english/')" alt=""></span>
                    </div>
                    <div class="icon">
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
                    <li>
                        <a href="/home/publication">Publication</a>
                    </li>
                    <li class="active">
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
        <img src="/resources/images/media-banner.jpg" alt="">
    </section>

    <section class="media-container active">
        <div class="content">
            <div class="index-title">Media</div>
            <div class="items" id="mediaList">
                <%--<div class="item">--%>
                    <%--<div class="cover">--%>
                        <%--<img src="/resources/images/temp/activities_05.png" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="info">--%>
                        <%--<div class="date">--%>
                            <%--<i>05</i>--%>
                            <%--<span>Sept 2019</span>--%>
                        <%--</div>--%>
                        <%--<div class="title">静园五院 | VCL Research Seminar: Learning to Understand 3D Object Parts</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="cover">--%>
                        <%--<img src="/resources/images/temp/activities_05.png" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="info">--%>
                        <%--<div class="date">--%>
                            <%--<i>05</i>--%>
                            <%--<span>Sept 2019</span>--%>
                        <%--</div>--%>
                        <%--<div class="title">静园五院 | VCL Research Seminar: Learning to Understand 3D Object Parts</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="cover">--%>
                        <%--<img src="/resources/images/temp/activities_05.png" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="info">--%>
                        <%--<div class="date">--%>
                            <%--<i>05</i>--%>
                            <%--<span>Sept 2019</span>--%>
                        <%--</div>--%>
                        <%--<div class="title">静园五院 | VCL Research Seminar: Learning to Understand 3D Object Parts</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="cover">--%>
                        <%--<img src="/resources/images/temp/activities_05.png" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="info">--%>
                        <%--<div class="date">--%>
                            <%--<i>05</i>--%>
                            <%--<span>Sept 2019</span>--%>
                        <%--</div>--%>
                        <%--<div class="title">静园五院 | VCL Research Seminar: Learning to Understand 3D Object Parts</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<div class="cover">--%>
                        <%--<img src="/resources/images/temp/activities_05.png" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="info">--%>
                        <%--<div class="date">--%>
                            <%--<i>05</i>--%>
                            <%--<span>Sept 2019</span>--%>
                        <%--</div>--%>
                        <%--<div class="title">静园五院 | VCL Research Seminar: Learning to Understand 3D Object Parts</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="item">
                    <input type="hidden" name="mediaId" value="12"/>
                    <div class="cover">
                        <img src="/resources/images/temp/activities_05.png" alt="">
                    </div>
                    <div class="info">
                        <div class="date">
                            <i>05</i>
                            <span>Sept 2019</span>
                        </div>
                        <div class="title">静园五院 | VCL Research Seminar: Learning to Understand 3D Object Parts</div>
                    </div>
                </div>
            </div>
            <div class="paginator">
                <ul class="pagination"></ul>
            </div>
        </div>
    </section>
    
    <section class="media-detail-container">
        <div class="content">
            <div class="opts">
                <div class="media-breadcrumb">
                    <a href="">home</a>
                    <span>&gt;</span>
                    <a href="">media</a>
                </div>
                <span class="back">Back</span>
            </div>

            <div class="article" id="mediaDetail">
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
                            <div class="detail">Jingyuan Courtyard 5, Peking University, No.5 Yiheyuan Road, Haidian District, Beijing, P.R.China 100871</div>
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
    <script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/resources/js/bootstrap-paginator.js"></script>
    <script>
        $(function(){
            var ido= ${id};
            if(ido){
                console.log(12);
                $('.media-container').addClass('active');
                $('.media-detail-container').removeClass('active');
                mediaDetail(ido);
            }

            // $('.media-container .item').click(function(){
            //     $('.media-container').removeClass('active');
            //     // console.log($(this).find('input').val());
            //     getMediaDetail(id);
            //     $('.media-detail-container').addClass('active');
            //     window.scrollTo(0, 0);
            // });

            $('.media-detail-container .back').click(function(){
                $('.media-container').addClass('active');
                $('.media-detail-container').removeClass('active');
            });
            initMedia();
            $.ajax({
                url: "/home/initBannerData",
                data: JSON.stringify({"type":3,}),
                contentType: 'application/json',  //请求数据类型
                // context: document.body,
                dataType: 'json',
                type: 'post'
            }).done(function (data) {
                $('.banner-content').empty();
                $('.banner-content').append(' <img src="'+data[0].bannerImg+'" alt="" onclick="toBannerDetail(\''+data[0].bannerUrl+'\')">');

            });

        });
        function toBannerDetail(url) {
            var oA=document.createElement("a");
            oA.href=url;
            $('body').append(oA); // 修复firefox中无法触发click
            oA.click();
            $(oA).remove();
        }
        function mediaDetail(id) {
            $('.media-container').removeClass('active');
            // console.log($(this).find('input').val());
            getMediaDetail(id);
            $('.media-detail-container').addClass('active');
            window.scrollTo(0, 0);
        }
        function getMediaDetail(id) {
            $.ajax({
                url: '/home/findMediaOne',
                data:JSON.stringify({"id":id}),
                async : true,
                contentType: 'application/json;charset=utf-8',  //请求数据类型
                dataType :'json',
                type:'post'
            }).done(function(data) {
                console.log(data);
                var medisDetail=
                    '<h1>'+data.title+'</h1>\n' +
                    '                <h4>'+data.releaseDate+'</h4>\n' +
                    '                <div class="con">\n' +data.content+'</div>'
                $('#mediaDetail').empty();
                $('#mediaDetail').append(medisDetail);

            });
        }
        function initMedia() {
            //提交 Ajax 成功后，静态更新表格中的数据
            $.ajax({
                url: "/home/initmedia",
                data: JSON.stringify({"STATUS":1,"page":1,"limit":6}),
                dataType: 'json',
                contentType: 'application/json',  //请求数据类型
                // context: document.body,
                async: true,
                type: 'post',
                // page:1,
                // limit:6,
                // STATUS:1,
                success: function (data) {


                        var mediaHtml ='';
                        var media =data.data;

                        for(var i in media){
                            mediaHtml+= '<div class="item" onclick="mediaDetail('+media[i].id+')">\n' +
                             '                    <div class="cover">\n' +
                             '                        <img src="'+media[i].img+'" alt="">\n' +
                             '                    </div>\n' +
                             '                    <div class="info">\n' +
                             '                        <div class="date">\n' +
                             '                            <i>'+media[i].releaseDate.split(',')[0]+'</i>\n' +
                             '                            <span>'+media[i].releaseDate.split(',')[1]+'</span>\n' +
                             '                        </div>\n' +
                             '                        <div class="title">'+media[i].title+'</div>\n' +
                             '                    </div>\n' +
                             '                </div>'
                            // mediaHtml += '<div class="item">\n' +
                            //     '<input type="hidden" name="mediaId" value="'+media[i].id+'" />' +
                            //     '                    <div class="cover">\n' +
                            //     '                        <img src="'+media[i].img+'" alt="">\n' +
                            //     '                    </div>\n' +
                            //     '                    <div class="info">\n' +
                            //     '                        <div class="date">\n' +
                            //     '                            <i>'+media[i].releaseDate.split(',')[0]+'</i>\n' +
                            //     '                            <span>'+media[i].releaseDate.split(',')[1]+'</span>\n' +
                            //     '                        </div>\n' +
                            //     '                        <div class="title">'+media[i].title+'</div>\n' +
                            //     '                    </div>\n' +
                            //     '                </div>'

                        }
                        $('#mediaList').empty();
                        $('#mediaList').append(mediaHtml);
                    var total = parseInt(data.count/6)+1;
                    $(".pagination").bootstrapPaginator({
                        //设置版本号
                        bootstrapMajorVersion: 3,
                        // 显示第几页
                        currentPage: 1,
                        // 总页数
                        totalPages: total,
                        // 每次显示多少页面
                        numberOfPages: total,
                        //当单击操作按钮的时候, 执行该函数, 调用ajax渲染页面
                        onPageClicked: function (event, originalEvent, type, page) {
                            console.log(page); //点击的当前页
                            console.log(type); // 启用分页
                            console.log(originalEvent);
                            console.log(event);
                            console.log(123);
                            refreshMedia(page,6)// 把当前点击的页码赋值给currentPage, 调用ajax,渲染页面

                        }
                    });
                }
            });
        }
        function refreshMedia(page,limit) {
            $.ajax({
                url: "/home/initmedia",
                data:JSON.stringify( {"STATUS":1,"page":page,"limit":limit}),
                dataType: 'json',
                contentType: 'application/json',  //请求数据类型
                // context: document.body,
                async: true,
                type: 'post',
            }).done(function(data) {
                console.log(data);
                // if (data.success) {
                    var mediaHtml = '';

                    var media = data.data;
                    console.log(media);
                    for (var i in media) {
                        mediaHtml += '<div class="item">\n' +
                            '                    <div class="cover">\n' +
                            '                        <img src="' + media[i].img + '" alt="">\n' +
                            '                    </div>\n' +
                            '                    <div class="info">\n' +
                            '                        <div class="date">\n' +
                            '                            <i>' + media[i].releaseDate.split(',')[0] + '</i>\n' +
                            '                            <span>' + media[i].releaseDate.split(',')[1] + '</span>\n' +
                            '                        </div>\n' +
                            '                        <div class="title">' + media[i].title + '</div>\n' +
                            '                    </div>\n' +
                            '                </div>'

                    }
                    $('#mediaList').empty();
                    $('#mediaList').append(mediaHtml);
                // }
            });
        }
    </script>

</body>
</html>