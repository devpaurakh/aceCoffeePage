using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AceCoffeepage.Objects.Enumeration;

namespace AceCoffeepage.Objects.Models
{
    public class Customer
    {
        public required string CustomerNumber { get; set; }
        public int Frequency { get; set; } = 1;
    }
}
