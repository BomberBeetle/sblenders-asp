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

        protected void RecuperarSenha(object sender, EventArgs e)
        {

        }
    }
}