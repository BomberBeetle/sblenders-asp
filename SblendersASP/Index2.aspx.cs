using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Net.Http;
using System.Net.Http.Headers;

namespace TCC
{
    public partial class Index2 : System.Web.UI.Page
    {
        public static int userID;
        public static string userToken;
        public static int userRID;
        

        private bool GetUserDetails()
        {
            Session["userID"] = null;
            Session["userToken"] = null;
            Session["userRID"] = null;
            string URL = $"https://localhost:44323/api/Agente/{Session["userID"]}";
            string urlParameters = "";
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);

            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            // List data response.
            JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
            Dictionary<string, Object> resultado = (Dictionary<string, Object>)serializer.DeserializeObject(response.Content.ReadAsStringAsync().Result);

            if (response.IsSuccessStatusCode)
            {
                if (resultado.ContainsKey("restaurant_id"))
                {
                    Session["userRID"] = int.Parse((string)resultado["restaurant_id"]);
                    return true;
                }
                return false;
            }
            else
            {
                return false;
            }

            client.Dispose();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String txtEmail = txtEmailLogin.Text;
            String txtSenha = txtSenhaLogin.Text;
            if(!String.IsNullOrWhiteSpace(txtEmailLogin.Text) && !String.IsNullOrWhiteSpace(txtSenhaLogin.Text))
            {
                string URL = $"https://localhost:44323/api/AgenteToken/{Uri.EscapeUriString(txtEmailLogin.Text)}/{Uri.EscapeUriString(txtSenhaLogin.Text)}";
                string urlParameters = "";
                HttpClient client = new HttpClient();
                client.BaseAddress = new Uri(URL);

                // Add an Accept header for JSON format.
                client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

                // List data response.
                JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                Dictionary<string, Object> resultado = (Dictionary<string, Object>)serializer.DeserializeObject(response.Content.ReadAsStringAsync().Result);

                if (response.IsSuccessStatusCode)
                {
                    Session["userID"] = int.Parse((string)resultado["id"]);
                    Session["userToken"] = (string)resultado["token"];
                    if (GetUserDetails())
                    {
                        lblSenhaAvisoLogin.Text = "Parabens";
                    }
                    else
                    {
                        lblSenhaAvisoLogin.Text = "Usuário ou senha incorreto";
                    }
                }
                else
                {
                    if ((string)resultado["error"] == "AUTH_ERROR")
                    {
                        lblSenhaAvisoLogin.Text = "Usuário ou senha incorreto";
                    }
                }

                client.Dispose();

                lblEmailAvisoLogin.Text = "Beleza";
            }
            else if(String.IsNullOrWhiteSpace(txtEmailLogin.Text) && String.IsNullOrWhiteSpace(txtSenhaLogin.Text))
            {
                lblEmailAvisoLogin.Text = "Insira um email para efetuar o login";
                lblSenhaAvisoLogin.Text = "Insira uma senha para efetuar o login";
            }
            else if(String.IsNullOrWhiteSpace(txtEmailLogin.Text))
            {
                lblEmailAvisoLogin.Text = "Insira um email para efetuar o login";
            }
            else if(String.IsNullOrWhiteSpace(txtSenhaLogin.Text))
            {
                lblSenhaAvisoLogin.Text = "Insira uma senha para efetuar o login";
            }
        }
    }
}