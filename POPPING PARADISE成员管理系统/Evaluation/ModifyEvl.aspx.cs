using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POPPING_PARADISE成员管理系统.Evaluation
{
    public partial class ModifyEvl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void DisplayUserInfo(string strSQL)
        {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

            //打开连接conn.Open();
            conn.Open();

            //SQL查询语句
            string sql = "SELECT * FROM [evaluation] where [被评价者]=  '" + tbEID1.Text.Trim() + "'";

            //创建SqlDataAdapter数据适配器。即接口。
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);

            // 1--创建DataSet   2--- 并把数据填充进去
            DataSet ds = new DataSet(); //创建一个内存中的数据库，里面是表的集合。
            da.Fill(ds); //把数据库填充到数据集中。

            queryEvaluation.DataSource = ds.Tables[0];
            queryEvaluation.DataBind();

            //断开数据库连接
            conn.Close();
        }

        //查找被评价者
        protected void QueryEvl_Click(object sender, EventArgs e)
        {
            string mySQL = "SELECT * FROM [evaluation] WHERE [被评价者] = '" + tbEID1.Text.Trim() + "'";
            DisplayUserInfo(mySQL);
        }

        //修改评价
        protected void ModifyEvaluation_Click(object sender, EventArgs e)
        {
            //创建Connection连接对象
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

            //打开连接conn.Open();
            conn.Open();

            //创建SqlCommand命令对象
            SqlCommand cmd = conn.CreateCommand(); //在数据库连接的对象中。创建一个命令！

            //设置对应的插入记录的SQL语句：
            cmd.CommandText = "UPDATE [evaluation] SET [被评价者] =N'" + tbEID2.Text + "', [内容] =N'" + tbContent1.Text + "'WHERE [Id] ='" + tbID.Text.Trim() + "'";

            //执行SQL语句：
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>window.alert('修改成功！')</script>");
            }
            else
                Response.Write("<script>window.alert('修改失败！')</script>");
            //关门数据库连接
            conn.Close();
        }

        //删除评价
        protected void DelEvl_Click(object sender, EventArgs e)
        {
            //创建Connection连接对象
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

            //打开连接conn.Open();
            conn.Open();

            //创建SqlCommand命令对象
            SqlCommand cmd = conn.CreateCommand(); //在数据库连接的对象中。创建一个命令！

            //设置对应的插入记录的SQL语句：
            cmd.CommandText = "DELETE FROM  [evaluation] WHERE [Id] ='" + tbID.Text.Trim() + "'";

            //执行SQL语句：
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>window.alert('删除成功！')</script>");
            }
            else
            {
                Response.Write("<script>window.alert('删除失败！')</script>");
                tbEID2.Text = tbContent1.Text = "";
                tbEID1.Text = "";
            }

            //关门数据库连接
            conn.Close();
        }

        //按评语的Id查找
        protected void queryID_Click(object sender, EventArgs e)
        {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

            //打开连接conn.Open();
            conn.Open();

            //SQL查询语句
            string sql = "SELECT * FROM [evaluation] where [Id]=  '" + tbID.Text.Trim() + "'";

            //创建SqlDataAdapter数据适配器。即接口。
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);

            // 1--创建DataSet   2--- 并把数据填充进去
            DataSet ds = new DataSet(); //创建一个内存中的数据库，里面是表的集合。
            da.Fill(ds); //把数据库填充到数据集中。

            DataTable myTable = ds.Tables[0];
            tbEID2.Text = myTable.Rows[0][1].ToString();
            tbContent1.Text = myTable.Rows[0][2].ToString();

            //断开数据库连接
            conn.Close();
        }
    }
}