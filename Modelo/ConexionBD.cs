using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace Modelo
{
    public class ConexionBD
    {
        private string cadena = "server=localhost; database=db_empresa; user=jgomez; password=3278";

        public MySqlConnection conectar = new MySqlConnection();

        //public MySqlDataAdapter adaptador = "d";

        public void AbrirConexion()
        {
            try
            {
                //conectar = new MySqlConnection();
                conectar.ConnectionString = cadena;
                conectar.Open();

                //System.Diagnostics.Debug.WriteLine("Conexión Exitosa");
            }
            catch (Exception ex)
            {
                //System.Diagnostics.Debug.WriteLine(ex.Message);
                Console.WriteLine(ex.Message);
            }
        }

        public void CerrarConexion()
        {
            try
            {
                if(conectar.State == ConnectionState.Open)
                {
                    conectar.Close();
                    //System.Diagnostics.Debug.WriteLine("Cerrar Conexión");
                }
            }
            catch (Exception ex)
            {
                //System.Diagnostics.Debug.WriteLine(ex.Message);
                Console.WriteLine(ex.Message);
            }
        }
    }
}
