using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WEB
{
    public partial class waitingForNews : System.Web.UI.Page
    {
        public List<Post> postscate = new List<Post>();
        public int dem = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Post> posts = (List<Post>)Application["Posts"];

            for (int i = 0; i < posts.Count; i++)
            {
                 postscate.Add(posts[i]);
                 dem++; 
            }

            //DataTable dataTable = new DataTable();
            
            //    dataTable.Rows.Add(postscate);
            
                
            
            //this.BindGrid();
            
        }

        //protected void BindGrid()
        //{
        //    GridView1.DataSource = (DataTable)ViewState["Customers"];
        //    GridView1.DataBind();
        //}


        protected void btn_sub_Click(object sender, EventArgs e)
        {
            //int id = convert.toint32(skinid);

            //postscate.remove(posts[id]);
          
            for(int i = 0; i < postscate.Count; i++)
            {
                if (postscate[i].Id.ToString()== ID.Value)
                {

                    postscate.Remove(postscate[i]);
                    Response.Redirect("waitingForNews.aspx");

                }
            }


            
           
               
             
               
        }

        protected void btn_denied_Click1(object sender, EventArgs e)
        {


        }
    }

}