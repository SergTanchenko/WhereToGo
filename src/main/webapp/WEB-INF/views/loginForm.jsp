<%--@elvariable id="user" type="com.luxoft.wheretogo.models.User"--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="login">
    <div class="post">
        <div class="login-div" data-user="${sessionScope.user}">
            <a href="#login-box" class="login-link">Login / Sign In</a>

            <div class="logout-box"><a href="userInfo?id=${user.id}"><span
                    id="user-first-name">${sessionScope.user.firstName}</span> <span
                    id="user-last-name">${sessionScope.user.lastName}</span></a><a href="logout" class="logout-link">/
                Logout</a>
            </div>
        </div>
        <div id="login-box" class="login-popup">\
            <a href="#" class="close"><img src="resources/images/close_pop.png" class="btn_close" title="Close Window"
                                           alt="Close"/></a>

            <form method="post" class="signin" action="/login">
                <fieldset class="textbox">
                    <label class="username">
                        <span>Username</span>
                        <input id="username" name="username" value="" type="text" autocomplete="on"
                               placeholder="Username">
                    </label>

                    <label class="password">
                        <span>Password</span>
                        <input id="password" name="password" value="" type="password" placeholder="Password">
                    </label>

                    <button class="submit button" type="submit">Sign in</button>

                    <p>
                        <a class="forgot" href="#">Forgot your password?</a>
                    </p>

                </fieldset>
            </form>
        </div>
    </div>