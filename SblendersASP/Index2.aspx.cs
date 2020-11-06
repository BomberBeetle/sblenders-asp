using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using SblendersAPI.Models;

namespace TCC
{
    public partial class Index2 : System.Web.UI.Page
    {
        public static int userID;
        public static string userToken;
        public static int userRID;
        

        private bool GetUserDetails()
        {           
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
            if(Session["userID"] != null)
            {
                divConectado.Visible = true;
                divDesconectado.Visible = false;
                divConectado.Attributes.CssStyle.Add("display", "block");
                divDesconectado.Attributes.CssStyle.Add("display", "none");
                string URL = $"https://localhost:44323/api/Agente/"+Session["userID"];
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
                    if (resultado.ContainsKey("client_name"))
                    {
                        lblBemVindo.Text = "Bem vindo " + resultado["client_name"];
                    }
                    
                }
                
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {            
            lblEmailAvisoLogin.Text = "";
            lblSenhaAvisoLogin.Text = "";
            bool camposPreenchidos = true;
            if (String.IsNullOrWhiteSpace(txtEmailLogin.Text))
            {
                lblEmailAvisoLogin.Text = "Insira um email para efetuar o login";
                camposPreenchidos = false;
            }
            if (String.IsNullOrWhiteSpace(txtSenhaLogin.Text))
            {
                lblSenhaAvisoLogin.Text = "Insira uma senha para efetuar o login";
                camposPreenchidos = false;
            }
            if (camposPreenchidos)
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
                    Response.Redirect("AreaCliente.aspx");
                    /*if (GetUserDetails())
                    {
                        Response.Redirect("Ingredientes.aspx");
                    }
                    else
                    {
                        lblSenhaAvisoLogin.Text = "Usuário ou senha incorreto";
                    }*/
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
            divLog.Attributes.CssStyle.Add("display", "block");
        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            lblNomeAvisoCadastro.Text = "";
            lblSobrenomeAvisoCadastro.Text = "";
            lblEmailAvisoCadastro.Text = "";
            lblSenhaAvisoCadastro.Text = "";
            lblAvisoConfirmarSenhaCadastro.Text = "";
            bool camposPreenchidos = true;
            if (String.IsNullOrWhiteSpace(txtNomeCadastro.Text))
            {
                lblNomeAvisoCadastro.Text = "Insira um nome";
                camposPreenchidos = false;
            }
            if (String.IsNullOrWhiteSpace(txtSobrenomeCadastro.Text))
            {
                lblSobrenomeAvisoCadastro.Text = "Insira um Sobrenome";
                camposPreenchidos = false;
            }
            if (String.IsNullOrWhiteSpace(txtEmailCadastro.Text))
            {
                lblEmailAvisoCadastro.Text = "Insira um Email";
                camposPreenchidos = false;
            }
            if (String.IsNullOrWhiteSpace(txtSenhaCadastro.Text))
            {
                lblSenhaAvisoCadastro.Text = "Insira uma Senha";
                camposPreenchidos = false;
            }
            if (String.IsNullOrWhiteSpace(txtConfirmarSenhaCadastro.Text))
            {
                lblAvisoConfirmarSenhaCadastro.Text = "Confirme a Senha";
                camposPreenchidos = false;
            }
            if(txtSenhaCadastro.Text != txtConfirmarSenhaCadastro.Text)
            {
                lblAvisoConfirmarSenhaCadastro.Text = "Corfirme a senha corretamente";
                camposPreenchidos = false;
            }
            if (camposPreenchidos)
            {
                string URL = $"https://localhost:44323/api/ClienteOnline";
                string urlParameters = "";
                HttpClient client = new HttpClient();
                client.BaseAddress = new Uri(URL);
                //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "excecao", "Excecao()", true);


                // Add an Accept header for JSON format.
                client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

                // List data response.
                JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                HttpResponseMessage response = client.PutAsync(urlParameters, new StringContent(serializer.Serialize(new ClienteOnline(
                    txtNomeCadastro.Text, txtSobrenomeCadastro.Text, txtEmailCadastro.Text, txtSenhaCadastro.Text)), Encoding.UTF8, "application/json")).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                Dictionary<string, Object> resultado = (Dictionary<string, Object>)serializer.DeserializeObject(response.Content.ReadAsStringAsync().Result);

                if (response.IsSuccessStatusCode)
                {
                    string URL2 = $"https://localhost:44323/api/AgenteToken/{Uri.EscapeUriString(txtEmailCadastro.Text)}/{Uri.EscapeUriString(txtSenhaCadastro.Text)}";
                    string urlParameters2 = "";
                    HttpClient client2 = new HttpClient();
                    client2.BaseAddress = new Uri(URL2);

                    // Add an Accept header for JSON format.
                    client2.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response2 = client2.GetAsync(urlParameters2).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    Dictionary<string, Object> resultado2 = (Dictionary<string, Object>)serializer2.DeserializeObject(response2.Content.ReadAsStringAsync().Result);
                    lblSenhaAvisoCadastro.Text = "Batata";
                    Session["userID"] = int.Parse((string)resultado2["id"]);
                    Session["userToken"] = (string)resultado2["token"];
                    if (GetUserDetails())
                    {
                        Response.Redirect("Ingredientes.aspx");
                    }
                    else
                    {
                        lblSenhaAvisoLogin.Text = "Usuário ou senha incorreto";
                    }
                    //lblNomeAvisoCadastro.Text = resultado.ToString();
                }
                else
                {
                    lblEmailAvisoCadastro.Text = "Email inválido";
                    //lblNomeAvisoCadastro.Text = resultado.ToString();
                }
            }

            divCad.Attributes.CssStyle.Add("display","block");
        }

        protected void linkSair_Click(object sender, EventArgs e)
        {
            Session["userID"] = null;
            Session["userToken"] = null;
            Session["userRID"] = null;
            divConectado.Visible = false;
            divDesconectado.Visible = true;
            divConectado.Attributes.CssStyle.Add("display", "none");
            divDesconectado.Attributes.CssStyle.Add("display", "block");
        }
    }
}