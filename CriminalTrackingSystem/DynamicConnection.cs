using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CriminalTrackingSystem
{
    public class DynamicConnection
    {
        public static SqlConnection GetsConnection()
        {
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()
                );
            return cn;
        }
    }
}