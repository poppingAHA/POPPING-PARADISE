<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="features.aspx.cs" Inherits="POPPING_PARADISE成员管理系统._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/img_2.jpg)">
		<div class="overlay">
            <br />
            </div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">See Our</span>
							<h1>Awesome Features</h1>	
						</div>
						
					</div>
							
					
				</div>
			</div>
		</div>
	</header>

	<div id="selectInfo" style="margin-top:40px;">
        <p style="text-align:center;padding-top:20px;">
			综合查询用户信息：
        </p>
        <table style="margin-left:200px;">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#FF6600" BorderColor="#CC3300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="#666666" Height="36px" Text="全部用户信息" Width="150px" OnClick="Button1_Click" />
                </td>
				<td>&nbsp&nbsp 性别：&nbsp&nbsp</td>
				<td>
					<asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="50px">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
				</td>
				<td>                   
                    <asp:Button ID="Button2" runat="server" BackColor="#FF6600" BorderColor="#CC3300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="#666666" Height="36px" Text="按性别查用户信息" Width="150px" OnClick="Button2_Click"/>
				</td>
				<td>&nbsp&nbsp 用户名 &nbsp&nbsp</td>
				<td>
                    <asp:TextBox ID="tbMoHu" runat="server"></asp:TextBox>
				</td>
				<td class="auto-style1">
					<asp:Button ID="Button3" runat="server" BackColor="#FF6600" BorderColor="#CC3300" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="#666666" Height="36px" Text="模糊用户信息" Width="150px" OnClick="Button3_Click"  />
				</td>
            </tr>
			<tr>
				<td colspan="7">
					<asp:GridView ID="GridView1" runat="server" Width="100%" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                        <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#93451F" />
					</asp:GridView>
				</td>
			</tr>
        </table>
    </div>

	<div id="gtco-features" class="border-bottom">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Splash Features</h2>
					<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="ti-vector"></i>
						</span>
						<h3>Pixel Perfect</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="ti-tablet"></i>
						</span>
						<h3>Fully Responsive</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="ti-settings"></i>
						</span>
						<h3>Web Development</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="ti-ruler-pencil"></i>
						</span>
						<h3>Web Design</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="ti-paint-roller"></i>
						</span>
						<h3>Accent Colours</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="ti-announcement"></i>
						</span>
						<h3>Theme Updates</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="ti-stats-up"></i>
						</span>
						<h3>Increase Earnings</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="feature-center animate-box" data-animate-effect="fadeIn">
						<span class="icon">
							<i class="ti-magnet"></i>
						</span>
						<h3>Passive Income</h3>
						<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. </p>
					</div>
				</div>

			</div>
		</div>
	</div>

    
	
		
</asp:Content>
