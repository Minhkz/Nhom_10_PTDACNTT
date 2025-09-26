
$(document).ready(function () {
    $(".heart__item").click(function (e) {
        e.preventDefault();

        let btn = $(this);
        let img = btn.find("img");
        let productId = btn.data("id");

        $.ajax({
            url: "/client/homes/add-to-wishlist/" + productId,
            type: "POST",
            success: function (response) {
                // Toggle icon
                if (response.status === "added") {
                    img.attr("src", "/client/images/home/Icon/heart-solid-full.png");
                } else if (response.status === "removed") {
                    img.attr("src", "/client/images/home/Icon/heart.png");
                }
            },
            error: function () {
                alert("Có lỗi xảy ra khi thêm vào wishlist!");
            }
        });
    });
});