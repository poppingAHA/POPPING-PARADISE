<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyStage.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.stage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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

    <%-- 舞台信息表 修改、删除 --%>
    <div style="margin-bottom:50px;">
        <h3 style="text-align:center;font-weight:bold;">舞台经历信息表</h3>
        <div style="margin-left:50px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="stId" EmptyDataText="没有可显示的数据记录。" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1100px" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="stId" HeaderText="stId" ReadOnly="True" SortExpression="stId" />
                    <asp:BoundField DataField="stName" HeaderText="stName" SortExpression="stName" />
                    <asp:BoundField DataField="表演日期" HeaderText="表演日期" SortExpression="表演日期" />
                    <asp:BoundField DataField="表演人员" HeaderText="表演人员" SortExpression="表演人员" />
                    <asp:BoundField DataField="公众号链接" HeaderText="公众号链接" SortExpression="公众号链接" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDBConnectionString2 %>" DeleteCommand="DELETE FROM [stage] WHERE [stId] = @stId" InsertCommand="INSERT INTO [stage] ([stName], [表演日期], [表演人员], [公众号链接]) VALUES (@stName, @表演日期, @表演人员, @公众号链接)" ProviderName="<%$ ConnectionStrings:myDBConnectionString2.ProviderName %>" SelectCommand="SELECT [stId], [stName], [表演日期], [表演人员], [公众号链接] FROM [stage]" UpdateCommand="UPDATE [stage] SET [stName] = @stName, [表演日期] = @表演日期, [表演人员] = @表演人员, [公众号链接] = @公众号链接 WHERE [stId] = @stId">
                <DeleteParameters>
                    <asp:Parameter Name="stId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="stName" Type="String" />
                    <asp:Parameter DbType="Date" Name="表演日期" />
                    <asp:Parameter Name="表演人员" Type="Int32" />
                    <asp:Parameter Name="公众号链接" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="stName" Type="String" />
                    <asp:Parameter DbType="Date" Name="表演日期" />
                    <asp:Parameter Name="表演人员" Type="Int32" />
                    <asp:Parameter Name="公众号链接" Type="String" />
                    <asp:Parameter Name="stId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    
    <%-- 舞台图片及简介 --%>
	<div id="gtco-features" class="border-bottom">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>舞台经历</h2>
					<p>POPPIN PARADISE的成员们都有着或多或少的不同的舞台经历，每一次舞台都是一次精彩独特的记忆。</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<%--<i class="ti-vector"></i>--%>
                            <img src="../images/img_1.jpg" alt="Alternate Text" style="display:block;width:200px;height:180px;"/>
						</span>
						<h3>十二周年庆队员秀</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<%--<i class="ti-tablet"></i>--%>
							<img src="../images/img_3.jpg" alt="Alternate Text" style="display:block;width:200px;height:180px;"/>
						</span>
						<h3>十三周年学员秀</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<%--<i class="ti-settings"></i>--%>
							<img src="../images/img_2.jpg" alt="Alternate Text" style="display:block;width:200px;height:180px;"/>
						</span>
						<h3>十二届学员考团</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<%--<i class="ti-ruler-pencil"></i>--%>
							<img src="../images/img_4.jpg" alt="Alternate Text" style="display:block;width:200px;height:180px;"/>
						</span>
						<h3>十三届学员考团</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<%--<i class="ti-paint-roller"></i>--%>
							<img src="../images/img_4.jpg" alt="Alternate Text" style="display:block;width:200px;height:180px;"/>
						</span>
						<h3>Apple crew十三届迎新晚会</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<img src="../images/img_5.jpg" alt="Alternate Text" style="display:block;width:200px;height:180px;"/>
						</span>
						<h3>十三届学员考团十三届迎新视频</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<img src="../images/img_6.jpg" alt="Alternate Text" style="display:block;width:200px;height:180px;"/>
						</span>
						<h3>十二届学员考团</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<img src="../images/img_1.jpg" alt="Alternate Text" style="display:block;width:200px;height:180px;"/>
						</span>
						<h3>开场秀</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>

			</div>
		</div>
	</div>

    
</asp:Content>
