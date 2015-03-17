using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeFusion
{
    public class Artilce
    {
        public string title { set; get; }
        public string detail { set; get; }

        public Artilce(string aTitle,string aDetail)
        {
            title = aTitle;
            detail = aDetail;

        }
    }
    public partial class ArticleEntry : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string title = titleTextBox.Text;
            string detail = detailTextBox.Text;

            Artilce aArticle = new Artilce(title,detail);

            if (SaveArticle(aArticle))
            {
                messageLabel.Text = "Article Successfully Saved.";
                Response.Redirect("ArticleMain.aspx");
            }
            else
            {
                messageLabel.Text = "Article Not Saved."; 
            }

        }

        private bool SaveArticle(Artilce aArtilce)
        {
            string connection = WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection cnn = new SqlConnection(connection);

            string query="INSERT INTO ArticleInfo(articletitle,articledetail,readcount)VALUES('"+ aArtilce.title +"','"+ aArtilce.detail +"',0)";
            SqlCommand command=new SqlCommand(query,cnn);
            cnn.Open();
            int RowAffected = command.ExecuteNonQuery();
            cnn.Close();
            return RowAffected > 0;

        }
    }
}