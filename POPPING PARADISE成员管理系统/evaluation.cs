//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace POPPING_PARADISE成员管理系统
{
    using System;
    using System.Collections.Generic;
    
    public partial class evaluation
    {
        public int Id { get; set; }
        public int 被评价者 { get; set; }
        public string 内容 { get; set; }
        public System.DateTime 日期 { get; set; }
    
        public virtual member member { get; set; }
    }
}
