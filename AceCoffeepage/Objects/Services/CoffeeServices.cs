using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using AceCoffeepage.Objects.Models;


namespace AceCoffeepage.Objects.Services
{
    public class CoffeeServices
    {
        public static string CreateCoffee(string coffeeName, double coffeePrice)
        {
            try
            {
                List<Coffees> listOfCoffee = GetAllCoffee();
                bool existingCoffee = listOfCoffee.Any(x => x.CoffeeName == coffeeName);

                if (existingCoffee)
                {
                    // Coffee with the same name already exists, update its price
                    return "Coffee is already exists.";
                }
                else
                {
                    // Coffee doesn't exist, add a new one
                    listOfCoffee.Add(new Coffees
                    {
                        CoffeeName = coffeeName,
                        CoffeePrice = coffeePrice
                    });
                    SaveAllCoffee(listOfCoffee);
                    return "success";
                }
            }
            catch (Exception ex)
            {
                return $"Error in CreateOrUpdateCoffee: {ex.Message}";
            }
        }

        public static string UpdateCoffee(string coffeeName, double coffeePrice)
        {
            try
            {
                List<Coffees> listOfCoffee = GetAllCoffee();
                Coffees existingCoffee = listOfCoffee.FirstOrDefault(x => x.CoffeeName == coffeeName);

                if (existingCoffee != null)
                {
                    existingCoffee.CoffeePrice = coffeePrice;
                    SaveAllCoffee(listOfCoffee);
                    return "success";
                }
                else
                {
                    return "The coffee is not exits.";
                }
            }
            catch (Exception ex)
            {
                return $"Error in CreateOrUpdateCoffee: {ex.Message}";
            }
        }


        public static List<Coffees> GetAllCoffee()
        {
            string coffeeFilePath = Helper.GetCoffeeFilePath();
            if (!File.Exists(coffeeFilePath))
            {
                return new List<Coffees>();
            }
            var json = File.ReadAllText(coffeeFilePath);
            return JsonSerializer.Deserialize<List<Coffees>>(json);
        }

        public static void SeedCoffee()
        {
            //CreateCoffee("Espresso", 2.99);
            //CreateCoffee("Latte", 3.49);
            //CreateCoffee("Cappuccino", 3.99);
        }

        public static Coffees GetByName(string coffeeName)
        {
            List<Coffees> listOfCoffee = GetAllCoffee();
            return listOfCoffee.FirstOrDefault(x => x.CoffeeName == coffeeName);
        }

        public static List<Coffees> DeleteCoffee(string coffeeName)
        {
            List<Coffees> listOfCoffee = GetAllCoffee();
            Coffees coffee = listOfCoffee.FirstOrDefault(x => x.CoffeeName == coffeeName);

            if (coffee == null)
            {
                throw new Exception("Coffee not available.");
            }

            listOfCoffee.Remove(coffee); // Remove the coffee from the list
            SaveAllCoffee(listOfCoffee); // Save the updated list of coffees
            return listOfCoffee; // Return the updated list of coffees
        }

        private static void SaveAllCoffee(List<Coffees> coffee)
        {
            string coffeeFilePath = Helper.GetCoffeeFilePath();
            string appCoffeeFilePath = Helper.GetAppDirectoryPath();
            try
            {
                if (!Directory.Exists(appCoffeeFilePath))
                {
                    Directory.CreateDirectory(appCoffeeFilePath);
                }

                var json = JsonSerializer.Serialize(coffee);

                // Write the JSON content to the file
                using (StreamWriter streamWriter = File.CreateText(coffeeFilePath))
                {
                    streamWriter.Write(json);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error while saving coffee data: {ex.Message}");
            }
        }
    }
}
