using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using AceCoffeepage.Objects.Enumeration;
using AceCoffeepage.Objects.Models;

namespace AceCoffeepage.Objects.Services

{
    public class UserService
    {
        public const StaffRoles LoginRole = StaffRoles.Admin;
        public const string Password = "Admin";
        public static Users CurrentUser { get; set; }
        public static List<Users> GetAllUser()
        {
            string appUsersFilePath = Helper.GetUsersFilePath();
            if (!File.Exists(appUsersFilePath))
            {
                return new List<Users>();
            }

            var json = File.ReadAllText(appUsersFilePath);
            return JsonSerializer.Deserialize<List<Users>>(json);
        }

        // create the user
        public static List<Users> CreateNewUser(string password, StaffRoles role)
        {
            List<Users> users = GetAllUser();
            bool usernameExists = users.Any(x => x.StaffRoles == role);

            if (usernameExists)
            {
                throw new Exception("Users already exists.");
            }

            users.Add(
                new Users
                {
                    PasswordHash = Helper.HashSecret(password),
                    StaffRoles = role,
                }
            );
            SaveAll(users);
            return users;
        }

        public static void SeedUsers()
        {
            var users = GetAllUser().FirstOrDefault(x => x.StaffRoles == StaffRoles.Admin);

            if (users == null)
            {
                CreateNewUser("Admin", StaffRoles.Admin);
                CreateNewUser("Staff", StaffRoles.Staff);
            }
        }

        public static Users Login(StaffRoles role, string password)
        {
            var loginErrorMessage = "Invalid role or password.";
            List<Users> users = GetAllUser();
            Users user = users.FirstOrDefault(x => x.StaffRoles == role);
            if (user == null)
            {
                throw new Exception(loginErrorMessage);
            }

            //checking if the password is valid or not using password hash 
            bool passwordIsValid = Helper.VerifyHash(password, user.PasswordHash);

            if (!passwordIsValid)
            {
                throw new Exception(loginErrorMessage);
            }
            CurrentUser = user;
            return user;
        }

        public static string ChangePassword(StaffRoles role, string newPassword, string confirmPassword)
        {
            try
            {
                if (newPassword != confirmPassword)
                {
                    return "New password and confirm password do not match!";
                }
                else
                {
                    List<Users> users = GetAllUser();
                    // Find the user based on the specified role
                    Users existingPassword = users.FirstOrDefault(x => x.StaffRoles == role);
                    if (existingPassword == null)
                    {
                        return "Invalid user role!";
                    }
                    else
                    {
                        // Proceed to change the password
                        existingPassword.PasswordHash = Helper.HashSecret(newPassword); // Hash the new password
                        SaveAll(users);
                        return "success";
                    }
                }
            }
            catch (Exception e)
            {
                return e.Message;
            }
        }

        // save user in app directory path
        private static void SaveAll(List<Users> users)
        {
            string appDataDirectoryPath = Helper.GetAppDirectoryPath();
            string appUsersFilePath = Helper.GetUsersFilePath();

            if (!Directory.Exists(appDataDirectoryPath))
            {
                Directory.CreateDirectory(appDataDirectoryPath);
            }

            var json = JsonSerializer.Serialize(users);
            File.WriteAllText(appUsersFilePath, json);
        }
    }
}
