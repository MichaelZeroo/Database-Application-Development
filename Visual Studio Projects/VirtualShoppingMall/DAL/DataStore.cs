using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DataStore
    {
        static public Login currentLogin = null;
        static public List<Product> GetProducts()
        {
            using (Con ctx = new Con())
            {
                return ctx.Products.ToList();
            }
        }

        static public Login getLoginDetail(String un, String pwd)
        {
            using (Con ctx = new Con())
            {
                currentLogin = ctx.Logins.Where(p => p.UserName == un && p.Password == pwd).FirstOrDefault();
            }
            return currentLogin;
        }
        static public List<Product> GetVendorProducts()
        {
            List<Product> records = new List<Product>();

            if (currentLogin != null && currentLogin.Role == "VOwner")
            {

                using (Con ctx = new Con())
                {
                    return ctx.Products.Where(p => p.VendorID == currentLogin.ID).ToList();
                }
            } else
            {
                return records;
            }
        }

        static public void addProduct(Product p)
        {
            using (Con ctx = new Con())
            {
                p.VendorID = currentLogin.ID;
                ctx.Products.Add(p);
                ctx.SaveChanges();
            }
        }

        
    }

}
