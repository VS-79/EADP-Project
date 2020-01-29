using EADP_Project.BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADP_Project
{
    public partial class Foodadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            var name = TextBoxname.Text;
            var description = this.Request.Form["content"];
            var culinarytype = DropDowntype.SelectedValue;
            var deals = txtdeals.Text;
            var email = TextBoxemail.Text;
            var phone = TextBoxphone.Text;
            var opwkd1 = this.Request.Form["time1"];
            var opwkd2 = this.Request.Form["time2"];
            var opwke1 = this.Request.Form["time3"];
            var opwke2 = this.Request.Form["time4"];
            var pricewkd1 = this.Request.Form["weekdayp1"];
            var pricewkd2 = this.Request.Form["weekdayp2"];
            var pricewke1 = this.Request.Form["weekendp1"];
            var pricewke2 = this.Request.Form["weekendp2"];
            var lat1 = lat2.Text;
            var long1 = long2.Text;
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/" + str));
            string image = "/images/" + str.ToString();
            Image1.ImageUrl= "~/images/" + str.ToString();

            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+ opwkd1 + "')", true);
            Foods fd = new Foods();
            int result = fd.SetFood(name, description, culinarytype,deals, email, phone, opwkd1, opwkd2, opwke1, opwke2, pricewkd1, pricewkd2, pricewke1, pricewke2, lat1, long1, image, "1");
            if (result == 1)
            {
                TextBoxname.Text = "Record added successfully!";
            }
            else
            {
                TextBoxname.Text = "Error in adding record! Inform System Administrator!";
            }


        }

        protected void txtdeals_TextChanged(object sender, EventArgs e)
        {

        }
    }
}