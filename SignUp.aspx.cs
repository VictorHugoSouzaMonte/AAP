using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



namespace AAP
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCriar_Click(object sender, EventArgs e)
        {
            OleDbConnection conn = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\\Users\\tamir\\OneDrive\\Área de Trabalho\\aap-itaquapasse1.mdb";
            cmd.Connection = conn;
            cmd.CommandText = "Select * from login where cd_rg=  " + txtRg.Text;
            cmd.CommandType = CommandType.Text;
            conn.Open();

            OleDbDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
            lblMensagem.Text = "Código já incluído";
                
            }
            else
            {
                conn.Close();


                cmd.CommandText = "insert into login (cd_rg, nome, dt_nasc, email, senha,conf_senha) values (" + txtRg.Text + ", '" + txtNome.Text + "', '" + txtDt.Text + "', '" + txtEmail.Text + "', " + txtPassword.Text + ", " + txtConfirmPassword.Text + ")";
                cmd.CommandType = CommandType.Text;
                conn.Open();
                cmd.ExecuteScalar();
                lblMensagem.Text = " Registro incluido com sucesso";
            }
            conn.Close();
            conn.Dispose();
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login");
        }
    }
}