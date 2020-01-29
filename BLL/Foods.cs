using EADP_Project.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADP_Project.BLL
{
    public class Foods
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Culinarytype { get; set; }
        public string Deals { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Opwkd1 { get; set; }
        public string Opwkd2 { get; set; }
        public string Opwke1 { get; set; }
        public string Opwke2 { get; set; }
        public string Pricewkd1 { get; set; }
        public string Pricewkd2 { get; set; }
        public string Pricewke1 { get; set; }
        public string Pricewke2 { get; set; }
        public string Lat1 { get; set; }
        public string Long1 { get; set; }
        public string Image { get; set; }
        public string Userid { get; set; }
        public Foods()
        {

        }
        public Foods(string id, string name, string description, string culinarytype,string deals,string email, string phone, string opwkd1, string opwkd2, string opwke1, string opwke2, string pricewkd1, string pricewkd2, string pricewke1, string pricewke2, string lat1, string long1, string image, string userid)
        {
            this.Id = id;
            this.Name = name;
            this.Description = description;
            this.Culinarytype = culinarytype;
            this.Deals = deals;
            this.Email = email;
            this.Phone = phone;
            this.Opwkd1 = opwkd1;
            this.Opwkd2 = opwkd2;
            this.Opwke1 = opwke1;
            this.Opwke2 = opwke2;
            this.Pricewkd1 = pricewkd1;
            this.Pricewkd2 = pricewkd2;
            this.Pricewke1 = pricewke1;
            this.Pricewke2 = pricewke2;
            this.Lat1 = lat1;
            this.Long1 = long1;
            this.Image = image;
            this.Userid = userid;
        }
        public Foods GetFoodById(string id)
        {
            FoodsDAO dao = new FoodsDAO();
            return dao.SelectById(id);
        }

        public List<Foods> GetFoodAll()
        {
            FoodsDAO dao = new FoodsDAO();
            return dao.SelectAll();
        }

        public int SetFood(string name, string description, string culinarytype, string deals, string email, string phone, string opwkd1, string opwkd2, string opwke1, string opwke2, string pricewkd1, string pricewkd2, string pricewke1, string pricewke2, string lat1, string long1, string image, string userid)
        {
            FoodsDAO dao = new FoodsDAO();
            return dao.InsertFood(name, description, culinarytype, deals, email, phone, opwkd1, opwkd2, opwke1, opwke2, pricewkd1, pricewkd2, pricewke1, pricewke2, lat1, long1, image, userid);
        }
        public int UpdateFood(string id,string name, string description, string culinarytype, string deals, string email, string phone, string opwkd1, string opwkd2, string opwke1, string opwke2, string pricewkd1, string pricewkd2, string pricewke1, string pricewke2, string lat1, string long1, string image, string userid)
        {
            FoodsDAO dao = new FoodsDAO();
            return dao.FoodUpdate(id,name, description, culinarytype, deals, email, phone, opwkd1, opwkd2, opwke1, opwke2, pricewkd1, pricewkd2, pricewke1, pricewke2, lat1, long1, image, userid);
        }
        public int DeleteFood(string id)
        {
            FoodsDAO dao = new FoodsDAO();
            return dao.Fooddelete(id);
        }
    }
}