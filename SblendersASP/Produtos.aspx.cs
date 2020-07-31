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
using System.Web.UI.HtmlControls;

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

        protected void Page_Load(object sender, EventArgs e)
        {
            int x = 4;
            while (x > 0)
            {
                string URL = $"https://localhost:44323/api/Produtos/?cat={Uri.EscapeUriString(x.ToString())}";
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
                    produtos = resultado;
                    if (x == 1)
                    {
                        while (i > 0)
                        {
                            /*string URL2 = $"https://localhost:44323/api/ProdutoFoto/{Uri.EscapeUriString(i.ToString())}";
                            HttpClient client2 = new HttpClient();
                            client2.BaseAddress = new Uri(URL2);

                            JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                            HttpResponseMessage response2 = client2.GetAsync(urlParameters).Result;  
                            Image resultado2 = (Image)serializer2.Deserialize<Image>(response2.Content.ReadAsStringAsync().Result);

                            imgProd[i - 1] = resultado2;*/


                            HtmlGenericControl divProduto = new HtmlGenericControl("DIV");

                            //Adicionando propriedades
                            divProduto.ID = "divPro";
                            divProduto.Attributes.Add("class", "divProduto");

                            divProds.Controls.Add(divProduto);

                            HtmlGenericControl a = new HtmlGenericControl("A");
                            a.Attributes.Add("href", "javascript:void(0)");
                            a.Attributes.Add("onclick", "popupProduto()");
                            divProduto.Controls.Add(a);

                            HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                            divSubProduto1.Attributes.Add("class", "divSubProduto1");
                            a.Controls.Add(divSubProduto1);

                            HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                            imgSubProduto.Attributes.Add("class", "imgSubProduto");
                            imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + i + "/");
                            divSubProduto1.Controls.Add(imgSubProduto);

                            /*Image imgSubProduto1 = new Image();
                            imgSubProduto1.ID = "imgSubProduto1";
                            imgSubProduto1.CssClass = "imgSubProduto";
                            imgSubProduto1.ImageUrl = "https://localhost:44323/api/ProdutoFoto/1/";
                            divSubProduto1.Controls.Add(imgSubProduto1);*/

                            HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                            divSubProduto2.Attributes.Add("class", "divSubProduto2");
                            a.Controls.Add(divSubProduto2);

                            Label lblNome1 = new Label();
                            lblNome1.ID = "lblNome1";
                            lblNome1.CssClass = "lblDescricaoProduto";
                            lblNome1.Text = produtos[i - 1].Name;
                            divSubProduto2.Controls.Add(lblNome1);

                            Label lblValor1 = new Label();
                            lblValor1.ID = "lblValor1";
                            lblValor1.CssClass = "lblValorProduto";
                            lblValor1.Text = "R$" + produtos[i - 1].Cost;
                            divSubProduto2.Controls.Add(lblValor1);
                            //Adicionando o controle a página               

                            HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                            divSubProduto3.Attributes.Add("class", "divSubProduto3");
                            divProduto.Controls.Add(divSubProduto3);

                            Button btnAdicionarCarrinho1 = new Button();
                            btnAdicionarCarrinho1.ID = "btnAdicionarCarrinho1";
                            btnAdicionarCarrinho1.CssClass = "btnAdicionarCarrinho";
                            btnAdicionarCarrinho1.Text = "Adicionar ao Carrinho";
                            divSubProduto3.Controls.Add(btnAdicionarCarrinho1);
                            btnAdicionarCarrinho1.Click += new EventHandler(AdicionarProduto);
                            i--;

                        }
                    }

                    else if(x == 2){
                        while (i > 0)
                        {
                            /*string URL2 = $"https://localhost:44323/api/ProdutoFoto/{Uri.EscapeUriString(i.ToString())}";
                            HttpClient client2 = new HttpClient();
                            client2.BaseAddress = new Uri(URL2);

                            JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                            HttpResponseMessage response2 = client2.GetAsync(urlParameters).Result;  
                            Image resultado2 = (Image)serializer2.Deserialize<Image>(response2.Content.ReadAsStringAsync().Result);

                            imgProd[i - 1] = resultado2;*/


                            HtmlGenericControl divProduto = new HtmlGenericControl("DIV");

                            //Adicionando propriedades
                            divProduto.ID = "divPro";
                            divProduto.Attributes.Add("class", "divProduto");

                            divProds2.Controls.Add(divProduto);

                            HtmlGenericControl a = new HtmlGenericControl("A");
                            a.Attributes.Add("href", "javascript:void(0)");
                            a.Attributes.Add("onclick", "popupProduto()");
                            divProduto.Controls.Add(a);

                            HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                            divSubProduto1.Attributes.Add("class", "divSubProduto1");
                            a.Controls.Add(divSubProduto1);

                            HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                            imgSubProduto.Attributes.Add("class", "imgSubProduto");
                            imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + i + "/");
                            divSubProduto1.Controls.Add(imgSubProduto);

                            /*Image imgSubProduto1 = new Image();
                            imgSubProduto1.ID = "imgSubProduto1";
                            imgSubProduto1.CssClass = "imgSubProduto";
                            imgSubProduto1.ImageUrl = "https://localhost:44323/api/ProdutoFoto/1/";
                            divSubProduto1.Controls.Add(imgSubProduto1);*/

                            HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                            divSubProduto2.Attributes.Add("class", "divSubProduto2");
                            a.Controls.Add(divSubProduto2);

                            Label lblNome1 = new Label();
                            lblNome1.ID = "lblNome1";
                            lblNome1.CssClass = "lblDescricaoProduto";
                            lblNome1.Text = produtos[i - 1].Name;
                            divSubProduto2.Controls.Add(lblNome1);

                            Label lblValor1 = new Label();
                            lblValor1.ID = "lblValor1";
                            lblValor1.CssClass = "lblValorProduto";
                            lblValor1.Text = "R$" + produtos[i - 1].Cost;
                            divSubProduto2.Controls.Add(lblValor1);
                            //Adicionando o controle a página               

                            HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                            divSubProduto3.Attributes.Add("class", "divSubProduto3");
                            divProduto.Controls.Add(divSubProduto3);

                            Button btnAdicionarCarrinho1 = new Button();
                            btnAdicionarCarrinho1.ID = "btnAdicionarCarrinho1";
                            btnAdicionarCarrinho1.CssClass = "btnAdicionarCarrinho";
                            btnAdicionarCarrinho1.Text = "Adicionar ao Carrinho";
                            divSubProduto3.Controls.Add(btnAdicionarCarrinho1);
                            btnAdicionarCarrinho1.Click += new EventHandler(AdicionarProduto);
                            i--;

                        }
                    }

                    else if (x == 3)
                    {
                        while (i > 0)
                        {
                            /*string URL2 = $"https://localhost:44323/api/ProdutoFoto/{Uri.EscapeUriString(i.ToString())}";
                            HttpClient client2 = new HttpClient();
                            client2.BaseAddress = new Uri(URL2);

                            JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                            HttpResponseMessage response2 = client2.GetAsync(urlParameters).Result;  
                            Image resultado2 = (Image)serializer2.Deserialize<Image>(response2.Content.ReadAsStringAsync().Result);

                            imgProd[i - 1] = resultado2;*/


                            HtmlGenericControl divProduto = new HtmlGenericControl("DIV");

                            //Adicionando propriedades
                            divProduto.ID = "divPro";
                            divProduto.Attributes.Add("class", "divProduto");

                            divProds3.Controls.Add(divProduto);

                            HtmlGenericControl a = new HtmlGenericControl("A");
                            a.Attributes.Add("href", "javascript:void(0)");
                            a.Attributes.Add("onclick", "popupProduto()");
                            divProduto.Controls.Add(a);

                            HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                            divSubProduto1.Attributes.Add("class", "divSubProduto1");
                            a.Controls.Add(divSubProduto1);

                            HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                            imgSubProduto.Attributes.Add("class", "imgSubProduto");
                            imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + i + "/");
                            divSubProduto1.Controls.Add(imgSubProduto);

                            /*Image imgSubProduto1 = new Image();
                            imgSubProduto1.ID = "imgSubProduto1";
                            imgSubProduto1.CssClass = "imgSubProduto";
                            imgSubProduto1.ImageUrl = "https://localhost:44323/api/ProdutoFoto/1/";
                            divSubProduto1.Controls.Add(imgSubProduto1);*/

                            HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                            divSubProduto2.Attributes.Add("class", "divSubProduto2");
                            a.Controls.Add(divSubProduto2);

                            Label lblNome1 = new Label();
                            lblNome1.ID = "lblNome1";
                            lblNome1.CssClass = "lblDescricaoProduto";
                            lblNome1.Text = produtos[i - 1].Name;
                            divSubProduto2.Controls.Add(lblNome1);

                            Label lblValor1 = new Label();
                            lblValor1.ID = "lblValor1";
                            lblValor1.CssClass = "lblValorProduto";
                            lblValor1.Text = "R$" + produtos[i - 1].Cost;
                            divSubProduto2.Controls.Add(lblValor1);
                            //Adicionando o controle a página               

                            HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                            divSubProduto3.Attributes.Add("class", "divSubProduto3");
                            divProduto.Controls.Add(divSubProduto3);

                            Button btnAdicionarCarrinho1 = new Button();
                            btnAdicionarCarrinho1.ID = "btnAdicionarCarrinho1";
                            btnAdicionarCarrinho1.CssClass = "btnAdicionarCarrinho";
                            btnAdicionarCarrinho1.Text = "Adicionar ao Carrinho";
                            divSubProduto3.Controls.Add(btnAdicionarCarrinho1);
                            btnAdicionarCarrinho1.Click += new EventHandler(AdicionarProduto);
                            i--;

                        }
                    }

                    else if (x == 4)
                    {
                        while (i > 0)
                        {
                            /*string URL2 = $"https://localhost:44323/api/ProdutoFoto/{Uri.EscapeUriString(i.ToString())}";
                            HttpClient client2 = new HttpClient();
                            client2.BaseAddress = new Uri(URL2);

                            JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                            HttpResponseMessage response2 = client2.GetAsync(urlParameters).Result;  
                            Image resultado2 = (Image)serializer2.Deserialize<Image>(response2.Content.ReadAsStringAsync().Result);

                            imgProd[i - 1] = resultado2;*/


                            HtmlGenericControl divProduto = new HtmlGenericControl("DIV");

                            //Adicionando propriedades
                            divProduto.ID = "divPro";
                            divProduto.Attributes.Add("class", "divProduto");

                            divProds4.Controls.Add(divProduto);

                            HtmlGenericControl a = new HtmlGenericControl("A");
                            a.Attributes.Add("href", "javascript:void(0)");
                            a.Attributes.Add("onclick", "popupProduto()");
                            divProduto.Controls.Add(a);

                            HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                            divSubProduto1.Attributes.Add("class", "divSubProduto1");
                            a.Controls.Add(divSubProduto1);

                            HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                            imgSubProduto.Attributes.Add("class", "imgSubProduto");
                            imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + i + "/");
                            divSubProduto1.Controls.Add(imgSubProduto);

                            /*Image imgSubProduto1 = new Image();
                            imgSubProduto1.ID = "imgSubProduto1";
                            imgSubProduto1.CssClass = "imgSubProduto";
                            imgSubProduto1.ImageUrl = "https://localhost:44323/api/ProdutoFoto/1/";
                            divSubProduto1.Controls.Add(imgSubProduto1);*/

                            HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                            divSubProduto2.Attributes.Add("class", "divSubProduto2");
                            a.Controls.Add(divSubProduto2);

                            Label lblNome1 = new Label();
                            lblNome1.ID = "lblNome1";
                            lblNome1.CssClass = "lblDescricaoProduto";
                            lblNome1.Text = produtos[i - 1].Name;
                            divSubProduto2.Controls.Add(lblNome1);

                            Label lblValor1 = new Label();
                            lblValor1.ID = "lblValor1";
                            lblValor1.CssClass = "lblValorProduto";
                            lblValor1.Text = "R$" + produtos[i - 1].Cost;
                            divSubProduto2.Controls.Add(lblValor1);
                            //Adicionando o controle a página               

                            HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                            divSubProduto3.Attributes.Add("class", "divSubProduto3");
                            divProduto.Controls.Add(divSubProduto3);

                            Button btnAdicionarCarrinho1 = new Button();
                            btnAdicionarCarrinho1.ID = "btnAdicionarCarrinho1";
                            btnAdicionarCarrinho1.CssClass = "btnAdicionarCarrinho";
                            btnAdicionarCarrinho1.Text = "Adicionar ao Carrinho";
                            divSubProduto3.Controls.Add(btnAdicionarCarrinho1);
                            btnAdicionarCarrinho1.Click += new EventHandler(AdicionarProduto);
                            i--;

                        }
                    }

                    pagina = 1;
                    paginas = (int)Math.Ceiling(produtos.Length / 8d);
                    //showPagina(pagina);

                }
                else
                {
                    //MessageBox.Show("Erro em obter produtos da API. Contate um funcionário.");
                }
                x--;
            }
            
        }

        protected void AdicionarProduto(object sender, EventArgs e)
        {

        }
    }
}