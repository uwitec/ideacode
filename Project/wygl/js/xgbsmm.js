function denglu2()
{ 

if(document.form2.admin_pwd.value=='')
	{
	 alert('���벻��Ϊ��!');
	 document.form2.admin_pwd.focus();
	 return false;
	}
if(document.form2.admin_pwd.value.length<4 | document.form2.admin_pwd.value.length>20)
	{
	 alert('���볤�Ȳ�������4');
	 document.form2.admin_pwd.focus();
	 return false;
    } 	
if(document.form2.admin_pwd.value!=document.form2.admin_pwd1.value)
	{
	 alert('�������벻һ��');
	 document.form2.admin_pwd.focus();
	 return false;
    } 
return true;
}