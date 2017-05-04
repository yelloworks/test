'use strict';

//ExecuteOrDelayUntilScriptLoaded(initializePage, "sp.js");

angular.module('aps', ['toaster', "ngAnimate", "ui.bootstrap"]);

/*
//angular.module('aps').controller('testCtrl', function($scope,$log) {
    
//    var ctx;  
//    var appCtxSite;  
//    var contentTypeCollection;  
//    var contentType;  
//    var hostWebUrl;
//    var appWebUrl;
//    var contentTypeName;  
//    var ContentTypeID;  
//    var ContentTypeEnumerator;
//    var web;

//    $scope.start = function () {
//        // debugger;  
//        //// Get the URI decoded URLs.  
//        hostWebUrl = decodeURIComponent(manageQueryStringParameter('SPHostUrl'));
//        appWebUrl = decodeURIComponent(manageQueryStringParameter('SPAppWebUrl'));
//        //calling the getHostWeb method in ready function to get content type on when page is ready  
//        getHostWeb();
//    };

//    function getHostWeb() {
//        //get current app web context  


//        ctx = new SP.ClientContext(appWebUrl);

//       // ctx = new SP.ClientContext.get_current();
//        //var factory = new SP.ProxyWebRequestExecutorFactory(appWebUrl);
//        //ctx.set_webRequestExecutorFactory(factory);



//        //get current host web context  
//        appCtxSite = new SP.AppContextSite(ctx, hostWebUrl);
//        //get current host web  
//        if (ctx != undefined && ctx != null) {
//            web = appCtxSite.get_web();
//        }
//        //// .load() tells CSOM to load the properties of this object  
//        ctx.load(web);
//        ctx.executeQueryAsync(getContentTypeCollection, onQueryFailed);
//    }

//    function manageQueryStringParameter(paramToRetrieve) {
//        var params = document.URL.split("?")[1].split("&");
//        var strParams = "";
//        for (var i = 0; i < params.length; i = i + 1) {
//            var singleParam = params[i].split("=");
//            if (singleParam[0] == paramToRetrieve) {
//                return singleParam[1];
//            }
//        }
//    }

//    function getContentTypeCollection() {
//        //Get all content types from current app host web  
//        contentTypeCollection = web.get_contentTypes();
//        //load the content type collection  
//        ctx.load(contentTypeCollection);
//        ctx.executeQueryAsync(getallContentType, onQueryFailed);
//    }

//    function getallContentType() {
//        ContentTypeEnumerator = contentTypeCollection.getEnumerator();
//        var count = contentTypeCollection.get_count();
//        if (count > 0) {
//            //Get content type one by one  
//            while (ContentTypeEnumerator.moveNext()) {
//                contentType = ContentTypeEnumerator.get_current();
//                contentTypeName = contentType.get_name();
//                $log.log(contentTypeName);
//            }
//        }
//    }

//    function onQueryFailed(sender, args) {
//        alert('Request failed. ' + args.get_message() + '\n' + args.get_stackTrace());
//    }



//});

*/


////Paste
/*
angular.module('aps')
    .controller('testCtrl',
        function($scope, $log) {

            function copyOrMoveFile(url, fileId, sourceLibrary, destLibrary, moveFile) {
                var ctx = new SP.ClientContext(url);
                var web = ctx.get_web();
                var currentLib = web.get_lists().getById(sourceLibrary);
                // getListTitle(url, sourceLibrary);


                var item = currentLib.getItemById(fileId);
                var file = item.get_file();


                ctx.load(currentLib);
                ctx.load(file);
                ctx.executeQueryAsync(
                    function (sender, args) {
                        if (file != null) {
                            // var webUrl = ctx.get_web().get_serverRelativeUrl();
                            var title = currentLib.get_title();
                            var destFileUrl = url + '/' + destLibrary + '/' + file.get_name();                            
                            moveFile
                                ? file.moveTo(destFileUrl, SP.MoveOperations.overwrite)
                                : file.copyTo(destFileUrl, SP.MoveOperations.overwrite);    ////для идиота, тут копирование выше перемещение

                            ctx.executeQueryAsync(
                            function (sender, args) {
                                alert("File copied.");
                            },
                                function (sender, args) {
                                    alert("Error copying the file.");
                                }
                             );
                        }
                        else {
                            alert("404 FILE NOT FOUND!!!");
                        }
                    },
                    function (sender, args) {
                        alert("Error while getting the file.");
                    }
                );
            }


            function getListTitle(url, listId) {
                var currentcontext = new SP.ClientContext(url);
                var currentweb = currentcontext.get_web();
                var listCollection = currentweb.get_lists().getById(listId);;
                currentcontext.load(listCollection);
                currentcontext.executeQueryAsync(function (sender, args) {
                    //var listEnumerator = listCollection.getEnumerator();
                    //var list = listEnumerator.get_current();
                    var title = listCollection.get_name();
                    
                    var path = listCollection.get_rootFolder();
                        var tmpurl = path.name;
                    },
                    function (sender, args) {
                        
                    });
            };


            $scope.start = function() {

                var someTmp = GetUrlKeyValue("SPAppWebUrl");
                var it = someTmp.split('/');
                var itnew = it.slice(0, it.length - 1);
                var url = itnew.join('/');

                copyOrMoveFile(url,4, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 'Shared Documents/tryTo', false);
            };

        });

*/


