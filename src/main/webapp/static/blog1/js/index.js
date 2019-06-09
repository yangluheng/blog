/*首页效果*/
	/*轮播图*/
		//轮播图实现
			$(function(){
				//全局控制轮播的变量
				var s=0;
				var timer;//设置一个控制轮播执行函数的变量
				//图片切换函数
				function run(){
					s++;//s自增
					if(s==4){
						s=0;
					}
					//s号图片显示其他的同级隐藏
					$(".banner img").eq(s).fadeIn(500).siblings('img').fadeOut(500);
					$(".banner ul li").eq(s).css({'background':'#00bfff'}).siblings('li').css({'background':'#a5a5a5'});
				}
					timer=setInterval(run,3000);
					$(".banner ul li").mouseenter(function(){
						clearInterval(timer);//清空定时器
						var lithis=$(this);//获取划入的li序号
						//设置单次定时器解决快速滑动问题
						tt=setTimeout(function(){
							//获取当前序号
							s=lithis.index();
							$(".banner img").eq(s).fadeIn(500).siblings('img').fadeOut(500);
					$(".banner ul li").eq(s).css({'background':'#00bfff'}).siblings('li').css({'background':'#a5a5a5'});
						})
					})
					           //给li添加鼠标移出事件(mouseenter),恢复定时器,清除掉单次定时器(快速滑动不执行)
			           $('.banner ul li').mouseleave(function(){
			            clearTimeout(tt);
			            timer=setInterval(run,1000);
			           })
			           //翻页效果控制轮播效果
			           $('.prev').click(function(){
			           	clearInterval(timer);//清空定时器
			           	s--;
			           	if(s<0){
			           		s=3;
			           	}
					$(".banner img").eq(s).fadeIn(500).siblings('img').fadeOut(500);
					$(".banner ul li").eq(s).css({'background':'#00bfff'}).siblings('li').css({'background':'#a5a5a5'});
			          timer=setInterval(run,3000);
			           })
			           $('.next').click(function(){
			           		clearInterval(timer);//清空定时器
			           	s++;
			           	if(s>3){
			           		s=0;
			           	}
					$(".banner img").eq(s).fadeIn(500).siblings('img').fadeOut(500);
					$(".banner ul li").eq(s).css({'background':'#00bfff'}).siblings('li').css({'background':'#a5a5a5'});
			            timer=setInterval(run,3000);
			           })
				/*瀑布流图片区域划过样式*/
						/*划过li增加边框，位置移动*/
					   $(function(){
				$(".sign .pic li,.code .pic li").hover(function(){
					$(this).css({"border":"1px solid #ff0036","transform":"translate(0px,-10px)"})
				},function(){
					$(this).css({"border":"none","transform":"translate(0px,10px)"})
				})
			})
					/*首页底部友情链接，划过变色*/
						$(function(){
					$(".links .linktop a").hover(function(){
						$(this).css({"color":"rgb(22, 155, 230)"});
					},function(){
						$(this).css({"color":"rgb(104, 104, 104)"});
					})
				})
				/*固定导航效果*/
					$(function(){
				$(window).scroll(function(){
					var t=$(document).scrollTop();
					if(t>300){
						$(".fnav").fadeIn(500);
						
					}else{
						$(".fnav").fadeOut(500);
					}
					if(t>100){
						$(".rbar .m3").show();
					}else{
						$(".rbar .m3").hide();
					}
				})
			})
					/*右下角固定菜单样式*/
					$(function(){
				$('.rbar>.m1').hover(function(){
					$(".wx").show();
				},function(){
					$(".wx").hide();
				})
			})
/*rank排行榜页面效果*/
				/*ranknav的选中样式*/
				$(function(){
					$(".ranknav ul li").hover(function(){
						$(this).addClass("hov").siblings().removeClass('hov');
					},function(){
						//划出之后执行hover状态停留在第一个li上
						$(".ranknav ul li").eq(0).addClass("hov");
						$(this).removeClass('hov');
					})
				})
/*开发工具develop页面样式*/
						/*滑过卡片效果*/
						$(function(){
				$(".sq>div").hover(function(){
					$(this).css({"transform":"translate(0,-3px)","box-shadow":' 0 1px 20px rgba(0, 0, 0, 0.15)'})
				},function(){
					$(this).css({"transform":"translate(0,3px)","box-shadow":'0px 0px 0px rgb(245,245,245)'})
						false;
				})
			})
				})