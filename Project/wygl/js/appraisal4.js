function denglu4()
{ 
if(document.form4.two_id.value=='')
	{ 
	 alert("二级标题列序号不能为空!");
	 document.form4.two_id.focus();
	 return false;
	 }
if(document.form4.two_id.value.length<1 |document.form4.two_id.value.length>4)
	{
	 alert('二级标题列序号长度为1到4个字符');
	 document.form4.two_id.focus();
	 return false;
	}
if(document.form4.two_id.value.match(/^[0-9]\d*$/)==null)
	{
	 alert('二级标题列序号只有数字')
	 document.form4.two_id.focus();
	 return false;
    }
	
	
if(document.form4.two_title.value=='')
	{
	 alert('二级标题不能为空!');
	 document.form4.two_title.focus();
	 return false;
	}
if(document.form4.two_title.value.length<2 | document.form4.two_title.value.length>40)
	{
	 alert('二级标题长度不对');
	 document.form4.two_title.focus();
	 return false;
    } 	

return true;
}