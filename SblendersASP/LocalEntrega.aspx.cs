using SblendersAPI.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TCC
{
    public partial class LocalEntrega : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {            
            bool val = Convert.ToBoolean(hiddenOk.Value);
            lblCustoFrete.Text = val.ToString();
            if (val)
            {
                ((Pedido)Session["Carrinho"]).endereco = txtEndMaps.Text;
                ((Pedido)Session["Carrinho"]).agenteID = (int)Session["userID"];
                ((Pedido)Session["Carrinho"]).restauranteID = Convert.ToInt32(hiddenRID.Value);
                ((Pedido)Session["Carrinho"]).instrucoes = "";
                EnviarPedido();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "traçar rota", "tracarRotaReverso()", true);
            }
                       
        }

        public void EnviarPedido()
        {
            string URL = $"https://localhost:44323/api/Pedidos";
            string urlParameters = "";
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);

            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            // List data response.
            JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            HttpResponseMessage response = client.PutAsync(urlParameters, new StringContent(serializer.Serialize(Session["Carrinho"]), Encoding.UTF8, "application/json")).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
            Dictionary<string, Object> resultado = (Dictionary<string, Object>)serializer.DeserializeObject(response.Content.ReadAsStringAsync().Result);

            if (response.IsSuccessStatusCode)
            {
                Response.Redirect("Index2.aspx");
            }
            else
            {

            }
        }

    }
}