<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertEvl.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.evaluation" %>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
			width: 87px;
			text-align: right;
			font-size:18px;
        }
        .auto-style2 {
            width: 200px;
			font-size:18px;
        }
        #wrap{
			width: 530px;
			margin: 20px auto 0;
			height: 900px;
			margin-bottom:500px;
		}
		h1{
			margin-bottom: 20px;
			text-align: center;
			font-size: 35px;
			font-family: tahoma;
			color: black;
		}
		#form-wrap{
			overflow: hidden;
			height: 447px;
			position: relative;
			top: 0px;
			transition: all 1s ease-in-out .3s;
		}
		#form-wrap:before{
			content: "";
			position: absolute;
			bottom: 128px;
			left: 0px;
			background: url('../images/before.png');
			width: 530px;
			height: 317px;
		}
		#form-wrap:after{
			content: "";
			position: absolute;
			bottom: 0px;
			left: 0;
			background: url('../images/after.png');
			width: 530px;
			height: 259px;
		}
		#form-wrap.hide:after,
		#form-wrap.hide:before{
			display: none;
		}
		#form-wrap:hover{
			height: 677px;
			top: -100px;
		}
		#letter{
			background: url('../images/letter_bg.png');
			position: relative;
			top: 200px;
			overflow: hidden;
			height: 200px;
			width: 400px;
			margin: 0px auto;
			padding: 20px;
			border: 1px solid white;
			border-right: 3px;
			transition: all 1s ease-in-out .3s;
		}
		#form-wrap:hover #letter{
			height: 530px;
		}
		lable{
			margin: 11px 20px 0 0;
			font-size: 15px;
			color: gray;
			text-transform: uppercase;
		}
		input[type=text], textarea{
			font: 14px normal uppercase, arial, serif;
			color: dimgray;
			background: none;
			width: 380px;
			height: 37px;
			padding: 0px 10px;
			margin: 0 0 10px 0;
			border: 1px solid #BDBDBD;
			border-radius: 5px;
		}
		textarea{
			height: 80px;
			padding-top: 14px;
		}
		textarea:focus,
		input[type=text]:focus{
			background: url('../images/letter_bg.png');
		}
		#form-wrap input[type=submit]{
			position: relative;
			font-family: tahoma;
			font-size: 24px;
			color: gray;
			width: 300px;
			text-align: center;
			opacity: 0;
			background: none;
			cursor: pointer;
			border-radius: 3px;
			transition: opacity 0.7s ease-in-out 0s;
		}
		#form-wrap:hover input[type=submit]{
			z-index: 1;
			opacity: 1;
			transition: opacity 0.5s ease-in-out 1.3s;
		}
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/img_5.jpg);margin-bottom:20px;">
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

    <%-- 评价信息的新增 --%>
    <div id="wrap">
		<h1>SEND A MESSAGE</h1>
		<br><br><br>
		<div id="form-wrap">
			<div style="text-align:center;" id="letter">
                <h3 style="text-align:center;font-weight:bold;">评价</h3>
                <div>
                    <table>
                        <tr>
                            <td class="auto-style1">被评价者：</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="tbRatee" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">评语：</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="tbContent" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp</td>
                            <td class="auto-style2">
                                <asp:Button ID="AddEva" runat="server" Text="添加评价" BackColor="#A55129" BorderColor="#DEBA84" BorderWidth="3px" Font-Bold="True" ForeColor="White" Width="120px" OnClick="AddEva_Click" Font-Size="Medium" Height="40px" />
                            </td>
                        </tr>
                    </table>
                </div>               
        
            </div>
		</div>
	</div>

	<div style="margin-left:50px;margin-top:50px;">
        <asp:GridView ID="GVEvaluation" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1100px">
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
