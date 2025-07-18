<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页（管理员）</title>
    <link rel="stylesheet" href="CSS/首页.css">
    <base target="_blank" />
    <style>
        body {
            margin: 0; /* 移除默认边距 */
            text-align: center; /* 使行内元素（如 img）水平居中 */
            overflow: scroll;
            font-family: "SimSun", "宋体", serif;
        }
    </style>
</head>
<body>
<div class="img-container">
    <img src="picture/首页横幅.jpg" alt="首页横幅">
</div>
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
    <label class="label_denglu">
    	欢迎光临当当，***********<!--实际需要根据登录时使用的手机号显示-->
    	<a href="首页.jsp" target="_self">退出登录</a>&nbsp;
    	<a href="index.jsp" style="text-decoration: none;color: black;">用户名单</a>
	</label>
    <a href="购物车.jsp" class="a_gouwuche">|购物车</a>
    <a href="我的订单.jsp" class="a_wodedingdan">|我的订单</a>
</div>
<img src="picture/logo.png" style="position: absolute;left:5%;top: 45%;" alt="">
<form action="/search" method="get">
    <input type="text" name="search" placeholder="小刺猬阿奈家的24小时" class="search_input">
    <button type="submit" class="search_btn">搜索</button>
</form>
<label class="label_fenlei">全部商品分类</label>
<hr class="orange-line">
<div class="category-container">
    <div class="left-panel">
        <!-- 每个主分类和对应的右侧面板包装在一个容器中 -->
        <div class="category-item">
            <div class="main-category">图书、童书</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">排行榜</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">图书畅销榜</div>
                        <div class="subcategory-item">新书热卖榜</div>
                        <div class="subcategory-item">童书榜</div>
                        <div class="subcategory-item">热搜榜</div>
                        <div class="subcategory-item">好评榜</div>
                        <div class="subcategory-item">飘升榜</div>
                        <div class="subcategory-item">特价榜</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">童书</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">0-2岁</div>
                        <div class="subcategory-item">3-6岁</div>
                        <div class="subcategory-item">7-10岁</div>
                        <div class="subcategory-item">11-14岁</div>
                        <div class="subcategory-item">绘本</div>
                        <div class="subcategory-item">中国儿童文学</div>
                        <div class="subcategory-item">外国儿童文学</div>
                        <div class="subcategory-item">科普/百科</div>
                        <div class="subcategory-item">婴儿读物</div>
                        <div class="subcategory-item">幼儿启蒙</div>
                        <div class="subcategory-item">益智游戏</div>
                        <div class="subcategory-item">玩具书</div>
                        <div class="subcategory-item">动漫/卡通</div>
                        <div class="subcategory-item">少儿英语</div>
                        <div class="subcategory-item">进口儿童书</div>
                        <div class="subcategory-item">少儿期刊</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">教育</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">中小学用书</div>
                        <div class="subcategory-item">考试</div>
                        <div class="subcategory-item">大中专教材</div>
                        <div class="subcategory-item">外语</div>
                        <div class="subcategory-item">工具书</div>
                        <div class="subcategory-item">教师用书</div>
                        <div class="subcategory-item">新概念</div>
                        <div class="subcategory-item">中小学阅读</div>
                        <div class="subcategory-item">英语四级</div>
                        <div class="subcategory-item">英语六级</div>
                        <div class="subcategory-item">考研</div>
                        <div class="subcategory-item">公务员</div>
                        <div class="subcategory-item">教师资格考试</div>
                        <div class="subcategory-item">教具</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">文艺</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">小说</div>
                        <div class="subcategory-item">文学</div>
                        <div class="subcategory-item">传记</div>
                        <div class="subcategory-item">青春文学</div>
                        <div class="subcategory-item">动漫/幽默</div>
                        <div class="subcategory-item">艺术</div>
                        <div class="subcategory-item">摄影</div>
                        <div class="subcategory-item">偶像明星</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">人文社科</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">哲学宗教</div>
                        <div class="subcategory-item">历史</div>
                        <div class="subcategory-item">军事</div>
                        <div class="subcategory-item">文化</div>
                        <div class="subcategory-item">社会科学</div>
                        <div class="subcategory-item">心理学</div>
                        <div class="subcategory-item">古籍</div>
                        <div class="subcategory-item">法律</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">生活</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">两性</div>
                        <div class="subcategory-item">孕期</div>
                        <div class="subcategory-item">育儿</div>
                        <div class="subcategory-item">亲子家教</div>
                        <div class="subcategory-item">保健</div>
                        <div class="subcategory-item">运动</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">经营</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">经济</div>
                        <div class="subcategory-item">管理</div>
                        <div class="subcategory-item">投资理财</div>
                        <div class="subcategory-item">股票</div>
                        <div class="subcategory-item">金融</div>
                        <div class="subcategory-item">市场</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">科技</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">科普读物</div>
                        <div class="subcategory-item">计算机/网络</div>
                        <div class="subcategory-item">医学</div>
                        <div class="subcategory-item">工业技术</div>
                        <div class="subcategory-item">建筑</div>
                        <div class="subcategory-item">自然科学</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">当当出版</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">小说</div>
                        <div class="subcategory-item">文学</div>
                        <div class="subcategory-item">社科</div>
                        <div class="subcategory-item">外语</div>
                        <div class="subcategory-item">教辅</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">电子书</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">排行榜</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">畅销总榜</div>
                        <div class="subcategory-item">新书榜</div>
                        <div class="subcategory-item">文艺小说榜</div>
                        <div class="subcategory-item">及经管励志榜</div>
                        <div class="subcategory-item">社科历史榜</div>
                        <div class="subcategory-item">科教榜</div>
                        <div class="subcategory-item">生活榜</div>
                    </div>
                    <div class="subcategory-title">特价</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">免费书</div>
                        <div class="subcategory-item">特价书</div>
                        <div class="subcategory-item">限时抢</div>
                    </div>
                    <div class="subcategory-title">小说</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">侦探/悬疑/推理</div>
                        <div class="subcategory-item">玄幻/惊悚</div>
                        <div class="subcategory-item">中国近当代小说</div>
                        <div class="subcategory-item">中国古典小说</div>
                        <div class="subcategory-item">武侠小说</div>
                        <div class="subcategory-item">外国小说</div>
                        <div class="subcategory-item">穿越/言情</div>
                        <div class="subcategory-item">爱情/情感</div>
                        <div class="subcategory-item">影视/娱乐</div>
                    </div>
                    <div class="subcategory-title">文艺</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">传记</div>
                        <div class="subcategory-item">文学评论与鉴赏</div>
                        <div class="subcategory-item">随笔</div>
                        <div class="subcategory-item">文学作品集</div>
                        <div class="subcategory-item">纪实文学</div>
                        <div class="subcategory-item">艺术</div>
                        <div class="subcategory-item">摄影</div>
                    </div>
                    <div class="subcategory-title">经管</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">成功/励志</div>
                        <div class="subcategory-item">管理</div>
                        <div class="subcategory-item">投资理财</div>
                        <div class="subcategory-item">经济</div>
                    </div>
                    <div class="subcategory-title">社科</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">历史</div>
                        <div class="subcategory-item">心理学</div>
                        <div class="subcategory-item">哲学</div>
                        <div class="subcategory-item">政治/军事</div>
                        <div class="subcategory-item">社会科学</div>
                        <div class="subcategory-item">古籍</div>
                        <div class="subcategory-item">法律</div>
                    </div>
                    <div class="subcategory-title">生活</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">亲子/家教</div>
                        <div class="subcategory-item">育儿/早教</div>
                        <div class="subcategory-item">两性关系</div>
                        <div class="subcategory-item">孕产/胎教</div>
                        <div class="subcategory-item">保健/养生</div>
                        <div class="subcategory-item">旅游/地图</div>
                        <div class="subcategory-item">烹饪/美食</div>
                        <div class="subcategory-item">时尚/美妆</div>
                        <div class="subcategory-item">手工/DIY</div>
                        <div class="subcategory-item">家庭/家居</div>
                    </div>
                    <div class="subcategory-title">科教/进口书</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">计算机/网络</div>
                        <div class="subcategory-item">医学</div>
                        <div class="subcategory-item">考试</div>
                        <div class="subcategory-item">外语</div>
                        <div class="subcategory-item">中小学教辅</div>
                        <div class="subcategory-item">大中专教材</div>
                        <div class="subcategory-item">工具书</div>
                        <div class="subcategory-item">童书</div>
                        <div class="subcategory-item">进口书</div>
                    </div>
                    <div class="subcategory-title">下载app</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">安卓版</div>
                        <div class="subcategory-item">ios版</div>
                    </div>
                    <div class="subcategory-title">管理电子书</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">管理我的书架</div>
                        <div class="subcategory-item">查看我的账户</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">创意文具</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">学生文具</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">笔袋/文具袋</div>
                        <div class="subcategory-item">笔袋/文具袋</div>
                        <div class="subcategory-item">文具盒</div>
                        <div class="subcategory-item">卷笔刀/削笔刀</div>
                        <div class="subcategory-item">练字帖/练字板</div>
                        <div class="subcategory-item">树皮</div>
                        <div class="subcategory-item">视力保护器</div>
                        <div class="subcategory-item">握笔器</div>
                        <div class="subcategory-item">橡皮</div>
                        <div class="subcategory-item">修正液/修正带/修正贴</div>
                        <div class="subcategory-item">学生用印/卡通印泥</div>
                        <div class="subcategory-item">彩泥</div>
                        <div class="subcategory-item">橡皮泥</div>
                        <div class="subcategory-item">学生用尺</div>
                        <div class="subcategory-item">礼盒套装</div>
                        <div class="subcategory-item">圆规</div>
                        <div class="subcategory-item">书包</div>
                        <div class="subcategory-item">地球仪</div>
                        <div class="subcategory-item">儿童DIY</div>
                        <div class="subcategory-item">其他</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">笔类</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">钢笔</div>
                        <div class="subcategory-item">签字笔</div>
                        <div class="subcategory-item">圆珠笔</div>
                        <div class="subcategory-item">中性笔</div>
                        <div class="subcategory-item">铅笔</div>
                        <div class="subcategory-item">记号笔</div>
                        <div class="subcategory-item">马克笔</div>
                        <div class="subcategory-item">泡泡笔</div>
                        <div class="subcategory-item">荧光笔</div>
                        <div class="subcategory-item">油漆笔</div>
                        <div class="subcategory-item">正姿笔</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">纸张本册</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">笔记本/记事本</div>
                        <div class="subcategory-item">不干胶标签/贴纸</div>
                        <div class="subcategory-item">包装纸</div>
                        <div class="subcategory-item">分页纸/索引纸</div>
                        <div class="subcategory-item">复写纸</div>
                        <div class="subcategory-item">活页替芯</div>
                        <div class="subcategory-item">课业本/教学用本</div>
                        <div class="subcategory-item">日记本</div>
                        <div class="subcategory-item">书签</div>
                        <div class="subcategory-item">同学录/纪念册</div>
                        <div class="subcategory-item">通讯录/电话本</div>
                        <div class="subcategory-item">文稿纸/草稿纸</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">画具/画材</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">勾线笔</div>
                        <div class="subcategory-item">水彩笔</div>
                        <div class="subcategory-item">蜡笔</div>
                        <div class="subcategory-item">油画棒</div>
                        <div class="subcategory-item">丙烯颜料</div>
                        <div class="subcategory-item">水彩颜料</div>
                        <div class="subcategory-item">水粉颜料</div>
                        <div class="subcategory-item">画板/画架</div>
                        <div class="subcategory-item">绘图/白图纸</div>
                        <div class="subcategory-item">描图/硫酸纸</div>
                        <div class="subcategory-item">毛边纸</div>
                        <div class="subcategory-item">铅画纸</div>
                        <div class="subcategory-item">素描/速写本</div>
                        <div class="subcategory-item">书法用纸</div>
                        <div class="subcategory-item">水写布</div>
                        <div class="subcategory-item">宣纸</div>
                        <div class="subcategory-item">字帖临幕纸</div>
                        <div class="subcategory-item">儿童填色本</div>
                        <div class="subcategory-item">毛笔</div>
                        <div class="subcategory-item">其他</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">文房用品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">镇纸</div>
                        <div class="subcategory-item">印泥</div>
                        <div class="subcategory-item">笔挂</div>
                        <div class="subcategory-item">章料</div>
                        <div class="subcategory-item">笔筒</div>
                        <div class="subcategory-item">笔架/笔搁</div>
                        <div class="subcategory-item">笔洗</div>
                        <div class="subcategory-item">毛毡</div>
                        <div class="subcategory-item">印床</div>
                        <div class="subcategory-item">刻刀</div>
                        <div class="subcategory-item">墨汁</div>
                        <div class="subcategory-item">墨条</div>
                        <div class="subcategory-item">砚台</div>
                        <div class="subcategory-item">文房四宝</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">办公用品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">笔架/笔插/笔筒</div>
                        <div class="subcategory-item">档案盒/档案袋</div>
                        <div class="subcategory-item">风琴包/事务包</div>
                        <div class="subcategory-item">挂状旁夹</div>
                        <div class="subcategory-item">卡套/证件套</div>
                        <div class="subcategory-item">文件夹/文件袋</div>
                        <div class="subcategory-item">名片盒/名片册</div>
                        <div class="subcategory-item">胶粘用品</div>
                        <div class="subcategory-item">计算器</div>
                        <div class="subcategory-item">书立/阅读架</div>
                        <div class="subcategory-item">相册</div>
                        <div class="subcategory-item">资料册</div>
                        <div class="subcategory-item">裁剪用品</div>
                        <div class="subcategory-item">装订用品</div>
                        <div class="subcategory-item">绘图测量用品</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">服饰、内衣</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">女装</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">连衣裙</div>
                        <div class="subcategory-item">T恤</div>
                        <div class="subcategory-item">衬衫</div>
                        <div class="subcategory-item">外套</div>
                        <div class="subcategory-item">卫衣</div>
                        <div class="subcategory-item">风衣</div>
                        <div class="subcategory-item">羊绒</div>
                        <div class="subcategory-item">半身裙</div>
                        <div class="subcategory-item">裤装</div>
                        <div class="subcategory-item">休闲裤</div>
                        <div class="subcategory-item">牛仔裤</div>
                        <div class="subcategory-item">套装</div>
                        <div class="subcategory-item">西装</div>
                        <div class="subcategory-item">短裤</div>
                        <div class="subcategory-item">毛呢大衣</div>
                        <div class="subcategory-item">针织毛衣</div>
                        <div class="subcategory-item">羽绒服</div>
                        <div class="subcategory-item">真丝</div>
                        <div class="subcategory-item">少女装</div>
                        <div class="subcategory-item">少淑装</div>
                        <div class="subcategory-item">淑女装</div>
                        <div class="subcategory-item">成熟女装</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">男装</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">卫衣</div>
                        <div class="subcategory-item">夹克</div>
                        <div class="subcategory-item">休闲裤</div>
                        <div class="subcategory-item">牛仔裤</div>
                        <div class="subcategory-item">长袖T恤</div>
                        <div class="subcategory-item">长袖衬衫</div>
                        <div class="subcategory-item">针织衫</div>
                        <div class="subcategory-item">风衣</div>
                        <div class="subcategory-item">毛呢大衣</div>
                        <div class="subcategory-item">皮衣</div>
                        <div class="subcategory-item">外套</div>
                        <div class="subcategory-item">短袖T恤</div>
                        <div class="subcategory-item">polo衫</div>
                        <div class="subcategory-item">短袖衬衫</div>
                        <div class="subcategory-item">短裤</div>
                        <div class="subcategory-item">西服</div>
                        <div class="subcategory-item">西裤</div>
                        <div class="subcategory-item">西服套装</div>
                        <div class="subcategory-item">羽绒服</div>
                        <div class="subcategory-item">青春</div>
                        <div class="subcategory-item">商务</div>
                        <div class="subcategory-item">休闲</div>
                        <div class="subcategory-item">潮牌</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">内衣</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">男士家居服</div>
                        <div class="subcategory-item">女士家居服</div>
                        <div class="subcategory-item">睡裙</div>
                        <div class="subcategory-item">浴袍</div>
                        <div class="subcategory-item">秋衣秋裤</div>
                        <div class="subcategory-item">文胸</div>
                        <div class="subcategory-item">文胸套装</div>
                        <div class="subcategory-item">抹胸</div>
                        <div class="subcategory-item">女士内裤</div>
                        <div class="subcategory-item">男士内裤</div>
                        <div class="subcategory-item">打底裤</div>
                        <div class="subcategory-item">女袜</div>
                        <div class="subcategory-item">男袜</div>
                        <div class="subcategory-item">棉袜</div>
                        <div class="subcategory-item">连裤袜</div>
                        <div class="subcategory-item">塑身衣</div>
                        <div class="subcategory-item">背心</div>
                        <div class="subcategory-item">吊带</div>
                        <div class="subcategory-item">女士保暖</div>
                        <div class="subcategory-item">男士保暖</div>
                        <div class="subcategory-item">保暖套装</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">服饰配件</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">太阳镜</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">童装童鞋</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">长袖T恤</div>
                        <div class="subcategory-item">裤子</div>
                        <div class="subcategory-item">连衣裙</div>
                        <div class="subcategory-item">卫衣</div>
                        <div class="subcategory-item">衬衫</div>
                        <div class="subcategory-item">套装</div>
                        <div class="subcategory-item">打底裤</div>
                        <div class="subcategory-item">针织衫</div>
                        <div class="subcategory-item">外套</div>
                        <div class="subcategory-item">背心</div>
                        <div class="subcategory-item">内衣家居</div>
                        <div class="subcategory-item">儿童袜子</div>
                        <div class="subcategory-item">配饰/用品</div>
                        <div class="subcategory-item">羽绒服</div>
                        <div class="subcategory-item">运动/户外鞋</div>
                        <div class="subcategory-item">休闲鞋</div>
                        <div class="subcategory-item">帆布鞋/板鞋</div>
                        <div class="subcategory-item">小白鞋</div>
                        <div class="subcategory-item">皮鞋</div>
                        <div class="subcategory-item">学步鞋</div>
                        <div class="subcategory-item">凉鞋</div>
                        <div class="subcategory-item">拖鞋</div>
                        <div class="subcategory-item">棉鞋</div>
                        <div class="subcategory-item">靴子</div>
                        <div class="subcategory-item">婴儿服饰</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">鞋靴</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">女鞋</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">帆布鞋</div>
                        <div class="subcategory-item">老爹鞋</div>
                        <div class="subcategory-item">小白鞋</div>
                        <div class="subcategory-item">凉鞋</div>
                        <div class="subcategory-item">玛丽珍鞋</div>
                        <div class="subcategory-item">时尚布鞋</div>
                        <div class="subcategory-item">平底鞋</div>
                        <div class="subcategory-item">休闲鞋</div>
                        <div class="subcategory-item">单鞋</div>
                        <div class="subcategory-item">豆豆鞋</div>
                        <div class="subcategory-item">低跟鞋</div>
                        <div class="subcategory-item">坡跟鞋</div>
                        <div class="subcategory-item">高跟鞋</div>
                        <div class="subcategory-item">乐福鞋</div>
                        <div class="subcategory-item">妈妈鞋</div>
                        <div class="subcategory-item">拖鞋</div>
                        <div class="subcategory-item">短靴</div>
                        <div class="subcategory-item">女靴</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">男鞋</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">户外休闲</div>
                        <div class="subcategory-item">网面鞋</div>
                        <div class="subcategory-item">乐福鞋</div>
                        <div class="subcategory-item">正装皮鞋</div>
                        <div class="subcategory-item">运动休闲</div>
                        <div class="subcategory-item">工装鞋</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">童鞋</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">休闲鞋</div>
                        <div class="subcategory-item">运动/户外鞋</div>
                        <div class="subcategory-item">棉鞋</div>
                        <div class="subcategory-item">雪地靴</div>
                        <div class="subcategory-item">帆布鞋/板鞋</div>
                        <div class="subcategory-item">皮鞋</div>
                        <div class="subcategory-item">拖鞋</div>
                        <div class="subcategory-item">学步鞋</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">运动户外</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">运动鞋服</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">跑步鞋</div>
                        <div class="subcategory-item">休闲鞋/板鞋</div>
                        <div class="subcategory-item">篮球鞋</div>
                        <div class="subcategory-item">羽绒服</div>
                        <div class="subcategory-item">运动棉服</div>
                        <div class="subcategory-item">夹克/外套</div>
                        <div class="subcategory-item">卫衣</div>
                        <div class="subcategory-item">运动裤</div>
                        <div class="subcategory-item">运动T恤</div>
                        <div class="subcategory-item">POLO衫</div>
                        <div class="subcategory-item">运动套装</div>
                        <div class="subcategory-item">帆布鞋</div>
                        <div class="subcategory-item">综训鞋</div>
                        <div class="subcategory-item">运动包</div>
                        <div class="subcategory-item">运动配件</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">户外鞋服</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">冲锋衣裤</div>
                        <div class="subcategory-item">户外羽绒服/棉服</div>
                        <div class="subcategory-item">皮肤风衣</div>
                        <div class="subcategory-item">速干衣裤</div>
                        <div class="subcategory-item">软壳/抓绒衣裤</div>
                        <div class="subcategory-item">功能内衣</div>
                        <div class="subcategory-item">帽子手套</div>
                        <div class="subcategory-item">登山鞋</div>
                        <div class="subcategory-item">溯溪鞋</div>
                        <div class="subcategory-item">徒步鞋</div>
                        <div class="subcategory-item">沙滩鞋</div>
                        <div class="subcategory-item">越野跑鞋</div>
                        <div class="subcategory-item">户外袜子</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">户外装备</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">帐篷</div>
                        <div class="subcategory-item">户外背包</div>
                        <div class="subcategory-item">防潮垫/野餐垫</div>
                        <div class="subcategory-item">野炊/烧烤</div>
                        <div class="subcategory-item">折叠家具</div>
                        <div class="subcategory-item">照明工具</div>
                        <div class="subcategory-item">水具/水壶</div>
                        <div class="subcategory-item">睡袋</div>
                        <div class="subcategory-item">头巾/手杖</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">健身器材</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">踏步机/健身车</div>
                        <div class="subcategory-item">仰卧板</div>
                        <div class="subcategory-item">健身小器械</div>
                        <div class="subcategory-item">滑板</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">体育娱乐</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">篮球</div>
                        <div class="subcategory-item">羽毛球</div>
                        <div class="subcategory-item">足球</div>
                        <div class="subcategory-item">棋牌麻将</div>
                        <div class="subcategory-item">轮滑鞋</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">垂钓用品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">鱼竿</div>
                        <div class="subcategory-item">鱼钩鱼线</div>
                        <div class="subcategory-item">钓箱鱼包</div>
                        <div class="subcategory-item">钓鱼桌椅</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">瑜伽运动</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">瑜伽服</div>
                        <div class="subcategory-item">瑜伽垫</div>
                        <div class="subcategory-item">瑜伽配件</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">水上运动</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">女士泳衣</div>
                        <div class="subcategory-item">泳裤</div>
                        <div class="subcategory-item">儿童泳衣</div>
                        <div class="subcategory-item">泳镜</div>
                        <div class="subcategory-item">泳帽</div>
                        <div class="subcategory-item">潜水装备</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">孕、婴、童</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">童装</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">T恤</div>
                        <div class="subcategory-item">裤子</div>
                        <div class="subcategory-item">连衣裙</div>
                        <div class="subcategory-item">外套</div>
                        <div class="subcategory-item">套装</div>
                        <div class="subcategory-item">卫衣</div>
                        <div class="subcategory-item">衬衫</div>
                        <div class="subcategory-item">内衣家居</div>
                        <div class="subcategory-item">针织衫</div>
                        <div class="subcategory-item">背心</div>
                        <div class="subcategory-item">儿童袜子</div>
                        <div class="subcategory-item">羽绒服</div>
                        <div class="subcategory-item">配饰用品</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">童鞋</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">运动/户外鞋</div>
                        <div class="subcategory-item">帆布鞋/板鞋</div>
                        <div class="subcategory-item">凉鞋</div>
                        <div class="subcategory-item">休闲鞋</div>
                        <div class="subcategory-item">小白鞋</div>
                        <div class="subcategory-item">拖鞋</div>
                        <div class="subcategory-item">儿童雨鞋</div>
                        <div class="subcategory-item">学步鞋</div>
                        <div class="subcategory-item">皮鞋</div>
                        <div class="subcategory-item">棉鞋</div>
                        <div class="subcategory-item">雪地靴</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">婴儿服饰</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">婴儿内衣</div>
                        <div class="subcategory-item">外出服</div>
                        <div class="subcategory-item">婴儿连体衣</div>
                        <div class="subcategory-item">婴儿裤子</div>
                        <div class="subcategory-item">宝贝哈服</div>
                        <div class="subcategory-item">婴儿帽袜</div>
                        <div class="subcategory-item">口水巾/围嘴</div>
                        <div class="subcategory-item">婴儿礼盒</div>
                        <div class="subcategory-item">配饰、用品</div>
                        <div class="subcategory-item">内衣/家居服</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">童书</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">0-2岁</div>
                        <div class="subcategory-item">3-6岁</div>
                        <div class="subcategory-item">7-10岁</div>
                        <div class="subcategory-item">11-14岁</div>
                        <div class="subcategory-item">中国儿童文学</div>
                        <div class="subcategory-item">外国儿童文学</div>
                        <div class="subcategory-item">精装图画书</div>
                        <div class="subcategory-item">平装图画书</div>
                        <div class="subcategory-item">科普/百科</div>
                        <div class="subcategory-item">婴儿读物</div>
                        <div class="subcategory-item">幼儿启蒙</div>
                        <div class="subcategory-item">益智游戏</div>
                        <div class="subcategory-item">玩具书</div>
                        <div class="subcategory-item">动漫/卡通</div>
                        <div class="subcategory-item">少儿英语</div>
                        <div class="subcategory-item">励志/成长</div>
                        <div class="subcategory-item">进口儿童书</div>
                        <div class="subcategory-item">少儿期刊</div>
                        <div class="subcategory-item">阅读工具书</div>
                        <div class="subcategory-item">更多</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">尿裤湿巾</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">NB</div>
                        <div class="subcategory-item">S</div>
                        <div class="subcategory-item">M</div>
                        <div class="subcategory-item">L</div>
                        <div class="subcategory-item">XL</div>
                        <div class="subcategory-item">XXL</div>
                        <div class="subcategory-item">拉拉裤</div>
                        <div class="subcategory-item">婴儿湿巾</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">喂养用品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">奶瓶</div>
                        <div class="subcategory-item">奶嘴</div>
                        <div class="subcategory-item">消毒清洁</div>
                        <div class="subcategory-item">辅食料理</div>
                        <div class="subcategory-item">牙胶安抚</div>
                        <div class="subcategory-item">食物存储</div>
                        <div class="subcategory-item">儿童餐具</div>
                        <div class="subcategory-item">水杯/水壶</div>
                        <div class="subcategory-item">围兜/罩衣</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">洗护用品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">洗发沐浴</div>
                        <div class="subcategory-item">洗澡用具</div>
                        <div class="subcategory-item">洗衣/清洁</div>
                        <div class="subcategory-item">理发器</div>
                        <div class="subcategory-item">口腔护理</div>
                        <div class="subcategory-item">坐便器</div>
                        <div class="subcategory-item">驱蚊用品</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">宝宝寝居</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">凉席/蚊帐</div>
                        <div class="subcategory-item">睡袋/抱被</div>
                        <div class="subcategory-item">盖毯/被子</div>
                        <div class="subcategory-item">床品床围</div>
                        <div class="subcategory-item">毛巾/浴巾</div>
                        <div class="subcategory-item">枕头枕套</div>
                        <div class="subcategory-item">安全防护</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">玩具</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">婴幼玩具</div>
                        <div class="subcategory-item">早教益智</div>
                        <div class="subcategory-item">积木拼插</div>
                        <div class="subcategory-item">遥控电动</div>
                        <div class="subcategory-item">模型玩具</div>
                        <div class="subcategory-item">运动户外玩具</div>
                        <div class="subcategory-item">娃娃</div>
                        <div class="subcategory-item">毛绒玩具</div>
                        <div class="subcategory-item">创意减压</div>
                        <div class="subcategory-item">绘画手工</div>
                        <div class="subcategory-item">学生用品</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">妈妈专区</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">孕妇装</div>
                        <div class="subcategory-item">待产护理</div>
                        <div class="subcategory-item">产后塑身</div>
                        <div class="subcategory-item">孕产妇内衣</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">童车童床</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">婴儿推车</div>
                        <div class="subcategory-item">学步车</div>
                        <div class="subcategory-item">安全座椅</div>
                        <div class="subcategory-item">三轮车</div>
                        <div class="subcategory-item">电动车</div>
                        <div class="subcategory-item">扭扭车</div>
                        <div class="subcategory-item">儿童自行车</div>
                        <div class="subcategory-item">滑板车</div>
                        <div class="subcategory-item">轮滑鞋</div>
                        <div class="subcategory-item">婴儿床</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">家居、家纺、汽车</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">家纺</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">床品套件</div>
                        <div class="subcategory-item">酒店床品</div>
                        <div class="subcategory-item">轻奢床品</div>
                        <div class="subcategory-item">床单/被罩</div>
                        <div class="subcategory-item">儿童床品</div>
                        <div class="subcategory-item">床垫/床褥</div>
                        <div class="subcategory-item">靠垫/坐垫</div>
                        <div class="subcategory-item">枕芯</div>
                        <div class="subcategory-item">毛巾/浴巾</div>
                        <div class="subcategory-item">家居鞋</div>
                        <div class="subcategory-item">夏被</div>
                        <div class="subcategory-item">凉席</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">时尚家饰</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">地毯/地垫</div>
                        <div class="subcategory-item">沙发垫</div>
                        <div class="subcategory-item">窗帘/浴帘</div>
                        <div class="subcategory-item">桌布/罩件</div>
                        <div class="subcategory-item">挂钟/闹钟</div>
                        <div class="subcategory-item">墙壁装饰</div>
                        <div class="subcategory-item">摆饰/挂件</div>
                        <div class="subcategory-item">节庆/婚庆用品</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">水具</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">塑料杯</div>
                        <div class="subcategory-item">玻璃杯</div>
                        <div class="subcategory-item">保温杯</div>
                        <div class="subcategory-item">保温壶</div>
                        <div class="subcategory-item">儿童水杯</div>
                        <div class="subcategory-item">陶瓷/马克杯</div>
                        <div class="subcategory-item">茶具</div>
                        <div class="subcategory-item">酒具</div>
                        <div class="subcategory-item">咖啡具</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">厨具</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">炒锅</div>
                        <div class="subcategory-item">煎锅</div>
                        <div class="subcategory-item">蒸锅</div>
                        <div class="subcategory-item">压力锅</div>
                        <div class="subcategory-item">汤煲</div>
                        <div class="subcategory-item">汤锅</div>
                        <div class="subcategory-item">奶锅</div>
                        <div class="subcategory-item">套装锅</div>
                        <div class="subcategory-item">保鲜盒</div>
                        <div class="subcategory-item">刀剪菜板</div>
                        <div class="subcategory-item">碗盘餐具</div>
                        <div class="subcategory-item">厨房杂件</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">整理收纳</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">收纳柜</div>
                        <div class="subcategory-item">整理箱收纳盒</div>
                        <div class="subcategory-item">压缩袋防尘罩</div>
                        <div class="subcategory-item">置物架/篮</div>
                        <div class="subcategory-item">衣架/烫衣板</div>
                        <div class="subcategory-item">儿童收纳</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">清洁护理</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">清洁工具</div>
                        <div class="subcategory-item">保暖防护</div>
                        <div class="subcategory-item">垃圾桶/袋</div>
                        <div class="subcategory-item">一次性用品</div>
                        <div class="subcategory-item">卫浴用品</div>
                        <div class="subcategory-item">净化除味</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">居家日用</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">鲜花绿植</div>
                        <div class="subcategory-item">雨伞雨具</div>
                        <div class="subcategory-item">遮阳伞</div>
                        <div class="subcategory-item">家居礼品</div>
                        <div class="subcategory-item">口罩</div>
                        <div class="subcategory-item">眼罩</div>
                        <div class="subcategory-item">耳塞</div>
                        <div class="subcategory-item">手套</div>
                        <div class="subcategory-item">杀虫驱蚊</div>
                        <div class="subcategory-item">儿童雨具</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">健身瑜伽</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">瑜伽垫</div>
                        <div class="subcategory-item">瑜伽套装</div>
                        <div class="subcategory-item">瑜伽配件</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">宠物用品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">宠物食品</div>
                        <div class="subcategory-item">宠物食具</div>
                        <div class="subcategory-item">美容清洁</div>
                        <div class="subcategory-item">美容工具</div>
                        <div class="subcategory-item">窝垫/笼具</div>
                        <div class="subcategory-item">宠物牵引</div>
                        <div class="subcategory-item">宠物玩具</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">汽车用品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">坐垫脚垫</div>
                        <div class="subcategory-item">竹炭</div>
                        <div class="subcategory-item">雨刷</div>
                        <div class="subcategory-item">玻璃水</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">家具、家装、康体</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">客厅家具</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">沙发</div>
                        <div class="subcategory-item">茶几</div>
                        <div class="subcategory-item">鞋柜</div>
                        <div class="subcategory-item">电视柜</div>
                        <div class="subcategory-item">椅子凳子</div>
                        <div class="subcategory-item">餐桌</div>
                        <div class="subcategory-item">餐边柜</div>
                        <div class="subcategory-item">餐椅</div>
                        <div class="subcategory-item">酒柜</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">卧室家具</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">简易衣柜</div>
                        <div class="subcategory-item">大衣柜</div>
                        <div class="subcategory-item">床</div>
                        <div class="subcategory-item">床垫</div>
                        <div class="subcategory-item">梳妆台</div>
                        <div class="subcategory-item">斗柜</div>
                        <div class="subcategory-item">床头柜</div>
                        <div class="subcategory-item">童床</div>
                        <div class="subcategory-item">儿童床垫</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">书房家具</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">书柜书架</div>
                        <div class="subcategory-item">书桌</div>
                        <div class="subcategory-item">电脑桌椅</div>
                        <div class="subcategory-item">儿童学习桌椅</div>
                        <div class="subcategory-item">办公家具</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">储物家具</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">层架置物架</div>
                        <div class="subcategory-item">鞋架</div>
                        <div class="subcategory-item">衣帽架</div>
                        <div class="subcategory-item">墙面搁架</div>
                        <div class="subcategory-item">收纳家具</div>
                        <div class="subcategory-item">晾衣架</div>
                        <div class="subcategory-item">花架/装饰架</div>
                        <div class="subcategory-item">户外家具</div>
                        <div class="subcategory-item">家用梯</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">厨房卫浴</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">座便器</div>
                        <div class="subcategory-item">淋浴花洒</div>
                        <div class="subcategory-item">浴室柜</div>
                        <div class="subcategory-item">水槽</div>
                        <div class="subcategory-item">龙头</div>
                        <div class="subcategory-item">厨卫挂件</div>
                        <div class="subcategory-item">地漏</div>
                        <div class="subcategory-item">浴霸</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">灯具照明</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">花灯/吊灯/水晶灯</div>
                        <div class="subcategory-item">吸顶灯</div>
                        <div class="subcategory-item">阅读台灯</div>
                        <div class="subcategory-item">镜前灯</div>
                        <div class="subcategory-item">筒射灯</div>
                        <div class="subcategory-item">节能灯</div>
                        <div class="subcategory-item">装饰台灯</div>
                        <div class="subcategory-item">小夜灯</div>
                        <div class="subcategory-item">壁灯</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">家装建材</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">开关插座</div>
                        <div class="subcategory-item">插线板</div>
                        <div class="subcategory-item">手动工具</div>
                        <div class="subcategory-item">电动工具</div>
                        <div class="subcategory-item">家用五金</div>
                        <div class="subcategory-item">壁纸</div>
                        <div class="subcategory-item">仪器仪表</div>
                        <div class="subcategory-item">测量工具</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">食品、茶酒</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">休闲食品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">坚果/炒货</div>
                        <div class="subcategory-item">蜜饯果干</div>
                        <div class="subcategory-item">糖果/巧克力</div>
                        <div class="subcategory-item">饼干糕点</div>
                        <div class="subcategory-item">肉干肉脯</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">进口食品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">冲调饮品</div>
                        <div class="subcategory-item">牛奶</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">粮油调味</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">干货</div>
                        <div class="subcategory-item">米面杂粮</div>
                        <div class="subcategory-item">方便食品</div>
                        <div class="subcategory-item">有机食品</div>
                        <div class="subcategory-item">调味品</div>
                        <div class="subcategory-item">烘焙原料</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">茶/酒</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">白酒</div>
                        <div class="subcategory-item">葡萄酒</div>
                        <div class="subcategory-item">花草茶</div>
                        <div class="subcategory-item">普洱</div>
                        <div class="subcategory-item">红茶</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">冲调饮品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">牛奶乳品</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">果蔬肉蛋</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">蔬菜</div>
                        <div class="subcategory-item">禽肉蛋品</div>
                        <div class="subcategory-item">海鲜水产</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">营养成分</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">维生素</div>
                        <div class="subcategory-item">鱼油/磷脂</div>
                        <div class="subcategory-item">蛋白质</div>
                        <div class="subcategory-item">植物精华</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">滋补成品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">阿胶</div>
                        <div class="subcategory-item">蜂蜜/蜂产品</div>
                        <div class="subcategory-item">燕窝</div>
                        <div class="subcategory-item">石斛/枫斗</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="category-item">
            <div class="main-category">手机、数码、电脑办公</div>
            <div class="right-panel">
                <div class="subcategory-group">
                    <div class="subcategory-title">手机通讯</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">手机</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">手机配件</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">蓝牙耳机</div>
                        <div class="subcategory-item">手机耳机</div>
                        <div class="subcategory-item">充电器/数据线</div>
                        <div class="subcategory-item">手机保护套</div>
                        <div class="subcategory-item">手机电池</div>
                        <div class="subcategory-item">手机存储卡</div>
                        <div class="subcategory-item">车载配件</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">苹果/配件</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">iPad</div>
                        <div class="subcategory-item">Mac</div>
                        <div class="subcategory-item">iPhone配件</div>
                        <div class="subcategory-item">iPad配件</div>
                        <div class="subcategory-item">Mac配件</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">视听影音</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">耳机/耳麦</div>
                        <div class="subcategory-item">音箱</div>
                        <div class="subcategory-item">高清播放器</div>
                        <div class="subcategory-item">MP3/MP4</div>
                        <div class="subcategory-item">录音笔</div>
                        <div class="subcategory-item">阅读器</div>
                        <div class="subcategory-item">麦克风</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">数码配件</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">移动电源</div>
                        <div class="subcategory-item">自拍杆</div>
                        <div class="subcategory-item">数码车载配件</div>
                        <div class="subcategory-item">电池/充电器</div>
                        <div class="subcategory-item">读卡器</div>
                        <div class="subcategory-item">摄影配件</div>
                        <div class="subcategory-item">数码包</div>
                        <div class="subcategory-item">三脚架/云台</div>
                        <div class="subcategory-item">闪光灯/手柄</div>
                        <div class="subcategory-item">电池/电源</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">电子教育</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">学习机</div>
                        <div class="subcategory-item">点读机/点读笔</div>
                        <div class="subcategory-item">复读机</div>
                        <div class="subcategory-item">电子词典</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">智能设备</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">智能手表</div>
                        <div class="subcategory-item">智能手环</div>
                        <div class="subcategory-item">智能摄像</div>
                        <div class="subcategory-item">智能家居</div>
                        <div class="subcategory-item">智能配件</div>
                        <div class="subcategory-item">健康监测</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">电脑整机</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">台式机</div>
                        <div class="subcategory-item">笔记本配件</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">外设产品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">鼠标</div>
                        <div class="subcategory-item">键盘</div>
                        <div class="subcategory-item">键鼠套装</div>
                        <div class="subcategory-item">USB周边</div>
                        <div class="subcategory-item">摄像头</div>
                        <div class="subcategory-item">线缆</div>
                        <div class="subcategory-item">U盘</div>
                        <div class="subcategory-item">移动硬盘</div>
                        <div class="subcategory-item">存储卡</div>
                        <div class="subcategory-item">鼠标垫</div>
                        <div class="subcategory-item">插座</div>
                        <div class="subcategory-item">手写板/笔</div>
                        <div class="subcategory-item">电脑软件</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">电脑配件</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">显示器</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">网路产品</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">路由器</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">办公设备</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">打印机</div>
                        <div class="subcategory-item">扫描仪</div>
                        <div class="subcategory-item">电话机</div>
                        <div class="subcategory-item">计算器</div>
                        <div class="subcategory-item">投影仪/幕布</div>
                        <div class="subcategory-item">激光笔</div>
                        <div class="subcategory-item">碎纸机</div>
                        <div class="subcategory-item">点钞机</div>
                        <div class="subcategory-item">装订机</div>
                        <div class="subcategory-item">白板</div>
                    </div>
                </div>
                <div class="subcategory-group">
                    <div class="subcategory-title">文具耗材</div>
                    <div class="subcategory-items">
                        <div class="subcategory-item">办公文具</div>
                        <div class="subcategory-item">教育文具</div>
                        <div class="subcategory-item">记事备忘</div>
                        <div class="subcategory-item">文件管理</div>
                        <div class= "subcategory-item">书写工具</div>
                    <div class="subcategory-item">书画用品</div>
                    <div class="subcategory-item">财务用品</div>
                    <div class="subcategory-item">硒鼓</div>
                    <div class="subcategory-item">墨粉</div>
                    <div class="subcategory-item">纸类</div>
                    <div class="subcategory-item">刻录光盘</div>
                </div>
            </div>
        </div>
    </div>

    <div class="category-item">
        <div class="main-category">家用电器</div>
        <div class="right-panel">
            <div class="subcategory-group">
                <div class="subcategory-title">厨房电器</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">榨汁机</div>
                    <div class="subcategory-item">微波炉</div>
                    <div class="subcategory-item">豆浆机</div>
                    <div class="subcategory-item">电饭煲</div>
                    <div class="subcategory-item">电磁炉</div>
                    <div class="subcategory-item">电水壶</div>
                    <div class="subcategory-item">养生壶</div>
                    <div class="subcategory-item">料理机</div>
                    <div class="subcategory-item">压力锅</div>
                    <div class="subcategory-item">酸奶机</div>
                    <div class="subcategory-item">面包机</div>
                    <div class="subcategory-item">电烤箱</div>
                    <div class="subcategory-item">电炖锅</div>
                    <div class="subcategory-item">电饼铛</div>
                    <div class="subcategory-item">煮蛋器</div>
                    <div class="subcategory-item">咖啡机</div>
                    <div class="subcategory-item">多用途锅</div>
                </div>
            </div>
            <div class="subcategory-group">
                <div class="subcategory-title">生活电器</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">净水设备</div>
                    <div class="subcategory-item">吸尘器</div>
                    <div class="subcategory-item">加湿器</div>
                    <div class="subcategory-item">饮水机</div>
                    <div class="subcategory-item">灯具</div>
                    <div class="subcategory-item">挂烫机/熨斗</div>
                    <div class="subcategory-item">除湿/干衣机</div>
                    <div class="subcategory-item">小洗衣机</div>
                    <div class="subcategory-item">毛球修剪器</div>
                    <div class="subcategory-item">电风扇</div>
                    <div class="subcategory-item">空调扇</div>
                    <div class="subcategory-item">插座</div>
                    <div class="subcategory-item">清洁机</div>
                    <div class="subcategory-item">取暖器</div>
                </div>
            </div>
            <div class="subcategory-group">
                <div class="subcategory-title">空调</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">壁挂式</div>
                </div>
            </div>
            <div class="subcategory-group">
                <div class="subcategory-title">洗衣机</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">滚筒</div>
                    <div class="subcategory-item">波轮</div>
                </div>
            </div>
            <div class="subcategory-group">
                <div class="subcategory-title">个人护理</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">剃须刀</div>
                    <div class="subcategory-item">电吹风</div>
                    <div class="subcategory-item">美发器</div>
                    <div class="subcategory-item">美容器</div>
                    <div class="subcategory-item">口腔护理</div>
                    <div class="subcategory-item">按摩器</div>
                    <div class="subcategory-item">足浴盆</div>
                    <div class="subcategory-item">剃毛器</div>
                </div>
            </div>
        </div>
    </div>

    <div class="category-item">
        <div class="main-category">当当礼品卡、生活服务</div>
        <div class="right-panel">
            <div class="subcategory-group">
                <div class="subcategory-title">V卡</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">固定面值卡</div>
                    <div class="subcategory-item">自定义面值卡</div>
                </div>
            </div>
            <div class="subcategory-group">
                <div class="subcategory-title">经典卡</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">读书卡</div>
                    <div class="subcategory-item">经典卡</div>
                    <div class="subcategory-item">瑞狗闹春</div>
                </div>
            </div>
            <div class="subcategory-group">
                <div class="subcategory-title">主题卡</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">奇先生妙小姐</div>
                    <div class="subcategory-item">生日卡</div>
                    <div class="subcategory-item">三国演义</div>
                    <div class="subcategory-item">西游记</div>
                    <div class="subcategory-item">红楼梦</div>
                    <div class="subcategory-item">水浒传</div>
                    <div class="subcategory-item">梅</div>
                    <div class="subcategory-item">兰</div>
                    <div class="subcategory-item">竹</div>
                    <div class="subcategory-item">菊</div>
                    <div class="subcategory-item">歪歪兔</div>
                    <div class="subcategory-item">百变马丁</div>
                    <div class="subcategory-item">Baby卡</div>
                </div>
            </div>
            <div class="subcategory-group">
                <div class="subcategory-title">节日卡</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">元旦卡</div>
                    <div class="subcategory-item">春节卡</div>
                    <div class="subcategory-item">情人卡</div>
                    <div class="subcategory-item">女人卡</div>
                    <div class="subcategory-item">五一卡</div>
                    <div class="subcategory-item">端午卡</div>
                    <div class="subcategory-item">教师卡</div>
                    <div class="subcategory-item">中秋卡</div>
                    <div class="subcategory-item">国庆卡</div>
                    <div class="subcategory-item">圣诞卡</div>
                    <div class="subcategory-item">新生儿卡</div>
                </div>
            </div>
            <div class="subcategory-group">
                <div class="subcategory-title">生肖卡</div>
                <div class="subcategory-items">
                    <div class="subcategory-item">鼠</div>
                    <div class="subcategory-item">牛</div>
                    <div class="subcategory-item">虎</div>
                    <div class="subcategory-item">兔</div>
                    <div class="subcategory-item">龙</div>
                    <div class="subcategory-item">蛇</div>
                    <div class="subcategory-item">马</div>
                    <div class="subcategory-item">羊</div>
                    <div class="subcategory-item">猴</div>
                    <div class="subcategory-item">鸡</div>
                    <div class="subcategory-item">狗</div>
                    <div class="subcategory-item">猪</div>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>

