using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            string login = Request["login"];
            lblLogin.Text = login;
            if (lblLogin.Text != "")
            {
                Wyloguj.Visible = true;
            }

        }

     
     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Logowanie.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rejestracja.aspx");
        }


        protected void Wyloguj_Click1(object sender, EventArgs e)
        {
            lblLogin.Text = "";
            lblLogin.Visible = false;
            Wyloguj.Visible = false;
            Response.Redirect("Index.aspx");
        }
    }
}