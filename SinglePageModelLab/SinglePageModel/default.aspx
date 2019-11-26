<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SinglePageModel._default" %>
<%@ Import Namespace="AutoLotDAL.Models" %>
<%@ Import Namespace="AutoLotDAL.DataOperations" %> 

<!DOCTYPE html>
<script runat="server">
    public IEnumerable<AutoLotDAL.Models.Car> GetData()
    {
        return new InventoryDAL().GetAllInventory();
    }
</script> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="carsGridView" runat="server" ItemType="AutoLotDAL.Models.Car" SelectMethod="Data"></asp:GridView>
        </div>
    </form>

</body>
</html>
