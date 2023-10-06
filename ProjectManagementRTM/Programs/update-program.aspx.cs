using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectManagmementRTM.ProjectManagementRTM.Programs
{
    public partial class update_program : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            //SQL Query
            //string ProgramCreate = "INSERT INTO [dbo].[Programs]([Programs_ID,[Programs_Name] ,[Programs_Description],[Programs_Status]) VALUES(5,'Web, Desktop and Mobile app 5','Web, Desktop and Mobile app 5' ,'To do 5'};";
            //Connection
            string ConnectionString = "Data Source=.\\sqlexpress;Initial Catalog=CIS50;Integrated Security=True";
            SqlConnection Connection = new SqlConnection(ConnectionString);
            //string strCreateProgram = "UPDATE [dbo].[Programs] SET Programs_ID = " + txtProgram_ID.Text + ",Programs_Name = '" + txtProgram_Name.Text + "', Programs_Description = '" + txtProgram_Description.Text + "', Programs_Status = '" + txtProgram_Status.Text + "' Where Programs_ID = " + txtProgram_ID.Text + "; ";

            string ProgramCreate = "UPDATE [dbo].[Programs] SET [Programs_ID] = 15 ,[Programs_Name] = 'dfgsdfg' ,[Programs_Description] = 'dfgsdfg' ,[Programs_Status] = 'dfgsdfg' WHERE [Programs_ID] = " + txtProgram_ID.Text;
            SqlCommand Command = new SqlCommand();
            Command.Connection = Connection;
            Command.CommandText = ProgramCreate;
            Connection.Open();
            Command.ExecuteNonQuery();
            Response.Write("Data Created Successfully");
            Connection.Close();

            //"DELETE FROM [dbo].[Programs] WHERE Programs_ID = '"++"'";"
            //txtDeleteProgram
        }

        protected void btnSubmitProgram_Click(object sender, EventArgs e)
        {

        }
    }
}