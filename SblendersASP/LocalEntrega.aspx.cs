using SblendersAPI.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TCC
{
    public partial class LocalEntrega : System.Web.UI.Page
    {
        public bool ok;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "traçar rota", "tracarRota()", true); 
            //Button x = (Button)sender;
            //bool validate = x.Attributes["value"].Contains("true");
            lblCustoFrete.Text = ok.ToString();
            if (ok)
            {
                ((Pedido)Session["Carrinho"]).endereco = txtEndMaps.Text;
            }
            
            
        }
    }
}