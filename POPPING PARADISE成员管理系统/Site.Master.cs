using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POPPING_PARADISE成员管理系统
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbUser.Text = Session["CurrentUser"].ToString();

            /*Try
{
                lbUser.Text = Session["User"].ToString();
            }
            Cach
{
                lbUser.Text ="测试用例";
            }*/
        }

        protected void QuitLog_Click(object sender, EventArgs e)
        {
            Session["CurrentUser"] = null;
            Response.Redirect("../user/Login.aspx");

        }
    }
}