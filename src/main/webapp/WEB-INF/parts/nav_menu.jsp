<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light  bg-primary">

    <a class="navbar-brand" href="#"><b>SemesterProject</b></a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>


    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <c:if test="${user != null}">
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/achievements">Achievements</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/profile">Profile</a>
                </li>
            </c:if>

            <c:if test="${user == null}">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/signup">Signup</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
                </li>
            </c:if>


            <li class="nav-item">
                <a class="nav-link disabled" href="#">Features</a>
            </li>
        </ul>
    </div>
</nav>