using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
   public class Product : DAL.Product
    {
       
        public override string ToString()
        {
            return ProductID + "," + Name;
        }

    }
}
