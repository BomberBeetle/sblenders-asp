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
    public partial class Produtos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string URL = $"https://localhost:44323/api/Produtos";
            string URL2 = $"https://localhost:44323/api/ProdutoFoto/id";
            string urlParameters = "";
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);
            HttpClient client2 = new HttpClient();
            client2.BaseAddress = new Uri(URL2);

            /*client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            // List data response.
            JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
            Dictionary<string, Object> resultado = (Dictionary<string, Object>)serializer.DeserializeObject(response.Content.ReadAsStringAsync().Result);*/
        }
    }
}