using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AceCoffeepage.Objects.Models
{
    public class Coffees
    {
        public Guid Id { get; set; } = new Guid();
        public string CoffeeName { get; set; }
        public double CoffeePrice { get; set; }
    }
}
