using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AceCoffeepage.Objects.Enumeration;

namespace AceCoffeepage.Objects.Models
{
    public class Users
    {
        public string PasswordHash { get; set; }
        public StaffRoles StaffRoles { get; set; }
        public bool HasInitialPassword { get; set; } = true;
        public DateTime CreatedAt { get; set; } = DateTime.Now;
    }
}
