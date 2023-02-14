<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QueryAttend.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.Attendance.QueryAttend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
        width: 87px;
        text-align: right;
        }
        .auto-style2 {
            width: 221px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/img_3.jpg);margin-bottom:50px;">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">Don't be shy</span>
							<h1>Get In Touch</h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>

    <%-- 按时间查询出勤情况 --%>
    <div style="text-align:center;">
        <asp:TextBox ID="toRiQi" runat="server"></asp:TextBox>
        <asp:Button ID="btmTime" runat="server" Text="按时间查询出勤情况" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="200px" OnClick="btmTime_Click" />                            
    </div>

    <%-- 按成员ID查询出勤情况 --%>
    <div style="text-align:center;">
        <asp:TextBox ID="toMID" runat="server"></asp:TextBox>
        <asp:Button ID="btmMID" runat="server" Text="按成员ID查询出勤情况" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="200px" OnClick="btmMID_Click"  />                            
    </div>

    <%-- 显示查询结果 --%>
    <div style="margin-left:50px;">
        <asp:GridView ID="GVTime" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1100px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </div>
</asp:Content>
