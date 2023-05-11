using BookCard.Models;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace BookCard.DAL
{
    public class CARDTEXTODAO
    {
        SqlConnection conexao;
        public CARDTEXTODAO()
        {
            conexao = Conexao.GetConexao();
        }
        public List<CARDTEXTO> TextodoCard()
        {
            string sql = "select  CARTEXTO from CARDTEXTO where CARID=1 ;";
            var dados = (List<CARDTEXTO>)conexao.Query<CARDTEXTO>(sql);
            return dados;
        }
    }
}
