using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    class Person
    {
        int id;
        string role;
        string un;
        string pwd;
        public bool login(string un, string pwd)
        {
            if(this.un == un && this.pwd == pwd)
            {
                return true;
            }else
            {
                return false;
            }
        }

    }
}
