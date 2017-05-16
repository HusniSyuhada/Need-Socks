using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

namespace Need_Socks
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("dbCO5027");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(TextLogUsername.Text, TextLogPassword.Text);

            if (user != null)
            {
                LogUserIn(userManager, user);
                Server.Transfer("logincomplete.aspx", true);
            }
            else
            {
                litLoginError.Text = "Invalid Username or Password.";
            }
        }
        private void LogUserIn (UserManager<IdentityUser> usermanager, IdentityUser user )
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
        }
        }
}
