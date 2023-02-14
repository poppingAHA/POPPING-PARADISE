<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertSkill.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.Skill.InsertSkill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
    
    <%--新增元素--%>
    <div style="text-align:center;margin-top:50px;">
        <h3 style="text-align:center;font-weight:bold;">新增元素</h3>
        <div style="margin-left:450px;">
            <table>
                <tr>
                    <td class="auto-style1">元素名称：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbSkill" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">元素简介：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbIntro" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">视频：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbVedio" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp</td>
                    <td class="auto-style2">
                        <asp:Button ID="AddSkill" runat="server" Text="新增元素" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="80px" OnClick="AddSkill_Click"  />
                    </td>
                </tr>
            </table>
        </div>    
            
        <div style="margin-left:50px;">
            <asp:GridView ID="GVSkill" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1100px">
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
