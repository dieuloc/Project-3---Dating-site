using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

using System.Data;              // import needed for DataSet and other data classes
using System.Data.SqlClient;    // import needed for ADO.NET classes
using Utilities;                // import needed for DBConnect and Book class
using WebAPI.Models;            // import needed to reference the class in Models

namespace WebAPI.Controllers
{
    //[Produces("application/json")]
    [Route("api/User")]
    public class UserDataController : Controller
    {
        DBConnect db = new DBConnect();
        StoredProcedure storedProcedure = new StoredProcedure();


        // GET: api/User
        [HttpGet()]
        public List<UserAccount> Get() //return all book
        {
            List<UserAccount> accounts = new List<UserAccount>();
            
            DataSet data = storedProcedure.GetAllUser();
            UserAccount account;

            foreach(DataRow record in data.Tables[0].Rows)  //convert the dataset into a List<UserAccount> object list
            {
                account = new UserAccount();
                account.UserId = int.Parse(record["User_Id"].ToString());
                account.UserName = record["User_Name"].ToString();
                account.FullName = record["Full_name"].ToString();
                account.Gender = record["gender"].ToString();
                account.Details = record["details"].ToString();
                account.Email = record["email"].ToString();
                account.Password = record["password"].ToString();
                account.Address = record["address"].ToString();
                account.Phone = (int) record["phone"];
                account.Age = (int) record["age"];
                account.Occupation = record["occupation"].ToString();
                account.Weight = (double)record["weight"];
                account.Goal = record["goal"].ToString();
                account.CommitType = record["comit_type"].ToString();
                account.Kid = record["kid"].ToString();
                account.Religion = record["religion"].ToString();
                account.Description = record["description"].ToString();

                accounts.Add(account);
            }

            return accounts;
        }

        [HttpGet ("GetUser")] //api/User/GetUser
        public UserAccount GetUser(String username, String password)
        {

        }

        [HttpGet("GetUserID/{id}")] //api/User/GetUserID
        public string GetID(string id)
        {
            return "HTTP GET Request received by the WebAPI id= " +id;
        }
    }
}