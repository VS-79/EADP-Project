using EADP_Project.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADP_Project
{
    public partial class fooddetail : System.Web.UI.Page
    {
        public string description;
        public string deals;
        public string lat1;
        public string long1;
        public string image;
        public string time1;
        public string time2;
        public string time3;
        public string time4;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
                Response.Redirect("Food.aspx");
            else
            {
                string id = Request.QueryString["id"];
                Foods fa = new Foods();
                var data = fa.GetFoodById(id);
                time1 = data.Opwkd1;
                time2 = data.Opwkd2;
                time3 = data.Opwke1;
                time4 = data.Opwke2;
                lblpricewkd1.Text = "$" + data.Pricewkd1;
                lblpricewkd2.Text = "$" + data.Pricewkd2;
                lblpricewke1.Text = "$" + data.Pricewke1;
                lblpricewke2.Text = "$" + data.Pricewke2;
                lblemail.Text = data.Email;
                lblname.Text = data.Name;
                lbltelephone.Text = data.Phone;
                description = data.Description;
                deals = data.Deals;
                lat1 = data.Lat1;
                long1 = data.Long1;
                image = data.Image;
                this.Page.DataBind();
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            Foods fa = new Foods();
            fa.DeleteFood(id);
            Response.Redirect("Food.aspx");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            Response.Redirect("Foodupdate.aspx?id=" +id+ "");
        }
    }
}