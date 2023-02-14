<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyEvl.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.Evaluation.ModifyEvl" %>
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
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/img_5.jpg);margin-bottom:50px;">
		<div class="overlay"></div>
		<div class="gtco-container" style="margin-bottom:50px;">
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

	<%-- 查找 --%>
    <div style="margin-left:450px;">
        <table>
            <tr>
                <td class="auto-style1">被评价者：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbEID1" runat="server"></asp:TextBox>
                </td>
            </tr>               
            <tr>
                <td class="auto-style1">&nbsp</td>
                <td class="auto-style2">
                    <asp:Button ID="QueryEvl" runat="server" Text="查找" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="80px" OnClick="QueryEvl_Click" />
                </td>
            </tr>
        </table>
    </div>

    <%--显示查找结果--%>
    <div style="margin-left:50px;">
        <asp:GridView ID="queryEvaluation" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1100px">
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

    <%-- 修改、删除 --%>
    <div style="margin-left:450px;">
        <table>
            <tr>
                <td class="auto-style1">评语ID：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp</td>
                <td class="auto-style2">
                    <asp:Button ID="queryID" runat="server" Text="查" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="50px" OnClick="queryID_Click"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">被评价者：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbEID2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">评语：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="tbContent1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp</td>
                <td class="auto-style2">
                    <asp:Button ID="ModifyEvaluation" runat="server" Text="修改评价" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="120px" OnClick="ModifyEvaluation_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp</td>
                <td class="auto-style2">
                    <asp:Button ID="DelEvl" runat="server" Text="删除评价" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="120px" OnClick="DelEvl_Click"  />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
