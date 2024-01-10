using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AceCoffeepage.Objects.Models
{
    public class CoffeesAddIns
    {
        public Guid Id { get; set; } = new Guid();
        public string AddName { get; set; }
        public double AddPrice { get; set; }
    }
}
