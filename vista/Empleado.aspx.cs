using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vista
{
    public partial class Empleado : System.Web.UI.Page
    {
        Empleados empleado;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                empleado = new Empleados();
                empleado.grid_empleados(GridView1);
                empleado.drop_puesto(drop_puesto);
            }
        }

        protected void btn_crear_Click(object sender, EventArgs e)
        {
            /*ConexionBD cn = new ConexionBD();
            cn.AbrirConexion();
            cn.CerrarConexion();*/

            empleado = new Empleados();

            if (empleado.crear(txt_codigo.Text, txt_nombres.Text, txt_apellidos.Text, txt_direccion.Text, txt_telefono.Text, txt_fn.Text, Convert.ToInt32(drop_puesto.SelectedValue)) > 0)
            {
                lbl_mensaje.Text = "Ingreso Exitoso";
                empleado.grid_empleados(GridView1);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lbl_mensaje.Text = "Ver";
            txt_codigo.Text = GridView1.SelectedRow.Cells[2].Text;
            txt_nombres.Text = GridView1.SelectedRow.Cells[3].Text;
            txt_apellidos.Text = GridView1.SelectedRow.Cells[4].Text;
            txt_direccion.Text = GridView1.SelectedRow.Cells[5].Text;
            txt_telefono.Text = GridView1.SelectedRow.Cells[6].Text;

            DateTime fecha = Convert.ToDateTime(GridView1.SelectedRow.Cells[7].Text);
            txt_fn.Text = fecha.ToString("yyyy-MM-dd");

            int indice = GridView1.SelectedRow.RowIndex;
            drop_puesto.SelectedValue = GridView1.DataKeys[indice].Values["id_puesto"].ToString();
            btn_modificar.Visible = true;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            empleado = new Empleados();

            if (empleado.borrar(Convert.ToInt32(e.Keys["id"])) > 0)
            {
                lbl_mensaje.Text = "Eliminación Exitosa";
                empleado.grid_empleados(GridView1);
            }
        }

        protected void btn_modificar_Click(object sender, EventArgs e)
        {
            empleado = new Empleados();

            if (empleado.actualizar(Convert.ToInt32(GridView1.SelectedValue), txt_codigo.Text, txt_nombres.Text, txt_apellidos.Text, txt_direccion.Text, txt_telefono.Text, txt_fn.Text, Convert.ToInt32(drop_puesto.SelectedValue)) > 0)
            {
                lbl_mensaje.Text = "Actualización Exitosa";
                empleado.grid_empleados(GridView1);
            }
        }
    }
}