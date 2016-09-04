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
            /*You can start with the first cell by populating it with a random number from 1 to 9, 
             * then move to the second cell and populate it with another random number excluding 
             * the number in the first cell etc. Basically when populating a certain cell you’ll 
             * have to take in mind the numbers that have already been populated in the column, 
             * row and box where the current cell is positioned.
             * 
             * Need a 2D array to check number validity. Fill that first, then from that fill the 
             * boxes on the gameboard
             * */

            for (int i = 0; i <= lstTxt.Count - 1; i++)
            {
                int index = rnd.Next(0, gameNumbers.Count - 1);
                lstTxt[i].Text = gameNumbers[index].ToString();
                gameNumbers.Remove(gameNumbers[index]);
            }
        }

    }
}