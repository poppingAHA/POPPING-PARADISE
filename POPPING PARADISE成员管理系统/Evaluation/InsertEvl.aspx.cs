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
    public partial class evaluation : System.Web.UI.Page
    {
        //myDBEntities db = new myDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        void QueryDataToGVEvalution(string strSQL)
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

            GVEvaluation.DataSource = ds.Tables[0];
            GVEvaluation.DataBind();

            //第八步：断开数据库连接
            conn.Close();
        }

        //查询
        void QueryUserInfo()
        {
            ////第一步：查询出信息
            //var theU = db.evaluation.ToList();
            ////第二步：查询出信息       
            //GVEvaluation.DataSource = theU;
            //GVEvaluation.DataBind();
        }


        //添加评价
        protected void AddEva_Click(object sender, EventArgs e)
        {
            try
            {
                //evaluation AddE = new evaluation();
                //AddE.Id = 0;
                //AddE.被评价者 = int.Parse(tbRatee.Text);
                //AddE.内容 = tbContent.Text;
                //AddE.日期 = DateTime.Now.Date;
                //db.evaluation.Add(AddE);
                //db.SaveChanges();

                //QueryUserInfo();

                string connString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);    //以这样的形式创建，
                
                conn.Open();

                SqlCommand cmd = conn.CreateCommand(); //在数据库连接的对象中。创建一个命令！

                //设置对应的插入记录的SQL语句：
                cmd.CommandText = "INSERT INTO evaluation(被评价者,内容,日期) VALUES('" + tbRatee.Text + "',N'" + tbContent.Text + "','" + DateTime.Today + "')";

                //执行SQL语句：
                if (cmd.ExecuteNonQuery() > 0)
                {
                    QueryDataToGVEvalution("select * from evaluation");
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

        
    }
}