using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POPPING_PARADISE成员管理系统
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //登录
        protected void Login_Click(object sender, EventArgs e)
        {
            //其实，应该在数据库中，查信息。如果有此人，进入系统，否则不能登录！

            //if ((username2.Text != "") && (password3.Text != ""))
            //{
            //    Session["User"] = username2.Text.Trim();

            //    //成功！！
            //    Response.Redirect("features.aspx");   //网页跳转的一种方式！！！！！
            //                                          // Server.Transfer("default.aspx");

            //}
            //else
            //{
            //    //不成功
            //    Response.Write("<script languge='javascript'>alert('登录不成功！请重新输入用户名密码！！！'); </script>");
            //    username2.Text = password3.Text = "";
            //    return;

            //}
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\fouth\vs\POPPING PARADISE成员管理系统\POPPING PARADISE成员管理系统\App_Data\myDB.mdf';Integrated Security=True;MultipleActiveResultSets=True;Connect Timeout=30;Application Name=EntityFramework";
            SqlConnection conn = new SqlConnection(connStr);

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from member where 用户名=@UserName and 密码=@Psd", conn);
                cmd.Parameters.Add("@UserName", SqlDbType.NVarChar);
                cmd.Parameters.Add("@Psd", SqlDbType.NVarChar);
                cmd.Parameters[0].Value = username2.Text;
                cmd.Parameters[1].Value = password3.Text;
                int count = (int)cmd.ExecuteScalar();
                if (count == 1)
                {

                    Session["CurrentUser"] = username2.Text;
                    Response.Redirect("features.aspx");


                }
                else
                {
                    Response.Write("<script>alert('用户名或密码错误')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('登录异常')</script>");
            }

            finally
            {
                conn.Close();
            }

        }

        //注册
        protected void SignUp_Click(object sender, EventArgs e)
        {
            //if ((username1.Text != "") && (password1.Text != "") && (password2.Text != ""))
            //{
            //    if(password1.Text == password2.Text)
            //    {
            //        Session["User"] = username1.Text.Trim();
            //        //成功！！
            //        Response.Write("<script languge='javascript'>alert('注册成功！请登录！'); </script>");
            //    }
            //    else
            //    {
            //        Response.Write("<script languge='javascript'>alert('注册不成功！两次输入的密码不同，请重新输入密码！！！'); </script>");
            //        password1.Text = password2.Text = "";
            //        return;
            //    }

            //}
            //else
            //{
            //    //不成功
            //    Response.Write("<script languge='javascript'>alert('注册不成功！请重新输入用户名密码！！！'); </script>");
            //    username1.Text = password1.Text = password2.Text = "";
            //    return;

            //}

            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='F:\fouth\vs\POPPING PARADISE成员管理系统\POPPING PARADISE成员管理系统\App_Data\myDB.mdf';Integrated Security=True;MultipleActiveResultSets=True;Connect Timeout=30;Application Name=EntityFramework";
            SqlConnection conn = new SqlConnection(connStr);

            try
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                if (password1.Text == password2.Text)   //两次输入的密码一致
                {
                    cmd.CommandText = "INSERT INTO member(用户名,密码) VALUES(N'" + username1.Text + "',N'" + password1.Text + "')";
                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        QueryDataToGridview("select * from member");
                        Response.Write("<script>window.alert('注册成功！')</script>");
                        //重新显示全部数据
                    }
                    else
                        Response.Write("<script>window.alert('注册失败！')</script>");
                }
                else
                {
                    Response.Write("<script>window.alert('注册失败！两次输入的密码不一致！')</script>");
                }
                    

            }
            catch
            {
                Response.Write("<script>alert('注册异常')</script>");
            }

            finally
            {
                conn.Close();
            }
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

            //GridView1.DataSource = ds.Tables[0];
            //GridView1.DataBind();

            //第八步：断开数据库连接
            conn.Close();
        }
    }
}