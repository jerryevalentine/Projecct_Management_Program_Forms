using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace ProjectManagmementRTM.ProjectManagementRTM
{
    public partial class update_programs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //string PrgramsDelete = "DELETE FROM [dbo].[Programs] WHERE Programs_ID = '1';";
            //string ConnectionString = "Data Source=.\\sqlexpress;Initial Catalog=CIS50;Integrated Security=True";
            //SqlConnection con = new SqlConnection(ConnectionString);
            //SqlCommand cmd = new SqlCommand("DELETE FROM [dbo].[Programs] WHERE Programs_ID = '1';");
            string ConnectionString = "Data Source=.\\sqlexpress;Initial Catalog=CIS50;Integrated Security=True";
            SqlConnection con = new SqlConnection(ConnectionString);

            // Initialize SqlCommand
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "DELETE FROM [dbo].[Programs] WHERE Programs_ID = '1';";

            // Now you can use the 'cmd' object to execute the SQL command.
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Deleted Successfully");
            con.Close();

            //"DELETE FROM [dbo].[Programs] WHERE Programs_ID = '"++"'";"
        }
    }
}