using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POPPING_PARADISE成员管理系统.Skill
{
    public partial class InsertSkill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //新增元素
        protected void AddSkill_Click(object sender, EventArgs e)
        {
            try
            {

                string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

                conn.Open();

                SqlCommand cmd = conn.CreateCommand(); //在数据库连接的对象中。创建一个命令！

                //设置对应的插入记录的SQL语句：
                cmd.CommandText = "INSERT INTO skill(元素名称,元素简介,视频) VALUES(N'" + tbSkill.Text + "',N'" + tbIntro.Text + "','" + tbVedio.Text + "')";

                //执行SQL语句：
                if (cmd.ExecuteNonQuery() > 0)
                {
                    QueryDataToGVSkill("select * from skill");
                    Response.Write("<script>window.alert('添加成功！')</script>");
                    //重新显示全部数据
                }
                else
                    Response.Write("<script>window.alert('添加失败！')</script>");
                // 第七步：关门数据库连接
                conn.Close();


            }
            catch
            {
                Response.Write("<script>alert('添加异常')</script>");
            }
        }

        //显示新增数据后的表
        void QueryDataToGVSkill(string strSQL)
        {           
            //第二步：创建Connection连接对象
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，

            //第三步：.打开连接conn.Open();
            conn.Open();

            //第四步： SQL查询语句            
            string sql = strSQL; // "SELECT * FROM [sysUser]";


            //第五步：创建SqlDataAdapter数据适配器。即接口。
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);

            //第六步：  1--创建DataSet   2--- 并把数据填充进去
            DataSet ds = new DataSet(); //创建一个内存中的数据库，里面是表的集合。
            da.Fill(ds); //把数据库填充到数据集中。

            GVSkill.DataSource = ds.Tables[0];
            GVSkill.DataBind();

            //第八步：断开数据库连接
            conn.Close();
        }
    }
}