<div class="slider">
    <img src="picture/轮播图片1.jpg" alt="图片1" class="slide current">
    <img src="picture/轮播图片2.jpg" alt="图片2" class="slide">
    <img src="picture/轮播图片3.jpg" alt="图片3" class="slide">
    <img src="picture/轮播图片4.jpg" alt="图片3" class="slide">
    <img src="picture/轮播图片5.jpg" alt="图片3" class="slide">
</div>
<div class="nav">
    <span class="dot current" data-index="1">1</span>
    <span class="dot" data-index="2">2</span>
    <span class="dot" data-index="3">3</span>
    <span class="dot" data-index="4">4</span>
    <span class="dot" data-index="5">5</span>
</div>
    <script>
        const dots = document.querySelectorAll('.dot');
        const slides = document.querySelectorAll('.slide');
        let currentIndex = 0;

        // 自动轮播定时器
        const autoSlide = setInterval(() => {
            currentIndex = (currentIndex + 1) % slides.length;
            changeSlide(currentIndex);
        }, 2000);

        function changeSlide(index) {
            dots.forEach(d => d.classList.remove('current'));
            slides.forEach(s => s.classList.remove('current'));

            dots[index].classList.add('current');
            slides[index].classList.add('current');
        }

        dots.forEach((dot, index) => {
            dot.addEventListener('mouseover', () => {
                clearInterval(autoSlide);
                changeSlide(index);
            });
        });

        document.addEventListener('mouseout', () => {
            autoSlide;
        });
    </script>
