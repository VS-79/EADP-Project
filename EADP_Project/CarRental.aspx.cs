using EADP_Project.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EADP_Project
{
    public partial class CarRental : System.Web.UI.Page
    {
        public string str;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGetCustomer_Click(object sender, EventArgs e)
        {
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+finalstartDT+"')", true);
            DateTime a = new DateTime();
            DateTime b;
            string dateStart = hfPickupDate.Value.ToString();
            string dateEnd = hfDropoffDate.Value.ToString();
            string timeStart = hfTimePickup.Value.ToString();
            string timeEnd = hfTimeDropoff.Value.ToString();
            string finalstartDT = (dateStart + " " + timeStart);
            string finalendDT = (dateEnd + "" + timeEnd);
            DateTime startDate = DateTime.ParseExact(finalstartDT, "dd/MM/yyyy hh:mm tt", null);
            DateTime endDate = DateTime.ParseExact(finalendDT, "dd/MM/yyyy hh:mm tt", null);
            resultBody.Visible = true;

        }


    }
}
            //Console.WriteLine(startDate.ToString());