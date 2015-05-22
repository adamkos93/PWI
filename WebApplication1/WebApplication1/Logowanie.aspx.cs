using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class Logowanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLogin.Visible = false;
            lblPassword.Visible = false;
            lblCheck.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BazaUsersDAL context = new BazaUsersDAL();
            if (txtLogin.Text!="" && txtPassword.Text!="")
            {
                try
                {
                    BazaUsers logowanie = context.Users.SingleOrDefault<BazaUsers>(x => txtLogin.Text == x.Username);
                    if (logowanie.Password==txtPassword.Text)
                    {
                        lblCheck.ForeColor = System.Drawing.Color.Green;
                        lblCheck.Text = "Logowanie powiodło się";
                        lblCheck.Visible = true;
                        Response.Redirect("Index.aspx?login="+txtLogin.Text);
                    }
                    else
                    {
                        lblPassword.Visible = true;
                    
                    }
                }
                catch (Exception)
                {

                    lblLogin.Visible = true;
                }
            }
            else
            {
           
                lblCheck.Text = "Wypełnij poprawnie pola logowania";
                lblCheck.Visible = true;
            }

         
        }
    }
}