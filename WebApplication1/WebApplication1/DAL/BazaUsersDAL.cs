using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using WebApplication1.Models;

namespace WebApplication1.DAL
{
    public class BazaUsersDAL: DbContext
    {
        public BazaUsersDAL(): base("UsersConnect")
        {
               
        }

        public DbSet <BazaUsers> Users { get; set; }
    }
}