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
        static Produto prod;
        public static List<PedidoProdutoIngrediente> ppi = new List<PedidoProdutoIngrediente>();

        protected void Page_Load(object sender, EventArgs e)
        {           
            List<ProdutoIngrediente> pi = new List<ProdutoIngrediente>();

            string URL = $"https://localhost:44323/api/Produtos/17";
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

                foreach(ProdutoIngrediente p in pi)
                {
                    if(p.CategoriaIngredienteID == 1)
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
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + p.IngredientID + "/");
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

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);
                    }
                    else if(p.CategoriaIngredienteID == 2)
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
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + p.IngredientID + "/");
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

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);
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
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + p.IngredientID + "/");
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

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);
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
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + p.IngredientID + "/");
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

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);
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
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + p.IngredientID + "/");
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

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);
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
                        imgSubProduto.Attributes.Add("src", "https://localhost:44323/api/ProdutoFoto/" + p.IngredientID + "/");
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

                        HtmlGenericControl divSubProduto3 = new HtmlGenericControl("DIV");
                        divSubProduto3.Attributes.Add("class", "divSubProduto3");
                        a.Controls.Add(divSubProduto3);

                        Button btnAdicionarCarrinho = new Button();
                        btnAdicionarCarrinho.ID = p.IngredientID.ToString();
                        btnAdicionarCarrinho.CssClass = "btnAdicionarCarrinho";
                        btnAdicionarCarrinho.Text = "Adicionar Ingrediente";
                        divSubProduto3.Controls.Add(btnAdicionarCarrinho);
                        btnAdicionarCarrinho.Click += new EventHandler(AdicionarIngrediente);
                    }
                }
            }
            else
            {

            }

            
        }

        protected void AdicionarIngrediente(object sender, EventArgs e)
        {
            Button iButton = (Button)sender;
            int id = Convert.ToInt32(iButton.ID);
            iButton.Text = "Ingrediente Adicionado";
            PedidoProdutoIngrediente ppa = new PedidoProdutoIngrediente(id,1,1);
            ppi.Add(ppa);
            
        }
    }
}