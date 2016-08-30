using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Game
{
    public partial class GameCS : System.Web.UI.Page
    {
        private List<Label> listLbl = new List<Label>(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (Control control in Page.Controls)
                {
                    foreach (Control childContrl in control.Controls)
                    {
                        string s = childContrl.ID;

                        string x = childContrl.GetType().ToString();
                        if (x == "System.Web.UI.WebControls.Label")
                        {
                            listLbl.Add((Label)childContrl);
                        }
                    }

                }

                //foreach (var lbl in listLbl)
                //{
                //    string id = lbl.ID;
                //}
                Random rnd = new Random();
                for (int i = 0; i <= listLbl.Count-1; i++)
                {
                    string id = listLbl[i].ID;
                    listLbl[i].Text = rnd.Next(1, 10).ToString();
                }
            }
        }
    }
}