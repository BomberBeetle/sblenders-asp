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
            int indice = 0;
            for (indice = 0 ; indice <= numeroProdutos; indice++)
            {
                int id = ppl[indice].produtoID;
                string URL = $"https://localhost:44323/api/Produtos/{Uri.EscapeUriString(id.ToString())}";
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
                ProdutoParcial resultado = (ProdutoParcial)serializer.Deserialize<ProdutoParcial>(response.Content.ReadAsStringAsync().Result);

                if (response.IsSuccessStatusCode)
                {
                    //produtos = resultado;

                    HtmlGenericControl divItemCarrinho = new HtmlGenericControl("DIV");
                    divItemCarrinho.Attributes.Add("class", "divItemCarrinho");
                    divItemCarrinho.ID = "divItemCarrinho" + indice;
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
                    lblNome1.ID = "lblNome" + indice;
                    lblNome1.CssClass = "lblNomeItem";
                    lblNome1.Text = resultado.Name;
                    divSubInfoItem1.Controls.Add(lblNome1);

                    HtmlGenericControl divSubInfoItem2 = new HtmlGenericControl("DIV");
                    divSubInfoItem2.Attributes.Add("class", "divSubInfoItem2");
                    divInfoItem.Controls.Add(divSubInfoItem2);

                    Button btnExcluir = new Button();
                    btnExcluir.ID = "btnExcluir" + indice.ToString();
                    btnExcluir.CssClass = "btnExcluirItem";
                    btnExcluir.Text = "Excluir";
                    divSubInfoItem2.Controls.Add(btnExcluir);
                    btnExcluir.Click += new EventHandler(ExcluirProduto);

                    List<PedidoProdutoIngrediente> ppi = ppl[indice].ingredientes.ToList();
                    int y = ppi.Count-1;
                    if (y >= 0)
                    {
                        Button btnAlterarItem = new Button();
                        btnAlterarItem.ID = "btnAlterarItem" + indice.ToString();
                        btnAlterarItem.CssClass = "btnAlterarItem";
                        btnAlterarItem.Text = "Alterar";
                        divSubInfoItem2.Controls.Add(btnAlterarItem);
                        btnAlterarItem.Click += new EventHandler(AlterarProduto);
                    }

                    HtmlGenericControl divQuantidadeItem = new HtmlGenericControl("DIV");
                    divQuantidadeItem.Attributes.Add("class", "divQuantidadeItem");
                    divItemCarrinho.Controls.Add(divQuantidadeItem);

                    DropDownList ddlQtde = new DropDownList();
                    ddlQtde.ID = "ddlQtde" + indice;
                    ddlQtde.CssClass = "selectQuantidadeItem";
                    ddlQtde.AutoPostBack = true;
                    ddlQtde.TextChanged += new EventHandler(NovaQuantidade); 
                    divQuantidadeItem.Controls.Add(ddlQtde);

                    int elements = ddlQtde.Items.Count-1;
                    while(elements >= 0)
                    {
                        ddlQtde.Items.RemoveAt(elements);
                        elements--;
                    }
                    
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
                    lblPreco1.ID = "lblPreco" + indice;
                    lblPreco1.CssClass = "lblPrecoItem";
                    lblPreco1.Text = (resultado.Cost*ppl[indice].pedidoProdutoQtde).ToString();
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
            }
        }

        protected void ExcluirProduto(object sender, EventArgs e)
        {
            Button iButton = (Button)sender;
            String textId = iButton.ID;
            int id = Convert.ToInt32(textId.Substring(10, textId.Length - 10));
            String idDiv = "divItemCarrinho" + id;
            List<PedidoProduto> ppl = new List<PedidoProduto>(((Pedido)Session["Carrinho"]).produtos);
            Control div = divItensCarrinhos.FindControl(idDiv);
            divItensCarrinhos.Controls.Remove(div);
            ppl.RemoveAt(id);
            /*bool existId = false;
            int ind = 0;
            foreach (PedidoProduto pp in ppl)
            {
                if (pp.produtoID == id)
                {
                    existId = true;
                    ind = ppl.FindIndex(a => a.produtoID.Equals(id));
                }
                else
                {

                }
            }
            if (existId)
            {
                ppl.RemoveAt(ind);
            }*/
            ((Pedido)Session["Carrinho"]).produtos = ppl.ToArray();
        }

        protected void AlterarProduto(object sender, EventArgs e)
        {
            Ingredientes ing = new Ingredientes();
            Button iButton = (Button)sender;
            String textId = iButton.ID;
            int id = Convert.ToInt32(textId.Substring(14, textId.Length - 14));
            List<PedidoProduto> ppl = new List<PedidoProduto>(((Pedido)Session["Carrinho"]).produtos);
            List<PedidoProdutoIngrediente> pp = ppl[id].ingredientes.ToList();
            ing.setIngredientes(pp);
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
            ppl[id].pedidoProdutoQtde = qtde;
            int idd = ppl[id].produtoID;
            //PedidoProduto pp =  ppl.FirstOrDefault(a => a.produtoID == id);
            /*foreach(PedidoProduto pp in ppl)
            {
                if(pp.produtoID == id)
                {
                    pp.pedidoProdutoQtde = qtde;
                }
                else
                {

                }
            }*/

            string URL = $"https://localhost:44323/api/Produtos/{idd}/";
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
            ProdutoParcial resultado = (ProdutoParcial)serializer.Deserialize<ProdutoParcial>(response.Content.ReadAsStringAsync().Result);

            if (response.IsSuccessStatusCode)
            {
                x.Text = (resultado.Cost * qtde).ToString();
            }
            else
            {

            }
            
            ((Pedido)Session["Carrinho"]).produtos = ppl.ToArray();
        }
    }
}