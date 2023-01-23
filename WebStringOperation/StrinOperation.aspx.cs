using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebStringOperation
{
    public partial class StrinOperation : System.Web.UI.Page
    {
        char[] delimiter1 =
        new char[] { ';', ',', ' ', ':','\"', '\n', '\t' }; // Split on these
        string[] array1;
        string[] array2;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnArrayWithEmptyWord_Click(object sender, EventArgs e)
        {
            //перевірка, чи рядок не є лише з пропусків і не є порожнім
            if (!String.IsNullOrEmpty(txtString.Text))
            {

                array1 = txtString.Text.Split(delimiter1, StringSplitOptions.None);
                foreach (string entry in array1)
                {
                    ltrArrayWithEmptyWord.Text += entry + "<br>";
                }
            }
        }
        protected void btnArrayWithOutEmptyWord_Click(object sender, EventArgs e)
        {
            //перевірка, чи рядок не містить одні пропуски
            if (txtString.Text.Trim() != "")
            {
                array2 = txtString.
               Text.
               Split(delimiter1, StringSplitOptions.RemoveEmptyEntries);
                foreach (string entry in array2)
                {
                    ltrArrayWithOutEmptyWord.Text += entry + "<br>";
                }
            }
        }
    }
}