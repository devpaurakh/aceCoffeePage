﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace AceCoffeepage.Objects.Models
{
    public class OrderCoffee
    {
        public Guid Id { get; set; } = Guid.NewGuid();
        public string CoffeeName { get; set; }
        public double CoffeePrice { get; set; }
        public string AddFlavorName { get; set; }
        public double AddFlavorPrice { get; set; }
        public string CustomerPhoneNumber { get; set; }
        public double TotalPrice { get; set; }
        public DateTime OrderDate { get; set; } = DateTime.Now;
    }
}
