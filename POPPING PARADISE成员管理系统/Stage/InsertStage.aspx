<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertStage.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.Stage.InsertStage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/img_6.jpg);margin-bottom:50px;">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">See Our Pricing</span>
							<h1>Plans for Everyone</h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>

	<%-- 添加演出记录 --%>
	<div style="text-align:center;margin-bottom:50px;">
        <h3 style="text-align:center;font-weight:bold;">添加演出记录</h3>
        <table style="margin-left:450px;">
            <tr>
                <td class="auto-style1">演出：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="stNam" runat="server"></asp:TextBox>
                </td>
            </tr>      
            <tr>
                <td class="auto-style1">表演日期：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="stDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">表演人员ID：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="stMID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">公众号链接：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="stLink" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="AddSt" runat="server" Text="添加演出记录" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="120px" OnClick="AddSt_Click"   />
                </td>
            </tr>
        </table>
        <div style="margin-left:50px;">
			<asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1100px">
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
    </div>
</asp:Content>
