using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject
{
    public class Project
    {
        private string fname;
        private string lname;
        private string address;
        private string email;
        public string Fname
        {
            get { return fname; }
            set { fname = value; }
        }
       public string Lname
        {
            get { return lname; }
            set { lname = value; }
        }
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        
       
    }
}