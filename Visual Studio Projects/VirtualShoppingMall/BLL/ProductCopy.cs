using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class ProductCopy
    {
        public string Code { get; private set; }
        public bool IsSold { get; private set; }

        public bool IsCommissionPaid { get; set; }

    }
}
