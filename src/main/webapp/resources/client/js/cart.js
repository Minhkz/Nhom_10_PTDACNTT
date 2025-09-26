$(document).ready(function () {
    // Vào trang -> tất cả item đều checked
    $("#cart-check-all").prop("checked", true);
    $("input[class='cart-check-item']").prop("checked", true);

    let thue = parseFloat($(".Taxes1 .right__text").text().replace(/[^\d]/g, "")) || 0;
    let ship = parseFloat($(".Taxes2 .right__text").text().replace(/[^\d]/g, "")) || 0;


    // Hàm tính lại tổng tiền

    function updateSummary()
    {
        let subtotal = 0;

        $("input[class='cart-check-item']:checked").each(function () {
            let inputQuantity = $(this).closest(".rightSide").find(".number");
            let price = parseFloat(inputQuantity.data("price")) || 0;
            let quantity = parseInt(inputQuantity.val()) || 1;
            subtotal += price * quantity;
        });

        // Nếu không có sản phẩm nào được chọn thì phí = 0
        let serviceFee = 0;
        let shippingFee = 0;
        if (subtotal > 0) {
            serviceFee = thue;
            shippingFee = ship;
        }

        let total = subtotal + serviceFee + shippingFee;

        // Cập nhật vào giao diện
        $(".Subtotal .right__text").text(new Intl.NumberFormat('vi-VN').format(subtotal) + "đ");
        $(".Taxes1 .right__text").text(new Intl.NumberFormat('vi-VN').format(serviceFee) + "đ");
        $(".Taxes2 .right__text").text(new Intl.NumberFormat('vi-VN').format(shippingFee) + "đ");
        $(".Total .right__text").text(new Intl.NumberFormat('vi-VN').format(total) + "đ");
    }


    // Khi bấm check-all
    $("#cart-check-all").on("change", function () {
        let checked = $(this).is(":checked");
        $("input[id='cart-check-item']").prop("checked", checked);
        updateSummary();
    });

    // Khi tick/untick từng item
    $(document).on("change", "input[id='cart-check-item']", function () {
        let allChecked = $("input[id='cart-check-item']").length === $("input[id='cart-check-item']:checked").length;
        $("#cart-check-all").prop("checked", allChecked);
        updateSummary();
    });

    // xoá sản phẩm
    $(document).on("click", ".btn-remove", function (e) {
        e.preventDefault();
        const productId = $(this).data("id");

        $.ajax({
            url: "/client/carts/cancel/" + productId,
            type: "POST",
            success: function (response) {
                if (response.status === "success") {
                    // Xóa trên UI
                    $("#item-" + productId).remove();
                    $("#count-item").text(response.sum);

                    // Cập nhật lại chi tiết đơn hàng
                    $(".Subtotal .right__text").text(new Intl.NumberFormat('vi-VN').format(response.subtotal) + "đ");
                    $(".Taxes1 .right__text").text(new Intl.NumberFormat('vi-VN').format(response.serviceFee) + "đ");
                    $(".Taxes2 .right__text").text(new Intl.NumberFormat('vi-VN').format(response.shippingFee) + "đ");
                    $(".Total .right__text").text(new Intl.NumberFormat('vi-VN').format(response.total) + "đ");

                    // Nếu hết sản phẩm thì ẩn main, show empty-cart
                    if (response.sum === 0) {
                        $(".main").addClass("d-none");
                        $(".empty-cart").removeClass("d-none");
                    }
                }
            },
            error: function () {
                alert("Có lỗi xảy ra khi xóa sản phẩm!");
            }
        });
    });

    // tăng số lượng
    $(document).on("click", ".plus", function () {
        let inputQuantity = $(this).siblings(".number");
        let productId = inputQuantity.data("id");
        $.ajax({
            url: "/client/carts/plus/" + productId,
            type: "POST",
            success: function (response) {
                if (response.status === "success") {
                    inputQuantity.val(response.quantity);
                    // Cập nhật giá sản phẩm
                    let priceElement = inputQuantity.closest(".rightSide").find(".price");
                    priceElement.text(new Intl.NumberFormat('vi-VN').format(response.totalPrice) + "đ");

                    // Cập nhật tổng tiền
                    let totalElement = $(".right__content .Total .right__text");
                    totalElement.text(new Intl.NumberFormat('vi-VN').format(response.price + thue + ship) + "đ");

                    // Cập nhật tạm tính
                    let subtotalElement = $(".right__content .Subtotal .right__text");
                    subtotalElement.text(new Intl.NumberFormat('vi-VN').format(response.price) + "đ");
                }
            },
            error: function () {
                alert("Có lỗi xảy ra khi tăng số lượng!");
            }

        });
    });

    // giảm số lượng
    $(document).on("click", ".minus", function () {
        let inputQuantity = $(this).siblings(".number");
        let currentVal = parseInt(inputQuantity.val()) || 1;
        let productId = inputQuantity.data("id");

        if (currentVal > 1) {
            $.ajax({
                url: "/client/carts/minus/" + productId, // Giả sử bạn có endpoint /minus/{id}
                type: "POST",
                success: function (response) {
                    if (response.status === "success") {
                        // Cập nhật số lượng trên UI
                        inputQuantity.val(response.quantity);

                        // Cập nhật giá sản phẩm
                        let priceElement = inputQuantity.closest(".rightSide").find(".price");
                        priceElement.text(new Intl.NumberFormat('vi-VN').format(response.totalPrice) + "đ");

                        // Cập nhật tổng tiền
                        let totalElement = $(".right__content .Total .right__text");
                        totalElement.text(new Intl.NumberFormat('vi-VN').format(response.price + thue + ship ) + "đ");

                        // Cập nhật tạm tính
                        let subtotalElement = $(".right__content .Subtotal .right__text");
                        subtotalElement.text(new Intl.NumberFormat('vi-VN').format(response.price) + "đ");
                    }
                },
                error: function () {
                    alert("Có lỗi xảy ra khi giảm số lượng!");
                }
            });
        }
    });


});