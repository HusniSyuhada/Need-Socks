using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Need_Socks
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendReg_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("dbCO5027");

            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var rolestore = new RoleStore<IdentityRole>(identityDbContext);
            var rolemanager = new RoleManager<IdentityRole>(rolestore);

            var user = new IdentityUser() { UserName = TextUname.Text, Email = TextREmail.Text };
            IdentityResult result = manager.Create(user, TextRPassword.Text);
            if (result.Succeeded)
            {
                IdentityRole endUserRole = new IdentityRole("endUser");
                rolemanager.Create(endUserRole);
                Server.Transfer("loginpage.aspx", true);
            }
            else
            {
                litRegError.Text = "ERROR : " + result.Errors.FirstOrDefault();
            }
        }
    }
}