using System;
using System.Collections.Generic;

#nullable disable

namespace APIBlog.Models
{
    public partial class AspNetUserRole
    {
        public int UserId { get; set; }
        public string RoleId { get; set; }

        public virtual AspNetRole Role { get; set; }
    }
}
