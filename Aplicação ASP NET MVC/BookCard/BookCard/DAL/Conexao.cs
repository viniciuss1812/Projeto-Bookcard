using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace BookCard.DAL
{
    public class Conexao
    {
        private static SqlConnection conexao;
        public static SqlConnection GetConexao()
        {
            if (conexao == null)
            {
                conexao = new SqlConnection(@"Server=.\SENAI2022; Database = BDBookCard; User Id =sa; Password=senai.123;");
            }
            return conexao;
        }
    }
}
