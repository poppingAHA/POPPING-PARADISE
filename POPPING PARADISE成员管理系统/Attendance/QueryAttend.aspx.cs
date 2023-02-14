using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POPPING_PARADISE成员管理系统.Attendance
{
    public partial class QueryAttend : System.Web.UI.Page
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

            GVTime.DataSource = ds.Tables[0];
            GVTime.DataBind();

            //第八步：断开数据库连接
            conn.Close();
        }

        //按时间查询出勤情况
        protected void btmTime_Click(object sender, EventArgs e)
        {
            string mySQL = "SELECT * FROM [attendance] where [日期] ='" + toRiQi.Text.Trim() + "'";
            DisplayUserInfo(mySQL);
        }

        //按成员ID查询出勤情况
        protected void btmMID_Click(object sender, EventArgs e)
        {
            string mySQL = "SELECT * FROM [attendance] where [成员] ='" + toMID.Text.Trim() + "'";
            DisplayUserInfo(mySQL);
        }

    }
}