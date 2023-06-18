using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Crudd;

namespace Crudd
{
    public partial class _Default : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargatabla();
            }
        }


        SqlConnection con = new SqlConnection("Data Source=LAPTOP-1QS177RS\\SQLEXPRESS;Initial Catalog=BD_Empleados;Integrated Security=True");

 
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand com = new SqlCommand("INSERT INTO Empleado VALUES (@Valor2, @Valor3, @Valor4, @Valor5, @Valor6, @Valor7, @Valor8, @Valor9, @Valor10, @Valor11)", con);
            
            com.Parameters.AddWithValue("@Valor2", long.Parse(TextBox11.Text));
            com.Parameters.AddWithValue("@Valor3", TextBox2.Text);
            com.Parameters.AddWithValue("@Valor4", int.Parse(TextBox3.Text));
            com.Parameters.AddWithValue("@Valor5", double.Parse(TextBox4.Text));
            com.Parameters.AddWithValue("@Valor6", double.Parse(TextBox5.Text));
            com.Parameters.AddWithValue("@Valor7", double.Parse(TextBox6.Text));
            com.Parameters.AddWithValue("@Valor8", double.Parse(TextBox7.Text));
            com.Parameters.AddWithValue("@Valor9", double.Parse(TextBox8.Text));
            com.Parameters.AddWithValue("@Valor10", double.Parse(TextBox9.Text));
            com.Parameters.AddWithValue("@Valor11", double.Parse(TextBox10.Text));
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Guardado con exito');", true);
            cargatabla();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            TextBox6.Text= Operaciones.OperacionI(double.Parse(TextBox4.Text)).ToString();
            TextBox7.Text= Operaciones.OperacionIr(double.Parse(TextBox4.Text)).ToString();
            TextBox8.Text= Operaciones.OperacionPa(int.Parse(TextBox3.Text)).ToString();
            TextBox9.Text = Operaciones.Operaciontotal(double.Parse(TextBox4.Text), double.Parse(TextBox5.Text), double.Parse(TextBox8.Text)).ToString();
            TextBox10.Text = Operaciones.OperacionLi(double.Parse(TextBox9.Text), double.Parse(TextBox6.Text), double.Parse(TextBox7.Text)).ToString();

            con.Close();


        }
        void cargatabla()
        {
            SqlCommand comm = new SqlCommand("select * from Empleado", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand com = new SqlCommand("update Empleado set DPI=@Valor2, Nombre_completo= @Valor3,Hijos= @Valor4,SalarioBase= @Valor5,Bono= @Valor6,IGSS= @Valor7,IRTRA= @Valor8, Bono_paternidad=@Valor9, Salario_total=@Valor10,Salario_liquido= @Valor11 where IdEmpleado =@Valor12 ", con);

            com.Parameters.AddWithValue("@Valor2", long.Parse(TextBox11.Text));
            com.Parameters.AddWithValue("@Valor3", TextBox2.Text);
            com.Parameters.AddWithValue("@Valor4", int.Parse(TextBox3.Text));
            com.Parameters.AddWithValue("@Valor5", double.Parse(TextBox4.Text));
            com.Parameters.AddWithValue("@Valor6", double.Parse(TextBox5.Text));
            com.Parameters.AddWithValue("@Valor7", double.Parse(TextBox6.Text));
            com.Parameters.AddWithValue("@Valor8", double.Parse(TextBox7.Text));
            com.Parameters.AddWithValue("@Valor9", double.Parse(TextBox8.Text));
            com.Parameters.AddWithValue("@Valor10", double.Parse(TextBox9.Text));
            com.Parameters.AddWithValue("@Valor11", double.Parse(TextBox10.Text));
            com.Parameters.AddWithValue("@Valor12", int.Parse(TextBox1.Text));
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Modificado con exito');", true);
            cargatabla();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand com = new SqlCommand("Delete Empleado Where IdEmpleado =@Valor12 ", con);

            com.Parameters.AddWithValue("@Valor12", int.Parse(TextBox1.Text));
            com.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Eliminado con exito');", true);
            cargatabla();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Empleado Where IdEmpleado =@Valor12", con);
            comm.Parameters.AddWithValue("@Valor12", int.Parse(TextBox1.Text));
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}