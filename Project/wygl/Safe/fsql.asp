<% 
Dim Fy_Url,Fy_a,Fy_x,Fy_Cs(),Fy_Cl,Fy_Ts,Fy_Zx 
'---���岿�� ͷ------ 
Fy_Cl = 1 '������ʽ��1=��ʾ��Ϣ,2=ת��ҳ��,3=����ʾ��ת�� 
Fy_Zx = "index.Asp" '����ʱת���ҳ�� 
'---���岿�� β------ 
On Error Resume Next 
Fy_Url=Request.ServerVariables("QUERY_STRING") 
Fy_a=split(Fy_Url,"&") 
redim Fy_Cs(ubound(Fy_a)) 
On Error Resume Next 
for Fy_x=0 to ubound(Fy_a) 
Fy_Cs(Fy_x) = left(Fy_a(Fy_x),instr(Fy_a(Fy_x),"=")-1) 
Next 
For Fy_x=0 to ubound(Fy_Cs) 
If Fy_Cs(Fy_x)<>"" Then 
If Instr(LCase(Request(Fy_Cs(Fy_x))),"'")<>0 or Instr(LCase(Request(Fy_Cs(Fy_x))),"select")<>0 or Instr(LCase(Request(Fy_Cs(Fy_x))),"update")<>0 or Instr(LCase(Request(Fy_Cs(Fy_x))),"chr")<>0 or Instr(LCase(Request(Fy_Cs(Fy_x))),"delete%20from")<>0 or Instr(LCase(Request(Fy_Cs(Fy_x))),";")<>0 or Instr(LCase(Request(Fy_Cs(Fy_x))),"insert")<>0 or Instr(LCase(Request(Fy_Cs(Fy_x))),"mid")<>0 Or Instr(LCase(Request(Fy_Cs(Fy_x))),"master.")<>0 Or Instr(LCase(Request(Fy_Cs(Fy_x))),"and 1=1")<>0 Or Instr(LCase(Request(Fy_Cs(Fy_x))),"and 1=2")<>0 Then 
Select Case Fy_Cl 
Case "1" 
Response.Write "<Script Language=JavaScript>alert(' ���ִ��󣡲��� "&Fy_Cs(Fy_x)&" ��ֵ�а����Ƿ��ַ�����');window.close();</Script>" 
Case "2" 
Response.Write "<Script Language=JavaScript>location.href='"&Fy_Zx&"'</Script>" 
Case "3" 
Response.Write "<Script Language=JavaScript>alert(' ���ִ��󣡲��� "&Fy_Cs(Fy_x)&"��ֵ�а����Ƿ��ַ�����');location.href='"&Fy_Zx&"';</Script>" 
End Select 
Response.End 
End If 
End If 
Next 
%> 