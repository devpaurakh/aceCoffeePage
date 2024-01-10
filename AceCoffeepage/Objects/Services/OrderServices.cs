using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using AceCoffeepage.Objects.Models;


namespace AceCoffeepage.Objects.Services
{
    public class OrderServices
    {
        public static List<OrderCoffee> GetAllOrders()
        {
            string orderFilePath = Helper.GetOrderFilePath();
            if (File.Exists(orderFilePath))
            {
                var json = File.ReadAllText(orderFilePath);
                return JsonSerializer.Deserialize<List<OrderCoffee>>(json);
            }
            return new List<OrderCoffee>();
        }

        public static string CreateNewOrder(string CoffeeName, double CoffeePrice, string AddFlavorName, double AddFlavorPrice, string CustomerNumber, double TotalPrice)
        {
            if (string.IsNullOrEmpty(CoffeeName))
            {
                Console.WriteLine("empty coffee");
                return "Coffee name is empty!";
            }

            if (CoffeePrice <= 0)
            {
                Console.WriteLine("empty price");

                return "Invalid coffee price!";
            }

            if (string.IsNullOrEmpty(CustomerNumber))
            {
                Console.WriteLine("empty customer");

                return $"The customer number is empty!{CustomerNumber}";
            }
            else
            {

                if (!ServiceCustomer.UpdateCustomer(CustomerNumber))
                {
                    ServiceCustomer.CreateCustomer(CustomerNumber);

                }
            }

            List<OrderCoffee> orders = GetAllOrders();

            orders.Add(new OrderCoffee
            {
                CoffeeName = CoffeeName,
                CoffeePrice = CoffeePrice,
                AddFlavorName = AddFlavorName,
                AddFlavorPrice = AddFlavorPrice,
                CustomerPhoneNumber = CustomerNumber,
                TotalPrice = TotalPrice,
            });

            SaveAllOrders(orders);
            return "success";
        }

        public static void SaveAllOrders(List<OrderCoffee> orders)
        {
            string orderFilePath = Helper.GetOrderFilePath();
            string appDirectoryFilePath = Helper.GetAppDirectoryPath();

            if (!Directory.Exists(appDirectoryFilePath))
                Directory.CreateDirectory(appDirectoryFilePath);

            var json = JsonSerializer.Serialize(orders);
            File.WriteAllText(orderFilePath, json);
        }
    }
}
