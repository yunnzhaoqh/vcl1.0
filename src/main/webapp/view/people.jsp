<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=0.2, minimum-scale=0.2, maximum-scale=1.0, user-scalable=yes">

    <title>people</title>

    <link type="text/css" rel="stylesheet" href="/resources/css/font-awesome.min.css" />
    <link type="text/css" rel="stylesheet" href="/resources/css/bootstrap.min.css" />

    <link type="text/css" rel="stylesheet" href="/resources/css/normal.css" />
    <link type="text/css" rel="stylesheet" href="/resources/css/main.css" />
    <link type="text/css" rel="stylesheet" href="/resources/css/index.css" />

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
                    <li>
                        <a href="/home/publication">Publication</a>
                    </li>
                    <li>
                        <a href="/home/media">Media</a>
                    </li>
                    <li class="active">
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
        <img src="/resources/images/people-banner.jpg" alt="">
    </section>

    <section class="activities-container people-container">
        <div class="container">
            <div class="index-title">Our Team</div>
            <h4>Leading by the Professor Chen Baoquan, our research group are working on the fields of graphics, 3D vision and robotics.</h4>
            <div class="tabs">
                <div class="tabs-header">
                    <div class="item active">
                        <span>Faculty & Staff</span>
                    </div>
                    <div class="item">
                        <span>Visiting Professors</span>
                    </div>
                    <div class="item">
                        <span>Students</span>
                    </div>
                    <div class="item">
                        <span>Alumni</span>
                    </div>
                </div>
                <div class="tabs-body">
                    <div class="type-content active" id="peopleContent">

                    </div>

                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="type-content">--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="type-content">--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="type-content">--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="people-item">--%>
                            <%--<img src="/resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                </div>
                <%--<div class="paginator">--%>
                    <%--<ul class="pagination"></ul>--%>
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
        var type = 1;
        $(function(){
            $('.tabs-header .item').click(function(){
                var index = $(this).index();
                type = index+1;
                initPeople(1,8);
                $(this).addClass('active').siblings().removeClass('active');
                $('.tabs-body .type-content').eq(index).addClass('active').siblings().removeClass('active');
            });
		initPeople(1,8);
            $.ajax({
                url: "/home/initBannerData",
                data: JSON.stringify({"type":4,}),
                contentType: 'application/json',  //请求数据类型
                // context: document.body,
                dataType: 'json',
                type: 'post'
            }).done(function (data) {
                $('.banner-content').empty();
                $('.banner-content').append(' <img src="'+data[0].bannerImg+'" alt="" onclick="toBannerDetail(\''+data[0].bannerUrl+'\')">');

            });
        });

		setWidth();
		window.onresize = function(){
			setWidth();
		}

		function setWidth() {
			$('.tabs-body .people-item').width(($('.tabs').width() - 120) / 4);
		}
        function toBannerDetail(url) {
            var oA=document.createElement("a");
            oA.href=url;
            $('body').append(oA); // 修复firefox中无法触发click
            oA.click();
            $(oA).remove();
        }
        function initPeople(index,limit) {
            $.ajax({
                url: "/home/initPeople",
                data: JSON.stringify({"type": type, "page": index, "limit": limit}),
                contentType: 'application/json',  //请求数据类型
                // context: document.body,
                dataType: 'json',
                type: 'post'
            }).done(function (data) {
                var peopleHtml ='';
                var people = data.data;
                for(var i in people){
                        peopleHtml+= '                 <div class="people-item">\n' +
                            '                            <img src="' + people[i].path + '" alt="">\n' +
                            '                            <div class="intro">\n' +
                            '                                <p class="job">' + people[i].duty + '</p>\n' +
                            '                                <p class="name">' + people[i].name + '</p>\n' +
                            '                                <div class="link">\n' +
                            '                                    <a href="'+people[i].introUrl+'">Homepage</a>\n' +
                            '                                </div>\n' +
                            '                            </div>\n'+
                            '                            </div>\n';

                }

                $('#peopleContent').empty();
                $('#peopleContent').append(peopleHtml);
                var pageH = '  <div class="paginator">\n' +
                    '                            <ul class="pagination"></ul>\n' +
                    '                        </div>';
                $('#peopleContent').append(pageH);
                var total = parseInt(data.count/8)+1;
                if( !data.count/8>0){
                    total = 1
                }

                $(".pagination").bootstrapPaginator({
                    //设置版本号
                    bootstrapMajorVersion: 3,
                    // 显示第几页
                    currentPage: index,
                    // 总页数
                    totalPages: total,
                    // 每次显示多少页面
                    numberOfPages: total,
                    //当单击操作按钮的时候, 执行该函数, 调用ajax渲染页面
                    onPageClicked: function (event, originalEvent, type, page) {
                        // 把当前点击的页码赋值给currentPage, 调用ajax,渲染页面
                        initPeople(page, 8);
                    }
                });

            });
        }
    </script>

</body>
</html>