///Add folder
/*
angular.module('aps')
    .controller('testCtrl',
        function($scope, $log) {


            var createFolder = function(url, listId, folderUrl,success,error)
            {
                var ctx = new SP.ClientContext(url);
                var list = ctx.get_web().get_lists().getById(listId);
                var createFolderInternal = function(parentFolder,folderUrl,success,error)
                {
                    var ctx = parentFolder.get_context();
                    var folderNames = folderUrl.split('/');
                    var folderName = folderNames[0];
                    var curFolder = parentFolder.get_folders().add(folderName);
                    ctx.load(curFolder);
                    ctx.executeQueryAsync(
                      function () {
                          if (folderNames.length > 1)
                          {
                              var subFolderUrl = folderNames.slice(1,folderNames.length).join('/');
                              createFolderInternal(curFolder, subFolderUrl,success,error);
                          }  
                          success(curFolder);
                      }, 
                      error);
                };
                createFolderInternal(list.get_rootFolder(), folderUrl,success,error);
            };

                $scope.start = function () {

                    var someTmp = GetUrlKeyValue("SPAppWebUrl");
                    var it = someTmp.split('/');
                    var itnew = it.slice(0, it.length - 1);
                    var url = itnew.join('/');


                    createFolder(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                        '',
                        function(folder) {
                            $log.log(String.format("Folder '{0}' has been created", folder.get_name()));
                        },
                        function(sender, args) {
                            $log.log(args.get_message());
                        });


                };
        });
*/


/*
angular.module('aps')
    .controller('testCtrl',
        function($scope, $log) {

            function GetFolders()
            {
                var context = new SP.ClientContext.get_current();
                var web = context.get_web();
                var list = web.get_lists().getByTitle('DocumentLibraryName');
                var query = SP.CamlQuery.createAllFoldersQuery();
                allItems = list.getItems(query);
                context.load(allItems);
                context.executeQueryAsync(Function.createDelegate(this, this.success), Function.createDelegate(this, this.failed));
            }
            function success()
            {
                var FolderNames = "";
                var ListEnumerator = this.allItems.getEnumerator();
                while(ListEnumerator.moveNext())
                {
                    var currentItem = ListEnumerator.get_current();
                    var _contentType = currentItem.get_fileSystemObjectType();
                    if(currentItem.get_fileSystemObjectType() == '1')
                    {
                        FolderNames  += currentItem.get_item('Title')+ "\n";
                    }
                }
                alert(FolderNames);
            }
            function failed(sender, args)
            {
                alert(“failed. Message:” + args.get_message());
            }


            $scope.start = function () {

                var someTmp = GetUrlKeyValue("SPAppWebUrl");
                var it = someTmp.split('/');
                var itnew = it.slice(0, it.length - 1);
                var url = itnew.join('/');


                createFolder(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                    'New Folder',
                    function (folder) {
                        $log.log(String.format("Folder '{0}' has been created", folder.get_name()));
                    },
                    function (sender, args) {
                        $log.log(args.get_message());
                    });


            };

        });







        */




