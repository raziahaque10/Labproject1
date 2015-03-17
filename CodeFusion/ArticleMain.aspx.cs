using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeFusion
{
    
    public partial class ArticleMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void createButton_Click(object sender, EventArgs e)
        {
            //ArticleEntry aa=new ArticleEntry();
            Response.Redirect("ArticleEntry.aspx");
        }

        protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string aa = DataGrid1.Rows(_row).Cells(0).Text.ToString();
           //string aa= DataGrid1.Rows(_row).Cells(0).Text;

            string aa = DataGrid1.SelectedItem.Cells[1].Text;
             string connection = WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;

            SqlConnection cnn = new SqlConnection(connection);
            SqlConnection cnn2 = new SqlConnection(connection);

            string query = "Delete from TempArticle";
            SqlCommand command = new SqlCommand(query, cnn);
            cnn.Open();
            command.ExecuteNonQuery();
            cnn.Close();

            string query2 = "INSERT INTO TempArticle(articletitle,articledetail) select articletitle,articledetail from  ArticleInfo where id='" + aa + "'";
            //string query2 = "select articletitle,articledetail from  where id='" + aa + "'";
            SqlCommand command2=new SqlCommand(query2,cnn2);
            cnn2.Open();
            command2.ExecuteNonQuery();
            cnn2.Close();
            Response.Redirect("ArticleMain.aspx");

        }
    }
}