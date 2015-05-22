using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class Rejestracja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLogin.Visible = false;
            lblPassword.Visible = false;
            lblPasswordC.Visible = false;
            lblEmail.Visible = false;
            lblPhone.Visible = false;
            lblConfirmRegister.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            BazaUsersDAL CONTEXT = new BazaUsersDAL();
            Regex testUsername = new Regex(@"^[A-Za-z0-9_-]{3,15}$");
            Regex testPassword = new Regex(@"^[a-zA-Z]\w{3,14}$");
            Regex testEmail = new Regex(@"^[a-z0-9\._%-]+@[a-z0-9\.-]+\.[a-z]{2,4}$");
            Regex testPhone = new Regex(@"^[2-9]\d{2}-\d{3}-\d{3}$");
            bool checkUser = CONTEXT.Users.Any(u => u.Username == txtLogin.Text);
            bool checkEmail = CONTEXT.Users.Any(u => u.Email == txtEmail.Text);
      
            
            if (testUsername.IsMatch(txtLogin.Text) && checkUser==false )
            { }
            else
            {
                if (checkUser != false)
                {
                    lblLogin.Text = "Taki użytkownik już istnieje";
                    lblLogin.Visible = true;
                }
                else
                {
                    lblLogin.Visible = true;
                }
            }

            if (testPassword.IsMatch(txtPassword.Text))
            { }
            else
            {
                lblPassword.Visible = true;
            }   
            if (txtPassword.Text==txtPasswordC.Text && txtPassword.Text!="")
            { }
            else
            {
                lblPasswordC.Visible = true;
            }
            if (testEmail.IsMatch(txtEmail.Text) && checkEmail==false)
            { }
            else
            {
                if (checkEmail != false)
                {
                    lblEmail.Text = "Taki Email już istnieje";
                    lblEmail.Visible = true;


                }
                else
                {
                    lblEmail.Visible = true;
                }
            }
            if (testPhone.IsMatch(txtPhone.Text))
            { }
            else
            {
                lblPhone.Visible = true;
            }


            //if (checkTextboxs == false)
            //{

                if (testUsername.IsMatch(txtLogin.Text) && testPassword.IsMatch(txtPassword.Text) && testEmail.IsMatch(txtEmail.Text) && testPhone
                    .IsMatch(txtPhone.Text) && checkUser == false && checkEmail == false)
                {
                    CONTEXT.Users.Add(new BazaUsers() { Username = txtLogin.Text, Password = txtPassword.Text, PasswordConfrim = txtPasswordC.Text, Email = txtEmail.Text, Phone = txtPhone.Text });
                    CONTEXT.SaveChanges();
                    lblConfirmRegister.Visible = true;
                    Response.Redirect("Logowanie.aspx");
                }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtLogin.Text = "";
            txtPassword.Text = "";
            txtPasswordC.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            lblConfirmRegister.Visible = false;
            lblLogin.Visible = false;
            lblPassword.Visible = false;
            lblPasswordC.Visible = false;
            lblEmail.Visible = false;
            lblPhone.Visible = false;
        }
    }
}