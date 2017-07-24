<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>首页</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
 <div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					<img alt="书山有路" src="images/Logol2.jpg">
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
		<div class="col-md-8">
			<div class="row">
				<div class="col-md-8">
					<ul class="nav nav-pills">
						<li class="active">
							<a href="home">首页</a>
						</li>
						<li>
							<a href="novel">小说</a>
						</li>
						<li>
							<a href="literature">文学</a>
						</li>
						<li>
							<a href="history">历史</a>
						</li>
						<li>
							<a href="science">科普</a>
						</li>
						<li>
							<a href="cart">购物车</a>
						</li>
						<li class="dropdown pull-right">
							 <a href="#" data-toggle="dropdown" class="dropdown-toggle">其他<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="background">管理员后台</a>
								</li>
								<li>
									<a href="resigter">注册</a>
								</li>
								<li>
									<a href="loginForm">用户切换</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="col-md-4">
					 
					<address>
						 <strong>${sessionScope.user_session.identity } ${sessionScope.user_session.username }</strong><br> 欢迎您的光临！<br> 您是今天在线的1位顾客之一
					</address>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="carousel slide" id="carousel-827137">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-827137">
					</li>
					<li data-slide-to="1" data-target="#carousel-827137">
					</li>
					<li data-slide-to="2" data-target="#carousel-827137">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="滚动1" src="images/TF1.jpg">
						<div class="carousel-caption">
							<h4>
								<font face="华文行楷">博学多才</font>
							</h4>
							<p>
                                读书使人充实，讨论使人机智，笔记使人准确，读史使人明智，读诗使人灵秀，数学使人周密，科学使人深刻，伦理使人庄重，逻辑修辞使人善辩。凡有所学，皆成性格。 —— 培根
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="滚动2" src="images/TF2.jpg">
						<div class="carousel-caption">
							<h4>
								<font face="华文行楷">精益求精</font>
							</h4>
							<p>
								读书时要深思多问。只读而不想，就可能人云亦云，沦为书本的奴隶；或者走马看花，所获甚微。 —— 王梓坤
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="滚动3" src="images/TF3.jpg">
						<div class="carousel-caption">
							<h4>
								<font face="华文行楷">手不释卷</font>
							</h4>
							<p>
								任何时候，我也不会满足，越是多读书，就越是深刻地感到不满足，越感到自己知识贫乏。科学是奥妙无穷的。 —— 马克思
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-827137" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-827137" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-3">
					<div class="panel-group" id="panel-614695">
						<div class="panel panel-default">
							<div class="panel-heading">
								 <a class="panel-title" data-toggle="collapse" data-parent="#panel-970909" href="#panel-element-272487">书海拾珠</a>
							</div>
							<div id="panel-element-272487" class="panel-collapse collapse in">
								<div class="panel-body">
									<a href="home">首页</a><br>
									<a href="novel">小说</a><br>
									<a href="literature">文学</a><br>
									<a href="history">历史</a><br>
									<a href="science">科普</a>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
						 		<a class="panel-title" data-toggle="collapse" data-parent="#panel-970909" href="#panel-element-389560">其他</a>
							</div>
							<div id="panel-element-389560" class="panel-collapse collapse">
								<div class="panel-body">
									<a href="cart">购物车</a><br>
									<a href="resigter">注册</a><br>
									<a href="background">管理员后台</a><br>
									<a href="loginForm">用户切换</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<blockquote>
						<p>
							<font face="华文行楷">读书，这个我们习以为常的平凡过程，实际上是人们心灵和上下古今一切民族的伟大智慧相结合的过程。</font>
						</p> <small><cite>高尔基</cite></small>
					</blockquote>
					<p>
						知乎上阅读话题下的粉丝有500多万，也就是说大概每8-10个知乎用户里面就有一个关注了“阅读”。看起来很多了吧？
					</p>
					<p>
						但“健身”、“美食”这类话题的关注人数差不多有“阅读”的1.5-2倍。虽然这种分析方式太过粗暴不够科学。但也可大体推测出：<strong>或许在大部分人心中，“吃的好”、“身材棒”要比“有知识”、“有思想”重要很多。</strong>
					</p>
					<p>
						读书的快感远远比不上吃东西时的快感，读书带来的正向反馈也远不及健身那样明显。有可能花了5个月含着泪啃完了某大V推荐书单里的一本书之后，却发现什么东西都没记住。你疑惑满满的提了个问题：“读了很多书，但是都忘掉了，读书的意义在哪里？”然后取关了阅读话题。
					</p>
					<p>
						那么那些相对于吃喝玩乐而言较少一部分热衷于阅读的人，他们在读书中收获的快感，或者说意义又在哪？
					</p>
					<p>
						谈论意义本身并没有什么意义，还是换成“快感”或“成就感”比较直观可感一点：
					</p>
					<p>
						你知道黎曼几何 拓扑学 混沌理论 Higgs波色子 量子纠缠 分子机器 神经网络算法 细胞自噬......是什么，别人不知道，快感＋1。
					</p>
					<p>
						你知道mvp的含义不仅仅是“最有价值球员”，还有“最小化可行产品”，而且除了把他们运用在创业上外，你还把它用在生活中的方方面面。成就感＋1。
					</p>
					<p>
						你熟练的运用“巴甫洛夫把妹法”，历时3月成功俘获了一只妹子。成就感＋1。
					</p>
					<p>
						当你犹豫一件事该不该做时，忽然想到了“不值得定律”，然后斟酌了一下果断放弃。快感＋1。
					</p>
					<p>
						当你和一个睿智的长者交流。你们聊西方那些国家的习俗和文化，聊世界50大名曲的谱曲和旋律，聊各种不同语言之间的异同之处，聊那个年代的电机，雪糕，汽车的发展史。all＋1。
					</p>
					<p>
						<strong>一句正确的废话可能是：读书的一个重要意义，就是让那些读书的人感受到了读书的意义所在，感受到了它的好，然后继续阅读下去，反复从中受益。</strong>
					</p>
					<p>
						很多答案里讲故事说读书怎样改变了身边人或自己的命运，但这只是读书带来的思想、行为上改变之后，自然而然的附加奖励。佛曰不可说，还是有些最底层的东西，很难用文字去表达和描绘。
					</p>
					<p>
						<strong>读书兼具消遣，放松，学习，思考的功能，是快速了解这个世界，了解不同有价值思想，满足各种心理欲望的捷径。</strong>
					</p>
					<p>
						就像童年时的《唐诗三百首》和《十万个为什么》，中学时代的《当悲伤逆流成河》、《校花大白腿》和《盗墓笔记》，大学时的《微积分》、《相对论》和各种文献，毕业之后的《金字塔原理》和《商务与经济统计》。<strong>每个人，每个人的不同人生阶段，都有不同的东西值得阅读。</strong>
					</p>
					<p>
						阅读的意义于我个人而言，是<strong>通过现有主要学科的一些重要著作来建立对这个复杂世界的一些系统性认识，从而更深入的了解宇宙，了解内心。</strong>
					</p>
					<p>
						<strong>在这样一个大部分人都行色匆匆低头赶路的年代，做一个偶尔抬起头看看星空的人。</strong>
					</p>
					<p>
						<strong>这种感觉多美好。</strong>
					</p>					
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<h5 class="text-center">
				Java EE 大作业应用
			</h5>
			<h5 class="text-center text-muted">
				电子商务15-2高垚攀（09153677）
			</h5>
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>