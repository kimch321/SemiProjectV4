<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="main">
    <div class="mt-5">
        <i class="fa-solid fa-users fa-2xl"> 회원가입 </i>
        <hr>
    </div>

    <nav class="mt-3">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><button type="button" class="btn btn-success" disabled>이용약관</button></li>
            <li class="breadcrumb-item"><button type="button" class="btn btn-success"  disabled>실명확인</button></li>
            <li class="breadcrumb-item active"><button type="button" class="btn btn-success" disabled>정보입력</button></li>
            <li class="breadcrumb-item"><button type="button" class="btn btn-light" disabled>가입완료</button></li>
        </ul>
    </nav>

    <div class="mt-5">
        <h2>회원정보 입력</h2>
        <small class="text-muted">
            회원정보는 개인정보 취급방침에 따라 안전하게 보호되며,
            회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.
        </small>
        <hr>
    </div>

    <div class="card card-body bg-light mt-5 mx-3">
        <h3 class="mb-5">일반회원</h3>

        <form name="joinfrm" id="joinfrm">
            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label class="col-2 form-label text-danger text-end"
                               for="name">이름</label>
                        <div class="col-3 ">
                            <input type="text" name="name" id="name" readonly class="form-control border-danger bg-light" value="${mb.name}">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label class="col-2 form-label text-danger text-end"
                               for="jumin1a">주민번호</label>
                        <div class="col-3">
                            <input type="text" name="jumin1" id="jumin1a" class="form-control border-danger bg-light" value="${mb.jumin1}" readonly>
                        </div>
                        <div class="col-3">
                            <input type="text" name="jumin2" id="jumin2a" class="form-control border-danger bg-light" value="${mb.jumin2}" readonly>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label class="col-2 form-label text-danger text-end"
                               for="userid">아이디</label>
                        <div class="col-3">
                            <input type="text" name="userid" id="userid" class="form-control border-danger">
                        </div>
                        <div class="col-auto">
                            <span id="uidmsg" class="form-text">6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label class="col-2 form-label text-danger text-end"
                               for="passwd">비밀번호</label>
                        <div class="col-3">
                            <input type="password" name="passwd" id="passwd" class="form-control border-danger">
                        </div>
                        <div class="col-auto">
                            <span class="form-text">6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label class="col-2 form-label text-danger text-end"
                               for="repasswd">비밀번호 확인</label>
                        <div class="col-3">
                            <input type="password" name="repasswd" id="repasswd" class="form-control border-danger">
                        </div>
                        <div class="col-auto">
                            <span class="form-text">이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label class="col-2 form-label text-danger text-end"
                               for="zip1">우편번호</label>
                        <div class="col-1">
                            <input type="text" name="zip1" id="zip1" class="form-control border-danger bg-light" readonly>
                        </div>
                        <div class="col-1">
                            <input type="text" name="zip2" id="zip2" class="form-control border-danger bg-light" readonly>
                        </div>
                        <div class="col-3">
                            <button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#zipmodal">
                                <i class="fas fa-question-circle"></i> 우편번호 찾기</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label class="col-2 form-label text-danger text-end"
                               for="addr1">나머지 주소</label>
                        <div class="col-4">
                            <input type="text" name="addr1" id="addr1" class="form-control border-danger bg-light" readonly>
                        </div>
                        <div class="col-4">
                            <input type="text" name="addr2" id="addr2" class="form-control border-danger">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label class="col-2 form-label text-danger text-end"
                               for="email1">전자우편 주소</label>
                        <div class="col-5">
                            <div class="input-group">
                                <input type="text" name="email1" id="email1"
                                       class="form-control border-danger">
                                <span class="input-group-text border-danger">@</span>
                                <input type="text" name="email2" id="email2"
                                       class="form-control border-danger bg-light" readonly>
                            </div>
                        </div>
                        <div class="col-2">
                            <select class="form-select border-danger" id="email3">
                                <option>선택하세요</option>
                                <option>직접입력하기</option>
                                <option>naver.com</option>
                                <option>gmail.com</option>
                                <option>hotmail.com</option>
                            </select>
                        </div>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label class="col-2 form-label text-danger text-end"
                               for="tel1">전화번호</label>
                        <div class="col-2">
                            <select class="form-select border-danger"
                                    name="tel1" id="tel1">
                                <option>국번</option>
                                <option>010</option>
                                <option>011</option>
                            </select>
                        </div>
                        <div class="col-2">
                            <input type="text" name="tel2" id="tel2"
                                   class="form-control border-danger">
                        </div>
                        <div class="col-2">
                            <input type="text" name="tel3" id="tel3"
                                   class="form-control border-danger">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-11 offset-1 mb-3 align-items-center">
                    <div class="row">
                        <label for="g-recaptcha" class="col-2 form-label text-danger text-end">자동가입방지</label>
                        <div class="col-3">
                            <div class="g-recaptcha" data-sitekey="6LdF4OskAAAAAKHR83Hmsj65DVQqjXqe0BiBwFsP"></div>
                            <input type="hidden" name="g-recaptcha" id="g-recaptcha">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col text-center">
                    <hr class="w-75 mx-auto">
                    <button type="button"
                            class="btn btn-primary" id="joinbtn">
                        <i class="fas fa-check-circle"></i> 입력완료</button>
                    <button type="button"
                            class="btn btn-danger" id="cancelbtn">
                        <i class="fas fa-times-circle"></i> 입력취소</button>
                </div>
            </div>


            <input type="hidden" name="jumin" id="jumin">
            <input type="hidden" name="zipcode" id="zipcode">
            <input type="hidden" name="email" id="email">
            <input type="hidden" name="phone" id="phone">

        </form>
    </div>



    <!-- 우편변호 폼 모달-->
    <div id="zipmodal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title"> 우편번호 찾기</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <form action="zipfrm" id="zipfrm">
                        <div class="row">
                            <label class="col-3 form-label text-end mb-1" for="dong" >
                                검색하실 주소의<br> 동이름을 입력하세요
                            </label>
                            <div class="col-4">
                                <input type="text" name="dong" id="dong" class="form-contral border-primary">
                            </div>
                            <div class="col-3">
                                <button type="button" class="btn btn-primary" id="findzipbtn"><i class="fas fa-search"></i> 검색하기</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8 offset-2">
                                <select class="form-select" id="addrlist"
                                        name="addrlist" size="10">
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" id="sendzip">
                        <i class="fas fa-check-squre"></i>
                        선택하고 닫기
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://www.google.com/recaptcha/api.js"></script>
</div>