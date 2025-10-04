<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--css-->
    <jsp:include page="/WEB-INF/view/client/layout/css.jsp"></jsp:include>
    <title>My Iphone</title>
</head>
<body>
<!--header-->
<jsp:include page="/WEB-INF/view/client/layout/header.jsp"></jsp:include>

<main>
    <div class="mt-5">
        <div class="row">
            <div class="col-md-6 col-12 mx-auto">
                <h3>Update an address</h3>
                <hr />
                <form:form method="post" action="/client/payment/address/update"
                           modelAttribute="updateAddress" class="row">
                    <div class="mb-3 col-12 col-md-6 d-none">
                        <label class="form-label">Id:</label>
                        <form:input type="text" class="form-control" path="id" />
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                        <label class="form-label">Số nhà:</label>
                        <form:input type="text" class="form-control" path="shortDesc" />
                    </div>

                    <div class="mb-3 col-12 col-md-6">
                        <label class="form-label">Địa chỉ:</label>
                        <form:input type="text" class="form-control" path="detailDesc" />
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                        <label class="form-label">Người nhận:</label>
                        <form:input type="text" class="form-control" path="reciverName" />
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                        <label class="form-label">Số điện thoại:</label>
                        <form:input type="text" class="form-control" path="reciverPhone" />
                    </div>
                    <div class="mb-3 col-12 col-md-6">
                        <label class="form-label">Kiểu địa chỉ:</label>
                        <form:select class="form-select" path="location">
                            <form:option value="HOME">HOME</form:option>
                            <form:option value="OFFICE">OFICE</form:option>
                        </form:select>
                    </div>
                    <div class="col-12 mb-5">
                        <button type="submit" class="btn btn-warning">Update</button>
                    </div>
                </form:form>

            </div>

        </div>
    </div>
</main>
<!-- Nút Scroll to Top -->
<button id="scrollTopBtn" title="Go to top">↑</button>
<!--Footer-->
<jsp:include page="/WEB-INF/view/client/layout/footer.jsp"></jsp:include>

<!--js-->
<jsp:include page="/WEB-INF/view/client/layout/js.jsp"></jsp:include>
</body>
</html>