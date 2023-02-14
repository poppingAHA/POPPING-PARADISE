<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertAttend.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.attendance" %>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
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
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/img_3.jpg)">
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

    <%-- 完整考勤表 --%>
    <div>
        <p style="text-align:center;font-weight:bold;">
            <br />
            POPPING成员考勤表
        </p>
        <div style="margin-left:50px;">         
            <asp:GridView ID="attend" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" EmptyDataText="没有可显示的数据记录。" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1100px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="成员" HeaderText="成员" SortExpression="成员" />
                    <asp:BoundField DataField="日期" HeaderText="日期" SortExpression="日期" />
                    <asp:BoundField DataField="出勤情况" HeaderText="出勤情况" SortExpression="出勤情况" />
                    <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDBConnectionString2 %>" DeleteCommand="DELETE FROM [attendance] WHERE [Id] = @Id" InsertCommand="INSERT INTO [attendance] ([成员], [日期], [出勤情况], [备注]) VALUES (@成员, @日期, @出勤情况, @备注)" ProviderName="<%$ ConnectionStrings:myDBConnectionString2.ProviderName %>" SelectCommand="SELECT [Id], [成员], [日期], [出勤情况], [备注] FROM [attendance]" UpdateCommand="UPDATE [attendance] SET [成员] = @成员, [日期] = @日期, [出勤情况] = @出勤情况, [备注] = @备注 WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="成员" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="日期" />
                    <asp:Parameter Name="出勤情况" Type="String" />
                    <asp:Parameter Name="备注" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="成员" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="日期" />
                    <asp:Parameter Name="出勤情况" Type="String" />
                    <asp:Parameter Name="备注" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>           
        </div>

        <%-- 添加出勤记录（包括加练记录） --%>
        <div style="text-align:center;margin-bottom:50px;">
            <table style="margin-left:450px;">
                <tr>
                    <td class="auto-style1">成员ID：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="MemberID" runat="server"></asp:TextBox>
                    </td>
                </tr>      
                <tr>
                    <td class="auto-style1">日期：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="attdate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">出勤情况：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="att" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">备注：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tips" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="AddAtt" runat="server" Text="添加出勤记录" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="120px" OnClick="AddAtt_Click"  />
                    </td>
                </tr>
            </table>
        </div>

    </div>
</asp:Content>
