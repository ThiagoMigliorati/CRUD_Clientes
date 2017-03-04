using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace ClassLibrary1.Persistence
{
    // Regras de negócio da aplicação - Consultas 
    public class PessoaDAL : Conexao
    { 
        
        public void Gravar(Model.Pessoa p)
        {
            try
            {
                //abrir conexao
                AbrirConexao();
                Cmd = new SqlCommand("INSERT INTO Pessoa (Nome, Endereco, Email) VALUES(@v1, @v2, @v3)", Con);
                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Endereco);
                Cmd.Parameters.AddWithValue("@v3", p.Email);

                Cmd.ExecuteNonQuery(); // Executa este método
            }catch (Exception ex)
            {
                throw new Exception("Erro ao gravar o Cliente: " + ex.Message);
            }finally
            {
                FecharConexao();
            }
        }// end method Gravar

        public void Atualizar(Model.Pessoa p)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("UPDATE Pessoa SET Nome=@v1, Endereco=@v2, Email=@v3 WHERE Codigo=@v4", Con);
                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Endereco);
                Cmd.Parameters.AddWithValue("@v3", p.Email);
                Cmd.Parameters.AddWithValue("@v4", p.Codigo);
                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao listar os clientes: " + ex);
            }
            finally
            {
                FecharConexao();
            }
        }// end method atualizar

        public void Excluir(int Codigo)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("delete from Pessoa where Codigo=@v1", Con);

                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao excluir o Cliente: " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }// end method Excluir

        // Método para obter 1 Pessoa pélo Código
        public Model.Pessoa PesquisarPorCodigo(int Codigo)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from Pessoa where Codigo=@v1", Con);
                Cmd.Parameters.AddWithValue("@v1", Codigo);
                Dr = Cmd.ExecuteReader();

                Model.Pessoa p = null;

                if (Dr.Read())
                {
                    p = new Model.Pessoa();
                    p.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    p.Nome = Convert.ToString(Dr["Nome"]);
                    p.Endereco = Convert.ToString(Dr["Endereco"]);
                    p.Email = Convert.ToString(Dr["Email"]);
                }

                return p;

            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                FecharConexao();
            }
        } // end method Obter por Codigo

        public List<Model.Pessoa> Listar()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from Pessoa", Con);
                Dr = Cmd.ExecuteReader();

                List<Model.Pessoa> lista = new List<Model.Pessoa>();

                while (Dr.Read())
                {
                    Model.Pessoa p = new Model.Pessoa();

                    p.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    p.Nome = Convert.ToString(Dr["Nome"]);
                    p.Endereco = Convert.ToString(Dr["Endereco"]);
                    p.Email = Convert.ToString(Dr["Email"]);

                    lista.Add(p);

                }// end while

                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar os clientes: " + ex);
            }
            finally
            {
                FecharConexao();
            }
        }
    }//end class PessoaDAL
}