///Copy
angular.module('aps')
    .controller('testCtrl',
        function ($scope, $log, $q, $timeout) {

            var allDocumentsCol = "";
            var url = "";
            var listId = "";
            var relativeUrl = "";
            var destenationRelUrl = "";
            var destenationListId = "";
            var moveItem;
            var rootFolder;


            $scope.CopyOrMove = function(itemUrl, sourceListId, sourceRelativeUrl, soutceItemId, destRelativeUrl, destListId, objectType, move) {
                url = itemUrl;
                listId = sourceListId;
                relativeUrl = sourceRelativeUrl;
                destenationListId = destListId; //'{e9af8f1f-dc7c-4869-ba66-77daa1080c33}'; //временно нацелен на temp
                destenationRelUrl = destRelativeUrl;  //"temp/";
                moveItem = move;

                if (objectType == 0) {
                    copyOrMoveFile(soutceItemId, destenationRelUrl);
                } else {
                copyFolder();   
                }                    
            };


            function copyFolder() {
                var ctx = new SP.ClientContext(url);
                var oLibDocs = ctx.get_web().get_lists().getById(listId);
             
                var caml = SP.CamlQuery.createAllItemsQuery();
                allDocumentsCol = "";
                caml.set_viewXml("<View Scope='RecursiveAll'><Query><Where><Eq><FieldRef Name='FSObjType' /><Value Type='Integer'>0</Value></Eq></Where></Query></View>");
                caml.set_folderServerRelativeUrl(relativeUrl);
                allDocumentsCol = oLibDocs.getItems(caml);

                rootFolder = oLibDocs.get_rootFolder();
                ctx.load(rootFolder);

                ctx.load(allDocumentsCol, "Include(FileLeafRef, ServerUrl, FSObjType, FileRef, FileDirRef, ID, GUID )");
                ctx.executeQueryAsync(Function.createDelegate($scope, $scope.succeeded),
                    Function.createDelegate($scope, $scope.failed));
            }
/*
            var createFolder = function (listId, folderUrl, success, error) {
                var deferred = $q.defer();
                var ctx = new SP.ClientContext(url);
                var list = ctx.get_web().get_lists().getById(listId);
                var createFolderInternal = function (parentFolder, folderUrl, success, error) {
                    var ctx = parentFolder.get_context();
                    var curFolder = parentFolder.get_folders().add(folderName);
                    var curFolder = parentFolder;
                    ctx.load(curFolder);
                    ctx.executeQueryAsync(
                            function() {
                                if (folderNames.length > 1) {
                                    var subFolderUrl = folderNames
                                        .slice(1, folderNames.length)
                                        .join('/'); //отрезать 1й кусок пути
                                    createFolderInternal(curFolder, subFolderUrl, success, error);
                                }
                                success(curFolder);
                                deferred.resolve();
                            },
                            function(sender, args) {
                                error(sender, args);
                                deferred.reject(sender, args);
                            }
                        );

                };
                createFolderInternal(list.get_rootFolder(), folderUrl, success, error);
               // deferred.notify(a,b); 
                return deferred.promise;
            };
*/
            function deleteItem(itemUrl, itemListId, itemId) {
                var ctx = new SP.ClientContext(itemUrl);
                var list = ctx.get_web().get_lists().getById(itemListId);
                var item = list.getItemById(itemId);
                item.deleteObject();
                ctx.executeQueryAsync(
                    function () {
                        $log.log("delete success");
                    },
                    function(sender, args) {
                        $log.log(args.get_message());
                    }
                );

            }

            var createFolder = function (listId, folderUrl, success, error, currentItemId, destenationRelUrl) {
                var deferred = $q.defer();
                var ctx = new SP.ClientContext(url);
                var list = ctx.get_web().get_lists().getById(listId);
                var createFolderInternal = function (parentFolder, folderUrl, success, error) {
                    var ctx = parentFolder.get_context();
                    var curFolder = parentFolder;
                    var folderNames = folderUrl.split('/');
                    folderNames.forEach(function(item, i, arr) {
                        curFolder = curFolder.get_folders().add(folderNames[i]);
                    });
                    ctx.load(curFolder);
                    ctx.executeQueryAsync(
                            function () {
                                success(curFolder);
                                var args = [currentItemId, folderUrl, destenationRelUrl];
                                deferred.resolve(args);
                            },
                            function (sender, args) {
                                error(sender, args);
                                deferred.reject(sender, args);
                            }
                        );
                };
                createFolderInternal(list.get_rootFolder(), folderUrl, success, error);
                return deferred.promise;
            };

            $scope.succeeded = function onSucceededCallback(sender, args) {
                //var libList = "";
                var listEnumerator = allDocumentsCol.getEnumerator();
                while (listEnumerator.moveNext()) {
                    var currentItem = listEnumerator.get_current();

                    var currentItemFileDirRef = currentItem.get_item('FileDirRef');
                    var currentItemId = currentItem.get_item('ID');
/*
                    //var currentItemList = currentItem.get_item('List');

                    //var currentItemURL = _spPageContextInfo
                    //    .webServerRelativeUrl +
                    //    currentItem.get_item('ServerUrl');
                    //var currentItemType = currentItem.get_item('FSObjType');
                    //var currentItemFileRef = currentItem.get_item('FileRef');

                    //var currentItemGUID = currentItem.get_item('GUID');
                    //var guid = currentItemGUID.toString("B");

                   // libList += currentItem.get_item('FileLeafRef') + ' : ' + currentItemType + '\n';

   */
                    var tmpVal3 = rootFolder.get_rootFolder();

                    var tmpValue1 = currentItem.get_item('ServerUrl');
                   // var tmpValue2 = currentItem.get_item('RootFolder');

                    var tmpPath = relativeUrl.split('/');
                    var cutPath = "/" + tmpPath.slice(0, tmpPath.length - 1).join('/') + "/";

                    var relUrlArray = destenationRelUrl.split('/');
                    var destUrl = relUrlArray.slice(1, relUrlArray.length).join('/');
                    var newFolder = destUrl + currentItemFileDirRef.replace(cutPath, "");
                    var tmpValue = createFolder(destenationListId,
                            newFolder,
                            function(folder) {

                                $log.log(String.format("Folder '{0}' has been created", folder.get_name()));
                            },
                            function(sender, args) {
                                $log.log(args.get_message());
                            },
                            currentItemId,
                            destenationRelUrl)
                        .then(function(args) {
                            copyOrMoveFile(args[0], args[2] + "/" + args[1]);
                });
                    
                    $log.log(currentItem.get_item('FileLeafRef') + currentItemFileDirRef);

                    //$scope.fileItems.push(
                    //{
                    //    "name": currentItem.get_item('FileLeafRef'),
                    //    "type": currentItemType,
                    //    "path": currentItemURL,
                    //    "FileRef": currentItemFileRef,
                    //    "FileDirRef": currentItemFileDirRef,
                    //    "GUID": guid,
                    //    "ID": currentItemID

                    //});
                }
                $scope.$apply();
            }

            $scope.failed = function onFailedCallback(sender, args) {
                alert("failed. Message:" + args.get_message());

            }


            //Модификации с промисами
            function copyOrMoveFile(fileId, destanationPath) {
                var deferred = $q.defer();
                var ctx = new SP.ClientContext(url);
                var web = ctx.get_web();
                var currentLib = web.get_lists().getById(listId);
                var item = currentLib.getItemById(fileId);
                var file = item.get_file();
                ctx.load(file);
                ctx.executeQueryAsync(
                    function (sender, args) {
                        if (file != null) {
                            var destFileUrl = url + '/' + destanationPath +'/'+ file.get_name();                            
                            moveItem
                                ? file.moveTo(destFileUrl, SP.MoveOperations.overwrite)
                                : file.copyTo(destFileUrl, SP.MoveOperations.overwrite);    ////для идиота, тут копирование выше перемещение

                            ctx.executeQueryAsync(
                            function (sender, args) {                                
                                alert("File copied.");
                                deferred.resolve();
                            },
                                function (sender, args) {
                                    alert("Error copying the file.");
                                    deferred.reject(sender, args);
                                }
                             );
                        }
                        else {
                            alert("404 FILE NOT FOUND!!!");
                            deferred.reject(sender, args);
                        }
                    },
                    function (sender, args) {
                        alert("Error while getting the file.");
                        deferred.reject(sender, args);
                    }
                );
                return deferred.promise;
            }

            function getListTitle(url, listId) {
                var currentcontext = new SP.ClientContext(url);
                var currentweb = currentcontext.get_web();
                var listCollection = currentweb.get_lists().getById(listId);;
                currentcontext.load(listCollection);
                currentcontext.executeQueryAsync(function (sender, args) {
                    var listEnumerator = listCollection.getEnumerator();
                    var list = listEnumerator.get_current();
                    var title = listCollection.get_name();
                    
                    var path = listCollection.get_rootFolder();
                        var tmpurl = path.name;
                    },
                    function (sender, args) {
                        
                    });
            };

            function getSiteRootUrl(url) {
                var deferred = $q.defer();
                var ctx = new SP.ClientContext(url);
                var web = ctx.get_web();
                ctx.load(web);
                ctx.executeQueryAsync(function(sender, args) {
                    deferred.resolve(web.get_serverRelativeUrl());
                }, function(sender, args) {
                    deferred.reject(sender, args);
                });
                return deferred.promise;
            };

            $scope.start = function() {

                var someTmp = GetUrlKeyValue("SPAppWebUrl");
                var it = someTmp.split('/');
                var itnew = it.slice(0, it.length - 1);
                var url = itnew.join('/');

                //copyOrMoveFile(url,4, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 'Shared Documents/tryTo', false);


                $scope.CopyOrMove(url,
                    '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                    'Shared Documents/test11',
                    36,
                    'temp',
                    '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                    0,
                    false); // Указывается вместе с именем копируемой папки */

              /*  $scope.CopyOrMove(url,
                    '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                    'Shared Documents/test11',
                    3,
                    'temp/',
                    '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                    1,
                    false); // Указывается вместе с именем копируемой папки */
            };

            $scope.start2 = function () {

                var someTmp = GetUrlKeyValue("SPAppWebUrl");
                var it = someTmp.split('/');
                var itnew = it.slice(0, it.length - 1);
                var url = itnew.join('/');

                //copyOrMoveFile(url,4, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 'Shared Documents/tryTo', false);


              /*  $scope.CopyOrMove(url,
                    '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                    'Shared Documents/test11',
                    11,
                    'temp/',
                    '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                    0,
                    false); // Указывается вместе с именем копируемой папки */

                $scope.CopyOrMove(url,
                    '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                    'Shared Documents/test11',
                    3,
                    'temp',
                    '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                    1,
                    false); // Указывается вместе с именем копируемой папки */
            };

            $scope.start3 = function () {

                var someTmp = GetUrlKeyValue("SPAppWebUrl");
                var it = someTmp.split('/');
                var itnew = it.slice(0, it.length - 1);
                var url = itnew.join('/');

                deleteItem(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 2);

            };

        });

