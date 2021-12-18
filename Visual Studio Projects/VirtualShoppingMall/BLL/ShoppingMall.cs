using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BLL
{
  public class ShoppingMall
    {

        public ShoppingMall()
        {
            

        }
        public String loginToSystem(string un, String pwd)
        {

            DataStore store = new DataStore();
         Login login=  store.getLoginDetail(un, pwd);
            if (login != null)
                return login.Role;
            else
                return null;
        }
        public string WesbiteName { get;  private set; }
        public string Phone { get; private set; }
        public string Email { get; private set; }
        public List<Shop> Shops { get; private set; }
        public List<Product> Products { get; private set; }
        public List<Product> searchProductsByName(string name)
        {
            //List<Product> result = new List<Product>();
            //foreach(Product p in Products)
            //{
            //    if(p.Name == name)
            //    {
            //        result.Add(p);
            //    }
            //}
            //return result;
            return Products.Where(p => p.Name == name).ToList();
        }

    }
}
