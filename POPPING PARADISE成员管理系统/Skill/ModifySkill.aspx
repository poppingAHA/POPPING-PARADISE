<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifySkill.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.Skill.ModifySkill" %>
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
    
    <%-- 修改、删除 --%>
    <div>
        <h3 style="text-align:center;">各元素掌握情况表</h3>
        <div style="margin-left:0px;">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="skId" DataSourceID="SqlDataSource1" EmptyDataText="没有可显示的数据记录。" Width="1200px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="skId" HeaderText="skId" ReadOnly="True" SortExpression="skId" />
                    <asp:BoundField DataField="元素名称" HeaderText="元素名称" SortExpression="元素名称" />
                    <asp:BoundField DataField="元素简介" HeaderText="元素简介" SortExpression="元素简介" />
                    <asp:BoundField DataField="视频" HeaderText="视频" SortExpression="视频" />
                    <asp:BoundField DataField="元素掌握人员" HeaderText="元素掌握人员" SortExpression="元素掌握人员" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDBConnectionString2 %>" DeleteCommand="DELETE FROM [skill] WHERE [skId] = @skId" InsertCommand="INSERT INTO [skill] ([元素名称], [元素简介], [视频], [元素掌握人员]) VALUES (@元素名称, @元素简介, @视频, @元素掌握人员)" ProviderName="<%$ ConnectionStrings:myDBConnectionString2.ProviderName %>" SelectCommand="SELECT [skId], [元素名称], [元素简介], [视频], [元素掌握人员] FROM [skill]" UpdateCommand="UPDATE [skill] SET [元素名称] = @元素名称, [元素简介] = @元素简介, [视频] = @视频, [元素掌握人员] = @元素掌握人员 WHERE [skId] = @skId">
                <DeleteParameters>
                    <asp:Parameter Name="skId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="元素名称" Type="String" />
                    <asp:Parameter Name="元素简介" Type="String" />
                    <asp:Parameter Name="视频" Type="String" />
                    <asp:Parameter Name="元素掌握人员" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="元素名称" Type="String" />
                    <asp:Parameter Name="元素简介" Type="String" />
                    <asp:Parameter Name="视频" Type="String" />
                    <asp:Parameter Name="元素掌握人员" Type="Int32" />
                    <asp:Parameter Name="skId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
