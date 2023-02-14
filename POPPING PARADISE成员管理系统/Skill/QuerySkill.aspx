<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuerySkill.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.skill" %>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .elmInfo{
            margin-left:40px;
            margin-top:0px;
            width:1100px;
        }
        .btmElm{
            width:120px;
            height:40px;
            line-height:40px;
            text-align:center;
            align-items:center;
            background:#A55129;
            border:3px solid #DEBA84;
            color:#FFFFFF;
            margin-right:20px;
        }
        .auto-style1 {
            width: 100px;
            text-align: right;
        }
        .auto-style2 {
            width: 800px;
            text-align:left;
        }
        .auto-style3 {
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/img_1.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">Explore The</span>
							<h1>Posibility of Our Products</h1>	
						</div>
						
					</div>
							
					
				</div>
			</div>
		</div>
	</header>

	<%-- 成员元素掌握情况信息表 --%>
    <%-- popping基本元素基本表 --%>
    <div style="margin-top:40px;">
        <p style="text-align:center;font-size:20px;font-weight:bold;">POPPING基本元素信息表</p>
        <asp:GridView ID="elmInfo" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="elmDataSource" EmptyDataText="没有可显示的数据记录。" CssClass="elmInfo">
            <Columns>
                <asp:BoundField DataField="元素名称" HeaderText="元素名称" SortExpression="元素名称" />
                <asp:BoundField DataField="元素简介" HeaderText="元素简介" SortExpression="元素简介" />
                <asp:BoundField DataField="视频" HeaderText="视频" SortExpression="视频" />
            </Columns>
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
        <asp:SqlDataSource ID="elmDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [元素名称], [元素简介], [视频] FROM [skill]"></asp:SqlDataSource>
        <div style="text-align:center;">
            <table style="margin-left:150px;">
                <tr>
                    <td class="auto-style1">元素名称：</td>
                    <td  class="auto-style3">
                        <asp:TextBox ID="tbName" runat="server" CssClass="auto-style3" Width="400px"></asp:TextBox>                        
                    </td>
                    <td>
                        <%-- 查询基本元素 --%>
                        <asp:Button ID="QueryElm" runat="server" Text="查询元素信息" CssClass="btmElm" OnClick="QueryElm_Click"/>
                    </td>
                </tr>               
            </table>
            <table style="margin-left:150px;width:1100px;">
                <tr>
                    <td class="auto-style1">元素简介：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbIntro" runat="server" Width="800px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">视频：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbVedio" runat="server" Width="800px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
       
    </div>
</asp:Content>
