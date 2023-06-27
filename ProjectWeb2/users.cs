using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Security.Permissions;
using System.Web;

namespace ProjectWeb2
{
    public class users
    {
        public users(string name, string password, string role)
        {
            this.name = name;
            this.password = password;
            this.role = role;

        }
        public string name { get; set; }
        public string password { get; set; }
        public string role { get; set; }

        public void register()
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\";Integrated Security=True;Connect Timeout=30");
            string sql;
            sql = "insert into myusers(name,password,role) values ( '" + name + "' , '" + password + "' , '" + role + "') ";

            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            comm.ExecuteNonQuery();
        }
    }
}