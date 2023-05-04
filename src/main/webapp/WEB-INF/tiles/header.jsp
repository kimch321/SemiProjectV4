<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="path" value="${requestScope['javax.servlet.forward.servlet_path']}" />
<!-- Scope -->
<!-- pageScope: 일회용 변수
     requestScope: form 전송 변수
     sessionScope: 여러 페이지에서 사용가능 변수
     applicationScope: 여러 프로그램에서 사용가능 -->

<header class="row">
  <div class="col"><h1 id="logo">Lorem Ipsum</h1></div>
  <div class="col text-end">
    <c:if test="${!fn:startsWith(path, '/join')}">
      <c:if test="${empty sessionScope.UID}">
        <button type="button" class="btn btn-danger mt-2"
                data-bs-target="#loginfrm" data-bs-toggle="modal">로그인</button>
        <button type="button" class="btn btn-primary mt-2">회원가입</button>
      </c:if>
      <c:if test="${!empty sessionScope.UID}">
        <button type="button" class="btn btn-dark mt-2" id="lgoutbtn">로그아웃</button>
        <button type="button" class="btn btn-success mt-2" id="userinfo">회원정보</button>
      </c:if>
    </c:if>
  </div>
</header>
<nav class="navbar navbar-expand navbar-dark bg-dark">
  <ul class="navbar-nav nav-fill w-100">
    <li class="nav-item"><a href="/intro" class="nav-link text-light">프로젝트소개</a></li>
    <li class="nav-item"><a href="/join/agree" class="nav-link text-light">회원가입</a></li>
    <li class="nav-item"><a href="/board/list?cpg=1" class="nav-link text-light">게시판</a></li>
    <li class="nav-item"><a href="/pds/list" class="nav-link text-light">자료실</a></li>
    <li class="nav-item"><a href="/gallery/list" class="nav-link text-light">게시판</a></li>
    <li class="nav-item"><a href="/admin" class="nav-link text-light">관리자</a></li>
  </ul>
</nav>
