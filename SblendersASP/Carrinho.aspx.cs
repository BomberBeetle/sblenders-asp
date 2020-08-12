using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using SblendersAPI.Models;
using System.Web.UI.HtmlControls;
using System.Web.Script.Serialization;

namespace TCC
{
    public partial class Carrinho : System.Web.UI.Page
    {
        //public static ProdutoParcial[] produtos;
        public static Label lblPreco1;

        protected void Page_Load(object sender, EventArgs e)
        {
            List<PedidoProduto> ppl = new List<PedidoProduto>(((Pedido)Session["Carrinho"]).produtos);
            int numeroProdutos = ppl.Count-1;
            int indice = numeroProdutos;
            //int id = ppl[indice].produtoID;
            while (indice >= 0)
            {
                int id = ppl[indice].produtoID;
                string URL = $"https://localhost:44323/api/Produtos/?id={Uri.EscapeUriString(id.ToString())}";
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
                    //produtos = resultado;

                    HtmlGenericControl divItemCarrinho = new HtmlGenericControl("DIV");
                    divItemCarrinho.Attributes.Add("class", "divItemCarrinho");
                    divItemCarrinho.ID = "divItemCarrinho" + resultado[0].ID;
                    divItensCarrinhos.Controls.Add(divItemCarrinho);

                    HtmlGenericControl divImgItem = new HtmlGenericControl("DIV");
                    divImgItem.Attributes.Add("class", "divImgItem");
                    divItemCarrinho.Controls.Add(divImgItem);

                    HtmlGenericControl imgItem = new HtmlGenericControl("IMG");
                    imgItem.Attributes.Add("class", "imgItem");
                    imgItem.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + ppl[indice].produtoID + "/");
                    divImgItem.Controls.Add(imgItem);

                    HtmlGenericControl divInfoItem = new HtmlGenericControl("DIV");
                    divInfoItem.Attributes.Add("class", "divInfoItem");
                    divItemCarrinho.Controls.Add(divInfoItem);

                    HtmlGenericControl divSubInfoItem1 = new HtmlGenericControl("DIV");
                    divSubInfoItem1.Attributes.Add("class", "divSubInfoItem1");
                    divInfoItem.Controls.Add(divSubInfoItem1);

                    Label lblNome1 = new Label();
                    lblNome1.ID = "lblNome" + resultado[0].ID;
                    lblNome1.CssClass = "lblNomeItem";
                    lblNome1.Text = resultado[0].Name;
                    divSubInfoItem1.Controls.Add(lblNome1);

                    HtmlGenericControl divSubInfoItem2 = new HtmlGenericControl("DIV");
                    divSubInfoItem2.Attributes.Add("class", "divSubInfoItem2");
                    divInfoItem.Controls.Add(divSubInfoItem2);

                    Button btnExcluir = new Button();
                    btnExcluir.ID = resultado[0].ID.ToString();
                    btnExcluir.CssClass = "btnExcluirItem";
                    btnExcluir.Text = "Excluir";
                    divSubInfoItem2.Controls.Add(btnExcluir);
                    btnExcluir.Click += new EventHandler(ExcluirProduto);

                    HtmlGenericControl divQuantidadeItem = new HtmlGenericControl("DIV");
                    divQuantidadeItem.Attributes.Add("class", "divQuantidadeItem");
                    divItemCarrinho.Controls.Add(divQuantidadeItem);

                    DropDownList ddlQtde = new DropDownList();
                    ddlQtde.ID = "ddlQtde" + resultado[0].ID;
                    ddlQtde.CssClass = "selectQuantidadeItem";
                    ddlQtde.AutoPostBack = true;
                    ddlQtde.TextChanged += new EventHandler(NovaQuantidade); 
                    divQuantidadeItem.Controls.Add(ddlQtde);

                    ListItem lstQtde1 = new ListItem();
                    lstQtde1.Text = "1";
                    ddlQtde.Items.Add(lstQtde1);

                    ListItem lstQtde2 = new ListItem();
                    lstQtde2.Text = "2";
                    ddlQtde.Items.Add(lstQtde2);

                    ListItem lstQtde3 = new ListItem();
                    lstQtde3.Text = "3";
                    ddlQtde.Items.Add(lstQtde3);

                    ListItem lstQtde4 = new ListItem();
                    lstQtde4.Text = "4";
                    ddlQtde.Items.Add(lstQtde4);

                    ListItem lstQtde5 = new ListItem();
                    lstQtde5.Text = "5";
                    ddlQtde.Items.Add(lstQtde5);

                    ListItem lstQtde6 = new ListItem();
                    lstQtde6.Text = "6";
                    ddlQtde.Items.Add(lstQtde6);

                    HtmlGenericControl divPrecoItem = new HtmlGenericControl("DIV");
                    divPrecoItem.Attributes.Add("class", "divPrecoItem");
                    divItemCarrinho.Controls.Add(divPrecoItem);

                    //Label lblPreco1 = new Label();
                    lblPreco1 = new Label();
                    lblPreco1.ID = "lblPreco" + resultado[0].ID;
                    lblPreco1.CssClass = "lblPrecoItem";
                    lblPreco1.Text = (resultado[0].Cost*ppl[indice].pedidoProdutoQtde).ToString();
                    divPrecoItem.Controls.Add(lblPreco1);

                    if(ppl[indice].pedidoProdutoQtde == 1)
                    {
                        lstQtde1.Selected = true;
                    }
                    else if(ppl[indice].pedidoProdutoQtde == 2)
                    {
                        lstQtde2.Selected = true;
                    }
                    else if (ppl[indice].pedidoProdutoQtde == 3)
                    {
                        lstQtde3.Selected = true;
                    }
                    else if (ppl[indice].pedidoProdutoQtde == 4)
                    {
                        lstQtde4.Selected = true;
                    }
                    else if (ppl[indice].pedidoProdutoQtde == 5)
                    {
                        lstQtde5.Selected = true;
                    }
                    else if (ppl[indice].pedidoProdutoQtde == 6)
                    {
                        lstQtde6.Selected = true;
                    }

                }
                else
                {

                }
                indice--;
            }
        }

        protected void ExcluirProduto(object sender, EventArgs e)
        {
            Button iButton = (Button)sender;
            int id = Convert.ToInt32(iButton.ID);
            String idDiv = "divItemCarrinho" + id;
            List<PedidoProduto> ppl = new List<PedidoProduto>(((Pedido)Session["Carrinho"]).produtos);
            Control div = divItensCarrinhos.FindControl(idDiv);
            divItensCarrinhos.Controls.Remove(div);
            foreach (PedidoProduto pp in ppl)
            {
                if (pp.produtoID == id)
                {
                    ppl.Remove(pp);
                }
                else
                {

                }
            }
            ((Pedido)Session["Carrinho"]).produtos = ppl.ToArray();
        }

        protected void AlterarProduto(object sender, EventArgs e)
        {
            Button iButton = (Button)sender;
            String textId = iButton.ID;
            int id = Convert.ToInt32(textId.Substring(7, textId.Length - 7));
            Response.Redirect("Ingredientes.aspx");
        }

        protected void NovaQuantidade(object sender, EventArgs e)
        {
            DropDownList iButton = (DropDownList)sender;
            String textId = iButton.ID;
            int id = Convert.ToInt32(textId.Substring(7, textId.Length-7));
            int qtde = Convert.ToInt32(iButton.Text);
            String lbl = "lblPreco" + id;
            Label x = (Label)divItensCarrinhos.FindControl(lbl);
            List<PedidoProduto> ppl = new List<PedidoProduto>(((Pedido)Session["Carrinho"]).produtos);
            //PedidoProduto pp =  ppl.FirstOrDefault(a => a.produtoID == id);
            foreach(PedidoProduto pp in ppl)
            {
                if(pp.produtoID == id)
                {
                    pp.pedidoProdutoQtde = qtde;
                }
                else
                {

                }
            }

            string URL = $"https://localhost:44323/api/Produtos/?id={id}/";
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
                x.Text = (resultado[0].Cost * qtde).ToString();
            }
            else
            {

            }
            
            ((Pedido)Session["Carrinho"]).produtos = ppl.ToArray();
        }
    }
}