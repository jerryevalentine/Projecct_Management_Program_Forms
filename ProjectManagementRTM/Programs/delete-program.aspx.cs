using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace ProjectManagmementRTM.ProjectManagementRTM.Programs
{
    public partial class delete_program : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDeleteProgram_Click(object sender, EventArgs e)
        {

            //Connection
            string ConnectionString = "Data Source=.\\sqlexpress;Initial Catalog=CIS50;Integrated Security=True";
            SqlConnection Connection = new SqlConnection(ConnectionString);

            //SQL Query
            //string PrgramsDelete = "DELETE FROM [dbo].[Programs] WHERE Programs_ID = 1;";
            //string ProgramToDelete = ToString(txtDeleteProgram.Text
            //string PrgramsDelete = "DELETE FROM [dbo].[Programs] WHERE Programs_ID = " + "1" + ";";
            string PrgramsDelete = "DELETE FROM [dbo].[Programs] WHERE Programs_ID = " + txtDeleteProgram.Text + ";";

            //Create Command
            SqlCommand Command = new SqlCommand();
            Command.Connection = Connection;
            Command.CommandText = PrgramsDelete;
            Connection.Open();
            Command.ExecuteNonQuery();
            Response.Write("Data Deleted Successfully");
            Connection.Close();

            //"DELETE FROM [dbo].[Programs] WHERE Programs_ID = '"++"'";"
            //txtDeleteProgram
        }
    }
}