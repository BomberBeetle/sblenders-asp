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
            if(Session["userID"] != null)
            {
                string URL = $"https://localhost:44323/api/ClienteOnline/{Uri.EscapeUriString((string)Session["userID"])}";
                string urlParameters = "";
                HttpClient client = new HttpClient();
                client.BaseAddress = new Uri(URL);

                // Add an Accept header for JSON format.
                client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

                // List data response.
                JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                ClienteOnline resultado = (ClienteOnline)serializer.DeserializeObject(response.Content.ReadAsStringAsync().Result);

                if (response.IsSuccessStatusCode)
                {
                    TextBox1.Text = resultado.Nome;
                    TextBox2.Text = resultado.Sobrenome;
                    TextBox3.Text = resultado.Login;
                    TextBox4.Text = resultado.Password;

                    string URL2 = $"https://localhost:44323/api/Pedidos/{Uri.EscapeUriString((string)Session["userID"])}";
                    HttpClient client2 = new HttpClient();
                    client.BaseAddress = new Uri(URL);

                    // Add an Accept header for JSON format.
                    client.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    // List data response.
                    JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response2 = client.GetAsync(urlParameters).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    Pedido resultado2 = (Pedido)serializer.DeserializeObject(response.Content.ReadAsStringAsync().Result);

                    if (response2.IsSuccessStatusCode)
                    {

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

        }

        protected void alterarEstadoPedido(object sender, EventArgs e)
        {
            string URL = $"https://localhost:44323/api/Pedidos/{Uri.EscapeUriString((string)Session["userID"])}";
            string urlParameters = "";
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);

            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            // List data response.
            JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            HttpResponseMessage response = client.PostAsync(urlParameters, new StringContent(serializer.Serialize(Session["userID"]), Encoding.UTF8, "application/json")).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
            ClienteOnline resultado = (ClienteOnline)serializer.DeserializeObject(response.Content.ReadAsStringAsync().Result);
        }
    }
}