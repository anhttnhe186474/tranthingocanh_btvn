<%-- 
    Document   : index2
    Created on : May 18, 2024, 6:47:01 PM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <div>
                <label>Number 1:</label>
                <input type="text" name="num1"> <br>
                <label>Number 2:</label>
                <input type="text" name="num2"> <br>
                <div style="margin-top: 17px;">
                    <input type="submit" name="operation" value="+">
                    <input type="submit" name="operation" value="-">
                    <input type="submit" name="operation" value="*">
                    <input type="submit" name="operation" value="/">
                </div>
            </div>
        </form>
        
        <c:set var="resuly" value="" />
        
        <c:choose>
            <c:when test="${param.num1 != null && param.num2 != null && param.operation != null}">
                <c:choose>
                    <c:when test="${param.operation =='+'}">
                        <c:set var="result" value="${(param.num1) + (param.num2)}"/>
                    </c:when>
                    
                    <c:when test="${param.operation =='-'}">
                        <c:set var="result" value="${(param.num1) - (param.num2)}"/>
                    </c:when>
                    
                    <c:when test="${param.operation =='*'}">
                        <c:set var="result" value="${(param.num1) * (param.num2)}"/>
                    </c:when>
                    
                    <c:when test="${param.operation =='/'}">
                        <c:choose>
                            <c:when test="${param.num2 != 0}">
                                <c:set var="result" value="${(param.num1) / (param.num2)}"/>
                            </c:when>
                            <c:when test="${param.num2 == 0}">
                                <c:set var="result" value="Can't divide zero"/>
                            </c:when>
                        </c:choose>
                    </c:when>
                </c:choose>
            </c:when>
        </c:choose>
        
        <h1>${result}</h1>
    </body>
</html>
