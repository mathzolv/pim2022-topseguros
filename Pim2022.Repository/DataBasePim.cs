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

            query.AppendLine("INSERT INTO DADOSCADASTRAIS (NOME, CPF, ENDEREÇO, NUMERO, BAIRRO, CIDADE, " +
                "ESTADO, DATANASCIMENTO, TELEFONE, CARGO, EMAIL, RENDA, SENHA) ");

            query.AppendLine("VALUES ('" + nome + " " + sobrenome + "', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '" 
                + telefone + "', NULL, '" + email + "', NULL, NULL )");


            SqlConnection connection =
                new SqlConnection("Data Source=189.100.245.223,1433;Initial Catalog=PIM;User ID=pim;Password=123@mudar");
            
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
