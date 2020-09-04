<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cookiebot.Default" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://assets.ziggeo.com/v1-r34/ziggeo.js"  type="text/javascript"></script>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <telerik:RadScriptManager  ID="RadscriptManager1" runat="server"></telerik:RadScriptManager>
            <telerik:RadWindowManager ID="RadWindowManager_PortableCv" runat="server">
                <Windows>
                    <telerik:RadWindow ID="RadWindow_PortableCv" runat="server" Behaviors="Close,Move,Reload,Resize"
                        Modal="true" Skin="Bootstrap" VisibleStatusbar="false" Width="550px" Height="400px"
                        Title="RadPopup" NavigateUrl="" OnClientClose="OnClientclose_RadWindow_PortableCv"
                        ShowContentDuringLoad="false">
                    </telerik:RadWindow>
                </Windows>
            </telerik:RadWindowManager>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                <table>
                    <tr>
                        <td>
                            <h1 style="color: blue;"><b>
                                <asp:HyperLink TabIndex="0" ID="HyperLink_CV" runat="server" Text="Open RadPopup"></asp:HyperLink></b></h1>
                        </td>
                    </tr>
                </table>
            </asp:PlaceHolder>
        </div>
    </form>
    <script type="text/javascript">
       
        function ShowPortableCvBrowser() {
            var radWindow = $find('<%=RadWindowManager_PortableCv.ClientID %>');
            var url = '/Popup.aspx';
            radWindow.open(url, "RadWindow_PortableCv");
            return false;
        }

        function OnClientclose_RadWindow_PortableCv(sender, returnValue) {
            if (returnValue.get_argument()) {

                if (returnValue.get_argument() == 1) {
                    location.href = location.href;
                }

                if (returnValue.get_argument() == 2) {
                    location.href = location.href;
                }
            }
        }
    </script>
</body>
</html>
