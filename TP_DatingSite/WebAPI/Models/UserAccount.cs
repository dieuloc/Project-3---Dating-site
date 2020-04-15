using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebAPI.Models
{
    public class UserAccount
    {
        public int UserId { get; set; }
        public String UserName { get; set; }
        public String FullName { get; set; }
        public String Gender { get; set; }
        public String Details { get; set; }
        public String Email { get; set; }
        public String Password { get; set; }
        public String Address { get; set; }
        public int Phone { get; set; }
        public int Age { get; set; }
        public String Occupation { get; set; }
        public double Weight { get; set; }
        public String Goal { get; set; }
        public String CommitType { get; set; }
        public String Kid { get; set; }
        public String Religion { get; set; }
        public String Biography { get; set; }
        public String Description { get; set; }

        public UserAccount()
        {

        }

        public UserAccount(String username)
        {
            this.UserName = username;
        }

        public UserAccount(String username, String fullname, String gender, String details, String email, String password, String address, int phone, int age, String occupation, double weight, String goal, String commitype, String kid, String religion, String biography, String description)
        {
            this.UserName = username;
            this.FullName = fullname;
            this.Gender = gender;
            this.Details = details;
            this.Email = email;
            this.Password = password;
            this.Address = address;
            this.Phone = phone;
            this.Age = age;
            this.Occupation = occupation;
            this.Weight = weight;
            this.Goal = goal;
            this.CommitType = commitype;
            this.Kid = kid;
            this.Religion = religion;
            this.Biography = biography;
            this.Description = description;
        }
    }
}
