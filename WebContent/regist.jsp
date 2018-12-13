<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>PictureBook | 注册</title>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="css/regist.css"/>
		<script type="text/javascript" src="js/jquery-1.4.2.js"></script>	
		<script type="text/javascript">
			var formObj={
				"checkForm":function(){
					//1. 非空验证
					var flag=true;//控制表单提交的变量，默认为true
					flag=this.checkNull("name","用户名不能为空")&&flag;
					flag=this.checkNull("password","密码不能为空")&&flag;
					flag=this.checkNull("password2","确认密码不能为空")&&flag;
					//flag=this.checkNull("nickname","昵称不能为空")&&flag;
					//flag=this.checkNull("email","邮箱不能为空")&&flag;
					//flag=this.checkNull("valistr","验证码不能为空")&&flag;

					//2. 两次密码一致验证
					flag=this.checkPassword("password","两次密码应该一致")&&flag;
					//3. 邮箱格式验证
					//flag=this.checkEmail("email","邮箱格式不正确")&&flag;
					
					return flag;
				},
				"checkPassword":function(name,msg){
					// 获取password和password2的input的值
					var psd1=$("input[name='"+name+"']").val();
					var psd2=$("input[name='"+name+"2']").val();
					// 当2个值都不为空串时再进行密码一致验证
					if($.trim(psd1)!=""&&$.trim(psd2)!=""){
						if(psd1!=psd2){
							// 添加错误提示信息
							this.setMsg(name+"2",msg);
							return false;
						}else{
							// 清空之前添加的错误提示信息
							this.setMsg(name+"2","");
							return true;
						}
					}
					return false;
				},
				"checkNull":function(name,msg){// 用来判断input值是否为null的方法
					// 1) 拿到对应的input框的值
					var value=$("input[name='"+name+"']").val();
					// 2) 判断是否为空
					if($.trim(value)==""){
						// 如果值为空，则调用设置消息的方法，
						// 将错误提示信息显示在该input的后面
						this.setMsg(name,msg);
						// 表单不应该提交
						return false;
					}else{
						// 将之前添加的错误提示清空
						this.setMsg(name,"");
						// 表单可以提交
						return true;
					}
				},
				"setMsg":function(name,msg){
					// 获取name指定的input后面的span,然后将传入的错误提示信息
					// 显示在该span内部，并设置一个css样式
					$("input[name='"+name+"']").nextAll("span").html(msg).css("color","red");
				}
			};
			
			// 当input失去焦点时马上执行对应的表单验证
			// 需要为每个input添加一个失去焦点的事件
			// 添加一个文档就绪事件，在事件中为每个input添加对应的方法
			$(function(){
				//文档就绪事件，当当前文档加载完成后，会自动调用
				$("input[name='name']").blur(function(){
					// 验证用户名是否为空
					var flag=formObj.checkNull("name","用户名不能为空");
					if(flag){//说明username输入框不为空
						// 发送ajax
						var url="${app}/AJAXCheckUsernameServlet?username="+$(this).val();
						// load方法是通过一个组件来调用的
						// 当ajax请求收到应答后，会将应答的内容自动填充到该组件内部
						// $("#msg_username").load(url);
						//$().load->如果添加了请求参数，则是post请求，如果没有添加，是get请求
						
						//$.get发送的就是get请求
						// result是服务器返回给浏览器的应答内容
						/* $.get(url,function(result){
							// 将应答内容添加到username对应的span中
							 $("#msg_username").html(result);
						}); */
						var url2="AJAXCheckUsername.do";
						var data={"name":$(this).val()};
						$.post(url2,data,function(result){
							//result就是服务器返回的应答内容
							// 将应答内容添加到username对应的span中
							$("#msg_username").html(result);
						});
					}
				});
				$("input[name='password']").blur(function(){
					formObj.checkNull("password","密码不能为空");
				});
				$("input[name='password2']").blur(function(){
					formObj.checkNull("password2","确认密码不能为空");
					formObj.checkPassword("password","两次密码应该一致");
				});
				
			});
		</script>
	</head>
	<body>
		<form action="Regist.do" method="POST" onSubmit="return formObj.checkForm()"  >
			<h1>欢迎注册PictureBook</h1>
			<table>
				<tr>
					<td colspan="2" style="text-align:center;color:red">
						${errMsg }
					</td>
				</tr>
				<tr>
					<td class="tds">用户名：</td>
					<td>
						<input type="text" name="name" value="${param.username}" />
						<span id="msg_username"></span>
					</td>
				</tr>
				<tr>
					<td class="tds">密码：</td>
					<td>
						<input type="password" name="password" value="${param.password}"/>
						<span></span>
					</td>
				</tr>
				<tr>
					<td class="tds">确认密码：</td>
					<td>
						<input type="password" name="password2" value="${param.password2}"/>
						<span></span>
					</td>
				</tr>
				
				<tr>
					<td class="sub_td" colspan="2" class="tds">
						<input type="submit" value="注册用户"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>

