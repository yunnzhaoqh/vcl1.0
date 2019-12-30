<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=0.2, minimum-scale=0.2, maximum-scale=1.0, user-scalable=yes">

    <title>Visual Computing and Learning</title>

    <link type="text/css" rel="stylesheet" href="../resources/css/font-awesome.min.css" />
    <link type="text/css" rel="stylesheet" href="../resources/css/swiper.min.css" />

    <link type="text/css" rel="stylesheet" href="../resources/css/normal.css" />
    <link type="text/css" rel="stylesheet" href="../resources/css/main.css" />
    <link type="text/css" rel="stylesheet" href="../resources/css/index.css" />
</head>
<body>
    
    <header>
        <div class="title">
            <div class="content">
                <h2 id="titleName">Visual Computing and Learning</h2>
                <div class="icon-content">
                    <div class="icon" style="cursor:pointer">
                        <span class="icon-1" onclick="tourl('https://cfcs.pku.edu.cn/english/')" alt=""></span>
                    </div>
                    <div class="icon" style="cursor:pointer">
                        <span class="icon-2" onclick="tourl('http://english.pku.edu.cn/')" alt=""></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="navigation">
            <div class="content">
                <ul class="list">
                    <li class="active">
                        <a href="/home/index">Home</a>
                    </li>
                    <li>
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

    <section class="index-banner-content">
        <div class="swiper-container swiper-banner">
            <div class="swiper-wrapper" id="wrapperImg">
                <%--<div class="swiper-slide">--%>
                    <%--<a href="">--%>
                        <%--<img src="../resources/images/banner-1.jpg" alt="">--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="swiper-slide">--%>
                    <%--<a href="">--%>
                        <%--<img src="../resources/images/banner-2.jpg" alt="">--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="swiper-slide">--%>
                    <%--<a href="">--%>
                        <%--<img src="../resources/images/banner-3.jpg" alt="">--%>
                    <%--</a>--%>
                <%--</div>--%>
            </div>
            <!-- Add Pagination -->
            <div class="banner-title">
                <div class="pagination"></div>
                <div class="intro" id="wrapperContext">
                    <%--<div class="item active">--%>
                        <%--<p>Jingyuan Courtyard 5 | VCL Research Seminar:</p>--%>
                        <%--<p>Learning to Understand 3D Object Parts</p>--%>
                    <%--</div>--%>
                    <%--<div class="item">--%>
                        <%--<p>图灵奖得主希尔维奥·米卡利教授北京大学聘任仪式暨学术讲座举行</p>--%>
                        <%--<p>静园五院204</p>--%>
                    <%--</div>--%>
                    <%--<div class="item">--%>
                        <%--<p>Efficient and Conservative Fluids Using Bidirectional Mapping</p>--%>
                        <%--<p>ACM SIGGRAPH 2019</p>--%>
                    <%--</div>--%>
                </div>
            </div>
            <!-- Add Arrows -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </section>

    <section class="index-intro-content">
        <div class="content" style="max-width: 1200px;">
            <div class="item-left" id="item-left">
                <%--<img src="../resources/images/temp/vcl-red_03.png" alt="">--%>
                <%--<p class="p1">We locate in the Jingyuan Jingyuan Courtyard 5.</p>--%>
                <%--<p class="p2">--%>
                    <%--<span>Baoquan Chen</span>--%>
                    <%--<i>Director</i>--%>
                <%--</p>--%>
                <%--<span class="icon"></span>--%>
            </div>
            <div class="item-right" id="item-right">
                <%--<h2>The Visual Computing and Learning (VCL)</h2>--%>
                <%--<h4>Laboratory from<br>The Center on Frontiers of Computing Studies (CFCS)</h4>--%>
                <%--<p class="tips">Leading by the Professor Chen Baoquan, our research group are working on the fields of graphics, 3D vision and robotics.</p>--%>
                <%--<div class="intro">--%>
                    <%--<div class="item">--%>
                        <%--<div class="bg-1">--%>
                            <%--<div class="bg-2">--%>
                                <%--<span class="icon-1"></span>--%>
                                <%--<p>Graphics</p>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="item">--%>
                        <%--<div class="bg-1">--%>
                            <%--<div class="bg-2">--%>
                                <%--<span class="icon-2"></span>--%>
                                <%--<p>Deep Learning</p>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="item">--%>
                        <%--<div class="bg-1">--%>
                            <%--<div class="bg-2">--%>
                                <%--<span class="icon-3"></span>--%>
                                <%--<p>Robot</p>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            </div>
        </div>
    </section>

    <section class="index-media-content">
        <div class="index-title">Media</div>
        <div class="media-content" id="media-content">

            <%--<div class="item">--%>
                <%--<a class="des" href="">--%>
                    <%--<div class="imgs">--%>
                        <%--<img src="/resources/images/temp/vcl-red_05.png" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="word-content">--%>
                        <%--<img src="/resources/images/temp/vcl-red_05.png" alt="">--%>
                        <%--<div class="word">--%>
                            <%--<div class="hidden">--%>
                                <%--<div class="date">--%>
                                    <%--<i>05</i>--%>
                                    <%--<span>Sept 2019</span>--%>
                                <%--</div>--%>
                                <%--<div class="title">招募 | 北京大学AI+艺术暑期工坊之舞蹈机器人，等你来！</div>--%>
                                <%--<div class="detail">--%>
                                    <%--2019年7月4日，北京大学第三届图灵班（2018级）开班仪式在静园五院举行。新入选的2018级图灵班计算机方向、人工智能方向的同学悉数到场，北京大学访问讲席教授、前沿计算研究中心主任、图灵班指导委员会主任约翰·霍普克罗夫特（John Hopcroft），教务部副部长刘建波教授，信息科学技术学院院长高文教授、副院长侯士敏教授、党委副书记熊校良老师，前沿计算研究中心执行主任陈宝权教授和多名图灵班科研导师与任课教师出席了活动。开班仪式由信息科学技术学院计算机科学技术系副主任郭耀教授主持。--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="item">--%>
                <%--<a class="des" href="">--%>
                    <%--<div class="word-content">--%>
                        <%--<img src="/resources/images/temp/vcl-red_05.png" alt="">--%>
                        <%--<div class="word">--%>
                            <%--<div class="hidden">--%>
                                <%--<div class="date">--%>
                                    <%--<i>05</i>--%>
                                    <%--<span>Sept 2019</span>--%>
                                <%--</div>--%>
                                <%--<div class="title">招募 | 北京大学AI+艺术暑期工坊之舞蹈机器人，等你来！</div>--%>
                                <%--<div class="detail">--%>
                                    <%--2019年7月4日，北京大学第三届图灵班（2018级）开班仪式在静园五院举行。新入选的2018级图灵班计算机方向、人工智能方向的同学悉数到场，北京大学访问讲席教授、前沿计算研究中心主任、图灵班指导委员会主任约翰·霍普克罗夫特（John Hopcroft），教务部副部长刘建波教授，信息科学技术学院院长高文教授、副院长侯士敏教授、党委副书记熊校良老师，前沿计算研究中心执行主任陈宝权教授和多名图灵班科研导师与任课教师出席了活动。开班仪式由信息科学技术学院计算机科学技术系副主任郭耀教授主持。--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="imgs">--%>
                        <%--<img src="/resources/images/temp/vcl-red_05.png" alt="">--%>
                    <%--</div>--%>
                <%--</a>--%>
            <%--</div>--%>
            <%--<div class="item">--%>
                <%--<div class="des">--%>
                    <%--<div class="imgs">--%>
                        <%--<img src="/resources/images/temp/vcl-red_05.png" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="word-content">--%>
                        <%--<img src="/resources/images/temp/vcl-red_05.png" alt="">--%>
                        <%--<div class="word">--%>
                            <%--<div class="hidden">--%>
                                <%--<div class="date">--%>
                                    <%--<i>05</i>--%>
                                    <%--<span>Sept 2019</span>--%>
                                <%--</div>--%>
                                <%--<div class="title">招募 | 北京大学AI+艺术暑期工坊之舞蹈机器人，等你来！</div>--%>
                                <%--<div class="detail">--%>
                                    <%--2019年7月4日，北京大学第三届图灵班（2018级）开班仪式在静园五院举行。新入选的2018级图灵班计算机方向、人工智能方向的同学悉数到场，北京大学访问讲席教授、前沿计算研究中心主任、图灵班指导委员会主任约翰·霍普克罗夫特（John Hopcroft），教务部副部长刘建波教授，信息科学技术学院院长高文教授、副院长侯士敏教授、党委副书记熊校良老师，前沿计算研究中心执行主任陈宝权教授和多名图灵班科研导师与任课教师出席了活动。开班仪式由信息科学技术学院计算机科学技术系副主任郭耀教授主持。--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="item">--%>
                <%--<div class="des">--%>
                    <%--<div class="imgs">--%>
                        <%--<img src="/resources/images/temp/vcl-red_05.png" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="word-content">--%>
                        <%--<img src="/resources/images/temp/vcl-red_05.png" alt="">--%>
                        <%--<div class="word">--%>
                            <%--<div class="hidden">--%>
                                <%--<div class="date">--%>
                                    <%--<i>05</i>--%>
                                    <%--<span>Sept 2019</span>--%>
                                <%--</div>--%>
                                <%--<div class="title">招募 | 北京大学AI+艺术暑期工坊之舞蹈机器人，等你来！</div>--%>
                                <%--<div class="detail">--%>
                                    <%--2019年7月4日，北京大学第三届图灵班（2018级）开班仪式在静园五院举行。新入选的2018级图灵班计算机方向、人工智能方向的同学悉数到场，北京大学访问讲席教授、前沿计算研究中心主任、图灵班指导委员会主任约翰·霍普克罗夫特（John Hopcroft），教务部副部长刘建波教授，信息科学技术学院院长高文教授、副院长侯士敏教授、党委副书记熊校良老师，前沿计算研究中心执行主任陈宝权教授和多名图灵班科研导师与任课教师出席了活动。开班仪式由信息科学技术学院计算机科学技术系副主任郭耀教授主持。--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
        <div class="more">
            <a href="/home/media" class="link">More NEWS</a>
        </div>
    </section>
    
    <section class="index-team-content">
        <div class="content">
            <div class="index-title">Our Team</div>
            <h3>Leading by the Professor Chen Baoquan, our research group are working on the fields of graphics, 3D vision and robotics. </h3>
            <div class="swiper-user">
                <div class="swiper-container" >
                    <div class="swiper-wrapper" id="user-swiper">
                        <%--<div class="swiper-slide people-item">--%>
                            <%--<img src="../resources/images/temp/vcl-red_10.jpg" style="width:276.75px ;height:333.117px;" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="swiper-slide people-item">--%>
                            <%--<img src="../resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="swiper-slide people-item">--%>
                            <%--<img src="../resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="swiper-slide people-item">--%>
                            <%--<img src="../resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="swiper-slide people-item">--%>
                            <%--<img src="../resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="swiper-slide people-item">--%>
                            <%--<img src="../resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="swiper-slide people-item">--%>
                            <%--<img src="../resources/images/temp/vcl-red_10.jpg" alt="">--%>
                            <%--<div class="intro">--%>
                                <%--<p class="job">Director</p>--%>
                                <%--<p class="name">Baoquan Chen</p>--%>
                                <%--<div class="link">--%>
                                    <%--<a href="">Homepage</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </section>

    <section class="index-pulication-content">
        <div class="content">
            <div class="index-title">Latest Research Pulication</div>
            <h3>With the development of technology, great changes have taken place. The computer graphics and artificial intelligence will provide novel applications for  our world.</h3>
            <div class="items" id="research-pullication">
                <%--<div class="item">--%>
                    <%--<a href="/home/project" target="_blank">--%>
                        <%--<img src="../resources/images/temp/vcl-red_04.jpg" alt="">--%>
                        <%--<div class="cover">--%>
                            <%--<h4>A General Decoupled Learning Framework for Parameterized Image Operators</h4>--%>
                            <%--<h5>IEEE TPAMI 2019</h5>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<a href="/home/project" target="_blank">--%>
                        <%--<img src="../resources/images/temp/vcl-red_04.jpg" alt="">--%>
                        <%--<div class="cover">--%>
                            <%--<h4>A General Decoupled Learning Framework for Parameterized Image Operators</h4>--%>
                            <%--<h5>IEEE TPAMI 2019</h5>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                    <%--<a href="/home/project" target="_blank">--%>
                        <%--<img src="../resources/images/temp/vcl-red_04.jpg" alt="">--%>
                        <%--<div class="cover">--%>
                            <%--<h4>A General Decoupled Learning Framework for Parameterized Image Operators</h4>--%>
                            <%--<h5>IEEE TPAMI 2019</h5>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
            </div>
            <div class="more">
                <a href="/home/publication" class="link">Learn More</a>
            </div>
        </div>
    </section>


    <section class="index-collaboration-content">
        <div class="content">
            <div class="item-left" >
                <div class="index-title">Collaboration</div>
                <h3>We collaborate with other fabulours research groups and have made a lot of achievements in the field of research</h3>
                <div class="" id="container-left">
                    <%--<div class="cell">--%>
                        <%--<a href="">--%>
                            <%--<img src="../resources/images/colla-1.png" alt="">--%>
                        <%--</a>--%>
                    <%--</div>--%>
                    <%--<div class="cell">--%>
                        <%--<a href="">--%>
                            <%--<img src="../resources/images/colla-2.png" alt="">--%>
                        <%--</a>--%>
                    <%--</div>--%>
                    <%--<div class="cell">--%>
                        <%--<a href="">--%>
                            <%--<img src="../resources/images/colla-2.png" alt="">--%>
                        <%--</a>--%>
                    <%--</div>--%>
                    <%--<div class="cell">--%>
                        <%--<a href="">--%>
                            <%--<img src="../resources/images/colla-2.png" alt="">--%>
                        <%--</a>--%>
                    <%--</div>--%>
                </div>
                <%--<div class="circle"></div>--%>
            </div>
            <div class="item-right" id="container-right">
                <%--<div class="item active" style="background-image: url(../resources/images/temp/vcl-red_06.jpg);"></div>--%>
                <%--<div class="item" style="background-image: url(../resources/images/temp/vcl-red_05.png);"></div>--%>
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
                    <img src="../resources/images/vcl-red_13.png" alt="">
                </div>
            </div>
        </div>
    </footer>

    <script type="text/javascript" src="../resources/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="../resources/js/swiper.min.js"></script>
    <script type="text/javascript" src="../resources/layuiadmin/layui/layui.all.js"></script>

    <script>
        //初始化数据
       $(function () {
           initHomeData();
           $('.index-collaboration-content .item-left .cell').on('mouseover', function(){
               var index = $(this).index();
               $('.index-collaboration-content .item-right .item').eq(index).addClass('active').siblings().removeClass('active');

           });
           // swiperUser;
       });
        function initHomeData() {
            $.ajax({
                url: "/home/initHome",
                data:{},
                // context: document.body,
                dataType :'json',
                type:'post'
            }).done(function(data) {
                if(data.success){
                    if(data.obj){
                        var banner = data.obj.banner;
                        var collaboration = data.obj.collaboration;
                        var intro = data.obj.intro;
                        var media = data.obj.media;
                        var people = data.obj.people;
                        var project = data.obj.project;
                        if(banner){
                            var bannerHtml = '';
                            var wrapperContext = '';
                            for (var i in banner) {
                                console.log(banner[i]);
                                bannerHtml+=' <div class="swiper-slide">\n' +
                                    '                    <a href="">\n' +
                                    '                        <img src="'+banner[i].bannerImg+'" style="height:820.667px" href="" onclick="tourl(\''+banner[i].bannerUrl+'\')">\n' +
                                    '                    </a>\n' +
                                    '                </div>';
                                wrapperContext+='<div class="item">\n' +
                                    '                        <p>'+banner[i].bannerTitleContext+'</p>\n' +
                                    '                        <p>'+banner[i].bannerTitleIntro+'</p>\n' +
                                    '                    </div>';
                            }
                            $('#wrapperImg').empty();
                            $('#wrapperImg').append(bannerHtml);
                            $('#wrapperContext').empty();
                            $('#wrapperContext').append(wrapperContext);
                            $("#wrapperContext").children(":first").addClass('active');
                        }
                        if(collaboration){
                             var leftHtml ='';
                             var reightHtml ='';
                            for (var i in collaboration) {
                                console.log(collaboration[i])
                               if(i<2){
                                   leftHtml+='<div class="cell">\n' +
                                       '                        <a href="">\n' +
                                       '                            <img src="'+collaboration[i].icon+'" alt="">\n' +
                                       '                        </a>\n' +
                                       '                    </div>\n';
                               }
                                rightHtml+=' <div class="item " style="background-image: url('+collaboration[i].img+');"></div>\n';
                            }
                            $('#container-left').empty();
                            $('#container-left').append(leftHtml);
                            $('#container-right').empty();
                            $('#container-right').append(rightHtml);
                            $("#container-right").children(":first").addClass('active')
                        }
                        if(intro){
                          var introHtml='<img src="'+intro[0].img+'" style="width: 412px;height:372px;" alt="">\n' +
                                    '                <p class="p1">'+intro[0].title+'</p>\n' +
                                    '                <p class="p2">\n' +
                                    '                    <span>'+intro[0].peopleName+'</span>\n' +
                                    '                    <i>'+intro[0].duty+'</i>\n' +
                                    '                </p>\n' +
                                    '                <span class="icon"></span>';
                            var rightHtml='<h2>'+intro[0].title+'</h2>\n' +
                                    '                <h4>'+intro[0].subhead+'</h4>\n' +
                                    '                <p class="tips">'+intro[0].context+'</p>\n' +
                                    '                <div class="intro">\n' +
                                    '                    <div class="item">\n' +
                                    '                        <div class="bg-1">\n' +
                                    '                            <div class="bg-2">\n' +
                                    '                                <span class="icon-1"></span>\n' +
                                    '                                <p>Graphics</p>\n' +
                                    '                            </div>\n' +
                                    '                        </div>\n' +
                                    '                    </div>\n' +
                                    '                    <div class="item">\n' +
                                    '                        <div class="bg-1">\n' +
                                    '                            <div class="bg-2">\n' +
                                    '                                <span class="icon-2"></span>\n' +
                                    '                                <p>Deep Learning</p>\n' +
                                    '                            </div>\n' +
                                    '                        </div>\n' +
                                    '                    </div>\n' +
                                    '                    <div class="item">\n' +
                                    '                        <div class="bg-1">\n' +
                                    '                            <div class="bg-2">\n' +
                                    '                                <span class="icon-3"></span>\n' +
                                    '                                <p>Robot</p>\n' +
                                    '                            </div>\n' +
                                    '                        </div>\n' +
                                    '                    </div>\n' +
                                    '                </div>';

                            $('#item-left').empty();
                            $('#item-left').append(introHtml);
                            $('#item-right').empty();
                            $('#item-right').append(rightHtml);
                        }

                        if(media){
                          var mediaHtml='';

                            for (var i in media) {
                                if(i<4){
                                    if(i%2 == 1){
                                        // mediaDetail?ID='+media[i].id+'
                                        mediaHtml += ' <div class="item">\n' +
                                            '                <a class="des" href="/home/media?id='+media[i].id+'">\n' +
                                            '                    <div class="imgs">\n' +
                                            '                        <img src="'+media[i].img+'" alt="">\n' +
                                            '                    </div>\n' +
                                            '                    <div class="word-content">\n' +
                                            '                        <img src="'+media[i].img+'" alt="">\n' +
                                            '                        <div class="word">\n' +
                                            '                            <div class="hidden">\n' +
                                            '                                <div class="date">\n' +
                                            '                                    <i>'+media[i].releaseDate.split(',')[0]+'</i>\n' +
                                            '                                    <span>'+media[i].releaseDate.split(',')[1]+'</span>\n' +
                                            '                                </div>\n' +
                                            '                                <div class="title">'+media[i].title+'</div>\n' +
                                            '                                <div class="detail">\n'+media[i].content+
                                            '                                </div>\n' +
                                            '                            </div>\n' +
                                            '                        </div>\n' +
                                            '                    </div>\n' +
                                            '                </a>\n' +
                                            '            </div>';
                                    }else{
                                        mediaHtml += ' <div class="item">\n' +
                                        // mediaDetail?ID='+media[i].id+'
                                            '                <a class="des" href="/home/media?id='+media[i].id+'">\n' +
                                            '                    <div class="word-content">\n' +
                                            '                        <img src="'+media[i].img+'" alt="">\n' +
                                            '                        <div class="word">\n' +
                                            '                            <div class="hidden">\n' +
                                            '                                <div class="date">\n' +
                                            '                                    <i>'+media[i].releaseDate.split(',')[0]+'</i>\n' +
                                            '                                    <span>'+media[i].releaseDate.split(',')[1]+'</span>\n' +
                                            '                                </div>\n' +
                                            '                                <div class="title">'+media[i].title+'</div>\n' +
                                            '                                <div class="detail">\n'+media[i].content+
                                            '                                </div>\n' +
                                            '                            </div>\n' +
                                            '                        </div>\n' +
                                            '                    </div>\n' +
                                            '                    <div class="imgs">\n' +
                                            '                        <img src="'+media[i].img+'" alt="">\n' +
                                            '                    </div>\n' +
                                            '                </a>\n' +
                                            '            </div>';
                                    }
                                }

                            }
                            $('#media-content').empty();
                            $('#media-content').append(mediaHtml);
                        }
                        if(people){
                          var peopleHtml='';
                            for (var i in people) {
                                // if(i<4){
                                    peopleHtml += ' <div class="swiper-slide people-item">\n' +
                                        '                            <img src="'+people[i].path+'"alt="">\n' +
                                        '                            <div class="intro">\n' +
                                        '                                <p class="job">'+people[i].duty+'</p>\n' +
                                        '                                <p class="name">'+people[i].name+'</p>\n' +
                                        '                                <div class="link">\n' +
                                        '                                    <a href="">Homepage</a>\n' +
                                        '                                </div>\n' +
                                        '                            </div>\n' +
                                        '                        </div>';
                            }
                            $('#user-swiper').empty();
                            $('#user-swiper').append(peopleHtml);
                        }
                    }

                    if(project){
                        var projectHtml = '';
                        console.log(project);
                        for (var i in project) {
                            if(i<3){
                                projectHtml+='<div class="item">\n' +
                                    '                    <a href="/home/project?type=publication&id='+project[i].id+'" target="_blank">\n' +
                                    '                        <img src="'+project[i].bg_img+'" alt="">\n' +
                                    '                        <div class="cover">\n' +
                                    '                            <h4>'+project[i].main_title+'</h4>\n' +
                                    '                            <h5>'+project[i].subtitle+'</h5>\n' +
                                    '                        </div>\n' +
                                    '                    </a>\n' +
                                    '                </div>';
                            }

                        }
                        $('#research-pullication').empty();
                        $('#research-pullication').append(projectHtml);

                    }

                    var swiperBanner = new Swiper('.swiper-banner', {
                        pagination: {
                            el: '.banner-title .pagination',
                            clickable: true,
                        },
                        navigation: {
                            nextEl: '.swiper-banner .swiper-button-next',
                            prevEl: '.swiper-banner .swiper-button-prev',
                        },
                        autoplay: {
                            delay: 2000,
                            disableOnInteraction: false,
                        },
                        effect: 'fade',
                        fadeEffect: {
                            crossFade: true
                        },
                        speed: 700,
                        on:{
                            slideChange: function(){
                                // console.log(this.activeIndex)
                                $('.banner-title .item').eq(this.activeIndex).addClass('active').siblings().removeClass('active');
                            }
                        }
                    });

                    var swiperUser = new Swiper('.swiper-user .swiper-container', {
                        slidesPerView: 4,
                        slidesPerGroup: 4,
                        spaceBetween: 30,
                        freeMode: true,
                        navigation: {
                            nextEl: '.swiper-user .swiper-button-next',
                            prevEl: '.swiper-user .swiper-button-prev',
                        }
                    });
                }else{
                    layer.msg('加载错误请刷新重试');
                }
                // $(this).addClass("done");
            });

        }
        function tourl(url) {
            var oA=document.createElement("a");
            oA.href=url;
            $('body').append(oA); // 修复firefox中无法触发click
            oA.click();
            $(oA).remove();
        }
    </script>

</body>
</html>