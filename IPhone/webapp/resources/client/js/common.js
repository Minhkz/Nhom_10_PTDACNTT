// Lấy phần tử nút
let scrollBtn = document.getElementById("scrollTopBtn");

// Hiện nút khi scroll xuống 200px
window.onscroll = function() {
    if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
        scrollBtn.style.display = "block";
    } else {
        scrollBtn.style.display = "none";
    }
};

// Khi click thì scroll về top
scrollBtn.onclick = function() {
    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });
};

const csrfToken = document.querySelector('meta[name="_csrf"]').getAttribute('content');
const csrfHeader = document.querySelector('meta[name="_csrf_header"]').getAttribute('content');

$.ajaxSetup({
    beforeSend: function(xhr) {
        xhr.setRequestHeader(csrfHeader, csrfToken);
    }
});
