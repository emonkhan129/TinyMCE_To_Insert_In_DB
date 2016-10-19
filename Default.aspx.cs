using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source = LAB-301-30\SQLEXPRESS; Initial Catalog=TinyMceTestDB; Integrated Security=true");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void saveButton_Click(object sender, EventArgs e)
    {
        string description = descriptionTextbox.InnerHtml;
        string query = "insert into tinyMCE (description) values('" + description + "')";
        SqlCommand cmd = new SqlCommand(query,con);
        con.Open();

        int count = cmd.ExecuteNonQuery();
        if (count > 0)
        {
            label1.Text = "saved";
        }
        else
        {
            label1.Text = "not saved";
        }
        con.Close();
    }
}