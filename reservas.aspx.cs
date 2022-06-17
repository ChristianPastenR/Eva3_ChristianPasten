using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eva3_ChristianPasten
{
    public partial class reservas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void ddNacionalidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            int pais = int.Parse(ddNacionalidad.SelectedItem.Value.ToString());

            if (pais == 0)
            {
                ImagePais.ImageUrl ="~/images/brasil.png";
            }
            if (pais == 1)
            {
                ImagePais.ImageUrl = "~/images/canada.png";
            }
            if (pais == 2)
            {
                ImagePais.ImageUrl = "~/images/chile.png";
            }
            if (pais == 3)
            {
                ImagePais.ImageUrl = "~/images/españa.png";
            }
            if (pais == 4)
            {
                ImagePais.ImageUrl = "~/images/italia.png";
            }
            if (pais == 5)
            {
                ImagePais.ImageUrl = "~/images/japon.png";
            }
            if (pais == 6)
            {
                ImagePais.ImageUrl = "~/images/usa.png";
            }





        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            tboxServiciosSeleccionados.Text = "";
            string texto = "";
            foreach (ListItem item in cboxServicios.Items)
            {
                if (item.Selected == true)
                {
                    texto += " \n" +item.Text;
                }



            }
            tboxServiciosSeleccionados.Text = texto;




        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            int total = 0;
            int totalServicios = 0;
            
            int dias = int.Parse(tboxDias.Text.ToString());
            total += int.Parse(rbHabitacion.SelectedItem.Value.ToString());

            foreach (ListItem item in cboxServicios.Items)
            {
                if (item.Selected == true)
                {
                    totalServicios+= int.Parse(item.Value.ToString());

                    total += int.Parse(item.Value.ToString());
                }



            }
            lTotalDiario.Text = total.ToString();

            total = total * dias;
            lTotalServicios.Text = totalServicios.ToString();


            lTotal.Text = total.ToString();


        }
    }
}