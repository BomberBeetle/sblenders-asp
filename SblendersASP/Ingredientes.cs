using SblendersAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TCC
{
    public partial class Ingredientes
    {
        private static List<PedidoProdutoIngrediente> pedPI;

        public void setIngredientes(List<PedidoProdutoIngrediente> ppi)
        {
            pedPI = ppi;
        }

        public List<PedidoProdutoIngrediente> getIngredientes()
        {
            return pedPI;
        }
    }
}