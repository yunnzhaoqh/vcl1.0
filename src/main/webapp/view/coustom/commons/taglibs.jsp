<%--标签 --%>
<%@ page isELIgnored="false" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%--<shiro:hasRole name="user"></shiro:hasRole>--%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%--<%--%>
    <%--//获得绝对路径--%>
    <%--String path = request.getContextPath();--%>
    <%--String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";--%>
    <%--String printPagePath=request.getRealPath(request.getRequestURI());--%>
    <%--System.out.println(printPagePath);--%>
<%--%>--%>
<script>
    _ctx="${ctx}";
</script>
