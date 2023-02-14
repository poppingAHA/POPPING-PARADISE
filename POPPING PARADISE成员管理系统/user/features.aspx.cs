using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data; //第一步：引用两个Using.第一个。相关的数据表功能，第二个：ADO.NET类库！！！
using System.Data.SqlClient;    //----第二个：ADO.NET类库！！！
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POPPING_PARADISE成员管理系统
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void DisplayUserInfo(string strSQL)  //这是一个通过用户名查询用户信息。并显示在Gridview中的方法！@！！
        {
            //---具体实现：
            //====================================================================================================--具体实现：
            //第二步：创建Connection连接对象
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

            //第三步：.打开连接conn.Open();
            conn.Open();

            //第四步： SQL查询语句
            //string sql = "SELECT* FROM [tbUser] where [用户]='张三' and [密码]='123'";
            string sql = strSQL; // "SELECT * FROM [sysUser]";


            //第五步：创建SqlDataAdapter数据适配器。即接口。
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);

            //第六步：  1--创建DataSet   2--- 并把数据填充进去
            DataSet ds = new DataSet(); //创建一个内存中的数据库，里面是表的集合。
            da.Fill(ds); //把数据库填充到数据集中。

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            //第八步：断开数据库连接
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mySQL = "SELECT * FROM [member]";
            DisplayUserInfo(mySQL);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string mySQL = "SELECT * FROM [member] where [性别]=N'" + DropDownList1.SelectedValue + "'";
            DisplayUserInfo(mySQL);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string mySQL = "SELECT * FROM [member] where [用户名]   like N'%" + tbMoHu.Text.Trim() + "'";
            DisplayUserInfo(mySQL);
        }
    }
}