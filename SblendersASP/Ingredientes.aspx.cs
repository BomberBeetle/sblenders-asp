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
    public partial class Ingredientes : System.Web.UI.Page
    {
        public static Produto prod;
        public static List<PedidoProdutoIngrediente> ppi = new List<PedidoProdutoIngrediente>();
        public static List<ProdutoIngrediente> pi = new List<ProdutoIngrediente>();
        public static List<PedidoProduto> ppl;
        Ingredientes ingredient;

        protected void Page_Load(object sender, EventArgs e)
        {

            string URL = $"https://localhost:44323/api/Produtos/23";
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
            Produto resultado = serializer.Deserialize<Produto>(response.Content.ReadAsStringAsync().Result);

            if (response.IsSuccessStatusCode)
            {
                prod = resultado;
                pi = resultado.ingredientes.ToList();

                foreach (ProdutoIngrediente p in pi)
                {
                    if (p.CategoriaIngredienteID == 1)
                    {
                        HtmlGenericControl divProduto = new HtmlGenericControl("DIV");
                        divProduto.Attributes.Add("class", "divProduto");
                        divProduto.ID = "divProduto" + p.IngredientID;
                        divPaes.Controls.Add(divProduto);

                        HtmlGenericControl a = new HtmlGenericControl("A");
                        divProduto.Controls.Add(a);

                        HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                        divSubProduto1.Attributes.Add("class", "divSubProduto1");
                        a.Controls.Add(divSubProduto1);

                        HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                        imgSubProduto.Attributes.Add("class", "imgSubProduto");
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/IngredienteFoto/" + p.IngredientID + "/");
                        divSubProduto1.Controls.Add(imgSubProduto);

                        HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                        divSubProduto2.Attributes.Add("class", "divSubProduto2");
                        a.Controls.Add(divSubProduto2);

                        Label lblDescricaoProduto = new Label();
                        lblDescricaoProduto.ID = "lblDescricaoProduto" + p.IngredientID;
                        lblDescricaoProduto.CssClass = "lblDescricaoProduto";
                        lblDescricaoProduto.Text = p.Name;
                        divSubProduto2.Controls.Add(lblDescricaoProduto);

                        Label lblValorProduto = new Label();
                        lblValorProduto.ID = "lblValorProduto" + p.IngredientID;
                        lblValorProduto.CssClass = "lblValorProduto";
                        lblValorProduto.Text = p.Price.ToString();
                        divSubProduto2.Controls.Add(lblValorProduto);

                        HtmlGenericControl divSubProduto4 = new HtmlGenericControl("DIV");
                        divSubProduto4.Attributes.Add("class", "divSubProduto4");
                        a.Controls.Add(divSubProduto4);

                        HtmlGenericControl btnDiminuir = new HtmlGenericControl("button");
                        btnDiminuir.ID = "btnDiminuir" + p.IngredientID.ToString();
                        btnDiminuir.Attributes.Add("class", "btnAumentar");
                        btnDiminuir.InnerText = "-";
                        btnDiminuir.Attributes.Add("onclick", "subtrair(this.id)");
                        btnDiminuir.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnDiminuir);
                        //btnDiminuir.Click += new EventHandler(DiminuirQuantidade);

                        TextBox txtQuantidade = new TextBox();
                        txtQuantidade.ID = "txtQuantidade" + p.IngredientID.ToString();
                        txtQuantidade.CssClass = "txtQuantidade";
                        txtQuantidade.Text = "1";
                        txtQuantidade.ClientIDMode = ClientIDMode.Static;
                        txtQuantidade.ReadOnly = true;
                        divSubProduto4.Controls.Add(txtQuantidade);

                        HtmlGenericControl btnAumentar = new HtmlGenericControl("button");
                        btnAumentar.ID = "btnAumentar" + p.IngredientID.ToString();
                        btnAumentar.Attributes.Add("class", "btnAumentar");
                        btnAumentar.InnerText = "+";
                        btnAumentar.Attributes.Add("onclick", "somar(this.id)");
                        btnAumentar.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnAumentar);
                        //btnAumentar.Click += new EventHandler(AumentarQuantidade);

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);

                        HiddenField hiddenTxt = new HiddenField();
                        hiddenTxt.ID = "hTxt" + p.IngredientID.ToString();
                        hiddenTxt.Value = "1";
                        hiddenTxt.ClientIDMode = ClientIDMode.Static;
                        divProduto.Controls.Add(hiddenTxt);
                    }
                    else if (p.CategoriaIngredienteID == 2)
                    {
                        HtmlGenericControl divProduto = new HtmlGenericControl("DIV");
                        divProduto.Attributes.Add("class", "divProduto");
                        divProduto.ID = "divProduto" + p.IngredientID;
                        divCarnes.Controls.Add(divProduto);

                        HtmlGenericControl a = new HtmlGenericControl("A");
                        divProduto.Controls.Add(a);

                        HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                        divSubProduto1.Attributes.Add("class", "divSubProduto1");
                        a.Controls.Add(divSubProduto1);

                        HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                        imgSubProduto.Attributes.Add("class", "imgSubProduto");
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/IngredienteFoto/" + p.IngredientID + "/");
                        divSubProduto1.Controls.Add(imgSubProduto);

                        HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                        divSubProduto2.Attributes.Add("class", "divSubProduto2");
                        a.Controls.Add(divSubProduto2);

                        Label lblDescricaoProduto = new Label();
                        lblDescricaoProduto.ID = "lblDescricaoProduto" + p.IngredientID;
                        lblDescricaoProduto.CssClass = "lblDescricaoProduto";
                        lblDescricaoProduto.Text = p.Name;
                        divSubProduto2.Controls.Add(lblDescricaoProduto);

                        Label lblValorProduto = new Label();
                        lblValorProduto.ID = "lblValorProduto" + p.IngredientID;
                        lblValorProduto.CssClass = "lblValorProduto";
                        lblValorProduto.Text = p.Price.ToString();
                        divSubProduto2.Controls.Add(lblValorProduto);

                        HtmlGenericControl divSubProduto4 = new HtmlGenericControl("DIV");
                        divSubProduto4.Attributes.Add("class", "divSubProduto4");
                        a.Controls.Add(divSubProduto4);

                        HtmlGenericControl btnDiminuir = new HtmlGenericControl("button");
                        btnDiminuir.ID = "btnDiminuir" + p.IngredientID.ToString();
                        btnDiminuir.Attributes.Add("class", "btnAumentar");
                        btnDiminuir.InnerText = "-";
                        btnDiminuir.Attributes.Add("onclick", "subtrair(this.id)");
                        btnDiminuir.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnDiminuir);
                        //btnDiminuir.Click += new EventHandler(DiminuirQuantidade);

                        TextBox txtQuantidade = new TextBox();
                        txtQuantidade.ID = "txtQuantidade" + p.IngredientID.ToString();
                        txtQuantidade.CssClass = "txtQuantidade";
                        txtQuantidade.Text = "1";
                        txtQuantidade.ClientIDMode = ClientIDMode.Static;
                        txtQuantidade.ReadOnly = true;
                        divSubProduto4.Controls.Add(txtQuantidade);

                        HtmlGenericControl btnAumentar = new HtmlGenericControl("button");
                        btnAumentar.ID = "btnAumentar" + p.IngredientID.ToString();
                        btnAumentar.Attributes.Add("class", "btnAumentar");
                        btnAumentar.InnerText = "+";
                        btnAumentar.Attributes.Add("onclick", "somar(this.id)");
                        btnAumentar.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnAumentar);
                        //btnAumentar.Click += new EventHandler(AumentarQuantidade);

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);

                        HiddenField hiddenTxt = new HiddenField();
                        hiddenTxt.ID = "hTxt" + p.IngredientID.ToString();
                        hiddenTxt.Value = "1";
                        hiddenTxt.ClientIDMode = ClientIDMode.Static;
                        divProduto.Controls.Add(hiddenTxt);
                    }
                    else if (p.CategoriaIngredienteID == 3)
                    {
                        HtmlGenericControl divProduto = new HtmlGenericControl("DIV");
                        divProduto.Attributes.Add("class", "divProduto");
                        divProduto.ID = "divProduto" + p.IngredientID;
                        divVerduras.Controls.Add(divProduto);

                        HtmlGenericControl a = new HtmlGenericControl("A");
                        divProduto.Controls.Add(a);

                        HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                        divSubProduto1.Attributes.Add("class", "divSubProduto1");
                        a.Controls.Add(divSubProduto1);

                        HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                        imgSubProduto.Attributes.Add("class", "imgSubProduto");
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/IngredienteFoto/" + p.IngredientID + "/");
                        divSubProduto1.Controls.Add(imgSubProduto);

                        HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                        divSubProduto2.Attributes.Add("class", "divSubProduto2");
                        a.Controls.Add(divSubProduto2);

                        Label lblDescricaoProduto = new Label();
                        lblDescricaoProduto.ID = "lblDescricaoProduto" + p.IngredientID;
                        lblDescricaoProduto.CssClass = "lblDescricaoProduto";
                        lblDescricaoProduto.Text = p.Name;
                        divSubProduto2.Controls.Add(lblDescricaoProduto);

                        Label lblValorProduto = new Label();
                        lblValorProduto.ID = "lblValorProduto" + p.IngredientID;
                        lblValorProduto.CssClass = "lblValorProduto";
                        lblValorProduto.Text = p.Price.ToString();
                        divSubProduto2.Controls.Add(lblValorProduto);

                        HtmlGenericControl divSubProduto4 = new HtmlGenericControl("DIV");
                        divSubProduto4.Attributes.Add("class", "divSubProduto4");
                        a.Controls.Add(divSubProduto4);

                        HtmlGenericControl btnDiminuir = new HtmlGenericControl("button");
                        btnDiminuir.ID = "btnDiminuir" + p.IngredientID.ToString();
                        btnDiminuir.Attributes.Add("class", "btnAumentar");
                        btnDiminuir.InnerText = "-";
                        btnDiminuir.Attributes.Add("onclick", "subtrair(this.id)");
                        btnDiminuir.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnDiminuir);
                        //btnDiminuir.Click += new EventHandler(DiminuirQuantidade);

                        TextBox txtQuantidade = new TextBox();
                        txtQuantidade.ID = "txtQuantidade" + p.IngredientID.ToString();
                        txtQuantidade.CssClass = "txtQuantidade";
                        txtQuantidade.Text = "1";
                        txtQuantidade.ClientIDMode = ClientIDMode.Static;
                        txtQuantidade.ReadOnly = true;
                        divSubProduto4.Controls.Add(txtQuantidade);

                        HtmlGenericControl btnAumentar = new HtmlGenericControl("button");
                        btnAumentar.ID = "btnAumentar" + p.IngredientID.ToString();
                        btnAumentar.Attributes.Add("class", "btnAumentar");
                        btnAumentar.InnerText = "+";
                        btnAumentar.Attributes.Add("onclick", "somar(this.id)");
                        btnAumentar.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnAumentar);
                        //btnAumentar.Click += new EventHandler(AumentarQuantidade);

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);

                        HiddenField hiddenTxt = new HiddenField();
                        hiddenTxt.ID = "hTxt" + p.IngredientID.ToString();
                        hiddenTxt.Value = "1";
                        hiddenTxt.ClientIDMode = ClientIDMode.Static;
                        divProduto.Controls.Add(hiddenTxt);
                    }
                    else if (p.CategoriaIngredienteID == 4)
                    {
                        HtmlGenericControl divProduto = new HtmlGenericControl("DIV");
                        divProduto.Attributes.Add("class", "divProduto");
                        divProduto.ID = "divProduto" + p.IngredientID;
                        divLegumes.Controls.Add(divProduto);

                        HtmlGenericControl a = new HtmlGenericControl("A");
                        divProduto.Controls.Add(a);

                        HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                        divSubProduto1.Attributes.Add("class", "divSubProduto1");
                        a.Controls.Add(divSubProduto1);

                        HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                        imgSubProduto.Attributes.Add("class", "imgSubProduto");
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/IngredienteFoto/" + p.IngredientID + "/");
                        divSubProduto1.Controls.Add(imgSubProduto);

                        HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                        divSubProduto2.Attributes.Add("class", "divSubProduto2");
                        a.Controls.Add(divSubProduto2);

                        Label lblDescricaoProduto = new Label();
                        lblDescricaoProduto.ID = "lblDescricaoProduto" + p.IngredientID;
                        lblDescricaoProduto.CssClass = "lblDescricaoProduto";
                        lblDescricaoProduto.Text = p.Name;
                        divSubProduto2.Controls.Add(lblDescricaoProduto);

                        Label lblValorProduto = new Label();
                        lblValorProduto.ID = "lblValorProduto" + p.IngredientID;
                        lblValorProduto.CssClass = "lblValorProduto";
                        lblValorProduto.Text = p.Price.ToString();
                        divSubProduto2.Controls.Add(lblValorProduto);

                        HtmlGenericControl divSubProduto4 = new HtmlGenericControl("DIV");
                        divSubProduto4.Attributes.Add("class", "divSubProduto4");
                        a.Controls.Add(divSubProduto4);

                        HtmlGenericControl btnDiminuir = new HtmlGenericControl("button");
                        btnDiminuir.ID = "btnDiminuir" + p.IngredientID.ToString();
                        btnDiminuir.Attributes.Add("class", "btnAumentar");
                        btnDiminuir.InnerText = "-";
                        btnDiminuir.Attributes.Add("onclick", "subtrair(this.id)");
                        btnDiminuir.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnDiminuir);
                        //btnDiminuir.Click += new EventHandler(DiminuirQuantidade);

                        TextBox txtQuantidade = new TextBox();
                        txtQuantidade.ID = "txtQuantidade" + p.IngredientID.ToString();
                        txtQuantidade.CssClass = "txtQuantidade";
                        txtQuantidade.Text = "1";
                        txtQuantidade.ClientIDMode = ClientIDMode.Static;
                        txtQuantidade.ReadOnly = true;
                        divSubProduto4.Controls.Add(txtQuantidade);

                        HtmlGenericControl btnAumentar = new HtmlGenericControl("button");
                        btnAumentar.ID = "btnAumentar" + p.IngredientID.ToString();
                        btnAumentar.Attributes.Add("class", "btnAumentar");
                        btnAumentar.InnerText = "+";
                        btnAumentar.Attributes.Add("onclick", "somar(this.id)");
                        btnAumentar.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnAumentar);
                        //btnAumentar.Click += new EventHandler(AumentarQuantidade);

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);

                        HiddenField hiddenTxt = new HiddenField();
                        hiddenTxt.ID = "hTxt" + p.IngredientID.ToString();
                        hiddenTxt.Value = "1";
                        hiddenTxt.ClientIDMode = ClientIDMode.Static;
                        divProduto.Controls.Add(hiddenTxt);
                    }
                    else if (p.CategoriaIngredienteID == 5)
                    {
                        HtmlGenericControl divProduto = new HtmlGenericControl("DIV");
                        divProduto.Attributes.Add("class", "divProduto");
                        divProduto.ID = "divProduto" + p.IngredientID;
                        divQueijos.Controls.Add(divProduto);

                        HtmlGenericControl a = new HtmlGenericControl("A");
                        divProduto.Controls.Add(a);

                        HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                        divSubProduto1.Attributes.Add("class", "divSubProduto1");
                        a.Controls.Add(divSubProduto1);

                        HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                        imgSubProduto.Attributes.Add("class", "imgSubProduto");
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/IngredienteFoto/" + p.IngredientID + "/");
                        divSubProduto1.Controls.Add(imgSubProduto);

                        HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                        divSubProduto2.Attributes.Add("class", "divSubProduto2");
                        a.Controls.Add(divSubProduto2);

                        Label lblDescricaoProduto = new Label();
                        lblDescricaoProduto.ID = "lblDescricaoProduto" + p.IngredientID;
                        lblDescricaoProduto.CssClass = "lblDescricaoProduto";
                        lblDescricaoProduto.Text = p.Name;
                        divSubProduto2.Controls.Add(lblDescricaoProduto);

                        Label lblValorProduto = new Label();
                        lblValorProduto.ID = "lblValorProduto" + p.IngredientID;
                        lblValorProduto.CssClass = "lblValorProduto";
                        lblValorProduto.Text = p.Price.ToString();
                        divSubProduto2.Controls.Add(lblValorProduto);

                        HtmlGenericControl divSubProduto4 = new HtmlGenericControl("DIV");
                        divSubProduto4.Attributes.Add("class", "divSubProduto4");
                        a.Controls.Add(divSubProduto4);

                        HtmlGenericControl btnDiminuir = new HtmlGenericControl("button");
                        btnDiminuir.ID = "btnDiminuir" + p.IngredientID.ToString();
                        btnDiminuir.Attributes.Add("class", "btnAumentar");
                        btnDiminuir.InnerText = "-";
                        btnDiminuir.Attributes.Add("onclick", "subtrair(this.id)");
                        btnDiminuir.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnDiminuir);
                        //btnDiminuir.Click += new EventHandler(DiminuirQuantidade);

                        TextBox txtQuantidade = new TextBox();
                        txtQuantidade.ID = "txtQuantidade" + p.IngredientID.ToString();
                        txtQuantidade.CssClass = "txtQuantidade";
                        txtQuantidade.Text = "1";
                        txtQuantidade.ClientIDMode = ClientIDMode.Static;
                        txtQuantidade.ReadOnly = true;
                        divSubProduto4.Controls.Add(txtQuantidade);

                        HtmlGenericControl btnAumentar = new HtmlGenericControl("button");
                        btnAumentar.ID = "btnAumentar" + p.IngredientID.ToString();
                        btnAumentar.Attributes.Add("class", "btnAumentar");
                        btnAumentar.InnerText = "+";
                        btnAumentar.Attributes.Add("onclick", "somar(this.id)");
                        btnAumentar.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnAumentar);
                        //btnAumentar.Click += new EventHandler(AumentarQuantidade);

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);

                        HiddenField hiddenTxt = new HiddenField();
                        hiddenTxt.ID = "hTxt" + p.IngredientID.ToString();
                        hiddenTxt.Value = "1";
                        hiddenTxt.ClientIDMode = ClientIDMode.Static;
                        divProduto.Controls.Add(hiddenTxt);
                    }
                    else if (p.CategoriaIngredienteID == 6)
                    {
                        HtmlGenericControl divProduto = new HtmlGenericControl("DIV");
                        divProduto.Attributes.Add("class", "divProduto");
                        divProduto.ID = "divProduto" + p.IngredientID;
                        divMolhos.Controls.Add(divProduto);

                        HtmlGenericControl a = new HtmlGenericControl("A");
                        divProduto.Controls.Add(a);

                        HtmlGenericControl divSubProduto1 = new HtmlGenericControl("DIV");
                        divSubProduto1.Attributes.Add("class", "divSubProduto1");
                        a.Controls.Add(divSubProduto1);

                        HtmlGenericControl imgSubProduto = new HtmlGenericControl("IMG");
                        imgSubProduto.Attributes.Add("class", "imgSubProduto");
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/IngredienteFoto/" + p.IngredientID + "/");
                        divSubProduto1.Controls.Add(imgSubProduto);

                        HtmlGenericControl divSubProduto2 = new HtmlGenericControl("DIV");
                        divSubProduto2.Attributes.Add("class", "divSubProduto2");
                        a.Controls.Add(divSubProduto2);

                        Label lblDescricaoProduto = new Label();
                        lblDescricaoProduto.ID = "lblDescricaoProduto" + p.IngredientID;
                        lblDescricaoProduto.CssClass = "lblDescricaoProduto";
                        lblDescricaoProduto.Text = p.Name;
                        divSubProduto2.Controls.Add(lblDescricaoProduto);

                        Label lblValorProduto = new Label();
                        lblValorProduto.ID = "lblValorProduto" + p.IngredientID;
                        lblValorProduto.CssClass = "lblValorProduto";
                        lblValorProduto.Text = p.Price.ToString();
                        divSubProduto2.Controls.Add(lblValorProduto);

                        HtmlGenericControl divSubProduto4 = new HtmlGenericControl("DIV");
                        divSubProduto4.Attributes.Add("class", "divSubProduto4");
                        a.Controls.Add(divSubProduto4);

                        HtmlGenericControl btnDiminuir = new HtmlGenericControl("button");
                        btnDiminuir.ID = "btnDiminuir" + p.IngredientID.ToString();
                        btnDiminuir.Attributes.Add("class", "btnAumentar");
                        btnDiminuir.InnerText = "-";
                        btnDiminuir.Attributes.Add("onclick", "subtrair(this.id)");
                        btnDiminuir.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnDiminuir);
                        //btnDiminuir.Click += new EventHandler(DiminuirQuantidade);

                        TextBox txtQuantidade = new TextBox();
                        txtQuantidade.ID = "txtQuantidade" + p.IngredientID.ToString();
                        txtQuantidade.CssClass = "txtQuantidade";
                        txtQuantidade.Text = "1";
                        txtQuantidade.ClientIDMode = ClientIDMode.Static;
                        txtQuantidade.ReadOnly = true;
                        divSubProduto4.Controls.Add(txtQuantidade);

                        HtmlGenericControl btnAumentar = new HtmlGenericControl("button");
                        btnAumentar.ID = "btnAumentar" + p.IngredientID.ToString();
                        btnAumentar.Attributes.Add("class", "btnAumentar");
                        btnAumentar.InnerText = "+";
                        btnAumentar.Attributes.Add("onclick", "somar(this.id)");
                        btnAumentar.ClientIDMode = ClientIDMode.Static;
                        divSubProduto4.Controls.Add(btnAumentar);
                        //btnAumentar.Click += new EventHandler(AumentarQuantidade);

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);

                        HiddenField hiddenTxt = new HiddenField();
                        hiddenTxt.ID = "hTxt" + p.IngredientID.ToString();
                        hiddenTxt.Value = "1";
                        hiddenTxt.ClientIDMode = ClientIDMode.Static;
                        divProduto.Controls.Add(hiddenTxt);
                    }
                }
            }
            else
            {

            }

            if (ppi.Count - 1 < 0)
            {
                ingredient = new Ingredientes();
                ppi = ingredient.getIngredientes().ToList();
                ingredient.excluirList();
            }

            int i = 0;
            for (i = 0; i <= ppi.Count - 1; i++)
            {
                int produtoIngredienteID = ppi[i].ProdutoIngredienteID;
                int quantIngrediente = ppi[i].Quantidade;
                Decimal valIngrediente = 0;
                String nomeIngrediente = "";
                foreach (ProdutoIngrediente p in pi)
                {
                    if (p.PIngredientID == produtoIngredienteID)
                    {
                        nomeIngrediente = p.Name;
                        valIngrediente = p.Price;
                    }
                }
                HtmlGenericControl divIngredienteCliente = new HtmlGenericControl("DIV");
                divIngredienteCliente.Attributes.Add("class", "divIngredienteCliente");
                divIngredienteCliente.ID = "divIngredienteCliente" + i;
                divIngredientesCliente.Controls.Add(divIngredienteCliente);

                HtmlGenericControl divIngredienteFoto = new HtmlGenericControl("DIV");
                divIngredienteFoto.Attributes.Add("class", "divIngredienteFoto");
                divIngredienteFoto.ID = "divIngredienteFoto" + i;
                divIngredienteCliente.Controls.Add(divIngredienteFoto);

                HtmlGenericControl imgIngrediente = new HtmlGenericControl("IMG");
                imgIngrediente.Attributes.Add("class", "imgIngrediente");
                imgIngrediente.Attributes.Add("src", "https://localhost:44323/api/IngredienteFoto/" + produtoIngredienteID + "/");
                divIngredienteFoto.Controls.Add(imgIngrediente);

                HtmlGenericControl divIngredienteInfo = new HtmlGenericControl("DIV");
                divIngredienteInfo.Attributes.Add("class", "divIngredienteInfo");
                divIngredienteInfo.ID = "divIngredienteInfo" + i;
                divIngredienteCliente.Controls.Add(divIngredienteInfo);

                HtmlGenericControl divSubIngredienteInfo1 = new HtmlGenericControl("DIV");
                divSubIngredienteInfo1.Attributes.Add("class", "divSubIngredienteInfo1");
                divSubIngredienteInfo1.ID = "divSubIngredienteInfo1" + i;
                divIngredienteInfo.Controls.Add(divSubIngredienteInfo1);

                Label lblNomeIngredienteCliente = new Label();
                lblNomeIngredienteCliente.ID = "lblNomeIngredienteCliente" + i;
                lblNomeIngredienteCliente.CssClass = "lblNomeIngredienteCliente";
                lblNomeIngredienteCliente.Text = nomeIngrediente;
                divSubIngredienteInfo1.Controls.Add(lblNomeIngredienteCliente);

                HtmlGenericControl divSubIngredienteInfo2 = new HtmlGenericControl("DIV");
                divSubIngredienteInfo2.Attributes.Add("class", "divSubIngredienteInfo2");
                divSubIngredienteInfo2.ID = "divSubIngredienteInfo2" + i;
                divIngredienteInfo.Controls.Add(divSubIngredienteInfo2);

                Label lblQuantidadeIngredienteCliente = new Label();
                lblQuantidadeIngredienteCliente.ID = "lblQuantidadeIngredienteCliente" + i;
                lblQuantidadeIngredienteCliente.CssClass = "lblQuantidadeIngredienteCliente";
                lblQuantidadeIngredienteCliente.Text = "Quantidade: " + quantIngrediente;
                divSubIngredienteInfo2.Controls.Add(lblQuantidadeIngredienteCliente);

                Label lblValorIngredienteCliente = new Label();
                lblValorIngredienteCliente.ID = "lblValorIngredienteCliente" + i;
                lblValorIngredienteCliente.CssClass = "lblValorIngredienteCliente";
                lblValorIngredienteCliente.Text = "Valor: " + quantIngrediente * valIngrediente;
                divSubIngredienteInfo2.Controls.Add(lblValorIngredienteCliente);

                HtmlGenericControl divIngredienteExcluir = new HtmlGenericControl("DIV");
                divIngredienteExcluir.Attributes.Add("class", "divIngredienteExcluir");
                divIngredienteExcluir.ID = "divIngredienteExcluir" + i;
                divIngredienteCliente.Controls.Add(divIngredienteExcluir);

                Button btnExcluirIngrediente = new Button();
                btnExcluirIngrediente.ID = "btnExcluirIngrediente" + i;
                btnExcluirIngrediente.CssClass = "btnExcluirIngrediente";
                btnExcluirIngrediente.Text = "Excluir Ingrediente";
                divIngredienteExcluir.Controls.Add(btnExcluirIngrediente);
                btnExcluirIngrediente.Click += new EventHandler(ExcluirIngrediente);

            }

            decimal ingPrec = 0;
            int ppId = 0;
            foreach (PedidoProdutoIngrediente p in ppi)
            {
                ppId = p.ProdutoIngredienteID;
                int ind = pi.FindIndex(a => a.PIngredientID.Equals(ppId));
                ingPrec += p.Quantidade * pi[ind].Price;
            }
            lblTotalIngredientes.Text = "Total: R$ " + ingPrec;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "traçar rota", "tamDivIngredientes()", true);
        }

        protected void AdicionarIngrediente(object sender, EventArgs e)
        {
            Button iButton = (Button)sender;
            int id = Convert.ToInt32(iButton.ID);
            String textID = "txtQuantidade" + id;
            String hiddenID = "hTxt" + id;
            TextBox x = (TextBox)divMostrarIngredientes.FindControl(textID);
            HiddenField hidden = (HiddenField)divMostrarIngredientes.FindControl(hiddenID);
            int pid = 0;
            Decimal valIngrediente = 0;
            foreach (ProdutoIngrediente p in pi)
            {
                if (p.IngredientID == id)
                {
                    pid = p.PIngredientID;
                    valIngrediente = p.Price;
                }
                else
                {

                }
            }

            PedidoProdutoIngrediente ppa = new PedidoProdutoIngrediente(pid, Convert.ToInt32(hidden.Value), 0);
            ppi.Add(ppa);
            int indice = ppi.Count - 1;

            int produtoIngredienteID = ppi[indice].ProdutoIngredienteID;
            String nomeIngrediente = "";
            foreach (ProdutoIngrediente p in pi)
            {
                if (p.PIngredientID == produtoIngredienteID)
                {
                    nomeIngrediente = p.Name;
                }
            }

            HtmlGenericControl divIngredienteCliente = new HtmlGenericControl("DIV");
            divIngredienteCliente.Attributes.Add("class", "divIngredienteCliente");
            divIngredienteCliente.ID = "divIngredienteCliente" + indice;
            divIngredientesCliente.Controls.Add(divIngredienteCliente);

            HtmlGenericControl divIngredienteFoto = new HtmlGenericControl("DIV");
            divIngredienteFoto.Attributes.Add("class", "divIngredienteFoto");
            divIngredienteFoto.ID = "divIngredienteFoto" + indice;
            divIngredienteCliente.Controls.Add(divIngredienteFoto);

            HtmlGenericControl imgIngrediente = new HtmlGenericControl("IMG");
            imgIngrediente.Attributes.Add("class", "imgIngrediente");
            imgIngrediente.Attributes.Add("src", "https://localhost:44323/api/IngredienteFoto/" + produtoIngredienteID + "/");
            divIngredienteFoto.Controls.Add(imgIngrediente);

            HtmlGenericControl divIngredienteInfo = new HtmlGenericControl("DIV");
            divIngredienteInfo.Attributes.Add("class", "divIngredienteInfo");
            divIngredienteInfo.ID = "divIngredienteInfo" + indice;
            divIngredienteCliente.Controls.Add(divIngredienteInfo);

            HtmlGenericControl divSubIngredienteInfo1 = new HtmlGenericControl("DIV");
            divSubIngredienteInfo1.Attributes.Add("class", "divSubIngredienteInfo1");
            divSubIngredienteInfo1.ID = "divSubIngredienteInfo1" + indice;
            divIngredienteInfo.Controls.Add(divSubIngredienteInfo1);

            Label lblNomeIngredienteCliente = new Label();
            lblNomeIngredienteCliente.ID = "lblNomeIngredienteCliente" + indice;
            lblNomeIngredienteCliente.CssClass = "lblNomeIngredienteCliente";
            lblNomeIngredienteCliente.Text = nomeIngrediente;
            divSubIngredienteInfo1.Controls.Add(lblNomeIngredienteCliente);

            HtmlGenericControl divSubIngredienteInfo2 = new HtmlGenericControl("DIV");
            divSubIngredienteInfo2.Attributes.Add("class", "divSubIngredienteInfo2");
            divSubIngredienteInfo2.ID = "divSubIngredienteInfo2" + indice;
            divIngredienteInfo.Controls.Add(divSubIngredienteInfo2);

            Label lblQuantidadeIngredienteCliente = new Label();
            lblQuantidadeIngredienteCliente.ID = "lblQuantidadeIngredienteCliente" + indice;
            lblQuantidadeIngredienteCliente.CssClass = "lblQuantidadeIngredienteCliente";
            lblQuantidadeIngredienteCliente.Text = "Quantidade: " + hidden.Value;
            divSubIngredienteInfo2.Controls.Add(lblQuantidadeIngredienteCliente);

            Label lblValorIngredienteCliente = new Label();
            lblValorIngredienteCliente.ID = "lblValorIngredienteCliente" + indice;
            lblValorIngredienteCliente.CssClass = "lblValorIngredienteCliente";
            lblValorIngredienteCliente.Text = "Valor: " + Convert.ToInt32(hidden.Value) * valIngrediente;
            divSubIngredienteInfo2.Controls.Add(lblValorIngredienteCliente);

            HtmlGenericControl divIngredienteExcluir = new HtmlGenericControl("DIV");
            divIngredienteExcluir.Attributes.Add("class", "divIngredienteExcluir");
            divIngredienteExcluir.ID = "divIngredienteExcluir" + indice;
            divIngredienteCliente.Controls.Add(divIngredienteExcluir);

            Button btnExcluirIngrediente = new Button();
            btnExcluirIngrediente.ID = "btnExcluirIngrediente" + indice;
            btnExcluirIngrediente.CssClass = "btnExcluirIngrediente";
            btnExcluirIngrediente.Text = "Excluir Ingrediente";
            divIngredienteExcluir.Controls.Add(btnExcluirIngrediente);
            btnExcluirIngrediente.Click += new EventHandler(ExcluirIngrediente);

            decimal ingPrec = 0;
            int ppId = 0;
            foreach (PedidoProdutoIngrediente p in ppi)
            {
                ppId = p.ProdutoIngredienteID;
                int ind = pi.FindIndex(a => a.PIngredientID.Equals(ppId));
                ingPrec += p.Quantidade * pi[ind].Price;
            }
            lblTotalIngredientes.Text = "Total: R$ " + ingPrec;
            hidden.Value = "1";
            x.Text = "1";
        }

        protected void ExcluirIngrediente(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            String id = btn.ID;
            int indice = Convert.ToInt32(id.Substring(21, id.Length - 21));
            String nomeDiv = "divIngredienteCliente" + indice;
            Control div = divIngredientesCliente.FindControl(nomeDiv);
            divIngredientesCliente.Controls.Remove(div);
            ppi.RemoveAt(indice);
            decimal ingPrec = 0;
            int ppId = 0;
            foreach (PedidoProdutoIngrediente p in ppi)
            {
                ppId = p.ProdutoIngredienteID;
                int ind = pi.FindIndex(a => a.PIngredientID.Equals(ppId));
                ingPrec += p.Quantidade * pi[ind].Price;
            }
            lblTotalIngredientes.Text = "Total: R$ " + ingPrec;
        }

        protected void avancarCarrinho(object sender, EventArgs e)
        {
            int quant = 0;
            foreach (PedidoProdutoIngrediente en in ppi)
            {
                quant = quant + en.Quantidade;
            }
            int ingredienteP = ppi[0].ProdutoIngredienteID;
            int ingredienteU = ppi.Last().ProdutoIngredienteID;
            int catP = 0;
            int catU = 0;
            foreach (ProdutoIngrediente ing in pi)
            {
                if (ing.PIngredientID == ingredienteP)
                {
                    catP = ing.CategoriaIngredienteID;
                }
                else if (ing.PIngredientID == ingredienteU)
                {
                    catU = ing.CategoriaIngredienteID;
                }
            }
            if (ingredienteP == ingredienteU)
            {
                catU = catP;
            }

            if (quant <= 30 && catP == 1 && catU == 1)
            {
                PedidoProduto ppc = new PedidoProduto(1, 23, ppi.ToArray());
                ppl = new List<PedidoProduto>(((Pedido)Session["Carrinho"]).produtos);
                ppl.Add(ppc);
                ((Pedido)Session["Carrinho"]).produtos = ppl.ToArray();
                ppi.Clear();
                Response.Redirect("Carrinho.aspx");
            }
        }

        protected void excluirLanche(object sender, EventArgs e)
        {

        }
    }
}