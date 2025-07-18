<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="CSS/登录.css">
    <base target="_blank" />
    <style>
        body {
            margin: 0;
            text-align: center; /* 使行内元素（如 img）水平居中 */
            overflow: scroll;
            font-family: "SimSun", "宋体", serif;
        }
    </style>
</head>
<body>
    <img src="picture/logo.png" class="img_logo">
    <img src="picture/登录页面图片.png" class="img_denglu">
    <div class="login-container">
        <div class="login-header">
            <span class="tab active" data - tab="password">密码登录</span> |
            <span class="tab" data - tab="verification">验证码登录</span>
        </div>
        <form class="login-form password-form active">
            <input type="text" placeholder="手机号" id="phone" class="input-field">
            <div class="password-container">
                <input type="password" placeholder="密码" id="password" class="input-field">
                <i class="fa fa-eye-slash password-toggle"></i>
            </div>
            <div class="agreement-container">
                <input type="checkbox" id="agreement">
                <label for="agreement">同意</label>
                <a href="#">用户协议</a>、<a href="#">隐私政策</a>
            </div>
            <button type="button" class="login-button" onclick="login()">登录</button>
        </form>
        <form class="login-form verification-form">
            <input type="text" placeholder="手机号" class="input-field">
            <div class="verification-container">
                <input type="text" placeholder="验证码" class="input-field">
                <button type="button" class="send-verification-code">发送验证码</button>
            </div>
            <div class="agreement-container">
                <input type="checkbox" id="agreement2">
                <label for="agreement2">同意</label>
                <a href="#">用户协议</a>、<a href="#">隐私政策</a>
            </div>
            <button type="submit" class="login-button">登录</button>
        </form>
        <div class="extra-options">
            <a href="注册.html" target="_self">立即注册</a> |
            <a href="#">忘记密码</a>
        </div>
        <script>
            function login() {
                const phone = document.getElementById('phone').value;
                const password = document.getElementById('password').value;
                
                fetch('/LoginServlet', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    },
                    body: 'phone=' + encodeURIComponent(phone) + '&password=' + encodeURIComponent(password)
                })
               .then(response => response.text())
               .then(data => {
                    if (data === "用户不存在，请先注册") {
                        alert(data);
                    } else if (data === "手机号或密码错误") {
                        alert(data);
                    } else {
                    	window.location.href = "首页1.jsp";
                    }
                })
               .catch(error => {
                    console.error('登录异常:', error);
                    alert('发生错误，请重试');
                });
            }
            
            document.addEventListener('DOMContentLoaded', function () {
                const tabs = document.querySelectorAll('.tab');
                const passwordForm = document.querySelector('.password-form');
                const verificationForm = document.querySelector('.verification-form');

                tabs.forEach(function (tab) {
                    tab.addEventListener('click', function () {
                        const targetTab = this.dataset.tab;
                        tabs.forEach(function (t) {
                            t.classList.remove('active');
                        });
                        this.classList.add('active');
                        if (targetTab === 'password') {
                            passwordForm.classList.add('active');
                            verificationForm.classList.remove('active');
                        } else {
                            passwordForm.classList.remove('active');
                            verificationForm.classList.add('active');
                        }
                    });
                });
            });
        </script>
    </div>
</body>
</html>