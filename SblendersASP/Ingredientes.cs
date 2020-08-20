using SblendersAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TCC
{
    public partial class Ingredientes
    {
        private static List<PedidoProdutoIngrediente> pedPI = new List<PedidoProdutoIngrediente>();

        public void setIngredientes(List<PedidoProdutoIngrediente> ppi)
        {
            pedPI = ppi;
        }

        public List<PedidoProdutoIngrediente> getIngredientes()
        {
            return pedPI;
        }

        public void excluirList()
        {
            int tam = pedPI.Count - 1;
            if(tam >= 0)
            {
                pedPI.RemoveRange(0, pedPI.Count - 1);
            }
            else
            {

            }
        }
    }
}