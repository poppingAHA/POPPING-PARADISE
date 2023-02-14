<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="personalInfo.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.personalInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/img_4.jpg)">
		
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

	<div class="overlay">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="mId" DataSourceID="SqlDataSource1" EmptyDataText="没有可显示的数据记录。" BorderStyle="None" BorderWidth="1px" CssClass="block" Height="300px" HorizontalAlign="Center" Width="1200px" BackColor="#DEBA84" BorderColor="#DEBA84" CellPadding="3" CellSpacing="2">
            <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="用户名" HeaderText="用户名" SortExpression="用户名" />
                <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="学院" HeaderText="学院" SortExpression="学院" />
                <asp:BoundField DataField="班级" HeaderText="班级" SortExpression="班级" />
                <asp:BoundField DataField="职务" HeaderText="职务" SortExpression="职务" />
                <asp:BoundField DataField="邮箱" HeaderText="邮箱" SortExpression="邮箱" />
                <asp:BoundField DataField="等级" HeaderText="等级" SortExpression="等级" />
                <asp:BoundField DataField="爱好" HeaderText="爱好" SortExpression="爱好" />
                <asp:BoundField DataField="座右铭" HeaderText="座右铭" SortExpression="座右铭" />
            </Columns>
            <EditRowStyle BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" />
            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BorderStyle="Solid" ForeColor="White" BackColor="#A55129" Font-Bold="True" />
            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#8C4510" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#B95C30" />
            <SortedDescendingCellStyle HorizontalAlign="Center" BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDBConnectionString1 %>" DeleteCommand="DELETE FROM [member] WHERE [mId] = @mId" InsertCommand="INSERT INTO [member] ([姓名], [用户名], [密码], [性别], [学院], [班级], [职务], [电话], [邮箱], [等级], [爱好], [座右铭]) VALUES (@姓名, @用户名, @密码, @性别, @学院, @班级, @职务, @电话, @邮箱, @等级, @爱好, @座右铭)" SelectCommand="SELECT [mId], [姓名], [用户名], [密码], [性别], [学院], [班级], [职务], [电话], [邮箱], [等级], [爱好], [座右铭] FROM [member]" UpdateCommand="UPDATE [member] SET [姓名] = @姓名, [用户名] = @用户名, [密码] = @密码, [性别] = @性别, [学院] = @学院, [班级] = @班级, [职务] = @职务, [电话] = @电话, [邮箱] = @邮箱, [等级] = @等级, [爱好] = @爱好, [座右铭] = @座右铭 WHERE [mId] = @mId">
            <DeleteParameters>
                <asp:Parameter Name="mId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="用户名" Type="String" />
                <asp:Parameter Name="密码" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="学院" Type="String" />
                <asp:Parameter Name="班级" Type="String" />
                <asp:Parameter Name="职务" Type="String" />
                <asp:Parameter Name="电话" Type="String" />
                <asp:Parameter Name="邮箱" Type="String" />
                <asp:Parameter Name="等级" Type="Int32" />
                <asp:Parameter Name="爱好" Type="String" />
                <asp:Parameter Name="座右铭" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="用户名" Type="String" />
                <asp:Parameter Name="密码" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="学院" Type="String" />
                <asp:Parameter Name="班级" Type="String" />
                <asp:Parameter Name="职务" Type="String" />
                <asp:Parameter Name="电话" Type="String" />
                <asp:Parameter Name="邮箱" Type="String" />
                <asp:Parameter Name="等级" Type="Int32" />
                <asp:Parameter Name="爱好" Type="String" />
                <asp:Parameter Name="座右铭" Type="String" />
                <asp:Parameter Name="mId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div class="gtco-section border-bottom">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>Beautiful Memory</h2>
					<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="../images/img_2.jpg" class="fh5co-project-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="../images/img_2.jpg" alt="Image" class="img-responsive"/>
						</figure>
						<div class="fh5co-text">
							<h2>Constructive heading</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="../images/img_3.jpg" class="fh5co-project-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="../images/img_3.jpg" alt="Image" class="img-responsive"/>
						</figure>
						<div class="fh5co-text">
							<h2>Constructive heading</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="../images/img_4.jpg" class="fh5co-project-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="../images/img_4.jpg" alt="Image" class="img-responsive"/>
						</figure>
						<div class="fh5co-text">
							<h2>Constructive heading</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
						</div>
					</a>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="../images/img_1.jpg" class="fh5co-project-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="../images/img_1.jpg" alt="Image" class="img-responsive"/>
						</figure>
						<div class="fh5co-text">
							<h2>Constructive heading</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="../images/img_5.jpg" class="fh5co-project-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="../images/img_5.jpg" alt="Image" class="img-responsive"/>
						</figure>
						<div class="fh5co-text">
							<h2>Constructive heading</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="../images/img_6.jpg" class="fh5co-project-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="../images/img_6.jpg" alt="Image" class="img-responsive"/>
						</figure>
						<div class="fh5co-text">
							<h2>Constructive heading</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia..</p>
						</div>
					</a>
				</div>

			</div>
		</div>
	</div>
</asp:Content>
