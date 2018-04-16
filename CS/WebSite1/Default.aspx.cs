using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Drawing;

public partial class _Default : System.Web.UI.Page {

    List<Color> suitableColors = new List<Color> {
        Color.SandyBrown,
        Color.YellowGreen,
        Color.Beige,
        Color.DarkSalmon,
        Color.PowderBlue,
        Color.Plum,
        Color.MistyRose,
        Color.LightGray,
        Color.MediumAquamarine,
        Color.LightPink
    };
    protected void Page_Load(object sender, EventArgs e) {
        
    }
    protected void ASPxGridView1_Init(object sender, EventArgs e) {
        foreach(var column in ASPxGridView1.Columns) {
            if(column is GridViewBandColumn) {
                GridViewBandColumn firstLevelColumn = (GridViewBandColumn)column;
                int index = firstLevelColumn.Index;
                if(index > 9)
                    index %= 10;
                firstLevelColumn.HeaderStyle.BackColor = suitableColors[index];
                foreach(var subcolumn in firstLevelColumn.Columns) {
                    GridViewDataColumn secondLevelColumn = (GridViewDataColumn)subcolumn;
                    secondLevelColumn.HeaderStyle.BackColor = suitableColors[index];
                    secondLevelColumn.ToolTip = string.Format("This column belongs to {0} column", firstLevelColumn.Caption.ToString());
                }
            }
        }
    }
}