<div class="ad-container">
    <a href=""><img src="picture/广告1.png"></a>
</div>
<div class="公告栏" >
    <div class="选项卡">
        <span class="选项卡项" id="信息公告">信息公告</span>
        <span class="选项卡项" id="服务公告">服务公告</span>
    </div>
    <div class="信息内容" id="info-content" style="display: none;">
        <p><a href="book1.html" style="text-decoration: none;color: red">图书 每满一百减五十</a></p>
        <p><a href="book2.html" style="text-decoration: none;color: red">童书 每满一百减五十</a></p>
        <p><a href="flash_sale.html" style="text-decoration: none;color: black">限时抢购</a></p>
        <p><a href="special_area.html" style="text-decoration: none;color: black">特惠专区</a></p>
    </div>
    <div class="服务内容" id="service-content" style="display: none;">
        <p><a href="scam_warning.html" style="text-decoration: none;color: black">关于谨防诈骗的重要提示</a></p>
    </div>
</div>
<script>
    const 信息公告 = document.getElementById('信息公告');
    const 服务公告 = document.getElementById('服务公告');
    const 信息内容 = document.getElementById('info-content');
    const 服务内容 = document.getElementById('service-content');

    // 初始状态显示信息公告内容
    信息内容.style.display = 'block';
    服务内容.style.display = 'none';
    信息公告.classList.add('active');

    信息公告.addEventListener('mouseover', function () {
        信息内容.style.display = 'block';
        服务内容.style.display = 'none';
        信息公告.classList.add('active');
        服务公告.classList.remove('active');
    });

    服务公告.addEventListener('mouseover', function () {
        服务内容.style.display = 'block';
        信息内容.style.display = 'none';
        服务公告.classList.add('active');
        信息公告.classList.remove('active');
    });
