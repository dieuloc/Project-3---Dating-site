using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Utilities;
using System.Data;
using System.Data.SqlClient;
using Functionality;
namespace TP_DatingSite
{
    public partial class LogIn : System.Web.UI.Page
    {
        DBConnect db = new DBConnect();
        User user = new User();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["sesUserName"] != null)
                {
                    txt_Username.Text = Session["sesUserName"].ToString();
                }
            }
        }

        protected void btn_LogIn_Click(object sender, EventArgs e)
        {

            if (cbx_Remember.Checked) //checked box then store username in cookie
            { 
                HttpCookie UNameCookie = new HttpCookie("UserNameCookie");
                UNameCookie.Value = txt_Username.Text;
                UNameCookie.Expires = DateTime.Now.AddHours(1);

            }

            //stored in the user object
            user.UserName = txt_Username.Text;
            user.Password = txt_Password.Text;

            DataSet checklog = db.GetDataSetUsingCmdObj(user.CheckLogin(user));
            int result = (int)checklog.Tables[0].Rows.Count;

            if(result == 1)
            {

                Server.Transfer("Daskboard.aspx");
            }
            else
            {
                lbl_ErrorLogIn.Text = "The UserName or Password is incorrect";                
            }
        }
    }
}