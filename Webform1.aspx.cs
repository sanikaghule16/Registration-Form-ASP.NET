using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Registration_Form
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return; // Only proceed if validation passes

            using (SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=StudentDB;Integrated Security=True"))
            {
                con.Open();
                string query = "INSERT INTO Students(Name, Class, Mobile, Email, Address) VALUES(@Name, @Class, @Mobile, @Email, @Address)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Class", txtClass.Text.Trim());
                    cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());

                    cmd.ExecuteNonQuery();
                }
            }

            // Redirect to success page after saving
            Response.Redirect("WebForm2.aspx");
        }
    }
}
