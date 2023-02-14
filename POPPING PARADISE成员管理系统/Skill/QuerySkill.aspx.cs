using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data; // 调用数据表，等功能。
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POPPING_PARADISE成员管理系统
{
    public partial class skill : System.Web.UI.Page
    {
        myDBEntities db = new myDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void QueryElm_Click(object sender, EventArgs e) //添加元素信息
        {
            //第一步：查询出信息
            var theuu = db.skill.FirstOrDefault(cc => cc.元素名称 == tbName.Text);
            //第二步：放在theuu中的数据， 取出来，赋值给各变量
            tbIntro.Text = theuu.元素简介;
            tbVedio.Text = theuu.视频;

        }

    }
}