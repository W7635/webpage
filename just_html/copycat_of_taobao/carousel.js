const carousel = document.querySelector('.carousel');
const figures = carousel.querySelectorAll('figure');
let currentFigure = 0;
const intervalTime = 2000; // 轮播间隔时间，单位毫秒 
// 切换到下一张图片 
function nextSlide() {
    const nextIndex = currentFigure === figures.length - 1 ? 0 : currentFigure + 1;
    figures[nextIndex].classList.add('show');
    figures[currentFigure].classList.remove('show');
    currentFigure = nextIndex;
}
// 开始轮播 
function startCarousel() { 
	setInterval(nextSlide, intervalTime); // 每隔intervalTime毫秒切换一次图片
}
startCarousel(); // 在页面加载完成后开始轮播