using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POPPING_PARADISE成员管理系统.user
{
    public partial class ModifyUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QueryDataToGridview("select * from member");
        }

        void QueryDataToGridview(string strSQL)
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
            //---具体实现：
            //====================================================================================================--具体实现：
            //第二步：创建Connection连接对象
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

            //第三步：.打开连接conn.Open();
            conn.Open();

            //第四步： SQL查询语句
            //string sql = "SELECT* FROM [tbUser] where [用户]='张三' and [密码]='123'";
            string sql = "SELECT * FROM [member] where [用户名]=  N'" + tbQueyUser.Text.Trim() + "'";


            //第五步：创建SqlDataAdapter数据适配器。即接口。
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);

            //第六步：  1--创建DataSet   2--- 并把数据填充进去
            DataSet ds = new DataSet(); //创建一个内存中的数据库，里面是表的集合。
            da.Fill(ds); //把数据库填充到数据集中。

            DataTable myTable = ds.Tables[0];
            lbHide_ID.Text = myTable.Rows[0][0].ToString();
            tbName.Text = myTable.Rows[0][1].ToString();
            tbUser.Text = myTable.Rows[0][2].ToString();
            tbKey.Text = myTable.Rows[0][3].ToString();
            tbSex.Text = myTable.Rows[0][4].ToString();
            tbPost.Text = myTable.Rows[0][7].ToString();


            //第八步：断开数据库连接
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //--具体实现：====================================================================================================--具体实现：

            //第二步：创建Connection连接对象
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

            //第三步：.打开连接conn.Open();
            conn.Open();

            //第四步： 创建SqlCommand命令对象
            SqlCommand cmd = conn.CreateCommand(); //在数据库连接的对象中。创建一个命令！

            //第五步：设置对应的插入记录的SQL语句：
            //  cmd.CommandText = "INSERT INTO SysUser(用户名,密码,性别,等级,注册) VALUES(N'" + tbName.Text + "',N'" + tbKey.Text + "',N'" + tbSex.Text + "'," + tbGrade.Text + ",'" + DateTime.Today + "')";
            // cmd.CommandText = "UPDATE [SysUser] SET  [密码] =N'123'  WHERE [用户] =N'张三'";
            cmd.CommandText = "UPDATE [member] SET  [姓名] =N'" + tbName.Text + "', [用户名] =N'" + tbUser.Text + "', [性别] =N'" + tbSex.Text + "', [密码] =N'" + tbKey.Text + "', [职务] =N'" + tbPost.Text + "'WHERE [mId] =" + lbHide_ID.Text;
            //如果是删除，这样写：   cmd.CommandText = "DELETE FROM  [tbUser] WHERE [Id] = " + lbID.Text;

            //第六步：执行SQL语句：
            if (cmd.ExecuteNonQuery() > 0)
            {
                QueryDataToGridview("select * from [member]");
                Response.Write("<script>window.alert('修改成功！')</script>");
                //重新显示全部数据
            }
            else
                Response.Write("<script>window.alert('修改失败！')</script>");
            // 第七步：关门数据库连接
            conn.Close();

            //添加新数据了！  重新显示一下！
            QueryDataToGridview("select * from [member]");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //--具体实现：====================================================================================================--具体实现：

            //第二步：创建Connection连接对象
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

            //第三步：.打开连接conn.Open();
            conn.Open();

            //第四步： 创建SqlCommand命令对象
            SqlCommand cmd = conn.CreateCommand(); //在数据库连接的对象中。创建一个命令！

            //第五步：设置对应的插入记录的SQL语句：
            //  cmd.CommandText = "INSERT INTO SysUser(用户名,密码,性别,等级,注册) VALUES(N'" + tbName.Text + "',N'" + tbKey.Text + "',N'" + tbSex.Text + "'," + tbGrade.Text + ",'" + DateTime.Today + "')";
            // cmd.CommandText = "UPDATE [SysUser] SET  [密码] =N'123'  WHERE [用户] =N'张三'";
            //  cmd.CommandText = "UPDATE [SysUser] SET  [用户名] =N'" + tbName.Text + "', [性别] =N'" + tbSex.Text + "', [密码] =N'" + tbKey.Text + "', [等级] =" + tbGrade.Text + "WHERE [Id] =" + lbHide_ID.Text;
            cmd.CommandText = "DELETE FROM  [member] WHERE [mId] = " + lbHide_ID.Text;

            //第六步：执行SQL语句：
            if (cmd.ExecuteNonQuery() > 0)
            {
                QueryDataToGridview("select * from [member]");
                Response.Write("<script>window.alert('删除成功！')</script>");
                //重新显示全部数据
                tbPost.Text = tbKey.Text = tbName.Text = tbUser.Text = tbQueyUser.Text = tbSex.Text = "";
                tbQueyUser.Text = "";
            }
            else
                Response.Write("<script>window.alert('删除失败！')</script>");
            // 第七步：关门数据库连接
            conn.Close();

            //添加新数据了！  重新显示一下！
            QueryDataToGridview("select * from [member]");
        }
    }
}