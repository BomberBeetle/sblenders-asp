﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCC
{
    public partial class AdicaoCarrinho : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Avancar(object sender, EventArgs e)
        {
            Response.Redirect("Carrinho.aspx");
        }

        protected void Voltar(object sender, EventArgs e)
        {
            Response.Redirect("Produtos.aspx");
        }
    }
}