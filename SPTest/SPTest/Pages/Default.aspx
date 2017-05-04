<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink name="SP.Runtime.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />
    <link rel ="stylesheet" type="text/css" href="../Content/ui-grid.min.css">
    <link href="//cdnjs.cloudflare.com/ajax/libs/angularjs-toaster/2.1.0/toaster.css" rel="stylesheet" />

    <!-- Add your JavaScript to the following file -->
   <%--<script type="text/javascript" src="../Scripts/angular.js"></script>--%>  
    <%--<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.js" type="text/javascript"></script>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js" ></script>
      <script src="http://code.angularjs.org/1.5.8/angular-animate.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angularjs-toaster/2.1.0/toaster.js"></script>

    <script type="text/javascript" src="../Scripts/ui-grid.min.js"></script>
    <script type="text/javascript" src="../Scripts/App.js"></script>
    

    <%-- <script type="text/javascript" src="/_layouts/15/SP.RequestExecutor.js"></script>--%>
  
<%--    <script>
        function functionName1() {
            SP.SOD.executeFunc('SP.Runtime.js',
                'SP.ClientContext',
                function() {
                    SP.SOD.executeFunc('SP.js',
                        'SP.ClientContext',
                        function() {
                            var siteUrl = _spPageContextInfo.webAbsoluteUrl;
                            var clientContext = new SP.ClientContext(siteUrl);
                            var web = clientContext.get_web();
                            clientContext.load(web, 'Title', 'EffectiveBasePermissions');
                            clientContext.executeQueryAsync(onSuccess, onError);
                        });
                });
        }

        function onSuccess() {
            alert('Title: ' + web.get_title());
            var permissions = SP.PermissionKind.manageWeb && SP.PermissionKind.viewListItems;
            if (web.get_effectiveBasePermissions().has(permissions)) {
                alert('user has the required permissions');
            }
        }

        function onError(sender, args) {
            alert(args.get_message() + '\n' + args.get_stackTrace());
        }
    </script>--%>
    
   <%-- 
    <script>
        //This example gets all the items in the Announcements list that have a title that begins with 'T'.   
        //If your site doesn't include a list called Announcements you must make the changes indicated   

        //This variable will hold a reference to the Announcements list items collection   
        var returnedItems = null;

        //This function loads the list and runs the query asynchronously   
        function queryListItems() {
            //Get the current context   

            var url = "http://spa12.db.test/";

            var context = new SP.ClientContext(url);
            
            //Get the Announcements list. Alter this code to match the name of your list   
            var list = context.get_web().get_lists().getByTitle('tmp2');
            //Create a new CAML query   
            var caml = new SP.CamlQuery();
            //Create the CAML that will return only items with the titles that begin with 'T'   
            caml.set_viewXml("<View><Query><Where><BeginsWith><FieldRef Name='Title' /><Value Type='Text'>T</Value></BeginsWith>            </Where></Query></View>");
            //Specify the query and load the list oject   
            returnedItems = list.getItems(caml);
            context.load(returnedItems);
            //Run the query asynchronously, passing the functions to call when a response arrives   
            context.executeQueryAsync(onSucceededCallback, onFailedCallback);
        }

        //This function fires when the query completes successfully   
        function onSucceededCallback(sender, args) {
            //Get an enumerator for the items in the list   
            var enumerator = returnedItems.getEnumerator();
            //Formulate HTML from the list items   
            var markup = 'Items in the Announcements list that start with "T": <br><br>';
            //Loop through all the items   
            while (enumerator.moveNext()) {
                var listItem = enumerator.get_current();
                markup += 'Item Title: ' + listItem.get_item('Title') + '<br>';
                markup += 'Item ID: ' + listItem.get_id() + '<br><br>';
            }
            //Display the formulated HTML in the displayDiv element   
            displayDiv.innerHTML = markup;
        }
        //This function fires when the query fails   
        function onFailedCallback(sender, args) {
            alert("failed. Message:" + args.get_message());
            //Formulate HTML to display details of the error   
            var markup = '<p>The request failed: <br>';
            markup += 'Message: ' + args.get_message() + '<br>';
            //Display the details   
            displayDiv.innerHTML = markup;
        }
    </script>
    --%>

</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Page Title
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    
<html lang="en" ng-app ="aps">
    <div ng-controller="testCtrl">
        <input type="button" value="add" ng-click='start()'/>
        <input type="button" value="add2" ng-click='start2()'/>
        <input type="button" value="add3" ng-click='start3()'/>
    </div>
    
        <div ng-controller="testCheckinCtrl">
        <input type="button" value="add" ng-click='start()'/>
        <input type="button" value="add2" ng-click='start2()'/>
        <input type="button" value="add3" ng-click='start3()'/>
    </div>
    
    <div ng-controller  ="testDownload">
                <input type="button" value="add" ng-click='start()'/>
        <input type="button" value="add2" ng-click='start2()'/>
        <%--<input type="button" value="add3" ng-click='start3()'/>--%>
        <input type="file" value ="file" id ="fileinput" multiple style ="display: none;"/>
        <input type="button" value="add3" onclick="document.getElementById('fileinput').click();" />
    </div>
    
        <div ng-controller  ="testPermissions">
                <input type="button" value="modal" ng-click='start()'/>
        <input type="button" value="add2" ng-click='start2()'/>
        <%--<input type="button" value="add3" ng-click='start3()'/>--%>

    </div>
    
    

        <div>
            <div ng-controller="testToaster">
            <!-- NOTE: remove 'animation-class': 'toast-top-center' if you want it on the left top corner --> 
                <toaster-container toaster-options="{'close-button':false, 'time-out':{ 'toast-warning': 2000, 'toast-error': 0 } }"></toaster-container>
                <input type="button" class="btn btn-primary" style="margin: 150px 0 0 150px;" ng-click="pop()">Show toasts</input>
                <br />
                <button class="btn btn-danger" style="margin: 10px 0 0 150px;" ng-click="clear()">Clear toasts</button>
            </div>
        </div>
        
        <script type="text/ng-template" id="toasterBodyTmpl.html">
          <p>Render a default template!</p>
        </script>
        
        <script type="text/ng-template" id="myTemplate.html">
          <p>Render a custom template! {{bar}}</p>
        </script>
        
        <script type="text/ng-template" id="myTemplateWithData.html">
          <p>Here it is! {{toaster.data}}</p>
        </script>
    </html>    
    


</asp:Content>