///CheckIn
angular.module('aps')
    .controller('testCheckinCtrl',
        function($scope, $log, $q) {

            function checkIn(url, listId, relativeUrl, itemId, objectType) {

                if (objectType == 0) {
                    checkInFile(url, listId, itemId);
                } else {
                    folderOperation(url, listId, relativeUrl, checkInFile);
                }             
            }
            function checkOut(url, listId, relativeUrl, itemId, objectType) {
                if (objectType == 0) {
                    checkOutFile(url, listId, itemId);
                } else {
                    folderOperation(url, listId, relativeUrl, checkOutFile);
                }
            }
            function undoCheckOut(url, listId, relativeUrl, itemId, objectType) {
                if (objectType == 0) {
                    undoCheckOutFile(url, listId, itemId);
                } else {
                    folderOperation(url, listId, relativeUrl, undoCheckOutFile);
                }
            }

            function folderOperation(url, listId, relativeUrl, action) {
                var ctx = new SP.ClientContext(url);
                var list = ctx.get_web().get_lists().getById(listId);
                var caml = SP.CamlQuery.createAllItemsQuery();
                var  allDocumentsCol = "";
                caml.set_viewXml("<View Scope='RecursiveAll'><Query><Where><Eq><FieldRef Name='FSObjType' /><Value Type='Integer'>0</Value></Eq></Where></Query></View>");
                caml.set_folderServerRelativeUrl(relativeUrl);
                allDocumentsCol = list.getItems(caml);
                ctx.load(allDocumentsCol, "Include(FileLeafRef, ServerUrl, FSObjType, FileRef, FileDirRef, ID, GUID )");
                ctx.executeQueryAsync(function(sender,args) {
                    var listEnumerator = allDocumentsCol.getEnumerator();
                    while (listEnumerator.moveNext()) {
                        var currentItem = listEnumerator.get_current();
                        action(url, listId, currentItem.get_item('ID'));
                        }
                    },
                    function() {
                        $log.log("Get FILES ERRRORR");
                    });
            }

            function checkInFile(url, listId, itemId) {
                var ctx = new SP.ClientContext(url);
                var list = ctx.get_web().get_lists().getById(listId);
                var item = list.getItemById(itemId);
                //var test = Microsoft.Office.RecordsManagement.RecordsRepository.Records.IsRecord(item);
                var file = item.get_file();
                var listItem = file.get_listItemAllFields();
                listItem.update();
                file.checkIn("Text");
                file.publish();               
                ctx.executeQueryAsync(function (sender, args) {
                  //  var value = list.get_enableVersioning();
                    $log.log("file checkedIn");
                   // $log.log(value);    
                    },
                    function(sender, args) {
                        $log.log(args.get_message());
                       // var value = list.get_enableVersioning();
                       // $log.log(value);
                    });
            }

            function checkOutFile(url, listId, itemId) {
                var ctx = new SP.ClientContext(url);
                var list = ctx.get_web().get_lists().getById(listId);
                var item = list.getItemById(itemId);
                var file = item.get_file();
                file.checkOut();
                ctx.executeQueryAsync(function (sender, args) {
                    $log.log(name.get_loginName());
                    $log.log("file checkedOut");
                },
                    function (sender, args) {
                        $log.log(args.get_message());
                    });

            }

            function undoCheckOutFile(url, listId, itemId) {
                var ctx = new SP.ClientContext(url);
                var list = ctx.get_web().get_lists().getById(listId);
                var item = list.getItemById(itemId);
                var file = item.get_file();
                var name = file.get_checkedOutByUser();
                ctx.load(name);
                $log.log(name);               
                ctx.executeQueryAsync(function(sender, args) {
                        $log.log(name.get_loginName());                      
                        file.undoCheckOut();
                        $log.log("file undoCheckOut");
                        ctx.executeQueryAsync(function () { }, function (sender, args) { $log.log(args.get_message()); });
                    },
                    function(sender, args) {
                        $log.log(args.get_message());
                    });
            }

            ///Пока не нужен но вполне готов
            function checkInListCheking(url, listId) {
                var deferred = $q.defer();
                var ctx = new SP.ClientContext(url);
                var list = ctx.get_web().get_lists().getById(listId);
                ctx.load(list);
                ctx.executeQueryAsync(function(sender, args) {
                        var value = list.get_enableVersioning();
                        if (!value) {
                            list.set_enableVersioning(true);
                            list.set_enableMinorVersions(true);
                            list.update();
                            ctx.load(list);
                            ctx.executeQueryAsync(function(sender, args) {
                                    $log.log("Done");
                                    deferred.resolve();
                                },
                                function(sender, args) {
                                    $log.log(args.get_message());
                                    deferred.reject();
                                });
                        } else {
                            deferred.resolve();
                        }
                    },
                    function(sender, args) {

                    });
                return deferred.promise;
            }

            function getFileStatus(url, listId, itemId) {
                var ctx = new SP.ClientContext(url);
                var list = ctx.get_web().get_lists().getById(listId);
                var item = list.getItemById(itemId);
                var file = item.get_file();
                ctx.load(file);
                ctx.executeQueryAsync(function() {
                    $log.log(file.get_checkOutType());
                }, function (sender, args) { $log.log(args.get_message()) });
            }


            function deleteItem(itemUrl, itemListId, itemId) {
                var ctx = new SP.ClientContext(itemUrl);
                var list = ctx.get_web().get_lists().getById(itemListId);
                var item = list.getItemById(itemId);
                item.deleteObject();
                ctx.executeQueryAsync(
                    function () {
                        $log.log("delete success");
                    },
                    function (sender, args) {
                        $log.log(args.get_message());
                    }
                );

            }


            $scope.start = function () {

                var someTmp = GetUrlKeyValue("SPAppWebUrl");
                var it = someTmp.split('/');
                var itnew = it.slice(0, it.length - 1);
                var url = itnew.join('/');

               // checkInListCheking(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}');


                //copyOrMoveFile(url,4, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 'Shared Documents/tryTo', false);


                checkIn(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "", 41, 0); // file

               // checkIn(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "Shared Documents/test11", 3, 1);
/*
                $scope.CopyOrMove(url,
                    '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                    'Shared Documents/test11',
                    36,
                    'temp',
                    '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                    0,
                    false); // Указывается вместе с именем копируемой папки */
/*
                 $scope.CopyOrMove(url,
                      '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                      'Shared Documents/test11',
                      3,
                      'temp/',
                      '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                      1,
                      false); // Указывается вместе с именем копируемой папки */
            };

            $scope.start2 = function () {

                var someTmp = GetUrlKeyValue("SPAppWebUrl");
                var it = someTmp.split('/');
                var itnew = it.slice(0, it.length - 1);
                var url = itnew.join('/');

                //copyOrMoveFile(url,4, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 'Shared Documents/tryTo', false);




                checkOut(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "", 41, 0); //file

             //   checkOut(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "Shared Documents/test11", 3, 1); //folder

                /*
                                $scope.CopyOrMove(url,
                                    '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                    'Shared Documents/test11',
                                    36,
                                    'temp',
                                    '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                    0,
                                    false); // Указывается вместе с именем копируемой папки */
                /*
                                 $scope.CopyOrMove(url,
                                      '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                      'Shared Documents/test11',
                                      3,
                                      'temp/',
                                      '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                      1,
                                      false); // Указывается вместе с именем копируемой папки */
            };

            $scope.start3 = function () {

                var someTmp = GetUrlKeyValue("SPAppWebUrl");
                var it = someTmp.split('/');
                var itnew = it.slice(0, it.length - 1);
                var url = itnew.join('/');

                //copyOrMoveFile(url,4, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 'Shared Documents/tryTo', false);

                getFileStatus(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 41);


                // checkOut(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "", 41, 0); //file

                //   checkOut(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "Shared Documents/test11", 3, 1); //folder

                /*
                                $scope.CopyOrMove(url,
                                    '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                    'Shared Documents/test11',
                                    36,
                                    'temp',
                                    '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                    0,
                                    false); // Указывается вместе с именем копируемой папки */
                /*
                                 $scope.CopyOrMove(url,
                                      '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                      'Shared Documents/test11',
                                      3,
                                      'temp/',
                                      '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                      1,
                                      false); // Указывается вместе с именем копируемой папки */
            };

        });

