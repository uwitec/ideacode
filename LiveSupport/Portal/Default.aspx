<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" Title="LiveSupport Inc: Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

 <!--POSTER PHOTO-->
    <div id="poster-photo-container">
        <div class="poster-photo-image">
           <img src="Images/photo-poster.jpg" width="568" height="180" />
        </div>
        <div id="feature-area-home">����ʹ��Live Support <a href="Licence.aspx">����ע��</a><br />
            �������1����
        </div>
    </div>
    <!--CONTENT CONTAINER-->
    <div id="content-container-two-column">
        <!--CONTENT MAIN COLUMN-->
        <div id="content-main-two-column">
     
            <h1>
                Live Support, �Ƚ������߹�ͨƽ̨</h1>
            <p>
                ��֪��˭�ڷ���������վ���������ʵʱ�����������Ч�İ����̻���
                Live Support��һ����ҵ������վʵʱ����ϵͳ����վ�ÿ�ֻ������ҳ�еĶԻ�ͼ�꣬���谲װ���������κ�����������ֱ�Ӻ���վ�ͷ���Ա���м�ʱ������
            </p>
            <div id="three-column-container">
                <div id="three-column-side1">
                    <a href="ProductServe.aspx">
                        <img src="images/home-photo-1.jpg" class="photo-border" alt="Enter Alt Text Here" /></a>
                    <h2>
                        LiveSupport ��Ʒ</h2>
                    <p>
                        LiveSupport��һ����ҵ������վʵʱ����ϵͳ����վ�ÿ�ֻ������ҳ�еĶԻ�ͼ�꣬���谲װ���������κ�����������ֱ�Ӻ���վ�ͷ���Ա���м�ʱ������</p>
                    <a href="ProductServe.aspx">�˽����</a><img class="arrow" src="images/arrow.gif" alt="" /></div>
                <table id="three-column-middle"><tr><td>
                    <a href="About.aspx">
                        <img src="images/home-photo-2.jpg" class="photo-border" alt="Enter Alt Text Here" /></a>
                    <h2>
                        ����.</h2>
                    <p>
                        LiveSupportϵͳ������,�����ڴ�!</p>
                    <a href="News.aspx">����</a><img class="arrow" src="images/arrow.gif" alt="" /></td></tr></table>
                </div>
        </div>
        <!--CONTENT SIDE COLUMN-->
        <div id="content-side-two-column">
            <h2>
                LiveSupport ���߿ͷ�!</h2>

            <h3>
                �ͷ���ϯ��������
            </h3>
            <ul class="list-of-links">
            <a href="Download/OperatorConsole.msi"><img src="Images/fw_download.gif" style="width: 160px; height: 65px;" /></a>
            </ul>
        </div>
        <div class="clear">
        </div>
    </div>
</asp:Content>