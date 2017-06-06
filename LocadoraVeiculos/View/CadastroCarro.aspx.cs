using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LocadoraVeiculos.Controler;
using LocadoraVeiculos.Models;

namespace LocadoraVeiculos.View
{
    public partial class CadastroCarro : System.Web.UI.Page
    {
        private static TipoVeiculo tipoveiculo = new TipoVeiculo();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Carro carro = new Carro();
            

            carro.nome = Convert.ToString(txtNome.Text);
            carro.cor = Convert.ToString(txtCor.Text);
            carro.ano = Convert.ToInt32(txtAnoVeiculo.Text);
            carro.TipoVeiculo_tipoVeiculoId = 1;            
            LocadoraControler.Adicionar(carro);
            txtAnoVeiculo.Text = "";
            txtCor.Text = "";
            txtNome.Text = "";
            Response.Redirect("CadastroCarro.aspx");

        }

  

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Carro carro = new Carro();
            carro = (Carro)Session["carroEditar"];
            //carro.carroId = Convert.ToInt32(Session["carroEditar"]);
            carro.nome = Convert.ToString(txtNome.Text);
            carro.cor = Convert.ToString(txtCor.Text);
            carro.ano = Convert.ToInt32(txtAnoVeiculo.Text);
            carro.TipoVeiculo_tipoVeiculoId = 1;
            LocadoraControler.Editar(carro);
            txtAnoVeiculo.Text = "";
            txtCor.Text = "";
            txtNome.Text = "";
            Response.Redirect("CadastroCarro.aspx");
        }

        protected void gvCarros_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int linha = Convert.ToInt32(e.CommandArgument);

            int idCarro = Convert.ToInt32(gvCarros.Rows[linha].Cells[2].Text);

            string comando = e.CommandName;

            if (comando.Equals("comandExcluir"))
            {
                Carro car = new Carro();
                car = LocadoraControler.LocalizarPorID(idCarro);
                LocadoraControler.Excluir(car);
                Response.Redirect("CadastroCarro.aspx");
 


            }
            else
            {
                if (comando.Equals("comandEditar"))
                {
                    Carro car = new Carro();
                    car = LocadoraControler.LocalizarPorID(idCarro);
                    txtNome.Text = car.nome;
                    txtCor.Text = car.cor;
                    txtAnoVeiculo.Text = Convert.ToString(car.ano);
                    Session["carroEditar"] = car;
                    

                }
            }






        }
    }
}