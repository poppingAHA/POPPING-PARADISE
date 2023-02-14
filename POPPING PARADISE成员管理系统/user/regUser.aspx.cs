using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POPPING_PARADISE成员管理系统.user
{
    public partial class regUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            QueryDataToGridview("select * from member");
        }

        protected void Button1_Click(object sender, EventArgs e)
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
            cmd.CommandText = "INSERT INTO member(姓名,用户名,密码,性别,职务) VALUES(N'" + tbName.Text + "',N'" + tbUser.Text + "',N'" + tbKey.Text + "',N'" + tbSex.Text + "',N'" + tbPost.Text + "')";
            // 如果是更新，这样写：  cmd.CommandText = "UPDATE [tbUser] SET  [密码] =N'123'  WHERE [用户] =N'张三'";
            //      或类似： cmd.CommandText = "UPDATE [tbUser] SET  [用户] =N'" + tbName.Text + "', [性别] =N'" + tbSex.Text + "', [职务] =N'" + tbPosition.Text + "', [电话] =N'" + tbPhone.Text + "',[权限] =N'" + tbRight.Text + "'WHERE [Id] =" + lbID.Text;
            //如果是删除，这样写：   cmd.CommandText = "DELETE FROM  [tbUser] WHERE [Id] = " + lbID.Text;

            //第六步：执行SQL语句：
            if (cmd.ExecuteNonQuery() > 0)
            {
                QueryDataToGridview("select * from member");
                Response.Write("<script>window.alert('注册成功！')</script>");
                //重新显示全部数据
            }
            else
                Response.Write("<script>window.alert('注册失败！')</script>");
            // 第七步：关门数据库连接
            conn.Close();
        }

        /// <summary>
        /// 同样的道理，写一个公用的方法！！！
        /// </summary>
        /// <param name="strSQL"></param>
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
    }
}