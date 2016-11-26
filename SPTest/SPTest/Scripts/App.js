'use strict';

//ExecuteOrDelayUntilScriptLoaded(initializePage, "sp.js");

angular.module('aps', []);


angular.module('aps')
    .factory('bufferCtrl',
         function() {
            var methods = {};

            var buffer = [];

            methods.addToBuffer = function (item) {
                buffer = [];
                buffer.push(item);
            };
            methods.getFBuffer = function () {
                return buffer;
            };
            return methods;
        });

angular.module('aps')
    .controller('firstCtrl',
          ['$scope', 'bufferCtrl',function ($scope, bufferCtrl) {
              $scope.addToBuff = function () {
                  bufferCtrl.addToBuffer({ "Name": "11" });
              };
              $scope.get = function() {
                  var tmp = bufferCtrl.getFBuffer();
                  alert(tmp[0].Name);
              };
          }]);

angular.module('aps')
    .controller('secondCtrl',
          function ($scope, bufferCtrl) {
              $scope.get = function () {
                  var tmp = bufferCtrl.getFBuffer();
                  alert(tmp[0].Name);
              };
              $scope.addToBuff = function () {
                  bufferCtrl.addToBuffer({ "Name": "22" });
              };
          });


    //.run(function($rootScope) {
    //    $rootScope.fBuffer = [];
    //})


//function initializePage()
//{
//    var context = SP.ClientContext.get_current();
//    var user = context.get_web().get_currentUser();

//    // This code runs when the DOM is ready and creates a context object which is needed to use the SharePoint object model
//    $(document).ready(function () {
//        getUserName();
//    });

//    // This function prepares, loads, and then executes a SharePoint query to get the current users information
//    function getUserName() {
//        context.load(user);
//        context.executeQueryAsync(onGetUserNameSuccess, onGetUserNameFail);
//    }

//    // This function is executed if the above call is successful
//    // It replaces the contents of the 'message' element with the user name
//    function onGetUserNameSuccess() {
//        $('#message').text('Hello ' + user.get_title());
//    }

//    // This function is executed if the above call fails
//    function onGetUserNameFail(sender, args) {
//        alert('Failed to get user name. Error:' + args.get_message());
//    }
//}


//function documentQuery() {
//    var ListId = GetUrlKeyValue("SPListId");
//    var HostUrl = GetUrlKeyValue("SPHostUrl");
//    //var contextToken = 
//    //TokenHelper.GetContextTokenFromRequest(Page.Request);


//    var url;
//    var ctx;
//    var oLibDocs;


//    if (ListId != "") {
//        //Temp variant
//        url = window.location.protocol + "//" + window.location.host + _spPageContextInfo.siteServerRelativeUrl;
//        //;
//        ctx = new SP.ClientContext(url);
//        oLibDocs = ctx.get_web().get_lists().getById(ListId);
//    } else {
//        url = window.location.protocol + "//" + window.location.host + _spPageContextInfo.siteServerRelativeUrl;
//        ctx = new SP.ClientContext(url);
//        oLibDocs = ctx.get_web().get_lists().getByTitle("tmp2");
//    }


//    var caml = SP.CamlQuery.createAllItemsQuery();
//    caml.set_viewXml("<View Scope='All'><Query></Query></View>");
//    this.allDocumentsCol = oLibDocs.getItems(caml);
//    ctx.load(this.allDocumentsCol, "Include(FileLeafRef, ServerUrl, FSObjType )");
//    ctx.executeQueryAsync(Function.createDelegate(this, this.onSucceededCallback), Function.createDelegate(this, this.onFailedCallback));
//}

//function onSucceededCallback(sender, args) {
//    var libList = "";
//    var ListEnumerator = this.allDocumentsCol.getEnumerator();

//    while (ListEnumerator.moveNext()) {
//        var currentItem = ListEnumerator.get_current();
//        var currentItemURL = _spPageContextInfo.webServerRelativeUrl + currentItem.get_item('ServerUrl');
//        var currentItemType = currentItem.get_item('FSObjType');
//        libList += currentItem.get_item('FileLeafRef') + ' : ' + currentItemType + '\n';
//    }
//    alert(libList);
//}

//function onFailedCallback(sender, args) {
//    alert("failed. Message:" + args.get_message());

//}