using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;

namespace AAP
{
    public partial class CadastroAluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {

            OleDbConnection conn = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\\Users\\tamir\\OneDrive\\Área de Trabalho\\aap-itaquapasse1.mdb";
            cmd.Connection = conn;
            cmd.CommandText = "Select * from aluno where rg_aluno =  " + txtRg.Text;
            cmd.CommandType = CommandType.Text;
            conn.Open();

            OleDbDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                lblMensagem.Text = "Código já incluído";
                dr.Close();
            }

            else
            {
                dr.Close();
                //testes

                //conn.Close();
                // string test = "insert into aluno (rg_aluno) values (5804335198)";
                ///  string test = "insert into aluno (rg_aluno, nome, nasc, idade, endereco, n_end, bairro, cidade, email, fone_res, fone_com, filiacao, nome_esc, endereco_esc, bairro_esc, fone, curso, serie, grau, horario1, horario2, cep ,id_modalidade,n_esc) values (5804335198, 'Tamires', '78/02/9128', 15, 'Rodovia João Afonso de Souza Castellano', 546, 'ursula', 'Itaquaquecetuba', 'tamires.marlene15@gmail.com', '32345', '8901-3211', 'mar', 'ercilia', 'Rodovia João Afonso de Souza Castellano', 'monte', '5643478', 'gent', '5', 'superior', '17:59', '20:45', '08574-000', 2 , 711)";
                
                string test = "insert into aluno (rg_aluno, nome, nasc, idade, endereco, n_end, bairro, cidade, email, fone_res, fone_com, filiacao," +
                    " nome_esc, endereco_esc, bairro_esc, fone, curso, serie, grau, horario1, horario2, cep ,id_modalidade,n_esc) " +
                    "values (" + txtRg.Text + ", '" + txtNome.Text + "', '" + txtNasc.Text + "', " + txtIdade.Text + ", '" + txtEndereco.Text + "', " + txtNumero.Text + 
                    ", '" + txtBairro.Text + "', '" + txtCidade.Text + "', '" + txtEmail.Text + "', '" + txtFone.Text + "', '" + txtFoneCom.Text + "', '" + txtFili.Text + "', " +
                    "'" + txtEscola.Text + "', '" + txtEnderecoE.Text + "', '" + txtBairroE.Text + "', '" + txtFoneEsc.Text + "', '" + txtCurso.Text + "', '" + txtSerie.Text + "', '"
                    + txtGrau.Text + "', '" + txtHoraAula.Text + "', '" + txtHoraAula2.Text + "', '" + txtCep.Text + "', " + ddlModalidade.SelectedValue + " , " + txtNumeroE.Text + ")";

                cmd.CommandText = test;
                //cmd.CommandType = CommandType.Text;
                //conn.Open();
                cmd.ExecuteNonQuery();
                lblMensagem.Text = " Registro incluido com sucesso";
            }
            conn.Close();

