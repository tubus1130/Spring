<%--
/**
	Class Name: file_upload.jsp
	Description: 파일 업로드
	Modification information
	
	수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2022. 6. 29.        최초작성 
    
    author eclass 개발팀
    since 2020.11.23
    Copyright (C) by KandJang All right reserved.
*/
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- /ehr -->
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<c:set var="resources" value="/resources"/>
<c:set var="CP_RES" value="${CP}${resources}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
	<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>파일 업로드</title>
    
    <!-- 부트스트랩 -->
    <link href="${CP_RES}/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="${CP_RES}/js/jquery-1.12.4.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="${CP_RES}/js/bootstrap.min.js"></script>
    <!-- jquery_bootstrap paging -->
    <script type="text/javascript" src="${CP_RES}/js/jquery.bootpag.js"></script>
 
    <script type="text/javascript">
        $(document).ready(function(){
        	console.log("document.ready");
        });
    </script>
</head>
<body>
    <!-- div container -->
    <div class="container">
        <!-- 제목 -->
        <div class="page-header">
            <h2>파일 업로드</h2>
        </div>
        <!--//제목  ------------------------------------------->
        <!-- form -->
        <form action="" class="form-horizontal">
            <div class="form-group">
                <label for="title" class="col-sm-3 col-md-2 col-lg-2 control-label">제목</label>
                <div class="col-sm-9 col-md-10 col-lg-10">
                    <input type="text" maxlength="100" name="title" id="title" placeholder="제목" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="title" class="col-sm-3 col-md-2 col-lg-2 control-label">구분</label>
                <div class="col-sm-9 col-md-10 col-lg-10">
                    <select class="form-control" name="fileDiv" id="fileDiv">
                        <option value="10">파일</option>
                        <option value="20">이미지</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="file01" class="col-sm-3 col-md-2 col-lg-2 control-label">파일1</label>
                <div class="col-sm-9 col-md-10 col-lg-10">
                    <input type="file" maxlength="100" name="file01" id="file01" placeholder="파일1" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="file02" class="col-sm-3 col-md-2 col-lg-2 control-label">파일2</label>
                <div class="col-sm-9 col-md-10 col-lg-10">
                    <input type="file" maxlength="100" name="file02" id="file02" placeholder="파일2" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="doInsert" class="col-sm-3 col-md-2 col-lg-2 control-label"></label>
                <div class="col-sm-9 col-md-10 col-lg-10">
                    <input type="submit" maxlength="100" id="doInsert" class="btn btn-primary btn-sm" value="전송">
                </div>
            </div>
        </form>
        <!--//form -------------------------------------------->
    </div>
    <!--//div container --------------------------------------->
</body>
</html>