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
        private List<int> firstRowSeed = new List<int>();
        private List<int> ineligible = new List<int>();
        int[,] array = new int[9, 9];
        private Random rnd = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGameBoardLabels();
                GetSolution();
                FillGameBoard();
            }
        }

        private void GetGameBoardLabels()
        {
            foreach (Control control in form1.Controls)
            {
                string x = control.GetType().ToString();
                string id = control.ID;
                if ((x == "System.Web.UI.WebControls.TextBox") && id.StartsWith("Text"))
                {
                    lstTxt.Add((TextBox)control);
                }
            }
        }

        private void GetSolution()
        {
            int num;
            for (int x=0; x < 9; x++) 
            {
                for (int y=0; y < 9; y++)
                {
                    if (y > 0)
                    {
                        //check row
                        for (int rY=0; rY < y; rY++)
                        {
                            ineligible.Add(array[x, rY]);
                        }

                    }

                    //check column
                    for (int cX = 0; cX < x; cX++)
                    {
                        ineligible.Add(array[cX, y]);
                    }

                    //check 3x3 square
                    int sX;
                    int sY;
                    if (x < 3)
                    {
                        for (sX = 0; sX < 3; sX++)
                        {
                            if (y < 3)
                            {
                                for (sY = 0; sY < 3; sY++)
                                {
                                    ineligible.Add(array[sX, sY]);
                                }
                            }
                            else if (y < 6)
                            {
                                for (sY = 3; sY > 2 && sY < 6; sY++)
                                {
                                    ineligible.Add(array[sX, sY]);
                                }
                            }
                            else
                            {
                                for (sY = 6; sY > 5 && sY < 9; sY++)
                                {
                                    ineligible.Add(array[sX, sY]);
                                }
                            }
                        }
                    }
                    else if (x < 6)
                    {
                        for (sX = 3; sX > 2 && sX < 6; sX++)
                        {
                            if (y < 3)
                            {
                                for (sY = 0; sY < 3; sY++)
                                {
                                    ineligible.Add(array[sX, sY]);
                                }
                            }
                            else if (y < 6)
                            {
                                for (sY = 3; sY > 2 && sY < 6; sY++)
                                {
                                    ineligible.Add(array[sX, sY]);
                                }
                            }
                            else
                            {
                                for (sY = 6; sY > 5 && sY < 9; sY++)
                                {
                                    ineligible.Add(array[sX, sY]);
                                }
                            }
                        }
                    }
                    else
                    {
                        for (sX = 6; sX > 5 && sX < 9; sX++)
                        {
                            if (y < 3)
                            {
                                for (sY = 0; sY < 3; sY++)
                                {
                                    ineligible.Add(array[sX, sY]);
                                }
                            }
                            else if (y < 6)
                            {
                                for (sY = 3; sY > 2 && sY < 6; sY++)
                                {
                                    ineligible.Add(array[sX, sY]);
                                }
                            }
                            else
                            {
                                for (sY = 6; sY > 5 && sY < 9; sY++)
                                {
                                    ineligible.Add(array[sX, sY]);
                                }
                            }
                        }
                    }


                    var eligible = Enumerable.Range(1, 9).Except(ineligible).ToList();
                    if (eligible.Count > 0)
                    {
                        num = eligible[rnd.Next(eligible.Count)];
                        array[x, y] = num;
                    }
                    else
                    {
                        Array.Clear(array, 0, array.Length);
                        x = 0;
                        y = -1;
                    }
                    ineligible.Clear();
                }
            }
        }

        private void FillGameBoard()
        {
            int l = 0;
            while (l <= lstTxt.Count - 1)
            {
                for (int x = 0; x < 9; x++)
                {
                    for (int y = 0; y < 9; y++)
                    {
                        lstTxt[l].Text = array[x, y].ToString();
                        l++;
                    }
                }
            }
        }

    }
}


/*You can start with the first cell by populating it with a random number from 1 to 9, 
 * then move to the second cell and populate it with another random number excluding 
 * the number in the first cell etc. Basically when populating a certain cell you’ll 
 * have to take in mind the numbers that have already been populated in the column, 
 * row and box where the current cell is positioned.
 * 
 * Need a 2D array to check number validity. Fill that first, then from that fill the 
 * boxes on the gameboard
 * 
 * https://en.wikipedia.org/wiki/Sudoku_solving_algorithms
 * */
