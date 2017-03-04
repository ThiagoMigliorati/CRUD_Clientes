using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary1.Persistence;

namespace site.Pages
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                PessoaDAL d = new PessoaDAL();

                gridClientes.DataSource = d.Listar();
                gridClientes.DataBind();  
            }
            catch (Exception ex) 
            {

                lblMensagem.Text = ex.Message;
            }
        }

        protected void gridClientes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}