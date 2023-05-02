// header 로고 클릭 이벤트
const logo = document.querySelector('#logo');
logo.addEventListener('click', () => {
    location.href = '/';
})

// --------------------------------agree
// 이용약관 체크박스
const agree1 = document.querySelector('#agree1');
// 개인정보 이용 체크박스
const agree2 = document.querySelector('#agree2');
// 동의 버튼
const agreeOK = document.querySelector('#agreeOk');
agreeOK?.addEventListener('click', () => {
    if(!agree1.checked) alert("이용약관 동의에 체크해주세요");
    else if(!agree2.checked) alert("개인정보 이용 동의에 체크해주세요.");
    else location.href = "/join/checkme";
})

// 미동의 버튼
const agreeNo = document.querySelector('#agreeNo');
agreeNo?.addEventListener('click',() => {
    location.href = "/";
})

// -------------------------------checkme
const chkfrm2 = document.forms.checkfrm2;
const chk2btn = document.querySelector('#check2btn');

chk2btn?.addEventListener('click',() => {
    if(chkfrm2.name.value === "") alert("이름을 입력하세요.");
    else if(chkfrm2.jumin1.value === "" || chkfrm2.jumin2.value === "") alert("주민번호를 입력하세요");
    else if(!chkfrm2.chkjumin.checked) alert("주민번호 이용확인에 동의해주세요");
    else {
        chkfrm2.method = 'post';
        chkfrm2.action = '/join/joinme';
        chkfrm2.submit();
    }
});

// -------------------------------joinme
const joinfrm = document.forms.joinfrm;
const joinbtn = document.querySelector('#joinbtn');
const dong = document.querySelector('#dong');
const zipbtn = document.querySelector('#findzipbtn');
const addrlist = document.querySelector('#addrlist');
joinbtn?.addEventListener('click', ()=>{
    if (joinfrm.userid.value == '') alert('아이디를 입력하세요!!');
    else if (joinfrm.passwd.value == '') alert('비밀번호를 입력하세요!!');
    else if (joinfrm.repasswd.value == '') alert('비밀번호 확인을 입력하세요!!');
    else if (joinfrm.repasswd.value != joinfrm.passwd.value) alert('비밀번호가 서로 일치하지 않아요!!');
    else if (joinfrm.zip1.value == '' || joinfrm.zip2.value == '') alert('우편번호를 확인하세요!!');
    else if (joinfrm.addr1.value == '' || joinfrm.addr2.value == '') alert('주소를 확인하세요!!');
    else if (joinfrm.email1.value == '' || joinfrm.email2.value == '') alert('이메일을 확인하세요!!');
    else if (joinfrm.tel2.value == '' || joinfrm.tel3.value == '') alert('전화번호를 확인하세요!!');
    else if (joinfrm.grecaptcha.value == '') alert('자동가입방지를 확인하세요!!');
    else {
        location.href='/join/joinok';
    }

});

const showzipaddr = (jsons) => {
    let addrs = '';

    jsons.forEach((data, idx) => {
        addrs += `<option>${data['zipcode']} ${data[`sido`]}
                     ${data['gugun']} ${data['dong']}</option>`
    })
    while(addrlist.lastChild) {
        addrlist.removeChild(addrlist.lastChild);
    }
    addrlist.innerHTML = addrs;
};
zipbtn?.addEventListener('click',() => {
    const url = '/join/zipcode?dong=' + dong.value;
    fetch(url).then(response => response.json())
        .then(jsons => showzipaddr(jsons));
})



// -------------------------------joinok