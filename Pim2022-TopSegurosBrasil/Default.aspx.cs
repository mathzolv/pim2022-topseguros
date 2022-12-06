using Pim2022.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pim2022_TopSegurosBrasil
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {

            if (ValidaCampos() == false)
            {
                this.SendMessage("Ops!", "Preencha os campos corretamente", "warning");
            }
            else
            {
                try
                {
                    DataBasePim db = new DataBasePim();
                    db.Insert(txtNome.Text, txtsobrenome.Text, txtemail.Text, txttelefone.Text);
                    
                }
                catch (Exception ex)
                {
                    this.SendMessage("Error!", "Não foi possível enviar e-mail!", "error");
                    
                }
                this.SendMessage("Sucesso!", "E-mail enviado com sucesso!", "success");
            }

        }

        private void SendMessage(string titulo, string mensagem, string tipo)
        {
            Type cstype = this.GetType();
            ClientScriptManager cs = Page.ClientScript;
            String csname1 = "PopupScript";

            StringBuilder cstext1 = new StringBuilder();
            cstext1.Append("<script type=text/javascript> Swal.fire({title: '" + titulo + "',text: '" + 
                mensagem + "',icon: '" + tipo + "',confirmButtonText: 'Ok'})</script>");

            if (!cs.IsStartupScriptRegistered(cstype, csname1))
            {
                cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
            }
        }

        private bool ValidaCampos()
        {
            if (txtNome.Text.Length.Equals(0) ||
                txtsobrenome.Text.Length.Equals(0) ||
                txtemail.Text.Length.Equals(0) || 
                txttelefone.Text.Length.Equals(0))
            {
                return false;
            }

            return true;
        }
    }
}