///Download/Upload
angular.module('aps')
    .controller('testDownload',
     function($scope, $log) {

         function downloadFile(url, listId, itemId) {
             var ctx = new SP.ClientContext(url);
             var web = ctx.get_web();
             ctx.load(web);
             var list = ctx.get_web().get_lists().getById(listId);
             var item = list.getItemById(itemId);
             var file = item.get_file();
             ctx.load(file);
             ctx.executeQueryAsync(function(sender, args) {
                 var path = file.get_serverRelativeUrl();
                     var webUrl = web.get_url();
                 var webRootFolder = web.get_serverRelativeUrl();
                 var clearPath = path.replace(webRootFolder, "");
                 $log.log(clearPath);
                 $log.log(url + clearPath);
                 window.location.href = url + "/_layouts/download.aspx?SourceUrl=" + url + clearPath;
                 },
                 function(sender, args) {
                     $log.log(args.get_message());

                 });

         };

         var input = document.getElementById("fileinput");
         input.addEventListener('change', function (e) {
             var url = getUrl();
             var listId = '{38405ebf-043b-4ce5-9440-744c20169cc0}';
             var targetItemId = 3;
             var files = e.target.files;
             for (var i = 0; i < files.length; i++) {
                 upload(input.files[i], url, listId, targetItemId);
             }

         });

         //function CreateFile(url, listId, taargetItemId) {
         //    // Ensure the HTML5 FileReader API is supported       

         //    if (window.FileReader) {
         //        var input = document.getElementById("fileinput");
         //        if (input) {
         //            for (var i = 0; i < input.files.length; i++) {
         //                upload(input.files[i], url, listId, taargetItemId);
         //            }        
         //        }
         //    }
         //    else {
         //        alert("The HTML5 FileSystem APIs are not fully supported in this browser.");
         //    }
         //}

         function upload(file, url, listId, targetItemId) {
             var fr = new FileReader();
             fr.onload = function () {
                 var clientContext = new SP.ClientContext(url);
                 var web = clientContext.get_web();
                 var list = web.get_lists().getById(listId);

                 var fileCreateInfo = new SP.FileCreationInformation();
                 fileCreateInfo.set_url(file.name);
                 fileCreateInfo.set_overwrite(true);
                 fileCreateInfo.set_content(new SP.Base64EncodedByteArray());

                 var arr = convertDataURIToBinary(fr.result);
                 for (var i = 0; i < arr.length; ++i) {
                     fileCreateInfo.get_content().append(arr[i]);
                 }

                 if (targetItemId != "") {
                     fr.newFile = list.getItemById(targetItemId).get_folder().get_files().add(fileCreateInfo);
                 } else {
                     fr.newFile = list.get_rootFolder().get_files().add(fileCreateInfo);
                 };

                 clientContext.load(fr.newFile);
                 clientContext.executeQueryAsync(function () { $log.log("Upload sucesess") }, function (sender, args) { $log.log(args.get_message()) });
             };
             fr.readAsDataURL(file);         
         };


         // Callback function for onload event of FileReader
         function receivedBinary() {

             var clientContext = new SP.ClientContext(getUrl());
             var web = clientContext.get_web();
             var list = web.get_lists().getByTitle("Documents");

             var fileCreateInfo = new SP.FileCreationInformation();
             fileCreateInfo.set_url(file.name);
             fileCreateInfo.set_overwrite(true);
             fileCreateInfo.set_content(new SP.Base64EncodedByteArray());

             // Read the binary contents of the base 64 data URL into a Uint8Array
             // Append the contents of this array to the SP.FileCreationInformation
             var arr = convertDataURIToBinary(fr.result);
             for (var i = 0; i < arr.length; ++i) {
                 fileCreateInfo.get_content().append(arr[i]);
             }

             // Upload the file to the root folder of the document library
             fr.newFile = list.get_rootFolder().get_files().add(fileCreateInfo);

             clientContext.load(fr.newFile);
             clientContext.executeQueryAsync(onSuccess, onFailure);
         }

         function onSuccess() {
             // File successfully uploaded
             alert("Success!");
         }

         function onFailure() {
             // Error occurred
             alert("Request failed: " + arguments[1].get_message());
         }

         // Utility function to remove base64 URL prefix and store base64-encoded string in a Uint8Array
         // Courtesy: https://gist.github.com/borismus/1032746
         function convertDataURIToBinary(dataURI) {
             var BASE64_MARKER = ';base64,';
             var base64Index = dataURI.indexOf(BASE64_MARKER) + BASE64_MARKER.length;
             var base64 = dataURI.substring(base64Index);
             var raw = window.atob(base64);
             var rawLength = raw.length;
             var array = new Uint8Array(new ArrayBuffer(rawLength));

             for (var i = 0; i < rawLength; i++) {
                 array[i] = raw.charCodeAt(i);
             }
             return array;
         }


         function getUrl() {
             var someTmp = GetUrlKeyValue("SPAppWebUrl");
             var it = someTmp.split('/');
             var itnew = it.slice(0, it.length - 1);
             var url = itnew.join('/');
             return url;
         }


         $scope.start = function () {

             var someTmp = GetUrlKeyValue("SPAppWebUrl");
             var it = someTmp.split('/');
             var itnew = it.slice(0, it.length - 1);
             var url = itnew.join('/');

             downloadFile(url, "{ec1fb3ac-eb6b-4ec4-9533-1bc06bbd5e50}", 6);

             // checkInListCheking(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}');


             //copyOrMoveFile(url,4, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 'Shared Documents/tryTo', false);


             //checkIn(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "", 41, 0); // file

             // checkIn(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "Shared Documents/test11", 3, 1);
             /*
                             $scope.CopyOrMove(url,
                                 '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                 'Shared Documents/test11',
                                 36,
                                 'temp',
                                 '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                 0,
                                 false); // Указывается вместе с именем копируемой папки */
             /*
                              $scope.CopyOrMove(url,
                                   '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                   'Shared Documents/test11',
                                   3,
                                   'temp/',
                                   '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                   1,
                                   false); // Указывается вместе с именем копируемой папки */
         };

         $scope.start2 = function () {

             var someTmp = GetUrlKeyValue("SPAppWebUrl");
             var it = someTmp.split('/');
             var itnew = it.slice(0, it.length - 1);
             var url = itnew.join('/');

             //copyOrMoveFile(url,4, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 'Shared Documents/tryTo', false);


             CreateFile(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 3);

             //checkOut(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "", 41, 0); //file

             //   checkOut(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "Shared Documents/test11", 3, 1); //folder

             /*
                             $scope.CopyOrMove(url,
                                 '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                 'Shared Documents/test11',
                                 36,
                                 'temp',
                                 '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                 0,
                                 false); // Указывается вместе с именем копируемой папки */
             /*
                              $scope.CopyOrMove(url,
                                   '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                   'Shared Documents/test11',
                                   3,
                                   'temp/',
                                   '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                   1,
                                   false); // Указывается вместе с именем копируемой папки */
         };

         $scope.start3 = function () {

             var someTmp = GetUrlKeyValue("SPAppWebUrl");
             var it = someTmp.split('/');
             var itnew = it.slice(0, it.length - 1);
             var url = itnew.join('/');

             //copyOrMoveFile(url,4, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 'Shared Documents/tryTo', false);

             getFileStatus(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', 41);


             // checkOut(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "", 41, 0); //file

             //   checkOut(url, '{38405ebf-043b-4ce5-9440-744c20169cc0}', "Shared Documents/test11", 3, 1); //folder

             /*
                             $scope.CopyOrMove(url,
                                 '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                 'Shared Documents/test11',
                                 36,
                                 'temp',
                                 '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                 0,
                                 false); // Указывается вместе с именем копируемой папки */
             /*
                              $scope.CopyOrMove(url,
                                   '{38405ebf-043b-4ce5-9440-744c20169cc0}',
                                   'Shared Documents/test11',
                                   3,
                                   'temp/',
                                   '{e9af8f1f-dc7c-4869-ba66-77daa1080c33}',
                                   1,
                                   false); // Указывается вместе с именем копируемой папки */
         };



     });


angular.module('aps')
    .controller('testToaster',
        function($scope, toaster, $window) {

            $scope.bar = 'Hi';

            $scope.pop = function() {
                /* toaster.success({title: "title", body:"text1"});
                 toaster.error("title", "text2");
                 toaster.pop({type: 'wait', title: "title", body:"text"});*/
                toaster.pop('success', "title", '<ul><li>Render html</li></ul>', 5000, 'trustedHtml');
                /* toaster.pop('error', "title", '<ul><li>Render html</li></ul>', null, 'trustedHtml');
                 toaster.pop('wait', "title", null, null, 'template');
                 toaster.pop('warning', "title", "myTemplate.html", null, 'template');
                 toaster.pop('note', "title", "text");
                 toaster.pop('success', "title", 'Its address is https://google.com.', 5000, 'trustedHtml', function(toaster) {
                     var match = toaster.body.match(/http[s]?:\/\/[^\s]+/);
                     if (match) $window.open(match[0]);
                     return true;
                 });
                 toaster.pop('warning', "Hi ", "{template: 'myTemplateWithData.html', data: 'MyData'}", 15000, 'templateWithData');
                 toaster.pop('warning', "title", 'Bill');*/
            };

            $scope.goToLink = function(toaster) {
                var match = toaster.body.match(/http[s]?:\/\/[^\s]+/);
                if (match) $window.open(match[0]);
                return true;
            };

            $scope.clear = function() {
                toaster.clear();
            };
        });


angular.module('aps')
    .controller('testPermissions',
        function ($scope, $uibModal, $log) {
            $scope.start = function () {
                var modalInstance = $uibModal.open({
                    animation: true,
                    templateUrl: 'folderNameModal.html',
                    controller: 'permissionsModal',
                    controllerAs: '$ctrl'
                });
                modalInstance.result.then(function (folderName) {

                }, function () {
                    $log.info('Modal dismissed at: ' + new Date());
                });
            };
        });
angular.module('Abs')
    .controller('permissionsModal',
        function ($uibModalInstance) {
            var $ctrl = this;
            $ctrl.text = "New Folder";
            $ctrl.editRoles = function() {
                window.location.href = url + "/_layouts/addrole.aspx";
                };
            $ctrl.ok = function () {
                $uibModalInstance.close($ctrl.text);
            };
            $ctrl.cancel = function () {
                $uibModalInstance.dismiss('cancel');
            };
        });




