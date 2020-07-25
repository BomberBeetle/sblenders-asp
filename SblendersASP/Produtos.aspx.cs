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
        int pagina = 1;
        int paginas = 0;
        public static ProdutoParcial[] produtos;
        int indiceProduto = 1;
        
        /*void ComputeTotal()
        {
            Session["Carrinho"] = new SblendersAPI.Models.Pedido(0, 0, 0, DateTime.Now, "", new PedidoProduto[0]);
            decimal total = 0;
            foreach (PedidoProduto pedidoProduto in ((Pedido)Session["Carrinho"]).produtos)
            {
                total += pedidoProduto.computatedPrice;
            }
            materialLabel1.Text = "Total: R$ " + total;
            materialRaisedButton2.Text = $"Carrinho ({((Pedido)Session["Carrinho"]).produtos.Length})";
        }

        void showPagina(int pagina)
        {
            foreach (CardProduto c in panel1.Controls)
            {
                c.Visible = false;
            }
            var max = (pagina * 8 > produtos.Length ? produtos.Length - (pagina - 1) * 8 : 8);
            for (int i = 0; i < max; i++)
            {
                int indexCopy = i;
                ((CardProduto)panel1.Controls[7 - i]).Click += new System.EventHandler((object sender, EventArgs e) =>
                {
                    Ingredientes form = new Ingredientes(produtos[(indexCopy + 1) * pagina - 1]);
                    form.ShowDialog();
                    ComputeTotal();
                });

                foreach (Control c in panel1.Controls[7 - i].Controls)
                {
                    c.Click += new System.EventHandler((object sender, EventArgs e) =>
                    {

                        Ingredientes form = new Ingredientes(produtos[(indexCopy + 1) * pagina - 1]);
                        form.ShowDialog();
                        ComputeTotal();
                    });
                }
                ((CardProduto)panel1.Controls[7 - i]).Visible = true;
                ((CardProduto)panel1.Controls[7 - i]).lblNome.Text = produtos[(i + 1) * pagina - 1].Name;
                ((CardProduto)panel1.Controls[7 - i]).lblPreco.Text = "R$" + produtos[(i + 1) * pagina - 1].Cost;
            }
        }*/

        /*private void showProdutos()
        {
            interface lblNome = "lblNome" + indiceProduto;
            String lblValor = "lblValor" + indiceProduto;
            lblNome.Text = 
        }*/

        protected void Page_Load(object sender, EventArgs e)
        {
            string URL = $"https://localhost:44323/api/Produtos/?page=1&count=2";            
            string urlParameters = "";
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);                                  

            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            // List data response.
            JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
            ProdutoParcial[] resultado = (ProdutoParcial[])serializer.Deserialize<List<ProdutoParcial>>(response.Content.ReadAsStringAsync().Result).ToArray();
                       
            if (response.IsSuccessStatusCode)
            {
                int qtdeProd = resultado.Length;
                int i = qtdeProd;
                Image[] imgProd = new Image[qtdeProd];
                while (i > 0)
                {
                    string URL2 = $"https://localhost:44323/api/ProdutoFoto/{Uri.EscapeUriString(i.ToString())}";
                    HttpClient client2 = new HttpClient();
                    client2.BaseAddress = new Uri(URL2);

                    JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response2 = client2.GetAsync(urlParameters).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    Image resultado2 = (Image)serializer2.Deserialize<Image>(response2.Content.ReadAsStringAsync().Result);

                    imgProd[i - 1] = resultado2;
                    i--;
                }


                produtos = resultado;
                pagina = 1;
                paginas = (int)Math.Ceiling(produtos.Length / 8d);
                //showPagina(pagina);

            }
            else
            {
                //MessageBox.Show("Erro em obter produtos da API. Contate um funcionário.");
            }
        }
    }
}