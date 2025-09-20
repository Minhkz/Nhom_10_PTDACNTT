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

$(document).ready(function () {
    $(".heart__item").click(function (e) {
        e.preventDefault();

        let btn = $(this);
        let img = btn.find("img");
        let productId = btn.data("id");

        $.ajax({
            url: "/client/homes/add-to-wishlist/" + productId,
            type: "POST",
            headers: {
                "X-CSRF-TOKEN": "${_csrf.token}" // CSRF token
            },
            success: function (response) {
                // Toggle icon
                if (response.status === "added") {
                    img.attr("src", "${env}/client/images/home/Icon/heart-solid-full.png");
                } else if (response.status === "removed") {
                    img.attr("src", "${env}/client/images/home/Icon/heart.png");
                }
            },
            error: function () {
                alert("Có lỗi xảy ra khi thêm vào wishlist!");
            }
        });
    });
});