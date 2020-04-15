using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Utilities;
using System.Data;
using System.Data.SqlClient;

namespace Functionality
{
    public class User
    {
        private string username;
        private string password;
        private string email;
        
        public string UserName { get => username; set => username = value; }
        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }

        public SqlCommand CheckLogin(User user)
        {
            SqlCommand sqlchecklogin = new SqlCommand();
            sqlchecklogin.CommandType = CommandType.StoredProcedure;
            sqlchecklogin.CommandText = "CheckLogIn";
            sqlchecklogin.Parameters.Add(new SqlParameter(" ", user.username)); //fix
            sqlchecklogin.Parameters.Add(new SqlParameter(" ", user.password)); //fix
            return sqlchecklogin;
        }
    }
}
