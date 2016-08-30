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
        private List<Label> lstLbl = new List<Label>();
        private List<int> gameNumbers = new List<int>();
        private Random rnd = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGameBoardLabels();
                GetGameNumbers();
                FillGameBoard();
            }
        }

        private void GetGameBoardLabels()
        {
            foreach (Control control in Page.Controls)
            {
                foreach (Control childContrl in control.Controls)
                {
                    string s = childContrl.ID;

                    string x = childContrl.GetType().ToString();
                    string id = childContrl.ID;
                    if ((x == "System.Web.UI.WebControls.Label") && id.StartsWith("Label"))
                    {
                        lstLbl.Add((Label)childContrl);
                    }
                }
            }
        }

        private void GetGameNumbers()
        {
            while (gameNumbers.Count < 81)
            {
                var range = Enumerable.Range(1, 9).ToList();
                gameNumbers.AddRange(range);
            }
        }

        private void FillGameBoard()
        {
            //use the index of gamenumbers
            //choose a random index number of gamenumbers that has not already been used
            //print the integer of the index from gamenumbers to the label

            for (int i = 0; i <= lstLbl.Count - 1; i++)
            {
                lstLbl[i].Text = rnd.Next(1, 10).ToString();
            }
        }

    }
}