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
        //public static Label lblPreco1;

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

                    Label lblPreco1 = new Label();
                    lblPreco1.ID = "lblPreco" + indice;
                    lblPreco1.CssClass = "lblPrecoItem";                    
                    divPrecoItem.Controls.Add(lblPreco1);

                    List<PedidoProdutoIngrediente> ppi = ppl[indice].ingredientes.ToList();
                    int y = ppi.Count - 1;
                    if (y >= 0)
                    {
                        Button btnAlterarItem = new Button();
                        btnAlterarItem.ID = "btnAlterarItem" + indice.ToString();
                        btnAlterarItem.CssClass = "btnAlterarItem";
                        btnAlterarItem.Text = "Alterar";
                        divSubInfoItem2.Controls.Add(btnAlterarItem);
                        btnAlterarItem.Click += new EventHandler(AlterarProduto);

                        int ppId = 0;
                        decimal ingPrec = 0;
                        List<ProdutoIngrediente> pi = new List<ProdutoIngrediente>();
                        int t = ppl[indice].produtoID;
                        string URL2 = $"https://localhost:44323/api/Produtos/{t}/";
                        string urlParameters2 = "";
                        HttpClient client2 = new HttpClient();
                        client2.BaseAddress = new Uri(URL2);

                        //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                        // Add an Accept header for JSON format.
                        client2.DefaultRequestHeaders.Accept.Add(
                        new MediaTypeWithQualityHeaderValue("application/json"));

                        // List data response.
                        JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                        HttpResponseMessage response2 = client2.GetAsync(urlParameters2).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                        Produto resultado2 = (Produto)serializer2.Deserialize<Produto>(response2.Content.ReadAsStringAsync().Result);

                        if (response2.IsSuccessStatusCode)
                        {
                            pi = resultado2.ingredientes.ToList();
                            foreach (PedidoProdutoIngrediente p in ppi)
                            {
                                ppId = p.ProdutoIngredienteID;
                                int ind = pi.FindIndex(a => a.PIngredientID.Equals(ppId));
                                ingPrec += p.Quantidade * pi[ind].Price;
                            }
                            lblPreco1.Text = "R$ " + (ingPrec * ppl[indice].pedidoProdutoQtde).ToString();
                        }
                        else
                        {

                        }
                    }
                    else
                    {
                        lblPreco1.Text = "R$ " + (resultado.Cost * ppl[indice].pedidoProdutoQtde).ToString();
                    }

                    if (ppl[indice].pedidoProdutoQtde == 1)
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
            int itens = 0;
            decimal total = 0;
            int i = 0;
            foreach (PedidoProduto pp in ppl)
            {
                List<PedidoProdutoIngrediente> d = pp.ingredientes.ToList();
                int tam = d.Count - 1;
                decimal ingPrec = 0;
                i = pp.produtoID;
                if (tam >= 0)
                {                    
                    int ppId = 0;
                    List<ProdutoIngrediente> pi = new List<ProdutoIngrediente>();
                    string URL2 = $"https://localhost:44323/api/Produtos/{i}/";
                    string urlParameters2 = "";
                    HttpClient client2 = new HttpClient();
                    client2.BaseAddress = new Uri(URL2);

                    //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                    // Add an Accept header for JSON format.
                    client2.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    // List data response.
                    JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response2 = client2.GetAsync(urlParameters2).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    Produto resultado2 = (Produto)serializer2.Deserialize<Produto>(response2.Content.ReadAsStringAsync().Result);

                    if (response2.IsSuccessStatusCode)
                    {
                        pi = resultado2.ingredientes.ToList();
                        foreach (PedidoProdutoIngrediente p in d)
                        {
                            ppId = p.ProdutoIngredienteID;
                            int ind = pi.FindIndex(a => a.PIngredientID.Equals(ppId));
                            ingPrec += p.Quantidade * pi[ind].Price;
                        }
                    }
                    else
                    {

                    }
                    total += ingPrec * pp.pedidoProdutoQtde;
                    itens += pp.pedidoProdutoQtde;

                }
                else
                {
                    string URL3 = $"https://localhost:44323/api/Produtos/{i}/";
                    string urlParameters3 = "";
                    HttpClient client3 = new HttpClient();
                    client3.BaseAddress = new Uri(URL3);

                    //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                    // Add an Accept header for JSON format.
                    client3.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    // List data response.
                    JavaScriptSerializer serializer3 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response3 = client3.GetAsync(urlParameters3).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    Produto resultado3 = (Produto)serializer3.Deserialize<Produto>(response3.Content.ReadAsStringAsync().Result);
                    if (response3.IsSuccessStatusCode)
                    {
                        itens += pp.pedidoProdutoQtde;
                        total += resultado3.Cost * pp.pedidoProdutoQtde;
                    }
                    
                }

            }
            lblItens.Text = "Itens: " + itens;
            lblTotal.Text = "Total: R$ " + total;

            if(itens == 0)
            {
                Button3.Attributes.CssStyle.Add("display", "none");
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

            int itens = 0;
            decimal total = 0;
            int i = 0;
            foreach (PedidoProduto pp in ppl)
            {
                List<PedidoProdutoIngrediente> d = pp.ingredientes.ToList();
                int tam = d.Count - 1;
                decimal ingPrec = 0;
                i = pp.produtoID;
                if (tam >= 0)
                {
                    int ppId = 0;
                    List<ProdutoIngrediente> pi = new List<ProdutoIngrediente>();
                    string URL2 = $"https://localhost:44323/api/Produtos/{i}/";
                    string urlParameters2 = "";
                    HttpClient client2 = new HttpClient();
                    client2.BaseAddress = new Uri(URL2);

                    //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                    // Add an Accept header for JSON format.
                    client2.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    // List data response.
                    JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response2 = client2.GetAsync(urlParameters2).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    Produto resultado2 = (Produto)serializer2.Deserialize<Produto>(response2.Content.ReadAsStringAsync().Result);

                    if (response2.IsSuccessStatusCode)
                    {
                        pi = resultado2.ingredientes.ToList();
                        foreach (PedidoProdutoIngrediente p in d)
                        {
                            ppId = p.ProdutoIngredienteID;
                            int ind = pi.FindIndex(a => a.PIngredientID.Equals(ppId));
                            ingPrec += p.Quantidade * pi[ind].Price;
                        }
                    }
                    else
                    {

                    }
                    total += ingPrec * pp.pedidoProdutoQtde;
                    itens += pp.pedidoProdutoQtde;

                }
                else
                {
                    string URL3 = $"https://localhost:44323/api/Produtos/{i}/";
                    string urlParameters3 = "";
                    HttpClient client3 = new HttpClient();
                    client3.BaseAddress = new Uri(URL3);

                    //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                    // Add an Accept header for JSON format.
                    client3.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    // List data response.
                    JavaScriptSerializer serializer3 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response3 = client3.GetAsync(urlParameters3).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    Produto resultado3 = (Produto)serializer3.Deserialize<Produto>(response3.Content.ReadAsStringAsync().Result);
                    if (response3.IsSuccessStatusCode)
                    {
                        itens += pp.pedidoProdutoQtde;
                        total += resultado3.Cost * pp.pedidoProdutoQtde;
                    }

                }

            }
            lblItens.Text = "Itens: " + itens;
            lblTotal.Text = "Total: R$ " + total;

            if (itens == 0)
            {
                Button3.Attributes.CssStyle.Add("display", "none");
            }

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
            ppl.RemoveAt(id);
            ((Pedido)Session["Carrinho"]).produtos = ppl.ToArray();
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
            int en = ppl[id].ingredientes.Length - 1;
            int itens = 0;
            decimal total = 0;                        
            int i = 0;
            foreach (PedidoProduto pp in ppl)
            {
                List<PedidoProdutoIngrediente> d = pp.ingredientes.ToList();
                int tam = d.Count - 1;
                decimal ingPrec = 0;
                i = pp.produtoID;
                if (tam >= 0)
                {                    
                    int ppId = 0;
                    List<ProdutoIngrediente> pi = new List<ProdutoIngrediente>();
                    string URL2 = $"https://localhost:44323/api/Produtos/{i}/";
                    string urlParameters2 = "";
                    HttpClient client2 = new HttpClient();
                    client2.BaseAddress = new Uri(URL2);

                    //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                    // Add an Accept header for JSON format.
                    client2.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    // List data response.
                    JavaScriptSerializer serializer2 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response2 = client2.GetAsync(urlParameters2).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    Produto resultado2 = (Produto)serializer2.Deserialize<Produto>(response2.Content.ReadAsStringAsync().Result);

                    if (response2.IsSuccessStatusCode)
                    {
                        pi = resultado2.ingredientes.ToList();
                        foreach (PedidoProdutoIngrediente p in d)
                        {
                            ppId = p.ProdutoIngredienteID;
                            int ind = pi.FindIndex(a => a.PIngredientID.Equals(ppId));
                            ingPrec += p.Quantidade * pi[ind].Price;
                        }
                    }
                    else
                    {

                    }
                    total += ingPrec * pp.pedidoProdutoQtde;
                    itens += pp.pedidoProdutoQtde;

                }
                else
                {
                    string URL3 = $"https://localhost:44323/api/Produtos/{i}/";
                    string urlParameters3 = "";
                    HttpClient client3 = new HttpClient();
                    client3.BaseAddress = new Uri(URL3);

                    //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue((string)Session["userToken"]);
                    // Add an Accept header for JSON format.
                    client3.DefaultRequestHeaders.Accept.Add(
                    new MediaTypeWithQualityHeaderValue("application/json"));

                    // List data response.
                    JavaScriptSerializer serializer3 = new System.Web.Script.Serialization.JavaScriptSerializer();
                    HttpResponseMessage response3 = client3.GetAsync(urlParameters3).Result;  // Blocking call! Program will wait here until a response is received or a timeout occurs.
                    Produto resultado3 = (Produto)serializer3.Deserialize<Produto>(response3.Content.ReadAsStringAsync().Result);
                    if (response3.IsSuccessStatusCode)
                    {
                        itens += pp.pedidoProdutoQtde;
                        total += resultado3.Cost * pp.pedidoProdutoQtde;
                    }
                }
                               
            }
            lblItens.Text = "Itens: " + itens;
            lblTotal.Text = "Total: R$ " + total;

            if (itens == 0)
            {
                Button3.Attributes.CssStyle.Add("display", "none");
            }

            if (en >= 0)
            {
                decimal ingPrec = 0;
                int ppId = 0;
                List<ProdutoIngrediente> pi = new List<ProdutoIngrediente>();
                List<PedidoProdutoIngrediente> pp = ppl[id].ingredientes.ToList();
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
                Produto resultado = (Produto)serializer.Deserialize<Produto>(response.Content.ReadAsStringAsync().Result);

                if (response.IsSuccessStatusCode)
                {
                    pi = resultado.ingredientes.ToList();
                    foreach (PedidoProdutoIngrediente p in pp)
                    {
                        ppId = p.ProdutoIngredienteID;
                        int ind = pi.FindIndex(a => a.PIngredientID.Equals(ppId));
                        ingPrec += p.Quantidade * pi[ind].Price;
                    }
                    x.Text = "R$ " + (ingPrec * qtde).ToString();
                }
                else
                {

                }
                
            }
            else
            {
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
                    x.Text = "R$ " + (resultado.Cost * qtde).ToString();
                }
                else
                {

                }
            }
                        
            ((Pedido)Session["Carrinho"]).produtos = ppl.ToArray();
        }

        protected void Avancar(object sender, EventArgs e)
        {
            int prods = ((Pedido)Session["Carrinho"]).produtos.Length;
            if (prods != 0)
            {
                Response.Redirect("LocalEntrega.aspx");
            }
            else
            {

            }
        }

        protected void Voltar(object sender, EventArgs e)
        {
            Response.Redirect("Produtos.aspx");
        }
    }
}