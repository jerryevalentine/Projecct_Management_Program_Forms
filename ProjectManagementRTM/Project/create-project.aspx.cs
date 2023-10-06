using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace ProjectManagmementRTM.ProjectManagementRTM
{
    public partial class Projects : System.Web.UI.Page
    {
//;



        protected void Page_Load(object sender, EventArgs e)
        {
            // SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Server=sqlexpress;Database=CIS50;Trusted_Connection=True;"].ConnectionString);

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Server=sqlexpress;Database=CIS50;Trusted_Connection=True;"].ConnectionString);


            string connectionString = ConfigurationManager.ConnectionStrings["Server=sqlexpress;Database=CIS50;Trusted_Connection=True;"]?.ConnectionString;






            con.Open();


        }

        protected void btnCreateProjectItem_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Projects values('" + txtCreateProjectID + "','" + txtCreateProjectName + "', '" + txtCreateProjectDescription + "', '" + txtCreateProjectStatus + "', con)");
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Query Submitted";
            GridView1.DataBind();
            txtCreateProjectID.Text = "";
            txtCreateProjectName.Text = "";
            txtCreateProjectDescription.Text = "";
            txtCreateProjectStatus.Text = "";
        }
    }
}