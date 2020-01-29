using EADP_Project.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADP_Project
{
    public partial class Food : System.Web.UI.Page
    {
        public string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            Foods fa = new Foods();
            List<Foods> foodlist = fa.GetFoodAll();
            //for (int i = 0; i < foodlist.Count; i++)
            // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+ foodlist[i] + "')", true);
            if (foodlist != null)
            {
                for (int i = 0; i <= foodlist.Count - 1; i++)
                {
                    str += "<div class='col-md-4'>";
                    str += "<div class='card mb-4 shadow-sm'>";
                    str += "<img class='card-img-top' src='" + foodlist[i].Image + "' height='260px' alt='Card image cap'>";
                    str += "<div class='card-body'>";
                    str += "<p class='card-text'></p>";
                    str += "<p class='card-text'>Restaurant Name:" + foodlist[i].Name + "</p>";
                    str += "<p class='card-text'>Culinary Type: " + foodlist[i].Culinarytype + "</p>";
                    str += "<p class='card-text'>Weekday Price: " + foodlist[i].Pricewkd1 + " Weekend Price: " + foodlist[i].Pricewke1 + "</p>";
                    str += "<p class='card-text'>Deal: " + foodlist[i].Deals + "</p>";
                    str += "<div class='d-flex justify-content-between align-items-center'>";
                    str += "<div class='btn-group'>";
                    str += "<button type = 'button' class='btn btn-sm btn-outline-secondary' onclick=\"window.location.href='fooddetail.aspx?id=" + foodlist[i].Id + "'\">View details</button>";
                    str += "</div>";
                    str += "</div>";
                    str += "</div>";
                    str += "</div>";
                    str += "</div>";
                }
            }
            
            this.Page.DataBind();
        }
    }
}