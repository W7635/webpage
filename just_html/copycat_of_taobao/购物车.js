// 获取DOM元素 
var subtractBtn = document.getElementById('subtract');
var addBtn = document.getElementById('add');
var quantityInput = document.getElementById('quantity');
 
// 设置最小数量为1 
var minQuantity = 1;
 
// 函数：增加数量 
function increaseQuantity() {
  var currentQuantity = parseInt(quantityInput.value, 10);
  if (currentQuantity < 10) {
    quantityInput.value = currentQuantity + 1;
  }
}
// 函数：减少数量 
function decreaseQuantity() {
  var currentQuantity = parseInt(quantityInput.value, 10);
  if (currentQuantity > minQuantity) {
    quantityInput.value = currentQuantity - 1;
  }
}
 
// 绑定事件监听器 
subtractBtn.addEventListener('click', decreaseQuantity);
addBtn.addEventListener('click', increaseQuantity);