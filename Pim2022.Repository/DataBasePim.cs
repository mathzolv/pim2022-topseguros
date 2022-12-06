using System;
using System.Data.SqlClient;
using System.Text;

namespace Pim2022.Repository
{
    public class DataBasePim
    {
        public void Insert(string nome, string sobrenome, string email, string telefone)
        {
            StringBuilder query = new StringBuilder();

            query.AppendLine("INSERT INTO contato (nome, sobrenome, email, telefone) ");
            query.AppendLine("VALUES ('" + nome + "', '" + sobrenome + "', '"+ email +"', '"+ telefone+"')");


            SqlConnection connection =
                new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=PIM;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            
            SqlCommand cmd = new SqlCommand(query.ToString(), connection);

            try
            {
                connection.Open();
                cmd.ExecuteNonQuery();

            }
            catch (SqlException ex)
            {
                connection.Dispose();
                throw new Exception(ex.Message);
            }
            finally
            {
                connection.Dispose();
            }
        }
    }
}