            conn.Dispose();

        }

        protected void btnPesquisa_Click(object sender, EventArgs e)
        {
            btnAltera.Enabled = true;
            btnExclui.Enabled = true;

            OleDbConnection conn = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            OleDbDataReader dr;


            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\\Users\\tamir\\OneDrive\\Área de Trabalho\\aap-itaquapasse1.mdb";

            cmd.Connection = conn;
            cmd.CommandText = "Select * from aluno where rg_aluno =  " + txtRg.Text;
            cmd.CommandType = CommandType.Text;
            conn.Open();
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                
                txtNome.Text = dr["nome"].ToString();
                txtNasc.Text = dr["nasc"].ToString();
                txtIdade.Text = dr["idade"].ToString();
                txtEndereco.Text = dr["endereco"].ToString();        
                txtNumero.Text = dr["n_end"].ToString();
                txtBairro.Text = dr["bairro"].ToString();
                txtCidade.Text = dr["cidade"].ToString();
                txtEmail.Text = dr["email"].ToString();
                txtFone.Text = dr["fone_res"].ToString();
                txtFoneCom.Text = dr["fone_com"].ToString();
                txtFili.Text = dr["filiacao"].ToString();
                txtEscola.Text = dr["nome_esc"].ToString();
                txtEnderecoE.Text = dr["endereco_esc"].ToString();
                txtBairroE.Text = dr["bairro_esc"].ToString();
                txtFoneEsc.Text = dr["fone"].ToString();
                txtCurso.Text = dr["curso"].ToString();
                txtSerie.Text = dr["serie"].ToString();
                txtGrau.Text = dr["grau"].ToString();
                txtHoraAula.Text = dr["horario1"].ToString();
                txtHoraAula2.Text = dr["horario2"].ToString();
                txtCep.Text = dr["cep"].ToString();
                ddlModalidade.Text = dr["id_modalidade"].ToString();
                txtNumeroE.Text = dr["n_esc"].ToString();


            }
            else
            {
                lblMensagem.Text = "Registro  não encontrado";
            }

            conn.Close();
            dr.Close();
            conn.Dispose();

        }

        protected void btnAltera_Click(object sender, EventArgs e)
        {
            OleDbConnection conn = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();

            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\\Users\\tamir\\OneDrive\\Área de Trabalho\\aap-itaquapasse1.mdb";
            cmd.Connection = conn;
            cmd.CommandText = "update aluno set  nome = '" + txtNome.Text + "', nasc = '" + txtNasc.Text + "', idade = " + txtIdade.Text + ", endereco = '" + txtEndereco.Text + "', " +
    "n_end = " + txtNumero.Text + ", bairro = '" + txtBairro.Text + "', cidade = '" + txtCidade.Text + "', email = '" + txtEmail.Text + "', fone_res = '" + txtFone.Text + "', " +
    "fone_com = '" + txtFoneCom.Text + "', filiacao = '" + txtFili.Text + "', nome_esc = '" + txtEscola.Text + "', endereco_esc = '" + txtEnderecoE.Text + "', " +
    "bairro_esc = '" + txtBairroE.Text + "', fone = '" + txtFoneEsc.Text + "', curso = '" + txtCurso.Text + "', serie = '" + txtSerie.Text + "', grau = '" + txtGrau.Text + "', " +
    "horario1 = '" + txtHoraAula.Text + "', horario2 = '" + txtHoraAula2.Text + "', cep = '" + txtCep.Text + "', id_modalidade = " + ddlModalidade.SelectedValue + ", n_esc = " + txtNumeroE.Text +
    " WHERE rg_aluno = " + txtRg.Text; 
            cmd.CommandType = CommandType.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close(); 
            conn.Dispose();
            lblMensagem.Text = " Registro alterado";
        }

        protected void btnExclui_Click(object sender, EventArgs e)
        {
           
            OleDbConnection conn = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();

            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=C:\\Users\\tamir\\OneDrive\\Área de Trabalho\\aap-itaquapasse1.mdb";
            cmd.Connection = conn;
            cmd.CommandText = "delete  from aluno where rg_aluno =  " + txtRg.Text;
            cmd.CommandType = CommandType.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            conn.Dispose();
            lblMensagem.Text = " Registro Excluído com sucesso";
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtRg.Text = "";
            txtNome.Text = "";
            txtNasc.Text = "";
            txtIdade.Text = "";
            txtEndereco.Text = "";
            txtNumero.Text = "";
            txtBairro.Text = "";
            txtCidade.Text = "";
            txtEmail.Text = "";
            txtFone.Text = "";
            txtFoneCom.Text = "";
            txtFili.Text = "";
            txtEscola.Text = "";
            txtEnderecoE.Text = "";
            txtBairroE.Text = "";
            txtFoneEsc.Text = "";
            txtCurso.Text = "";
            txtSerie.Text = "";
            txtGrau.Text = "";
            txtHoraAula.Text = "";
            txtHoraAula2.Text = "";
            txtCep.Text = "";
            ddlModalidade.SelectedIndex = -1;
            txtNumeroE.Text = "";
        }
    }
}