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
        
        public static Produto[] produtos;        
        public static List<PedidoProduto> ppl = new List<PedidoProduto>();
        PedidoProduto pedido;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Carrinho"] = new SblendersAPI.Models.Pedido(0, 0, 0, DateTime.Now, "", new PedidoProduto[1]);
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
                Produto[] resultado = serializer.Deserialize<List<Produto>>(response.Content.ReadAsStringAsync().Result).ToArray();

                if (response.IsSuccessStatusCode)
                {
                    int qtdeProd = resultado.Length;
                    int i = qtdeProd;
                    Image[] imgProd = new Image[qtdeProd];
                    produtos = resultado;
                    if (x == 1)
                    {
                        Response.Headers.Add("produtos-count", qtdeProd.ToString());
                        while (i > 0)
                        {

                            HtmlGenericControl divProduto = new HtmlGenericControl("DIV");
                            divProduto.Attributes.Add("class", "divProduto");
                            divProds.Controls.Add(divProduto);

                            HtmlGenericControl a = new HtmlGenericControl("A");
                            a.ID = "a" + produtos[i - 1].ID;
                            a.ClientIDMode = ClientIDMode.Static;
                            a.Attributes.Add("href", "javascript:void(0)");
                            //a.Attributes.Add("onclick","exibirInfoNutri");
                            divProduto.Controls.Add(a);

                            HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                            divSubProduto1.Attributes.Add("class", "divSubProduto1");
                            a.Controls.Add(divSubProduto1);

                            HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                            imgSubProduto.Attributes.Add("class", "imgSubProduto");
                            imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + produtos[i-1].ID + "/");
                            divSubProduto1.Controls.Add(imgSubProduto);

                            HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                            divSubProduto2.Attributes.Add("class", "divSubProduto2");
                            a.Controls.Add(divSubProduto2);

                            Label lblNome1 = new Label();
                            lblNome1.ID = "lblNome"+ produtos[i - 1].ID;
                            lblNome1.CssClass = "lblDescricaoProduto";
                            lblNome1.Text = produtos[i - 1].Name;
                            divSubProduto2.Controls.Add(lblNome1);

                            Label lblValor1 = new Label();
                            lblValor1.ID = "lblValor"+produtos[i - 1].ID;
                            lblValor1.CssClass = "lblValorProduto";
                            lblValor1.Text = "R$" + produtos[i - 1].Cost;
                            divSubProduto2.Controls.Add(lblValor1);
                            //Adicionando o controle a página               

                            HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                            divSubProduto3.Attributes.Add("class", "divSubProduto3");
                            divProduto.Controls.Add(divSubProduto3);

                            Button btnAdicionarCarrinho1 = new Button();
                            btnAdicionarCarrinho1.ID = produtos[i - 1].ID.ToString();
                            btnAdicionarCarrinho1.CssClass = "btnAdicionarCarrinho";
                            btnAdicionarCarrinho1.Text = "Adicionar ao Carrinho";
                            divSubProduto3.Controls.Add(btnAdicionarCarrinho1);
                            btnAdicionarCarrinho1.Click += new EventHandler(AdicionarProduto);

                            /*//Informações Nutricionais
                            HtmlGenericControl divNutri = new HtmlGenericControl("DIV");
                            divNutri.ID = "sectionProd" + produtos[i - 1].ID;
                            divNutri.Attributes.Add("class", "sectionProd");
                            Controls.Add(divNutri);

                            HtmlGenericControl divDescricaoProduto = new HtmlGenericControl("DIV");
                            divDescricaoProduto.Attributes.Add("class", "divDescricaoProduto");
                            divNutri.Controls.Add(divDescricaoProduto);

                            HtmlGenericControl divDescricaoProdutoTitulo = new HtmlGenericControl("DIV");
                            divDescricaoProdutoTitulo.Attributes.Add("class", "divDescricaoProdutoTitulo");
                            divDescricaoProduto.Controls.Add(divDescricaoProdutoTitulo);

                            HtmlGenericControl h1InfoNutri = new HtmlGenericControl("H1");
                            h1InfoNutri.Attributes.Add("class", "h1InfoNutri");
                            h1InfoNutri.InnerText = "Informações Nutricionais";
                            divDescricaoProdutoTitulo.Controls.Add(h1InfoNutri);

                            HtmlGenericControl aNutri = new HtmlGenericControl("A");
                            aNutri.Attributes.Add("onclick", "fecharInfoNutri()");
                            divDescricaoProdutoTitulo.Controls.Add(aNutri);

                            HtmlGenericControl imgIconX = new HtmlGenericControl("IMG");
                            imgIconX.Attributes.Add("class", "imgIconX");
                            imgIconX.Attributes.Add("src", "Imagens/iconeX.png");
                            aNutri.Controls.Add(imgIconX);

                            HtmlGenericControl divDescricaoProdutoCorpo = new HtmlGenericControl("DIV");
                            divDescricaoProdutoCorpo.Attributes.Add("class", "divDescricaoProdutoCorpo");
                            divDescricaoProduto.Controls.Add(divDescricaoProdutoCorpo);

                            foreach(Produto.InformacaoNutricional pin in produtos[i - 1].infoNutr)
                            {
                                Label lblDescNutri = new Label();
                                lblDescNutri.ID = "lblDescNutri" + produtos[i - 1].ID;
                                lblDescNutri.CssClass = "lblDescNutri";
                                lblDescNutri.Text = pin.descricao + ":";
                                divDescricaoProdutoCorpo.Controls.Add(lblDescNutri);

                                Label lblDescValor = new Label();
                                lblDescValor.ID = "lblDescValor" + produtos[i - 1].ID;
                                lblDescValor.CssClass = "lblDescValor";
                                lblDescValor.Text = pin.val.ToString();
                                divDescricaoProdutoCorpo.Controls.Add(lblDescValor);
                            }*/
                            i--;

                        }
                    }

                    else if(x == 2){
                        while (i > 0)
                        {

                            HtmlGenericControl divProduto = new HtmlGenericControl("DIV");

                            //Adicionando propriedades
                            //divProduto.ID = "divPro";
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
                            imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + produtos[i-1].ID + "/");
                            divSubProduto1.Controls.Add(imgSubProduto);

                            HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                            divSubProduto2.Attributes.Add("class", "divSubProduto2");
                            a.Controls.Add(divSubProduto2);

                            Label lblNome1 = new Label();
                            lblNome1.ID = "lblNome"+ produtos[i - 1].ID;
                            lblNome1.CssClass = "lblDescricaoProduto";
                            lblNome1.Text = produtos[i - 1].Name;
                            divSubProduto2.Controls.Add(lblNome1);

                            Label lblValor1 = new Label();
                            lblValor1.ID = "lblValor"+ produtos[i - 1].ID;
                            lblValor1.CssClass = "lblValorProduto";
                            lblValor1.Text = "R$" + produtos[i - 1].Cost;
                            divSubProduto2.Controls.Add(lblValor1);
                            //Adicionando o controle a página               

                            HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                            divSubProduto3.Attributes.Add("class", "divSubProduto3");
                            divProduto.Controls.Add(divSubProduto3);

                            Button btnAdicionarCarrinho1 = new Button();
                            btnAdicionarCarrinho1.ID = produtos[i - 1].ID.ToString();
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

                            HtmlGenericControl divProduto = new HtmlGenericControl("DIV");

                            //Adicionando propriedades
                            //divProduto.ID = "divPro";
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
                            imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + produtos[i-1].ID + "/");
                            divSubProduto1.Controls.Add(imgSubProduto);

                            HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                            divSubProduto2.Attributes.Add("class", "divSubProduto2");
                            a.Controls.Add(divSubProduto2);

                            Label lblNome1 = new Label();
                            lblNome1.ID = "lblNome"+produtos[i - 1].ID;
                            lblNome1.CssClass = "lblDescricaoProduto";
                            lblNome1.Text = produtos[i - 1].Name;
                            divSubProduto2.Controls.Add(lblNome1);

                            Label lblValor1 = new Label();
                            lblValor1.ID = "lblValor"+ produtos[i - 1].ID;
                            lblValor1.CssClass = "lblValorProduto";
                            lblValor1.Text = "R$" + produtos[i - 1].Cost;
                            divSubProduto2.Controls.Add(lblValor1);
                            //Adicionando o controle a página               

                            HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                            divSubProduto3.Attributes.Add("class", "divSubProduto3");
                            divProduto.Controls.Add(divSubProduto3);

                            Button btnAdicionarCarrinho1 = new Button();
                            btnAdicionarCarrinho1.ID = produtos[i - 1].ID.ToString();
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

                            HtmlGenericControl divProduto = new HtmlGenericControl("DIV");

                            //Adicionando propriedades
                            //divProduto.ID = "divPro";
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
                            imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + produtos[i-1].ID + "/");
                            divSubProduto1.Controls.Add(imgSubProduto);

                            HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                            divSubProduto2.Attributes.Add("class", "divSubProduto2");
                            a.Controls.Add(divSubProduto2);

                            Label lblNome1 = new Label();
                            lblNome1.ID = "lblNome"+ produtos[i - 1].ID;
                            lblNome1.CssClass = "lblDescricaoProduto";
                            lblNome1.Text = produtos[i - 1].Name;
                            divSubProduto2.Controls.Add(lblNome1);

                            Label lblValor1 = new Label();
                            lblValor1.ID = "lblValor"+produtos[i - 1].ID;
                            lblValor1.CssClass = "lblValorProduto";
                            lblValor1.Text = "R$" + produtos[i - 1].Cost;
                            divSubProduto2.Controls.Add(lblValor1);
                            //Adicionando o controle a página               

                            HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                            divSubProduto3.Attributes.Add("class", "divSubProduto3");
                            divProduto.Controls.Add(divSubProduto3);

                            Button btnAdicionarCarrinho1 = new Button();
                            btnAdicionarCarrinho1.ID = produtos[i - 1].ID.ToString();
                            btnAdicionarCarrinho1.CssClass = "btnAdicionarCarrinho";
                            btnAdicionarCarrinho1.Text = "Adicionar ao Carrinho";                            
                            divSubProduto3.Controls.Add(btnAdicionarCarrinho1);
                            btnAdicionarCarrinho1.Click += new EventHandler(AdicionarProduto);
                            
                            i--;

                        }
                    }

                    //pagina = 1;
                    //paginas = (int)Math.Ceiling(produtos.Length / 8d);
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
            Button iButton = (Button)sender;
            int id = Convert.ToInt32(iButton.ID);
            bool produtoE = false;
            //ppl = ((Pedido)Session["Carrinho"]).produtos.ToList();
            foreach (PedidoProduto pp in ppl)
            {
                if(id == pp.produtoID)
                {
                    produtoE = true;
                }
                else
                {

                }
            }
            if (!produtoE)
            {
                //Session["Carrinho"] = new SblendersAPI.Models.Pedido(0, 0, 0, DateTime.Now, "", new PedidoProduto[0]);           
                iButton.Text = "Adicionado ao Carrinho";
                pedido = new PedidoProduto(1, id, new PedidoProdutoIngrediente[0]);
                ppl = new List<PedidoProduto>(((Pedido)Session["Carrinho"]).produtos);
                ppl.Add(pedido);
                int numeroProdutos = ppl.Count;
                //Session["Carrinho"] = new SblendersAPI.Models.Pedido(0, 0, 0, DateTime.Now, "", new PedidoProduto[numeroProdutos - 1]);
                ((Pedido)Session["Carrinho"]).produtos = ppl.ToArray();
            }
            else
            {

            }

        }

        protected void btnIrCarrinho_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Carrinho.aspx");
        }
    }
}