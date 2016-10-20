<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    
    <%--<script src="~/Scripts/jquery-1.9.1.js" type="text/javascript"></script>--%>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file --> 
    
    <script src="../Scripts/jquery-3.1.1.js" type="text/javascript"> </script>
    <link href="../Content/metro.css" rel ="stylesheet">

    <link href="../Content/metro-icons.css" rel ="stylesheet">
    <link href="../Content/metro-responsive.css" rel ="stylesheet">
    <link href="../Content/metro-schemes.css" rel="stylesheet">      
    <script src="../Scripts/metro.js"></script>
    
    <script>
        function specialClick(){
            var  charm = $("#menu-special").data("charm");
            if (charm.element.data("opened") === true) {
                charm.close();
            } else {
                charm.open();
            }
        }
    </script>

    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-3.1.1.js"></script>
    

    
    

</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Page Title
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
     <div class="fluent-menu" data-role="fluentmenu" data-on-special-click="specialClick">
        <ul class="tabs-holder">
            <li class="active"><a href="#tab_home">Home</a></li>
        </ul>
        <div class="tabs-content">
            <div class="tab-panel" id="tab_home">
                <div class="tab-panel-group">
                    <div class="tab-content-segment">
                        <button class="fluent-big-button">
                            <span class="icon mif-clipboard"></span><br>Paste
                        </button>
                    </div>
                    <div class="tab-content-segment">
                        <button class="fluent-button"><span class="icon mif-files-empty"></span>Copy</button>
                        <button class="fluent-button"><span class="icon mif-bug"></span>Cut</button>
                    </div>
                    <div class="tab-content-segment">
                        <button class="fluent-big-button">
                            <span class="icon mif-folder-plus"></span>Folder<br>Add
                        </button>
                    </div>
                    <div class="tab-content-segment">
                        <button class="fluent-big-button dropdown-toggle">
                            <span class="icon mif-cancel"></span>
                            <span class="label"><br>Delete</span>
                        </button>
                        <ul class="d-menu" data-role="dropdown">
                            <li><a href="#">Delete</a></li>
                            <li><a href="#">Permanent Delete</a></li>
                        </ul>
                    </div>

                </div>
                <div class="tab-panel-group">
                    <div class="tab-content-segment">
                        <button class="fluent-button"><span class="icon mif-lock"></span>Lock</button>
                        <button class="fluent-button"><span class="icon mif-unlock"></span>Unlock</button>
                    </div>
                    <div class="tab-content-segment">
                        <button class="fluent-big-button"><span class="icon mif-undo"></span>Discard<br>checkout</button>
                    </div>
                    <div class="tab-content-segment">
                        <button class="fluent-big-button"><span class="icon mif-credit-card"></span>Edit<br>metadata</button>
                    </div>
                    <div class="tab-content-segment">
                        <button class="fluent-big-button"><span class="icon mif-user"></span>Permissions</button>
                    </div>
                </div>
                <div class="tab-panel-group">
                    <button class="fluent-button dropdown-toggle">
                        <span class="label">Download</span>
                    </button>
                    <ul class="d-menu" data-role="dropdown">
                        <li><a href="#">archiving</a></li>
                        <li><a href="#">not archiving</a></li>
                    </ul>
                    <button class="fluent-button dropdown-toggle">
                        <span class="label">Upload</span>
                    </button>
                    <ul class="d-menu" data-role="dropdown">
                        <li><a href="#">File</a></li>
                        <li><a href="#">Folder</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div>
        <p id="message">
            <!-- The following content will be replaced with the user name when you run the app - see App.js -->
            initializing...
        </p>
    </div>

</asp:Content>
