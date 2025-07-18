<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
    <link rel="stylesheet" href="CSS/购物车.css">
    <base target="_blank" />
    <style>
        body {
            margin: 0; 
            text-align: center;
            overflow: scroll;
            font-family: "SimSun", "宋体", serif;
        }
    </style>
</head>
<body>
<img src="picture/购物车_logo.jpg" class="img_gouwuche_logo">
<img src="picture/购物流程.png" class="img_liucheng">
<hr class="orange-line">

<table class="cart-table">
    <thead>
    <tr>
        <th><input type="checkbox" id="selectAll">全选</th>
        <th>商品信息</th>
        <th>单价（元）</th>
        <th>数量</th>
        <th>金额（元）</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <%
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        try {
            // 加载数据库驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            // 建立数据库连接，分别填写地址，用户名以及密码
            conn = DriverManager.getConnection(
                " ",
                " ", 
                " "
            );
            
            // 查询购物车商品
            String sql = "SELECT * FROM cart_products";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            
            // 输出购物车商品
            while (rs.next()) {
                int id = rs.getInt("product_id");
                String name = rs.getString("product_name");
                double price = rs.getDouble("price");
                int number = rs.getInt("number");
                double amount = price * number;
    %>
    <tr class="product-row">
        <td><input type="checkbox" class="product-checkbox" value="<%=id%>"></td>
        <td class="product-info">
            <span><%=name%></span>
        </td>
        <td class="product-price">¥<%=String.format("%.2f", price)%></td>
        <td class="quantity-container">
            <button class="quantity-minus" data-id="<%=id%>">-</button>
            <input type="number" value="<%=number%>" class="quantity-input" data-id="<%=id%>" data-price="<%=price%>">
            <button class="quantity-plus" data-id="<%=id%>">+</button>
        </td>
        <td class="product-amount">¥<%=String.format("%.2f", amount)%></td>
        <td class="product-operations">
            <div class="delete-btn" data-id="<%=id%>">删除</div>
        </td>
    </tr>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭数据库连接
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
    <tr class="shop-total-row">
        <td colspan="4">合计</td>
        <td class="shop-total-amount">¥0.00</td>
        <td></td>
    </tr>
    </tbody>
</table>

<div class="bottom-total">
    <button class="checkout-button">结 算</button>
</div>

<script>
    // 获取DOM元素
    const selectAllCheckbox = document.getElementById('selectAll');
    const shopTotalAmount = document.querySelector('.shop-total-amount');
    const checkoutButton = document.querySelector('.checkout-button');
	
    // 初始化计算合计金额
    updateTotalAmount();
    document.querySelectorAll('.quantity-minus, .quantity-plus').forEach(button => {
        button.addEventListener('click', function() {
            const input = this.parentElement.querySelector('.quantity-input');
            const productId = input.dataset.id;  
            const price = parseFloat(input.dataset.price);
            const amountElement = this.closest('.product-row').querySelector('.product-amount');

            let quantity = parseInt(input.value);

            if (this.classList.contains('quantity-minus') && quantity > 1) {
                quantity--;
            } else if (this.classList.contains('quantity-plus')) {
                quantity++;
            }

            // 更新UI
            input.value = quantity;
            const newAmount = (price * quantity).toFixed(2);
            amountElement.textContent = `¥${newAmount}`;

            // 确保参数有效
            console.log('准备更新: id=', productId, 'quantity=', quantity); // 调试日志
            
            // 更新数据库
            updateQuantity(productId, quantity);
            
            // 更新合计
            updateTotalAmount();
        });
    });

 // 绑定复选框事件
    const productCheckboxes = document.querySelectorAll('.product-checkbox');
    productCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function() {
            console.log('复选框状态变化:', this.checked); // 添加日志
            updateTotalAmount();
            checkAllCheckboxes();
        });
    });

    // 全选功能
    selectAllCheckbox.addEventListener('change', function() {
        productCheckboxes.forEach(checkbox => {
            checkbox.checked = this.checked;
        });
        updateTotalAmount();
    });

    

   

    // 计算选中商品的总价
    function updateTotalAmount() {
        let total = 0;

        document.querySelectorAll('.product-row').forEach(row => {
            const checkbox = row.querySelector('.product-checkbox');
            if (checkbox.checked) {
                const amountText = row.querySelector('.product-amount').textContent;
                const amount = parseFloat(amountText.slice(1));
                total += amount;
            }
        });

        shopTotalAmount.textContent = `¥${total.toFixed(2)}`;
    }

    // 更新全选框状态
    function updateSelectAllState() {
        const activeCheckboxes = document.querySelectorAll('.product-checkbox:enabled');
        const checkedCheckboxes = document.querySelectorAll('.product-checkbox:checked');

        if (activeCheckboxes.length === 0) {
            selectAllCheckbox.checked = false;
            selectAllCheckbox.disabled = true;
        } else {
            selectAllCheckbox.disabled = false;
            selectAllCheckbox.checked = activeCheckboxes.length === checkedCheckboxes.length;
        }
    }

    // 检查所有商品复选框状态，更新全选框状态
    function checkAllCheckboxes() {
        const productCheckboxes = document.querySelectorAll('.product-checkbox');
        const allChecked = Array.from(productCheckboxes).every(checkbox => checkbox.checked);
        selectAllCheckbox.checked = allChecked;
    }

 	// 更新商品数量
    function updateQuantity(productId, quantity) {
        // 验证参数
        if (!productId || isNaN(quantity)) {
            console.error('无效参数:', {productId, quantity});
            return;
        }
        
        // 编码参数
        const params = new URLSearchParams();
        params.append('id', productId);
        params.append('quantity', quantity);
        
        // 使用POST请求
        fetch('updateQuantity.jsp', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: params
        })
        .then(response => {
            if (!response.ok) throw new Error('网络响应不正常');
            return response.text();
        })
        .then(data => {
            console.log('更新响应:', data);
            // 修复判断逻辑
            if (data === 'success') {
                console.log('更新成功');
            } else {
                alert('更新成功: ' + data);
            }
        })
        .catch(error => {
            console.error('更新错误:', error);
            alert('更新失败: ' + error.message);
        });
    }
 
 	// 删除功能
	document.querySelectorAll('.delete-btn').forEach(button => {
    button.addEventListener('click', function() {
        if (confirm('确定要删除该商品吗？')) {
            const productId = this.getAttribute('data-id'); 
            console.log('删除按钮点击，ID:', productId);  // 确认这个ID是否正确
            
            if (!productId) {
                alert('错误：商品ID无效');
                return;
            }
            
            // 从数据库删除
            deleteProduct(productId)
                .then(() => {
                    console.log('后端删除成功，移除UI元素');
                    const productRow = this.closest('.product-row');
                    if (productRow) {
                        productRow.remove();
                        updateTotalAmount();
                        updateSelectAllState();
                    }
                })
                .catch(error => {
                    alert('删除失败: ' + error);
                });
        	}
    	});
	});

	function deleteProduct(productId) {
	    console.log('发送删除请求，商品ID:', productId);
	    return fetch('deleteProduct.jsp?id=' + encodeURIComponent(productId), {
	        method: 'GET',  // 确保与后端一致
	        headers: {
	            'Content-Type': 'application/x-www-form-urlencoded',
	        }
	    })
	    .then(response => {
	        if (!response.ok) {
	            // 获取更多错误信息
	            return response.text().then(text => {
	                throw new Error(`HTTP ${response.status}: ${text}`);
	            });
	        }
	        return response.text();
	    })
	    .then(data => {
	        console.log('删除操作响应:', data);
	        if (data.trim() === "success") {  // 添加trim()处理可能的空白字符
	            return true;
	        } else {
	            throw new Error(data);
	        }
	    });
	}
	
	// 结算功能
	checkoutButton.addEventListener('click', function() {
	    // 获取所有选中的商品复选框
	    const selectedCheckboxes = document.querySelectorAll('.product-checkbox:checked');
	    
	    // 验证是否有选中的商品
	    if (selectedCheckboxes.length === 0) {
	        alert('请选择要结算的商品');
	        return;
	    }
	    
	    // 提取选中商品的ID
	    const selectedProducts = Array.from(selectedCheckboxes).map(checkbox => {
	        const productId = checkbox.value;
	        console.log('选中的商品ID:', productId);
	        return productId;
	    });
	    
	    if (confirm('确定要结算选中的商品吗？')) {
	        console.log('发送结算请求，商品ID:', selectedProducts);
	        checkout(selectedProducts)
	            .then(() => {
	                alert('结算成功！');
	                location.reload();
	            })
	            .catch(error => {
	                console.error('结算失败:', error);
	                alert('结算失败: ' + error);
	            });
	    }
	});

	// 结算函数
	function checkout(productIds) {
    if (!productIds || productIds.length === 0) {
        throw new Error('没有选中的商品');
    }
    
    // 改为 URL 编码形式
    const params = new URLSearchParams();
    productIds.forEach(id => params.append('productIds', id));
    
    return fetch('checkout.jsp', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: params.toString()
    })
    .then(response => {
        if (!response.ok) {
            return response.text().then(text => {
                throw new Error(`HTTP错误 ${response.status}: ${text}`);
            });
        }
        return response.text();
    })
    .then(data => {
        if (data.trim() === 'success') {
            return true;
        } else {
            throw new Error(data);
        }
    });
	}
</script>
</body>
</html>