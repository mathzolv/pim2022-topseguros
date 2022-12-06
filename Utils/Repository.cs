using System.Configuration;
using System.Data.SqlClient;
using System.Text;

namespace Utils
{
    public class Repository
    {
        public void Insert(string nome, string sobrenome, string email, string telefone)
        {
            StringBuilder query = new StringBuilder();
            query.AppendLine("INSERT INTO TABELA (COLUNA1, COLUNA2, COLUNA3) ");
            query.AppendLine("VALUES (" + nome + ", " + sobrenome + " )");


            using (SqlConnection connection = new SqlConnection(
                ConfigurationSettings.AppSettings.Get("ConnectionPimDataBase").ToString()))
            {
                SqlCommand cmd = new SqlCommand(query.ToString(), connection);

                try
                {
                    connection.Open();
                    cmd.ExecuteNonQuery();

                }
                catch (SqlException ex)
                {
                    connection.Dispose();
                    throw ex;
                }
                finally
                {
                    connection.Dispose();
                }
            }
        }
    }
}
