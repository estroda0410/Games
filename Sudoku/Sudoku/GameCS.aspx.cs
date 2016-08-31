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
        private List<TextBox> lstTxt = new List<TextBox>();
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
            foreach (Control control in form1.Controls)
            {
                //foreach (Control childContrl in control.Controls)
                //{
                string s = control.ID;

                string x = control.GetType().ToString();
                string id = control.ID;
                if ((x == "System.Web.UI.WebControls.TextBox") && id.StartsWith("Text"))
                {
                    lstTxt.Add((TextBox)control);
                }
                //}
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

            for (int i = 0; i <= lstTxt.Count - 1; i++)
            {
                lstTxt[i].Text = rnd.Next(1, 10).ToString();
            }
        }

    }
}