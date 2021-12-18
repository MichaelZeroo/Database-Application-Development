using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class Customer
    {
        public string Name { get; private set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public int ID { get; set; }

    }
}
