<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div id="main">
    <div class="mt-5">
        <i class="fa-solid fa-pen-to-square fa-2xl"> 게시판 </i>
        <hr>
    </div>

    <div class="row mt-5">
        <div class="offset-1 col-7">
            <div class="row">
                <div class="col-2">
                    <select class = "form-select" id="findtype">
                        <option value="subject">제목</option>
                        <option value="sbjcont">제목+내용</option>
                        <option value="content">내용</option>
                        <option value="userid">작성자</option>
                    </select>
                </div>
                <div class="col-4"><input type="text" class="form-control" id="findkey" /></div>
                <div class="col-6"><button type="button" class="btn btn-light">
                    <i class="fa-solid fa-magnifying-glass"> </i>검색하기</button></div>
            </div>
        </div>
        <div class="col-3 text-end">
            <button type="button" class="btn btn-light">
                <i class="fa fa-plus-circle"> </i>새글쓰기</button>
        </div>
    </div>

    <div class="row">
        <div class="offset-1 col-10">
            <table class="table table-striped tbborder">
                <thead class="thbg">
                    <tr>
                        <th style="width: 7%">번호</th>
                        <th>제목</th>
                        <th style="width: 13%">작성자</th>
                        <th style="width: 13%">작성일</th>
                        <th style="width: 7%">추천</th>
                        <th style="width: 7%">조회</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>공지</th>
                        <th><span class="badge text-bg-danger">Hot</span>"대체공휴일로 '사흘' 쉰다는데 왜 3일?"…문해력 논란</th>
                        <th>운영자</th>
                        <th>2023-05-04</th>
                        <th>350</th>
                        <th>15000</th>
                    </tr>


                    <c:forEach items="${bdlist}" var="bd">
                        <tr><td>${bd.bno}</td>
                            <td>${bd.title}</td>
                            <td>${bd.userid}</td>
                            <td>${fn:substring(bd.regdate, 0, 10)}</td>
                            <td>${bd.thumbs}</td>
                            <td>${bd.views}</td></tr>
                    </c:forEach>


                </tbody>
            </table>
        </div>
    </div>
    <c:set var="pglink" value="/board/list?cpg="/>
    <div class="row">
        <div class="offset-2 col-8 text-end">
            <nav>
                <ul class="pagination justify-content-center">
                    <c:if test="${cpg ne 1}">
                    <li><a class="page-link" href="${pglink}1">처음</a></li></c:if>

                    <c:if test="${cpg - 1 gt 0}"><li class="page-item"></c:if>
                    <c:if test="${cpg - 1 le 0}"><li class="page-item disabled"></c:if>
                        <a class="page-link" href="${pglink}${cpg - 1}">이전</a></li>
                    <c:forEach var="i" begin="${stpg}" end="${stpg + 10 - 1}">
                        <c:if test="${i le cntpg}">
                            <c:if test="${i ne cpg}"><li class="page-item"></c:if>
                            <c:if test="${i eq cpg}"><li class="page-item active "></c:if>
                                <a class="page-link" href="${pglink}${i}">${i}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${(cpg+1) lt cntpg}"><li class="page-item"></c:if>
                    <c:if test="${(cpg+1) gt cntpg}"><li class="page-item disabled"></c:if>
                            <a class="page-link" href="${pglink}${cpg + 1}">다음</a>
                    </li>

                    <c:if test="${cpg lt cntpg}">
                        <li><a class="page-link" href="${pglink}${cntpg}">끝</a></li></c:if>
                </ul>
            </nav>
        </div>
    </div>

</div>



<script src="/assets/js/board.js"></script>