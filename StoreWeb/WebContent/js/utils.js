/**
 * 验证码点击修改方法
 * @param img
 * @returns
 */
function changeimage(img){
		img.src = img.src+"?"+new Date().getTime();
	
	}


/**
 * register 检验表单
 */
/*校验文本数据非空
txtObj:文本对象
errSpanId:　错误提示块的id
errMsg:错误提示内容
return true:数据非空；　false:空数据
*/



function validNotEmpty(txtobj,errSpanid,errmsg){
	
	var textvalue = txtobj.value;
	var errspan = document.getElementById(errSpanid);
	
	
	if(textvalue==''||textvalue.trim()==""){
		
		if(errspan!=null){
			//spanmes=errspan.innerText;
			errspan.innerText=errmsg;
			
			errspan.style.color="Red";
		}
		return false;
	}else{
		if(errspan!=null){
			//errspan.innerText=spanmes;
			//errspan.style.color = "#ccc";
		errspan.innerText="";
		return true;
	}	
}
}
/*校验文本数据长度
txtObj:文本对象
errSpanId:　错误提示块的id
errMsg:错误提示内容
return true:数据非空；　false:空数据
*/
function validLength(txtObj,minLen,maxLen,errSpanId,errMsg){
	var txtValue=txtObj.value;
	var errSpan=document.getElementById(errSpanId);			
	if(txtValue.length<minLen || txtValue.length>maxLen){
		if(errSpan!=null){
			//spanmes=errSpan.innerText;
			errSpan.innerText=errMsg;
			
			errSpan.style.color="Red";
		}
		return false;
	}else{
		if(errSpan!=null){
			//errSpan.innerText=spanmes;
			//errSpan.style.color = "#ccc";
			errSpan.innerText="";
		}
		return true;
	}
}
/**
 * 
 *
 * @returns
 */
function validcheckpwd(txtobj,txtobj1,errspanid,errspanid1,errmsg){
	var txtvalue = txtobj.value;
	var txtvalue1 = txtobj1.value;
	var errSpan=document.getElementById(errspanid);	
	var errSpan1=document.getElementById(errspanid1);	
	if(txtvalue==txtvalue1 ){
		if(errSpan!=null){
			//errSpan.innerText=spanmes;
			//errSpan.style.color = "#ccc";
			errSpan.innerText="";
		}
		return true;
	}else{
		if(errSpan!=null){
			txtobj.value="";
			txtobj1.value="";
			errSpan.innerText=errmsg;
			errSpan1.innerText="请重新输入";
			errSpan.style.color="Red";
			errSpan1.style.color="Red";
		}
	}
	
	
}
//手机号
function isPhoneNumber(tel,errSpanid,errmsg) {
    var reg =$("#phone").val();;
    var errSpan = document.getElementById(errSpanid);
    var flag = (/^1[3|4|5|8][0-9]\d{8}$/.test(reg));
    if(flag==false){
    	errSpan.innerText=errmsg;
    	errSpan.style.color="Red";
    }
    else{
    	errSpan.innerText="";
    	return true;
    }
}
//验证码
function Getyzm(){
	
	var sss=$("#yzmId").val();
	alert(sss);
}
/*提交表单*/
function submitRegister(){
	//表单校验
	
	var formObj = document.registerForm;
	var errMsg = "表单填写错误:\n";
	var valid = true;//true表示通过
	//用户名
//	if(!validNotEmpty(formObj.username,"usernameErrSpan","用户名必填")){
//		valid=false; //校验未通过
//	}
//	
//	//密码
//	if(!validNotEmpty(formObj.password,"usernamepwdSpan","密码必填！")){
//		valid=false; //校验未通过
//	}else{
//		if(!validLength(formObj.password,6,20,"usernamepwdSpan","密码长度必须在6到20位之间！")){
//			valid=false; //校验未通过
//		}
//	}
//	//re密码
//	if(!validNotEmpty(formObj.repassword,"userrepwdErrSpan","确认密码必填！")){
//		valid=false; //校验未通过
//	}else{
//		if(!validcheckpwd(formObj.password,formObj.repassword,"userrepwdErrSpan","usernamepwdSpan","密码不一致！")){
//			valid=false;
//		}
//		
//	}
//	
//	//手机号
//	if(!validNotEmpty(formObj.tel,"usertelErrSpan","手机号必填！")){
//		valid=false; //校验未通过
//	}else{
//		if(!isPhoneNumber(formObj.tel,"usertelErrSpan","不是完整的11位手机号或者正确的手机号")){
//			valid=false;
//		}
//		
//	}
	//Getyzm();
	//如果通过表单校验，则提交
//	$.ajax({
//	    type: "post",
//	    url: "http://localhost:8080/Test/register",
//	    data: {
//	     "telephone": a,
//	     "password": login_password
//	    },
//	    dataType: "json",
//	//   contentType:'application/json',
//	    success: function (data) {
//	     alert(data.Flag);
//	     alert(data.Msg);
//	  
//	     },
//	    error: function (XMLHttpRequest, textStatus, errorThrown) {
//	     alert(XMLHttpRequest.status);
//	     alert(XMLHttpRequest.readyState);
//	     alert(textStatus);
//	    },
//	   });
	if(valid==true){
		$("#submitid").attr({"type":"submit"});
		//formObj.submit(); //通过表单的ｓｕｂｍｉｔ()方法提交表单
	}else{
		//alert(errMsg);
	}	
}
