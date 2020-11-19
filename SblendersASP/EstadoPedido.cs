using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TCC
{
    public class EstadoPedido
    {
        public static string FromInt(int estado)
        {
            switch (estado)
            {
                case 1:
                    return "Em Andamento";
                    break;
                case 2:
                    return "Pronto";
                    break;
                case 3:
                    return "A Caminho";
                    break;
                case 4:
                    return "Entregue";
                    break;
                case 5:
                    return "Rejeitado";
                    break;
                case 6:
                    return "Cancelado";
                    break;
                default:
                    throw new ArgumentException();
            }
        }
    }
}