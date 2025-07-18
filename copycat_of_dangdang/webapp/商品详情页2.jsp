<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>商品详情页2</title>
    <link rel="stylesheet" href="CSS/商品详情页.css">
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
    <div class="top-bar">
        <label class="label_diqu">送至：</label>
        <select class="select_diqu">
            <option value="北京">北京</option>
            <option value="天津">天津</option>
            <option value="河北">河北</option>
            <option value="山西">山西</option>
            <option value="内蒙古">内蒙古</option>
            <option value="辽宁">辽宁</option>
            <option value="吉林">吉林</option>
            <option value="黑龙江">黑龙江</option>
            <option value="上海">上海</option>
            <option value="江苏">江苏</option>
            <option value="浙江">浙江</option>
            <option value="安徽">安徽</option>
            <option value="福建">福建</option>
            <option value="江西">江西</option>
            <option value="山东">山东</option>
            <option value="河南">河南</option>
            <option value="湖北">湖北</option>
            <option value="湖南">湖南</option>
            <option value="广东">广东</option>
            <option value="广西">广西</option>
            <option value="其他地区">其他地区</option>
        </select>
        <a href="购物车.jsp" class="a_gouwuche">|购物车</a>
        <a href="我的订单.jsp" class="a_wodedingdan">|我的订单</a>
        <img src="picture/logo.png" style="position: absolute;left:5%;top:30px;" alt="">
        <form action="/search" method="get">
            <input type="text" name="search" placeholder="小刺猬阿奈家的24小时" class="search_input">
            <button type="submit" class="search_btn">搜索</button>
        </form>
    </div>
    <hr class="orange-line">
    <div class="img-container">
        <img src="picture/详情页横幅.jpg" alt="详情页横幅">
    </div>
    <div class="container">
        <img id="main-image" src="picture/商品图2放大版.jpg" alt="主图片">
        <div class="small-images">
            <img class="small-img" data-big="picture/商品图2放大版.jpg" src="picture/商品图2.jpg" alt="商品图1">
            <img class="small-img" data-big="picture/商品图2_2放大版.jpg" src="picture/商品图2_2.jpg" alt="商品图2">
            <img class="small-img" data-big="picture/商品图2_3放大版.jpg" src="picture/商品图2_3.jpg" alt="商品图3">
            <img class="small-img" data-big="picture/商品图2_4放大版.jpg" src="picture/商品图2_4.jpg" alt="商品图4">
        </div>
        <script>
            const smallImgs = document.querySelectorAll('.small-img');
            const mainImage = document.getElementById('main-image');

            smallImgs.forEach(smallImg => {
                smallImg.addEventListener('mouseover', function () {
                    const bigImageSrc = this.dataset.big;
                    mainImage.src = bigImageSrc;
                });
            });
        </script>
    </div>
    <div class="name">
        <h2 id="product-name">如果历史是一群喵15·大清风云篇</h2>
        肥志人气历史萌漫系列第十五卷，展开权谋的巅峰对决，揭秘康雍乾三朝传奇！<br>
        <hr class="name_hr">
        <h6>
            作者：<a href="" style="text-decoration: none;color: dodgerblue">肥志编绘，漫友文化出品</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            出版社：<a href="" style="text-decoration: none;color: dodgerblue">广东旅游出版社</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            出版时间：2024年12月
            <br>
            在<a href="" style="text-decoration: none;color: dodgerblue"> 当当动漫/幽默畅销榜</a>排名2位
        </h6>
    </div>
    <div class="price">
        <br>
        &nbsp;当当价&nbsp;&nbsp;<a href="" style="text-decoration: none;color: dodgerblue">降价通知</a>
        <br>
        &nbsp;
        <h2 style="color: red;display: inline-block" id="product-price">¥32.00</h2>
        <h4 style="color: red;display: inline-block">（5.36折）</h4>
        &nbsp;&nbsp;
        <h6 style="color: darkgray">定价¥<del>59.80</del></h6>
    </div>
    <div class="cuxiao">
        <label style="color: darkgray">促&nbsp;&nbsp;销</label>
        <label style="background-color: orangered;color: white">限量购</label>
        <label style="color: darkgray">每账户最多可购买一件</label>
        <br>
        ! 部分促销不可共享，请以购物车能享受的促销为准
        <hr class="cuxiao_hr">
        <br><br><br>
        <label style="color: darkgray">配送至：</label>
        <select>
            <option>北京市昌平区城北街道</option>
        </select>
    </div>
    
    <!-- 加入购物车表单 -->
    <form id="addToCartForm" action="addToCart.jsp" method="post">
        <input type="hidden" id="product_id" name="product_id">
        <input type="hidden" id="product_name" name="product_name">
        <input type="hidden" id="price" name="price">
        <input type="hidden" id="number" name="number">
        <input type="hidden" id="total_price" name="total_price">
    </form>
    
    <!-- 新增立即购买表单 -->
    <form id="buyNowForm" action="buyNow.jsp" method="post">
        <input type="hidden" id="buy_product_id" name="product_id">
        <input type="hidden" id="buy_product_name" name="product_name">
        <input type="hidden" id="buy_price" name="price">
        <input type="hidden" id="buy_number" name="number">
        <input type="hidden" id="buy_total_price" name="total_price">
        <input type="hidden" id="buy_user_phone" name="user_phone" value="18367867635"> <!-- 示例用户手机号 -->
    </form>
    
    <div class="shopping-buttons-container">
        <div class="quantity-control">
            <input type="number" id="quantity" value="1" min="1" class="quantity-input">
            <button class="quantity-btn plus-btn">+</button>
            <button class="quantity-btn minus-btn">-</button>
        </div>
        <button id="addToCartBtn" class="add-to-cart-btn">🛒 加入购物车</button>
        <button id="buyNowBtn" class="buy-now-btn">立即购买</button>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const quantityInput = document.getElementById('quantity');
                const plusBtn = document.querySelector('.plus-btn');
                const minusBtn = document.querySelector('.minus-btn');
                const addToCartBtn = document.getElementById('addToCartBtn');
                const buyNowBtn = document.getElementById('buyNowBtn');
                const addToCartForm = document.getElementById('addToCartForm');
                const buyNowForm = document.getElementById('buyNowForm');
                
                // 获取商品信息
                const productName = document.getElementById('product-name').textContent;
                const priceText = document.getElementById('product-price').textContent;
                const price = parseFloat(priceText.replace('¥', ''));
                
                // 数量加减控制
                plusBtn.addEventListener('click', function () {
                    const currentValue = parseInt(quantityInput.value);
                    quantityInput.value = currentValue + 1;
                });

                minusBtn.addEventListener('click', function () {
                    const currentValue = parseInt(quantityInput.value);
                    if (currentValue > 1) {
                        quantityInput.value = currentValue - 1;
                    }
                });
                
                // 加入购物车按钮点击事件
                addToCartBtn.addEventListener('click', function () {
                    const number = parseInt(quantityInput.value);
                    const totalPrice = price * number;
                    
                    // 设置表单值
                    document.getElementById('product_name').value = productName;
                    document.getElementById('price').value = price;
                    document.getElementById('number').value = number;
                    document.getElementById('total_price').value = totalPrice;
                    
                    // 提交表单
                    addToCartForm.submit();
                });
                
                // 立即购买按钮点击事件
                buyNowBtn.addEventListener('click', function () {
                    const number = parseInt(quantityInput.value);
                    const totalPrice = price * number;
                    
                    // 设置立即购买表单值
                    document.getElementById('buy_product_name').value = productName;
                    document.getElementById('buy_price').value = price;
                    document.getElementById('buy_number').value = number;
                    document.getElementById('buy_total_price').value = totalPrice;
                    
                    // 提交表单
                    buyNowForm.submit();
                });
            });
        </script>
    </div>
</body>
</html>