<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page trimDirectiveWhitespaces="true" %>
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

    <title>project</title>

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
                    <li <c:if test="${type == publication}">class="active" </c:if> >
                        <a href="/home/publication">Publication</a>
                    </li>
                    <li>
                        <a href="/home/media">Media</a>
                    </li>
                    <li>
                        <a href="/home/people">People</a>
                    </li>
                    <li <c:if test="${type == activities}">class="active" </c:if> >
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
        <img src="/resources/images/project-page-banner.jpg" alt="">
    </section>

    <section class="project-container">
        <div class="content" id="projectContent">
            <%--<h1>ReseaA General Decoupled Learning Framework for Parameterized Image Operatorsrch Pulication</h1>--%>
            <%--<h4>ACM SIGGRAPH 2019</h4>--%>
            <%--<article>--%>
                <%--<p style="text-align: center;">Ziyin Qu1*<span style="display: inline-block;width: 40px;height: 12px;"></span>Xinxin Zhang2*<span style="display: inline-block;width: 40px;height: 12px;"></span>Ming Gao3<span style="display: inline-block;width: 40px;height: 12px;"></span>Chenfanfu Jiang4<span style="display: inline-block;width: 40px;height: 12px;"></span>Baoquan Chen1</p>--%>
                <%--<p style="text-align: center;">1Peking University<span style="display: inline-block;width: 40px;height: 12px;"></span>2Peking University<span style="display: inline-block;width: 40px;height: 12px;"></span>3Peking University sity</p>--%>
                <%--<p style="text-align: center;margin: 30px 0;">--%>
                    <%--<img src="/resources/images/temp/project-page_05.jpg" alt="">--%>
                <%--</p>--%>
                <%--<p style="text-align: center;">Figure1. Our generative model jointly analyzes the structure and geometry of shapes, encoding them into a single latent code. The highlighted triplets</p>--%>
                <%--<p style="font-size: 18px;color: #000;font-weight: bold;margin-top: 45px;">Abtsract</p>--%>
                <%--<p>In this paper, we introduce BiMocq2, an unconditionally stable, pure Eulerian-based advection scheme to efficiently preserve the advection accuracy of all physical quantities for long-term fluid simulations. Our approach is built upon the method of characteristic mapping (MCM). Instead of the costly evaluation of the temporal characteristic integral, we evolve the mapping function itself by solving an advection equation for the mappings. Dual mesh characteristics (DMC) method is adopted to more accurately update the mapping. Furthermore, to avoid visual artifacts like instant blur and temporal inconsistency introduced by reinitialization, we introduce multi-level mapping and back and forth error compensation. We conduct comprehensive 2D and 3D benchmark experiments to compare against alternative advection schemes. In particular, for the vortical flow and level set experiments, our method outperforms almost all state-of-art hybrid schemes, including FLIP, PolyPic and Particle Level Set, at the cost of only two Semi-Lagrangian advections. Additionally, our method does not rely on the particle-grid transfer operations, leading to a highly parallelizable pipeline. As a result, more than 45× performance acceleration can be achieved via even a straightforward porting of the code from CPU to GPU.</p>--%>
                <%--<p style="text-align: center;margin: 30px 0;">--%>
                    <%--<img src="/resources/images/temp/project-page_09.jpg" alt="">--%>
                <%--</p>--%>
                <%--<p style="text-align: center;">Fig. 18. Our method simulating explosions modeled with divergence control.The explosion was initiated with two burning sources at the bottom.</p>--%>
                <%--<p style="font-size: 18px;color: #000;font-weight: bold;margin-top: 45px;">Future Work</p>--%>
                <%--<p style="margin-top: 15px;">Limitations. Although the proposed method is not restricted by CFL condition, the simulation accuracy highly relies on the consistency of the forward and backward mappings. Results become meaningless when the two mappings mismatch with each other to a certain extent. Furthermore, in the vicinity of the solid boundary, the proposed solution works sufficiently well to account for the boundary contact. However in the cases with free-boundaries being the visual focus of the simulation, extrapolation schemes shall be--%>
                    <%--developed to warp the mapping functions around the area. </p>--%>
                <%--<p style="margin-top: 15px;">Future work. Our method inspires and enables us to probe into a few interesting possibilities as the future work.</p>--%>
                <%--<p style="margin-top: 15px;">Liquid. We are curious to see the method applied to free-surface flow simulations. We have already examined the effectiveness of our method for level set advections. We would like to explore the possibility of extending our idea to also improve the traditional fast marching method as well as the velocity extrapolations. We think the method also has great potential for numerically circulation preserving vortex simulations. Imagine the length of a vortex segment can be determined with the forward mapping and thus the temporal--%>
                    <%--vorticity, which can be expressed as a production of a t = 0 quantity with the length, such approach could avoid the numerically unstable vortex stretching term in 3D simulations.</p>--%>
                <%--<p style="margin-top: 15px;">Eulerian solid and its coupling with fluid. As Eulerian gridbased solid simulation [Fan et al. 2013; Levin et al. 2011; Teng et al. 2016] becomes popular in graphics community due to its ability to enable easier coupling between fluid and solid and its robustness ven with large time steps. We are interested in investigations of applying our method to such problems.</p>--%>
                <%--<p style="margin-top: 15px;">Sparse data structure. Our current pipeline is built upon a traditional dense data structure, which prohibits extremely high-resolution applications as in [Aanjaneya et al. 2017; Setaluri et al. 2014]. Thus, we look forward to exploring possibilities to exploit modern highly efficient sparse data structure for storing Cartesian grids such as OpenVDB [Museth 2013] and SPGrid [Gao 2018; Setaluri et al. 2014] to further accelerate the computation.</p>--%>
                <%--<p style="font-size: 18px;color: #000;font-weight: bold;margin-top: 45px;">Bibtex</p>--%>
                <%--<p style="margin-top: 15px;">@article{</p>--%>
                <%--<p>title = {ReseaA General Decoupled Learning Framework for Parameterized Image Operatorsrch Pulication},</p>--%>
                <%--<p>author = {Di Lin and Hui Huang},</p>--%>
                <%--<p>journal = {},</p>--%>
                <%--<p>volume = {},</p>--%>
                <%--<p>number = {},</p>--%>
                <%--<p style="margin-top: 15px;">pages = {}, </p>--%>
                <%--<p style="margin-top: 15px;">year = {2019},</p>--%>
            <%--</article>--%>
            <%--<div class="download">--%>
                <%--<p>Download</p>--%>
                <%--<div>--%>
                    <%--<a href="" class="item pdf">--%>
                        <%--<ul>--%>
                            <%--<li>ZZNet</li>--%>
                            <%--<li>[16.68MB]</li>--%>
                        <%--</ul>--%>
                    <%--</a>--%>
                <%--</div>--%>
            <%--</div>--%>
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
    <script>
        var id =
        $(function(){
            initDetail();

        });
        function initDetail() {

            $.ajax({
                url: "/home/findOneProject",
                data: JSON.stringify({"id": ${id}}),
                contentType: 'application/json',  //请求数据类型
                dataType: 'json',
                // context: document.body,
                type: 'post'
            }).done(function (data) {
                console.log(data);
                var detailHtml = '<h1>'+data.main_title+'</h1>\n' +
                    '            <h4>'+data.subtitle+'</h4>\n' +
                    '            <article>' +data.content +
                    '            </article>\n' +
                    '            <div class="download">\n' +
                    '                <p>Download</p>\n' +
                    '                <div>\n' +
                    '                    <a href="'+data.project_file+'" download="" class="item pdf">\n' +
                    '                        <ul>\n' +
                    '                            <li>'+data.fileName+'</li>\n' +
                    '                            <li>['+data.fileSize+']</li>\n' +
                    '                        </ul>\n' +
                    '                    </a>\n' +
                    '                </div>\n' +
                    '            </div>'
                $('#projectContent').empty();
                $('#projectContent').append(detailHtml);
            })
        }
    </script>

</body>
</html>