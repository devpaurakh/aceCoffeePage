using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using AceCoffeepage.Objects.Models;
using AceCoffeepage.Objects.Services;


namespace AceCoffeepage.Objects.Services
{
    internal class AddInsService
    {
        public static List<CoffeesAddIns> GetAllAddIn()
        {
            string addInFilePath = Helper.GetAddInFilePath();
            if (File.Exists(addInFilePath))
            {
                var json = File.ReadAllText(addInFilePath);
                return JsonSerializer.Deserialize<List<CoffeesAddIns>>(json);
            }

            return new List<CoffeesAddIns>();
        }

        public static string CoffeeAddInFlavor(string name, double price)
        {
            try
            {
                List<CoffeesAddIns> addIns = GetAllAddIn();
                bool addInExists = addIns.Any(x => x.AddName == name);

                if (addInExists)
                {
                    return "Flavor already exists.";
                }
                else
                {
                    addIns.Add(
                    new CoffeesAddIns
                    {
                        AddName = name,
                        AddPrice = price
                    });
                    SaveAllAddIn(addIns);
                    return "success";
                }
            }
            catch (Exception ex)
            {
                return $"Enter the valid data {ex}";
            }
        }

        public static string UpdateAddInFlavor(string addName, double addPrice)
        {
            try
            {
                List<CoffeesAddIns> listOfAddIn = GetAllAddIn();
                CoffeesAddIns existingAddInCoffee = listOfAddIn.FirstOrDefault(x => x.AddName == addName);

                if (existingAddInCoffee != null)
                {
                    // Coffee flavor exists, update its name and price
                    existingAddInCoffee.AddPrice = addPrice;
                    SaveAllAddIn(listOfAddIn);
                    return "Add-In coffee flavor updated successfully.";
                }
                else
                {
                    return "The flavor does not exist.";
                }
            }
            catch (Exception ex)
            {
                return $"Enter valid data: {ex.Message}"; // Return an error message or handle differently based on requirements
            }
        }

        
        public static void SaveAllAddIn(List<CoffeesAddIns> addIns)
        {
            string addInFilePath = Helper.GetAddInFilePath();
            string appDirectoryFilePath = Helper.GetAppDirectoryPath();

            try
            {
                if (!Directory.Exists(appDirectoryFilePath))
                {
                    Directory.CreateDirectory(appDirectoryFilePath);
                }

                var json = JsonSerializer.Serialize(addIns);

                // Write the JSON content to the file
                using (StreamWriter streamWriter = File.CreateText(addInFilePath))
                {
                    streamWriter.Write(json);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error while saving coffee data: {ex.Message}");
            }
        }

        public static List<CoffeesAddIns> DeleteAddIn(string addName)
        {
            List<CoffeesAddIns> listOfAddIn = GetAllAddIn();
            CoffeesAddIns coffee = listOfAddIn.FirstOrDefault(x => x.AddName == addName);

            if (coffee == null)
            {
                throw new Exception("Coffee not available.");
            }

            listOfAddIn.Remove(coffee); // Remove the coffee from the list
            SaveAllAddIn(listOfAddIn); // Save the updated list of coffees
            return listOfAddIn; // Return the updated list of coffees

        }
    }
}
