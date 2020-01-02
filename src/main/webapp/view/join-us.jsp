<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=0.2, minimum-scale=0.2, maximum-scale=1.0, user-scalable=yes">

    <title>join-us</title>

    <link type="text/css" rel="stylesheet" href="/resources/css/font-awesome.min.css" />

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
                    <li class="active">
                        <a href="/home/join-us">Join us</a>
                    </li>
                </ul>
            </div>
        </div>
    </header>

    <section class="banner-content">
        <img src="/resources/images/join-us-banner.jpg" alt="">
    </section>

    <section class="join-us-container">
        <div class="content">
            <div class="index-title">Join Us</div>
            <ul id="joinUsContent">
                <li>
                    <div class="icon">
                        <img src="/resources/images/join-us-1.png" alt="">
                    </div>
                    <div class="item">
                        <div class="name">Intern</div>
                        <div class="tips">With a thirst for knowledge and a hunger to make a difference</div>
                        <div class="more">
                            <a href="">Read More</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="icon">
                        <img src="/resources/images/join-us-2.png" alt="">
                    </div>
                    <div class="item">
                        <div class="name">Intern</div>
                        <div class="tips">With a thirst for knowledge and a hunger to make a difference</div>
                        <div class="more">
                            <a href="">Read More</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="icon">
                        <img src="/resources/images/join-us-3.png" alt="">
                    </div>
                    <div class="item">
                        <div class="name">Intern</div>
                        <div class="tips">With a thirst for knowledge and a hunger to make a difference</div>
                        <div class="more">
                            <a href="">Read More</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="icon">
                        <img src="/resources/images/join-us-4.png" alt="">
                    </div>
                    <div class="item">
                        <div class="name">Intern</div>
                        <div class="tips">With a thirst for knowledge and a hunger to make a difference</div>
                        <div class="more">
                            <a href="">Read More</a>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="email">
                <div class="icon">
                    <p>Write to us!</p>
                    <p>baoquan@pku.edu.cn Baoquan</p>
                </div>
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
    <script type="text/javascript">
        $(function(){
            // initJoinUsContent()
        });
        function initJoinUsContent() {
            $.ajax({
                url: "/home/initBannerData",
                data: JSON.stringify({"type":7,}),
                contentType: 'application/json',  //请求数据类型
                // context: document.body,
                dataType: 'json',
                type: 'post'
            }).done(function (data) {
                $('.banner-content').empty();
                $('.banner-content').append(' <img src="'+data[0].bannerImg+'" alt="" onclick="toBannerDetail(\''+data[0].bannerUrl+'\')">');

            });
            $.ajax({
                url: "/home/initJoinUs",
                data: JSON.stringify({}),
                contentType: 'application/json',  //请求数据类型
                dataType: 'json',
                type: 'post'
            }).done(function (data) {
                var joinUsContentHtml ='';
                for (var i in data){
                    var imgPath = '';
                    if(data[i].path){
                        imgPath = data[i].path;
                    }else{
                        imgPath =   '/resources/images/join-us-4.png'
                    }
                    joinUsContentHtml = '<li>\n' +
                        '                    <div class="icon">\n' +
                        '                        <img src="'+imgPath+'" alt="">\n' +
                        '                    </div>\n' +
                        '                    <div class="item">\n' +
                        '                        <div class="name">'+data[i].name+'</div>\n' +
                        '                        <div class="tips">'+data[i].duty+'</div>\n' +
                        '                        <div class="more">\n' +
                        '                            <a href="'+data[i].introUrl+'">Read More</a>\n' +
                        '                        </div>\n' +
                        '                    </div>\n' +
                        '                </li>'
                }


                $('#joinUsContent').empty();
                $('#joinUsContent').append(joinUsContentHtml);
            });


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