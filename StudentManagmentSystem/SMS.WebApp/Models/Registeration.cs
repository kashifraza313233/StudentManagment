//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SMS.WebApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Registeration
    {
        public int Id { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public string CNIC { get; set; }
        public Nullable<int> Batch_Id { get; set; }
        public Nullable<int> Course_Id { get; set; }
        public string ContactNo { get; set; }
        public string Email { get; set; }
    
        public virtual Batch Batch { get; set; }
        public virtual Course Course { get; set; }
    }
}
