// header 로고 클릭 이벤트
const logo = document.querySelector('#logo');
logo.addEventListener('click', () => {
    location.href = '/';
})

// agree
// 이용약관 체크박스
const agree1 = document.querySelector('#agree1');

// 개인정보 이용 체크박스
const agree2 = document.querySelector('#agree2');

// 동의 버튼
const agreeOK = document.querySelector('#agreeOk');
agreeOK?.addEventListener('click', () => {
    if(!agree1.checked) alert("이용약관 동의에 체크해주세요");
    else if(!agree2.checked) alert("개인정보 이용 동의에 체크해주세요.");
    else location.href = "/join/checkme"
})

// 미동의 버튼
const agreeNo = document.querySelector('#agreeNo');
agreeNo?.addEventListener('click',() => {
    location.href = "/";
})
