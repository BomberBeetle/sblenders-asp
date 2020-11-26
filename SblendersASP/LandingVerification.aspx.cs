using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCC
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString.Get("landing")!=null)
            {
                landingText.InnerText = "Obrigado por se cadastar! Um email de verificação foi enviado.";
                return;
            }

            String id = Request.QueryString.Get("target");
            String url = Request.QueryString.Get("vu");

            if (id == null || url == null) { Response.Redirect("Index2.aspx"); return; }

            string URL = $"https://localhost:44323/api/AutenticaClienteOnline/" + id + "/" + url ;
            string urlParameters = "";
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);

            // List data response.
            HttpResponseMessage response = client.PostAsync(urlParameters, null).Result;
            Session["userID"] = id;
            Session["userToken"] = response.Content.ReadAsStringAsync().Result;

            Response.Redirect("AreaCliente.aspx");
        }
    }
}