</script>
<div class="img-container_2">
    <a href=""><img src="picture/新书上架.jpg"></a>
    <a href=""><img src="picture/精选榜单.jpg"></a>
    <a href=""><img src="picture/今日抢购.jpg"></a>
    <a href=""><img src="picture/极价书屋.jpg"></a>
</div>
<div class="img-container_3">
    <a href=""><img src="picture/当当礼品卡.jpg"></a>
</div>
<label class="label_tuijian">为您推荐</label>
<hr class="orange-line_tuijian">


<div class="pagination-container">
    <div class="page" id="page1">
        <div class="row">
            <div class="item">
                <a href="商品详情页1.jsp" style="text-decoration: none;color: black">
                    <img src="picture/商品1.jpg" alt="商品1">
                    <p class="description">毛泽东选集（全四册，32开）</p>
                    <p class="price">¥56.70</p>
                </a>
            </div>
            <div class="item">
                <a href="商品详情页2.jsp" style="text-decoration: none;color: black">
                    <img src="picture/商品2.jpg" alt="商品2">
                    <p class="description">如果历史是一群喵15·大清风云篇</p>
                    <p class="price">¥32.00</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/29119834.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品3.jpg" alt="商品3">
                    <p class="description">认知觉醒：开启自我改变的原动力</p>
                    <p class="price">¥29.90</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/11916978027.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品4.png" alt="商品4">
                    <p class="description">RAZ分级阅读绘本aa级英语美国原版蓝标礼盒幼儿早教英语支持蓝猫易趣小达人蓝猫点读笔</p>
                    <p class="price">¥98.00</p>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="item">
                <a href="https://product.dangdang.com/21055821.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品5.jpg" alt="商品5">
                    <p class="description">我与地坛（纪念版）（2024年百班千人寒假书单 九年级推荐阅读）</p>
                    <p class="price">¥16.00</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/22790527.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品6.jpg" alt="商品6">
                    <p class="description">中国国家地理精华 图说天下 国家地理</p>
                    <p class="price">¥15.10</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/29855232.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品7.jpg" alt="商品7">
                    <p class="description">高效玩转DeepSeek：解锁90%的人都不知道的使用技巧 从基础入门到高阶实战全面提升效率</p>
                    <p class="price">¥53.00</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/1291990907.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品8.jpg" alt="商品8">
                    <p class="description">【良品铺子开口笑板栗120g*1袋】坚果炒货休闲零食带壳熟栗子</p>
                    <p class="price">¥13.90</p>
                </a>
            </div>
        </div>
    </div>
    <div class="page" id="page2">
        <div class="row">
            <div class="item">
                <a href="https://product.dangdang.com/11754163125.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品9.jpg" alt="图片9">
                    <p class="description">九阳空气炸锅家用新款可视化炸锅多功能智能空气电炸锅不翻面</p>
                    <p class="price">¥298.00</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/26483831.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品10.jpg" alt="图片10">
                    <p class="description">一起长大的玩具 二年级下册 语文教科书配套书目 人教版快乐读书吧</p>
                    <p class="price">¥12.80</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/28992419.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品11.jpg" alt="图片11">
                    <p class="description">蛤蟆先生去看心理医生（热销500万册！英国经典心理咨询入门书，知名心理学家李松蔚强烈推荐）</p>
                    <p class="price">¥30.00</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/23561731.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品12.jpg" alt="图片12">
                    <p class="description">毛泽东选集（全四册，精装）</p>
                    <p class="price">¥119.00</p>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="item">
                <a href="https://product.dangdang.com/29843614.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品13.jpg" alt="图片13">
                    <p class="description">哪吒之魔童闹海艺术设定集 电影官方正版授权主创团队5年以来不为人知的资料 随书赠贴纸明信片2张书签线稿分镜别册</p>
                    <p class="price">¥138.60</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/22790516.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品14.jpg" alt="图片14">
                    <p class="description">走遍中国 图说天下 国家地理</p>
                    <p class="price">¥15.10</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/29830193.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品15.jpg" alt="图片15">
                    <p class="description">含12月新真题华研英语六级真题备考2025年6月考试试卷大学英语四六级历年真题资料卷词汇单词书阅读听力翻译写作文专项训练cet46</p>
                    <p class="price">¥20.90</p>
                </a>
            </div>
            <div class="item">
                <a href="https://product.dangdang.com/11698475423.html#ddclick_reco_indexreco" style="text-decoration: none;color: black">
                    <img src="picture/商品16.jpg" alt="图片16">
                    <p class="description">[99元任选3件]巴拉巴拉童装童装男童t恤短袖新款夏装纯棉</p>
                    <p class="price">¥59.00</p>
                </a>
            </div>
        </div>
    </div>
    <div class="page" id="page3">
        <div class="row">
            <div class="item">
                <a href="" style="text-decoration: none;color: black">
                    <img src="picture/商品17.jpg" alt="图片17">
                    <p class="description">【良品铺子 特好剥碧根果120g*1袋】手剥山核桃坚果炒货休闲零食特产</p>
                    <p class="price">¥24.90</p>
                </a>
            </div>
            <div class="item">
                <a href="" style="text-decoration: none;color: black">
                    <img src="picture/商品18.jpg" alt="图片18">
                    <p class="description">跟着诗词去旅行 少年游学地理百科</p>
                    <p class="price">¥9.90</p>
                </a>
            </div>
            <div class="item">
                <a href="" style="text-decoration: none;color: black">
                    <img src="picture/商品19.jpg" alt="图片19">
                    <p class="description">《习近平关于加强党的作风建设论述摘编》(普及本)</p>
                    <p class="price">¥7.20</p>
                </a>
            </div>
            <div class="item">
                <a href="" style="text-decoration: none;color: black">
                    <img src="picture/商品20.jpg" alt="图片20">
                    <p class="description">正道（走正道成大事！冯唐讲透《道德经》成事智慧，赠思维导图、3天听书卡！）</p>
                    <p class="price">¥49.90</p>
                </a>
            </div>
        </div>
    </div>
    <div class="pagination-controls">
        <button id="prev-page">上一页</button>
        <button id="next-page">下一页</button>
    </div>
</div>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const pages = document.querySelectorAll('.page');
        const prevPageButton = document.getElementById('prev-page');
        const nextPageButton = document.getElementById('next-page');
        let currentPageIndex = 0;

        function showPage(index) {
            pages.forEach((page, i) => {
                if (i === index) {
                    page.style.display = 'block';
                } else {
                    page.style.display = 'none';
                }
            });
        }

        prevPageButton.addEventListener('click', function () {
            if (currentPageIndex > 0) {
                currentPageIndex--;
                showPage(currentPageIndex);
            }
        });

        nextPageButton.addEventListener('click', function () {
            if (currentPageIndex < pages.length - 1) {
                currentPageIndex++;
                showPage(currentPageIndex);
            }
        });

        showPage(currentPageIndex);
    });
</script>
</body>
</html>