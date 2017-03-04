using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient; // ADO.NET -> SQL SERVER

namespace ClassLibrary1.Persistence
{
    public class Conexao
    {
        //Atributos

        protected SqlConnection Con;
        protected SqlCommand Cmd;
        protected SqlDataReader Dr;

        // Method Open Connection
        protected void AbrirConexao()
        {
            try
            {
                Con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Thiago\\Documents\\crud_database.mdf;Integrated Security=True;Connect Timeout=30");
                Con.Open();

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }// end method Open Connection     

        protected void FecharConexao()
        {
            try
            {
                Con.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }// end method Open Connection

    }
}
