using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Game
{
    public partial class GameCS : System.Web.UI.Page
    {
        private List<TextBox> lstTxt = new List<TextBox>();
        private List<int> ineligible = new List<int>();
        int[,] array = new int[9, 9];
        private Random rnd = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetSolution();
            }
            else
            {
                Control ctrl = null;
                string ctrlName = Page.Request.Params.Get("__EVENTTARGET");
                if ((!String.IsNullOrEmpty(ctrlName)) && (ctrlName.Substring(0, 1)) == "c")
                {
                    //int i = Convert.ToInt16(ctrlName.Substring(2, 1));
                    //int j = Convert.ToInt16(ctrlName.Substring(1, 2));
                    //if (i != 8)
                    //{
                    //    j++;
                    //}
                    //else if (j != 88)
                    //{
                    //    j = j + 2;
                    //}
                    //else
                    //{
                    //    j = 0;
                    //}
                    //ctrlName = j.ToString().Length == 1 ? "c0" + j.ToString() : "c" + j.ToString();

                    ctrl = form1.FindControl(ctrlName);
                    ctrl.Focus();
                }
            }
        }

        private void GetSolution()
        {
            if (Session["Solution"] == null)
            {
                int num;
                for (int x = 0; x < 9; x++)
                {
                    for (int y = 0; y < 9; y++)
                    {
                        CheckRow(x, y);
                        CheckColumn(x, y);
                        CheckSquare(x, y);

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
                Session["Solution"] = array;
            }
        }

        private void CheckRow(int x, int y)
        {
            if (y > 0)
            {
                for (int rY = 0; rY < y; rY++)
                {
                    ineligible.Add(array[x, rY]);
                }

            }
        }

        private void CheckColumn(int x, int y)
        {
            for (int cX = 0; cX < x; cX++)
            {
                ineligible.Add(array[cX, y]);
            }
        }

        private void CheckSquare(int x, int y)
        {
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
        }

        protected void Verify(object sender, EventArgs e)
        {
            TextBox txt = (sender as TextBox);
            string id = txt.ID;
            if (!string.IsNullOrEmpty(txt.Text))
            {
                int x;
                int y;
                GetXY(id, out x, out y);

                array = Session["Solution"] as int[,];
                txt.ForeColor = array[x, y] == Convert.ToInt16(txt.Text) ? Color.Black : Color.Red;
            }
            else
            {
                txt.ForeColor = Color.Black;
            }
        }

        private static void GetXY(string id, out int x, out int y)
        {
            x = Convert.ToInt16(id.Substring(1, 1));
            y = Convert.ToInt16(id.Substring(2, 1));
        }

        protected void SelectDifficulty(object sender, EventArgs e)
        {
            Button btn = (sender as Button);

            int numReveals = 0; 
            if (btn.ID == "btnEasy")
            {
                numReveals = 36; //rnd.Next(34, 38);
            }
            else if (btn.ID == "btnMedium")
            {
                numReveals = 30; //rnd.Next(30, 34);
            }
            else if (btn.ID == "btnHard")
            {
                numReveals = rnd.Next(20, 26);
            }
            else if (btn.ID == "btnExtreme")
            {
                numReveals = rnd.Next(16, 20);
            }

            GetGameBoardLabels();
            array = Session["Solution"] as int[,];

            for (int nR = 0; nR < numReveals; nR++)
            {
                int index = rnd.Next(lstTxt.Count);
                string id = lstTxt[index].ID;
                int x;
                int y;
                GetXY(id, out x, out y);

                lstTxt[index].Text = array[x, y].ToString();
                lstTxt[index].Enabled = false;
                lstTxt.Remove(lstTxt[index]);
            }
        }

        protected void GetGameBoardLabels()
        {
            foreach (Control control in dGameTable.Controls)
            {
                string x = control.GetType().ToString();
                string id = control.ID;
                if ((x == "System.Web.UI.WebControls.TextBox") && id.StartsWith("c"))
                {
                    lstTxt.Add((TextBox)control);
                    (control as TextBox).Text = "";
                    (control as TextBox).Enabled = true;
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