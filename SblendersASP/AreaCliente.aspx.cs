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
    public partial class AreaCliente : System.Web.UI.Page
    {
        static int pedidoID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                string URL = $"https://localhost:44323/api/Agente/" + Session["userID"];
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
                    TextBox1.Text = (string)resultado["client_name"];
                    TextBox2.Text = (string)resultado["client_surname"];

                    string URL2 = $"https://localhost:44323/api/Pedidos/" + Session["userID"];
                    HttpClient client2 = new HttpClient();
                    client2.BaseAddress = new Uri(URL2);

                    client2.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                    // Add an Accept header for JSON format.
                    client2.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    // List data response.
                    JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response2 = client2.GetAsync(urlParameters).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    String resultado2 = response2.Content.ReadAsStringAsync().Result;
                    Dictionary<string, string>[] result = serializer2.Deserialize<Dictionary<string, string>[]>(resultado2);

                    if (response2.IsSuccessStatusCode)
                    {
                        int tam = result.Length - 1;
                        while (tam >= 0)
                        {
                            string URL3 = $"https://localhost:44323/api/Pedidos/" + Session["userID"] + "/" + result[tam]["pedidoID"];
                            HttpClient client3 = new HttpClient();
                            client3.BaseAddress = new Uri(URL3);

                            client3.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                            // Add an Accept header for JSON format.
                            client3.DefaultRequestHeaders.Accept.Add(
                            new MediaTypeWithQualityHeaderValue("application/json"));

                            JavaScriptSerializer serializer3 = new System.Web.Script.Serialization.JavaScriptSerializer();
                            HttpResponseMessage response3 = client3.GetAsync(urlParameters).Result;
                            Pedido resultado3 = serializer3.Deserialize<Pedido>(response3.Content.ReadAsStringAsync().Result);

                            if (response3.IsSuccessStatusCode)
                            {
                                Button btnA = new Button();
                                btnA.ID = "btnEstado" + result[tam]["pedidoID"];
                                btnA.Text = resultado3.estadoID.ToString();
                                divBodyAreaCliente.Controls.Add(btnA);
                                btnA.Click += new EventHandler(alterarEstadoPedido);
                            }
                            else
                            {

                            }
                            tam--;
                        }

                        if (tam != -1) Label1.Text = result[0]["pedidoID"].ToString();

                    }
                    else
                    {

                    }
                }
                else
                {

                }
            }
            else
            {
                Response.Redirect("Index2.aspx");
            }

        }

        protected void alterarDados(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                string URL = $"https://localhost:44323/api/ClienteOnline/" + Session["userID"];
                string urlParameters = "";
                HttpClient client = new HttpClient();
                client.BaseAddress = new Uri(URL);
                ClienteOnline cli = new ClienteOnline(TextBox1.Text, TextBox2.Text, null, null);

                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                // Add an Accept header for JSON format.
                client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

                // List data response.
                JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                HttpResponseMessage response = client.PostAsync(urlParameters, new StringContent(serializer.Serialize(cli), Encoding.UTF8, "application/json")).Result;
                if (response.IsSuccessStatusCode)
                {
                    Label1.Text = "Certo";
                }
                else
                {
                    Label1.Text = "Erro";
                }
            }
            else
            {
                Response.Redirect("Index2.aspx");
            }

        }

        protected void alterarEstadoPedido(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                Button iButton = (Button)sender;
                String textId = iButton.ID;
                int id = Convert.ToInt32(textId.Substring(9, textId.Length - 9));

                if (iButton.Text.Equals("1"))
                {
                    string URL = $"https://localhost:44323/api/Pedidos/" + Session["userID"] + "/" + id.ToString() + "/6/";
                    string urlParameters = "";
                    HttpClient client = new HttpClient();
                    client.BaseAddress = new Uri(URL);

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                    // Add an Accept header for JSON format.
                    client.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    // List data response.
                    JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response = client.PostAsync(urlParameters, null).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                                                                                                  //ClienteOnline resultado = (ClienteOnline)serializer.DeserializeObject(response.Content.ReadAsStringAsync().Result);
                    if (response.IsSuccessStatusCode)
                    {
                        Label1.Text = "Certo";
                    }
                    else
                    {
                        Label1.Text = "Erro";
                    }
                }
            }
            else
            {
                Response.Redirect("Index2.aspx");
            }

        }

        protected void alterarSenha(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                string URL = $"https://localhost:44323/api/ClienteOnline/" + Session["userID"];
                string urlParameters = "";
                HttpClient client = new HttpClient();
                client.BaseAddress = new Uri(URL);
                ClienteOnline cli = new ClienteOnline(null, null, null, txtSenha.Text);

                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                // Add an Accept header for JSON format.
                client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

                // List data response.
                JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                HttpResponseMessage response = client.PostAsync(urlParameters, new StringContent(serializer.Serialize(cli), Encoding.UTF8, "application/json")).Result;

                if (response.IsSuccessStatusCode)
                {
                    Label1.Text = "Batata";
                }
                else
                {
                    Label1.Text = "Erro";
                }
            }
            else
            {
                Response.Redirect("Index2.aspx");
            }

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }
    }
}