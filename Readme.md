<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128534925/17.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T583887)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/WebSite1/Default.aspx) (VB: [Default.aspx](./VB/WebSite1/Default.aspx))**
* [Default.aspx.cs](./CS/WebSite1/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite1/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to indicate that a column belongs to a particular Band column
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t583887/)**
<!-- run online end -->


<p>This example demonstrates how to indicate that a column belongs to a particular <a href="https://demos.devexpress.com/aspxgridviewdemos/Columns/Bands.aspx">Band column</a> in a <a href="https://documentation.devexpress.com/AspNet/3734/ASP-NET-WebForms-Controls/Grid-View/Concepts/Data-Representation-Basics/Customization-Window">Customization Window</a> of <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxGridView.class">ASPxGridView</a>. To achieve this, handle the <strong>ASPxGridView.Init</strong> event and assign different colors and tooltips to columns headers, which belong to a particular band column.</p>


```cs
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
```



<br/>


