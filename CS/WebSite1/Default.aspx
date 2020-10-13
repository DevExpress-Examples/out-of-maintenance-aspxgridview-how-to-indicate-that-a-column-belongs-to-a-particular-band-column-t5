<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.16.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxGridView - How to indicate that a column should be used inside a particular Band column in a Customization Window</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
                KeyFieldName="OrderID" Theme="Metropolis"
                OnInit="ASPxGridView1_Init">
                <Toolbars>
                    <dx:GridViewToolbar>
                        <Items>
                            <dx:GridViewToolbarItem Command="ShowCustomizationWindow" />
                        </Items>
                    </dx:GridViewToolbar>
                </Toolbars>
                <Columns>
                    <dx:GridViewBandColumn Caption="Band1">
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="OrderID" ReadOnly="True" VisibleIndex="0">
                                <EditFormSettings Visible="False"></EditFormSettings>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="CustomerID" VisibleIndex="1"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="EmployeeID" VisibleIndex="2"></dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:GridViewBandColumn>
                    <dx:GridViewBandColumn Caption="Band2">
                        <Columns>
                            <dx:GridViewDataDateColumn FieldName="OrderDate" VisibleIndex="3"></dx:GridViewDataDateColumn>
                            <dx:GridViewDataDateColumn FieldName="RequiredDate" VisibleIndex="4"></dx:GridViewDataDateColumn>
                            <dx:GridViewDataDateColumn FieldName="ShippedDate" VisibleIndex="5"></dx:GridViewDataDateColumn>
                            <dx:GridViewDataTextColumn FieldName="ShipVia" VisibleIndex="6" Visible="false"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Freight" VisibleIndex="7" Visible="false"></dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:GridViewBandColumn>
                    <dx:GridViewBandColumn Caption="Band3">
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="ShipName" VisibleIndex="8"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ShipAddress" VisibleIndex="9"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ShipCity" VisibleIndex="10"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ShipRegion" VisibleIndex="11" Visible="false"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ShipPostalCode" VisibleIndex="12" Visible="false"></dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="ShipCountry" VisibleIndex="13"></dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:GridViewBandColumn>
                </Columns>
                <SettingsBehavior EnableCustomizationWindow="true" />
                <SettingsPager EnableAdaptivity="true" />
            </dx:ASPxGridView>
            <asp:AccessDataSource runat="server" ID="AccessDataSource1" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Orders] WHERE [OrderID] > 10249 AND [OrderID] < 10260"></asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
