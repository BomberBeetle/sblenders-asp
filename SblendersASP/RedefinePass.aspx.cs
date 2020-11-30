using SblendersAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCC
{
    public partial class RedefinePass : System.Web.UI.Page
    {
        private static String id;
        private static String token;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString.Get("target");
            token = Request.QueryString.Get("token");

            if(id == null || token == null)
            {
                Response.Redirect("Index2.aspx");
                return;
            }
        }

        protected void btnRedefinir_Click(object sender, EventArgs e)
        {
            if (txtSenha.Text != txtConfirmarSenha.Text)
            {
                lblAvisoSenha.Text = "A senha e confirmação de senha não conferem";
                return;
            }
            if (id != null && !String.IsNullOrWhiteSpace(txtSenha.Text) && !String.IsNullOrWhiteSpace(txtConfirmarSenha.Text))
            {
                string URL = $"https://localhost:44323/api/ClienteOnline/" + id;
                string urlParameters = "";
                HttpClient client = new HttpClient();
                client.BaseAddress = new Uri(URL);
                ClienteOnline cli;
                cli = new ClienteOnline(null, null, null, txtSenha.Text);

                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue(token);
                // Add an Accept header for JSON format.
                client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

                // List data response.
                JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                HttpResponseMessage response = client.PostAsync(urlParameters, new StringContent(serializer.Serialize(cli), Encoding.UTF8, "application/json")).Result;
                if (response.IsSuccessStatusCode)
                {
                    lblAvisoSenha.Text = "Dados alterados com sucesso!";
                }
                else
                {
                    lblAvisoSenha.Text = "Erro";
                }
            }
            else
            {
                Response.Redirect("Index2.aspx");
            }
        }
    }
}