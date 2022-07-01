<%--
/**
	Class Name: header.jsp
	Description: header
	Modification information
	
	수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2022. 7. 1.        최초작성 
    
    author eclass 개발팀
    since 2020.11.23
    Copyright (C) by KandJang All right reserved.
*/
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<c:set var="resources" value="/resources"/>
<c:set var="CP_RES" value="${CP}${resources}"/>
<style>
    .pHeader{
        background: #e3f2fd;
    }
</style>
<!-- header -->
<div id="header" class="pHeader">
    <!-- nav -->
    <nav class="navbar navbar-default">
	    <div class="container-fluid">
	       <!-- brand -->
	       <div class="navbar-header">
		      <a class="navbar-brand" href="#">
		        <img alt="Brand" src="${CP_RES}/imgs/brand.png" width="60%">
		      </a>
		   </div>
           <!-- //brand ------------------------------------->
            <ol class="breadcrumb">
	          <li><a href="${CP}/user/userView.do">회원관리</a></li>
	          <li><a href="#">차트</a></li>
	          <li class="active"><a href="${CP}/board/boardView.do?div=10">공지사항</a></li>
	        </ol>
        </div>
    </nav>
    <!-- //nav ------------------------------------------->
</div>
<!-- //header--------------------------------------------->