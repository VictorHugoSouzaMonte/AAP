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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp");

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

            int rg = Convert.ToInt32(txtRg.Text);
            string nome = txtNome.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string confm = txtPasswordConfirm.Text;


            if (VerificarCredenciais(rg, nome, email, password, confm))
            {

                Response.Redirect("CadastroAluno.aspx");
            }

            else
            {

                lblMensagem.Text = "Credenciais inválidas";
            }



        }

        private bool VerificarCredenciais(int rg, string nome, string email, string password, string confm)
        {
            bool resp = false;
            try
            {
                OleDbConnection conn = new OleDbConnection(); 
                OleDbCommand cmd = new OleDbCommand();
                conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\\Users\\tamir\\OneDrive\\Área de Trabalho\\aap-itaquapasse1.mdb";
                OleDbDataReader reader = null;
                cmd.CommandText = "Select * from Login where cd_rg = @rg AND nome = @nome AND email = @email AND senha = @password AND conf_senha = @conf_senha";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conn;
                conn.Open();

                cmd.Parameters.AddWithValue("@rg", rg);
                cmd.Parameters.AddWithValue("@nome", nome);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@conf_senha", confm);
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    resp = true;
                }
                reader.Close();
                conn.Dispose();
                conn.Close();
            }
            catch (Exception e)
            {
                
            }

            return resp;
        }



    }

}
    
        



    
