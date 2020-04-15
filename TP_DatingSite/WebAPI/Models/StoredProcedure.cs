using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using Utilities;

namespace WebAPI.Models
{
    public class StoredProcedure
    {
        DBConnect db = new DBConnect();

        public DataSet GetAllUser()
        {
            SqlCommand sqlgetuser = new SqlCommand();
            sqlgetuser.CommandType = CommandType.StoredProcedure;
            sqlgetuser.CommandText = "GetAllUser";
            DataSet data = db.GetDataSetUsingCmdObj(sqlgetuser);
            return data;
        }
    }
}
