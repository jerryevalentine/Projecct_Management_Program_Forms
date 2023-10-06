using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectManagmementRTM.ProjectManagementRTM.Programs
{
    public partial class create_program : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRefreshGrid_Click(object sender, EventArgs e)
        {

        }

        protected void btnCreateProgram_Click(object sender, EventArgs e)
        {


            //SQL Query
            //string ProgramCreate = "INSERT INTO [dbo].[Programs]([Programs_ID,[Programs_Name] ,[Programs_Description],[Programs_Status]) VALUES(5,'Web, Desktop and Mobile app 5','Web, Desktop and Mobile app 5' ,'To do 5'};";
            //Connection
            string ConnectionString = "Data Source=.\\sqlexpress;Initial Catalog=CIS50;Integrated Security=True";
            SqlConnection Connection = new SqlConnection(ConnectionString);

            //SQL Query
            //string PrgramsDelete = "DELETE FROM [dbo].[Programs] WHERE Programs_ID = 1;";
            //string ProgramToDelete = ToString(txtDeleteProgram.Text
            //string PrgramsDelete = "DELETE FROM [dbo].[Programs] WHERE Programs_ID = " + "1" + ";";
            //string ProgramCreate = "DELETE FROM [dbo].[Programs] WHERE Programs_ID = " + txtDeleteProgram.Text + ";";
            //string ProgramCreate = "INSERT INTO [dbo].[Programs]([Programs_ID],[Programs_Name] ,[Programs_Description],[Programs_Status]) VALUES(10,'" + txtPrograms_Name.Text + "'," + txtPrograms_Description.Text + " ,'" + txtPrograms_Status.Text + "');";
            //string ProgramCreate = "INSERT INTO [dbo].[Programs]([Programs_ID],[Programs_Name] ,[Programs_Description],[Programs_Status]) VALUES(11,'Web1, Desktop and Mobile app 5','W1eb, Desktop1 and Mobile app 5' ,'To 1do 5');";
            string ProgramCreate = "INSERT INTO [dbo].[Programs]([Programs_ID],[Programs_Name] ,[Programs_Description],[Programs_Status]) VALUES(" + txtPrograms_ID.Text + ",'" + txtPrograms_Name + "','" +txtPrograms_Description+ "' ,'" + txtPrograms_Status +"');";
            //Create Command
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
    }
}