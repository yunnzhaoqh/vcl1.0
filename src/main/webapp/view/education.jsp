<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=0.2, minimum-scale=0.2, maximum-scale=1.0, user-scalable=yes">

    <title>education</title>

    <link type="text/css" rel="stylesheet" href="/resources/css/font-awesome.min.css" />
    <link type="text/css" rel="stylesheet" href="/resources/css/jquery.mCustomScrollbar.css" />

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
                    <li>
                        <a href="/home/people">People</a>
                    </li>
                    <li>
                        <a href="/home/activities">Activities</a>
                    </li>
                    <li class="active">
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
        <!-- <div class="banner" style="background-image: url(/resources/images/education-banner.jpg);"></div> -->
        <img src="/resources/images/education-banner.jpg" alt="">
    </section>

    <section class="education-container">
        <div class="content">
            <div class="index-title">Education</div>
            <h3>We want to make you better communicators and problem solvers, to thrive in today’s world — and to shape tomorrow’s.</h3>
            <div class="items">
                <div class="item">
                    <div class="imgs" style="background-image: url(/resources/images/temp/e-bg-1.jpg);">
                        <div class="cover">
                            <span>SUMMER CAMP</span>
                        </div>
                    </div>
                    <div class="list" id="summerList">
                        <%--<div class="row-item">--%>
                            <%--<a href="">--%>
                                <%--<div class="name">2019 Summer Camp</div>--%>
                                <%--<div class="tips">2019.07.15 - 2019.08.26</div>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                        <%--<div class="row-item">--%>
                            <%--<a href="">--%>
                                <%--<div class="name">2019 Summer Camp</div>--%>
                                <%--<div class="tips">2019.07.15 - 2019.08.26</div>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                        <%--<div class="row-item">--%>
                            <%--<a href="">--%>
                                <%--<div class="name">2019 Summer Camp</div>--%>
                                <%--<div class="tips">2019.07.15 - 2019.08.26</div>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                        <%--<div class="row-item">--%>
                            <%--<a href="">--%>
                                <%--<div class="name">2019 Summer Camp</div>--%>
                                <%--<div class="tips">2019.07.15 - 2019.08.26</div>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                    </div>
                </div>
                <div class="item">
                    <div class="imgs" style="background-image: url(/resources/images/temp/e-bg-2.jpg);">
                        <div class="cover">
                            <span>COURSES</span>
                        </div>
                    </div>
                    <div class="list" id="courseslist">
                        <div class="row-item">
                            <a href="">
                                <div class="name">Deep Computer Graphics (2019 Spring)</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Deep Computer Graphics (2019 Spring)</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Human Simulation and the Deep Learning of Neuromuscular and Sensorimotor Control</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Deep Computer Graphics (2019 Spring)</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Deep Computer Graphics (2019 Spring)</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Human Simulation and the Deep Learning of Neuromuscular and Sensorimotor Control</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Deep Computer Graphics (2019 Spring)</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Deep Computer Graphics (2019 Spring)</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Human Simulation and the Deep Learning of Neuromuscular and Sensorimotor Control</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="imgs" style="background-image: url(/resources/images/temp/e-bg-3.jpg);">
                        <div class="cover">
                            <span>REFERENCE</span>
                        </div>
                    </div>
                    <div class="list" id="referenceList">
                        <div class="row-item">
                            <a href="">
                                <div class="name">Deep Computer Graphics (2019 Spring)</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Human-Computer Interaction</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                        <div class="row-item">
                            <a href="">
                                <div class="name">Human Simulation and the Deep Learning of Neuromuscular and Sensorimotor Control</div>
                                <div class="tips">Instructed by Prof. Baoquan Chen</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="media-detail-container" style="display: none">
        <div class="content">
            <div class="opts">
                <div class="media-breadcrumb">
                    <a href="">home</a>
                    <span>&gt;</span>
                    <a href="">Education</a>
                </div>
                <span class="back">Back</span>
            </div>

            <div class="article" id="educationDetail">
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
    <script type="text/javascript" src="/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script>
        $(function(){
            // $(".list").mCustomScrollbar({
            //     scrollInertia: 600,
            //     autoDraggerLength: false
            // });
            $('.media-detail-container .back').click(function(){
                $('.education-container').show();
                $('.media-detail-container').hide();
            });
            initEducation();

        });
        function educationDetail(id,type) {
            $('.education-container').hide();
            // console.log($(this).find('input').val());
            getEducationDetail(id,type);
            $('.media-detail-container').show();
            window.scrollTo(0, 0);
        }
        function getEducationDetail(id,type) {
            $.ajax({
                url: '/home/findEducationOne',
                data:JSON.stringify({"id":id,"type":type}),
                async : true,
                contentType: 'application/json;charset=utf-8',  //请求数据类型
                dataType :'json',
                type:'post'
            }).done(function(data) {
                console.log(data);
                var educationDetail=
                    '<h1>'+data.name+'</h1>\n' +
                    '                <h4>'+data.date+'</h4>\n' +
                    '                <div class="con">\n' +data.content+'</div>'
                $('#educationDetail').empty();
                $('#educationDetail').append(educationDetail);

            });
        }
        function initEducation() {
            $.ajax({
                url: "/home/initBannerData",
                data: JSON.stringify({"type":6,}),
                contentType: 'application/json',  //请求数据类型
                // context: document.body,
                dataType: 'json',
                type: 'post'
            }).done(function (data) {
                $('.banner-content').empty();
                $('.banner-content').append(' <img src="'+data[0].bannerImg+'" alt="" onclick="toBannerDetail(\''+data[0].bannerUrl+'\')">');

            });
            $.ajax({
                url: "/home/initEducation",
                data: JSON.stringify({}),
                contentType: 'application/json',  //请求数据类型
                dataType: 'json',
                type: 'post'
            }).done(function (data) {
                var summerCampHtml = '';
                var coursesHtml = '';
                var referenceHtml = '';
                var summer = data.obj.summer;
                var courses = data.obj.courses;
                var reference = data.obj.reference;
                var type = '';
                for(var i in summer){
                    type='summer'
                    summerCampHtml+='<div class="row-item" onclick="educationDetail('+summer[i].id+',\'summer\')" >\n' +
                        '                            <a >\n' +
                        '                                <div class="name">'+summer[i].name+'</div>\n' +
                        '                                <div class="tips">'+summer[i].starttime+' - '+summer[i].endtime+'</div>\n' +
                        '                            </a>\n' +
                        '                        </div>';
                }
                for(var i in courses){
                    type='courses'
                    coursesHtml+=' <div class="row-item" onclick="educationDetail('+courses[i].id+',\'courses\')">\n' +
                        '                            <a >\n' +
                        '                                <div class="name">'+courses[i].courseName+'</div>\n' +
                        '                                <div class="tips">'+courses[i].peopleName+'</div>\n' +
                        '                            </a>\n' +
                        '                        </div>';
                }
                for(var i in reference){
                    type='reference'
                    referenceHtml+=' <div class="row-item" onclick="educationDetail('+courses[i].id+',\'reference\')">\n' +
                        '                            <a >\n' +
                        '                                <div class="name">'+reference[i].referenceName+'</div>\n' +
                        '                                <div class="tips">'+reference[i].peopleName+'</div>\n' +
                        '                            </a>\n' +
                        '                        </div>';
                }
                $('#summerList').empty();
                $('#summerList').append(summerCampHtml);
                $('#courseslist').empty();
                $('#courseslist').append(coursesHtml);
                $('#referenceList').empty();
                $('#referenceList').append(referenceHtml);

            })
        }
        function toBannerDetail(url) {
            var oA=document.createElement("a");
            oA.href=url;
            $('body').append(oA); // 修复firefox中无法触发click
            oA.click();
            $(oA).remove();
        }
    </script>

</body>
</html>