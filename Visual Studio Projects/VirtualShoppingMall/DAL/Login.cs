//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Login
    {
        public Login()
        {
            this.Customers = new HashSet<Customer>();
            this.ShoppingMalls = new HashSet<ShoppingMall>();
            this.Vendors = new HashSet<Vendor>();
        }
    
        public int ID { get; set; }
        public string Role { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    
        public virtual ICollection<Customer> Customers { get; set; }
        public virtual ICollection<ShoppingMall> ShoppingMalls { get; set; }
        public virtual ICollection<Vendor> Vendors { get; set; }
    }
}