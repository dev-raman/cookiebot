using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Cookiebot
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.Controls.Add(GetCookiebotHeaderScript());

            this.Page.ClientScript.RegisterClientScriptBlock(GetType(), "cookie-bot", "<script id='CookieDeclaration' src='https://consent.cookiebot.com/8b5f6d33-58ee-4503-80b1-7c6178f26e61/cd.js' type='text/javascript' async></script>", false);

            if (!IsPostBack)
            {

                HyperLink_CV.Style.Add("cursor", "pointer");
                HyperLink_CV.Attributes.Add("onclick", "return ShowPortableCvBrowser();");

            }
        }
        public HtmlGenericControl GetCookiebotHeaderScript()
        {
            HtmlGenericControl newControl = new HtmlGenericControl("script");
            newControl.Attributes["id"] = "Cookiebot";
            newControl.Attributes["src"] = "https://consent.cookiebot.com/uc.js";
            newControl.Attributes["data-culture"] = System.Threading.Thread.CurrentThread.CurrentUICulture.Name.ToUpper();
            newControl.Attributes["data-cbid"] = "8b5f6d33-58ee-4503-80b1-7c6178f26e61";
            newControl.Attributes["data-blockingmode"] = "auto";
            newControl.Attributes["type"] = "text/javascript";
            return newControl;
        }
    }
}