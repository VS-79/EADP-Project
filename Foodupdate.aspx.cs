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
    public partial class Foodupdate : System.Web.UI.Page
    {
        public string pname;
        public string pdescription;
        public string pculinarytype;
        public string pdeals;
        public string pemail;
        public string pphone;
        public string popwkd1;
        public string popwkd2;
        public string popwke1;
        public string popwke2;
        public string ppricewkd1;
        public string ppricewkd2;
        public string ppricewke1;
        public string ppricewke2;
        public string plat1;
        public string plong1;
        public string pimage;



        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            Foods fa = new Foods();
            Foods data = fa.GetFoodById(id);
            pname = data.Name;
            pdescription = data.Description;
            pculinarytype = data.Culinarytype;
            pdeals = data.Deals;
            pemail = data.Email;
            pphone = data.Phone;
            popwkd1 = data.Opwkd1;
            popwkd2 = data.Opwkd2;
            popwke1 = data.Opwke1;
            popwke2 = data.Opwke2;
            ppricewkd1 = data.Pricewkd1;
            ppricewkd2 = data.Pricewkd2;
            ppricewke1 = data.Pricewke1;
            ppricewke2 = data.Pricewke2;
            plat1 = data.Lat1;
            plong1 = data.Long1;
            pimage = data.Image;
            TextBoxname.Text = pname;
            txtdeals.Text = pdeals;
            TextBoxemail.Text = pemail;
            TextBoxphone.Text = pphone;
            lat2.Text = plat1;
            long2.Text = plong1;
            DropDowntype.SelectedValue = pculinarytype;
            Image1.ImageUrl = "~" + pimage;
            this.Page.DataBind();


        }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
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
            int result = fd.UpdateFood(id,name, description, culinarytype,deals, email, phone, opwkd1, opwkd2, opwke1, opwke2, pricewkd1, pricewkd2, pricewke1, pricewke2, lat1, long1, image, "1");
            if (result == 1)
            {
                Response.Redirect("Fooddetail.aspx?id=" + id + "");
            }
            else
            {
                TextBoxname.Text = "Error in adding record! Inform System Administrator!";
            }


        }
    }
}