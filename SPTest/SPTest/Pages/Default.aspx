﻿<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

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
<%--     
    <style >
html,
body {
  padding: 0;
  margin: 0;
  height: 100%;
}
html,
body,
* {
  box-sizing: border-box;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
nav,
section {
  display: block;
}
audio,
canvas,
video {
  display: inline-block;
}
audio:not([controls]) {
  display: none;
}
a:hover,
a:active,
.tile:active {
  outline: 0;
}
sub,
sup {
  position: relative;
  font-size: 75%;
  line-height: 0;
  vertical-align: baseline;
}
sup {
  top: -0.5em;
}
sub {
  bottom: -0.25em;
}
img {
  max-width: 100%;
  height: auto;
  vertical-align: middle;
  border: 0;
}
#map_canvas img,
.google-maps img {
  max-width: none;
}
button,
input,
select,
textarea {
  margin: 0;
  font-size: 100%;
  vertical-align: middle;
}
button,
input {
  line-height: normal;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
label,
select,
button,
input[type="button"],
input[type="reset"],
input[type="submit"],
input[type="radio"],
input[type="checkbox"] {
  cursor: pointer;
}
input[type="search"] {
  box-sizing: content-box;
  appearance: textfield;
}
input[type="search"]::-webkit-search-decoration,
input[type="search"]::-webkit-search-cancel-button {
  -webkit-appearance: none;
}
textarea {
  overflow: auto;
  vertical-align: top;
}
input[type=text]::-ms-clear,
input[type=email]::-ms-clear,
input[type=url]::-ms-clear,
input[type=tel]::-ms-clear,
input[type=number]::-ms-clear,
input[type=time]::-ms-clear {
  display: none;
}
input[type=password]::-ms-reveal {
  display: none;
}
* {
  border-collapse: collapse;
}
a {
  text-decoration: none;
}
@media print {
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  .ir a:after,
  a[href^="javascript:"]:after,
  a[href^="#"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100%;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
}
@font-face {
  font-family: "PT Serif Caption";
  font-style: normal;
  font-weight: 400;
  src: local("Cambria"), local("PT Serif Caption"), local("PTSerif-Caption"), url(https://themes.googleusercontent.com/static/fonts/ptserifcaption/v6/7xkFOeTxxO1GMC1suOUYWWhBabBbEjGd1iRmpyoZukE.woff) format('woff');
}
@font-face {
  font-family: "Open Sans Light";
  font-style: normal;
  font-weight: 300;
  src: local("Segoe UI Light"), local("Open Sans Light"), local("OpenSans-Light"), url(https://themes.googleusercontent.com/static/fonts/opensans/v8/DXI1ORHCpsQm3Vp6mXoaTZ1r3JsPcQLi8jytr04NNhU.woff) format('woff');
}
@font-face {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 400;
  src: local("Segoe UI"), local("Open Sans"), local("OpenSans"), url(https://themes.googleusercontent.com/static/fonts/opensans/v8/K88pR3goAWT7BTt32Z01mz8E0i7KZn-EPnyo3HZu7kw.woff) format('woff');
}
@font-face {
  font-family: "Open Sans Bold";
  font-style: normal;
  font-weight: 700;
  src: local("Segoe UI Bold"), local("Open Sans Bold"), local("OpenSans-Bold"), url(https://themes.googleusercontent.com/static/fonts/opensans/v8/k3k702ZOKiLJc3WVjuplzJ1r3JsPcQLi8jytr04NNhU.woff) format('woff');
}
html {
  font-size: 100%;
}
body {
  font-family: "Segoe UI", "Open Sans", sans-serif, serif;
  font-size: 0.875rem;
  line-height: 1.1;
  font-weight: 400;
  font-style: normal;
}
#font .light {
  font-weight: 300;
  font-style: normal;
}
#font .normal {
  font-weight: 400;
  font-style: normal;
}
#font .bold {
  font-style: normal;
  font-weight: 700;
}
#font .italic {
  font-style: italic;
}
.leader {
  font: 400 2.25rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.sub-leader {
  font: 500 1.875rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.header {
  font: 500 1.5rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.sub-header {
  font: 500 1.125rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.alt-header {
  font: 500 1rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.sub-alt-header {
  font: 500 0.875rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.minor-header {
  font: 500 0.75rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h1 {
  font: 400 2.25rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h2 {
  font: 500 1.875rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h3 {
  font: 500 1.5rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h4 {
  font: 500 1.125rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h5 {
  font: 500 0.875rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h6 {
  font: 500 0.75rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h1,
h2,
h3,
h4,
h5,
h6 {
  margin: .625rem 0;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small {
  font-weight: 400;
  font-size: .7em;
  line-height: 1;
  color: #777;
}
.text-light {
  font-weight: 300;
  font-style: normal;
}
.text-normal {
  font-weight: 400;
  font-style: normal;
}
.text-bold {
  font-style: normal;
  font-weight: 700;
}
.text-italic {
  font-style: italic;
}
.uppercase {
  text-transform: uppercase;
}
.lowercase {
  text-transform: lowercase;
}
.capital {
  text-transform: capitalize;
}
.align-left {
  text-align: left;
}
.align-right {
  text-align: right;
}
.align-center {
  text-align: center;
}
.align-justify {
  text-align: justify;
}
.v-align-top {
  vertical-align: top;
}
.v-align-bottom {
  vertical-align: bottom;
}
.v-align-baseline {
  vertical-align: baseline;
}
.v-align-middle {
  vertical-align: middle;
}
.v-align-sub {
  vertical-align: sub;
}
.v-align-super {
  vertical-align: super;
}
.v-align-top-text {
  vertical-align: text-top;
}
.v-align-bottom-text {
  vertical-align: text-bottom;
}
.text-dashed {
  border: 0;
  border-bottom: 1px gray dashed;
  display: inline;
}
.indent-paragraph:first-letter {
  margin-left: 2.5rem;
}
.text-secondary {
  font-size: 0.75rem;
}
.text-accent,
.text-enlarged {
  font-size: 1.1rem;
}
.text-default {
  font-size: 0.875rem;
}
.text-small {
  font-size: 0.625rem;
}
.text-light {
  font-weight: 300;
}
.text-ellipsis {
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
abbr {
  text-decoration: none;
  border-bottom: 1px #999999 dotted;
  cursor: help;
  display: inline;
}
address {
  font-weight: 400;
  font-style: normal;
  margin: .625rem 0;
}
blockquote {
  margin: .625rem 0;
  padding: 0 0 0 .625rem;
  border-left: 0.25rem #999999 solid;
}
blockquote small {
  color: #999999;
}
blockquote small:before {
  content: "\2014 \00A0";
}
blockquote.place-right {
  border: 0;
  border-right: 4px #999999 solid;
  padding-right: .625rem;
  text-align: right;
}
blockquote.place-right small:before {
  content: "";
}
blockquote.place-right small:after {
  content: " \00A0 \2014";
}
.unstyled-list {
  padding-left: 0;
  list-style: none;
}
.unstyled-list li ul,
.unstyled-list li ol {
  list-style: none;
  padding-left: 1.5625rem;
}
.inline-list {
  list-style: none;
  padding-left: 0;
}
.inline-list li {
  display: inline-block;
  margin-right: .625rem;
}
.inline-list li:last-child {
  margin-right: 0;
}
ul,
ol {
  margin-left: .3125rem;
}
ul li,
ol li {
  line-height: 1.25rem;
}
ul li ul,
ol li ul,
ul li ol,
ol li ol {
  padding-left: 1.5625rem;
}
dl dt,
dl dd {
  line-height: 1.25rem;
}
dl dt {
  font-style: normal;
  font-weight: 700;
}
dl dd {
  margin-left: .9375rem;
}
dl.horizontal dt {
  float: left;
  width: 10rem;
  overflow: hidden;
  clear: left;
  text-align: right;
  text-overflow: ellipsis;
  white-space: nowrap;
}
dl.horizontal dd {
  margin-left: 11.25rem;
}
a {
  color: #2086bf;
}
a:visited {
  color: #2086bf;
}
hr {
  border: 0;
  height: 2px;
  background-color: #88b9e3;
}
hr.thin {
  height: 1px;
}
hr.fat {
  height: 3px;
}
.tag {
  display: inline-block;
  line-height: 1.1;
  font-size: 80%;
  padding: 1px 4px 2px;
  background-color: #eeeeee;
  border-radius: 2px;
  color: #1d1d1d;
  vertical-align: middle;
}
.tag.success {
  background-color: #60a917;
  color: #ffffff;
}
.tag.alert {
  background-color: #ce352c;
  color: #ffffff;
}
.tag.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.tag.warning {
  background-color: #fa6800;
  color: #ffffff;
}
a.tag {
  text-decoration: underline;
  cursor: pointer;
}
.container {
  width: 960px;
  margin: 0 auto;
}
.fixed-top,
.fixed-bottom {
  position: fixed;
  left: 0;
  right: 0;
  z-index: 1030;
}
.fixed-top {
  top: 0;
  bottom: auto;
}
.fixed-bottom {
  top: auto;
  bottom: 0;
}
.pos-abs {
  position: absolute !important;
}
.pos-rel {
  position: relative !important;
}
.pos-fix {
  position: fixed !important;
}
.dropdown-toggle {
  position: relative;
  cursor: pointer;
}
.dropdown-toggle:before {
  display: block;
  position: absolute;
  vertical-align: middle;
  color: transparent;
  font-size: 0;
  content: "";
  height: 5px;
  width: 5px;
  background-color: transparent;
  border-left: 1px solid;
  border-bottom: 1px solid;
  border-color: #1d1d1d;
  top: 50%;
  left: 100%;
  margin-left: -1rem;
  margin-top: -0.1625rem;
  z-index: 2;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.dropdown-toggle.drop-marker-light:before {
  border-color: #ffffff;
}
*.dropdown-toggle {
  padding-right: 1.625rem;
}
.flush-list {
  padding: 0;
  margin: 0;
  list-style: none inside none;
}
.shadow {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.before-shadow:before {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.after-shadow:after {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.block-shadow {
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.block-shadow-success {
  box-shadow: 0 0 25px 0 rgba(0, 128, 0, 0.7);
}
.block-shadow-error {
  box-shadow: 0 0 25px 0 rgba(128, 0, 0, 0.7);
}
.block-shadow-danger {
  box-shadow: 0 0 25px 0 rgba(128, 0, 0, 0.7);
}
.block-shadow-warning {
  box-shadow: 0 0 25px 0 rgba(255, 165, 0, 0.7);
}
.block-shadow-info {
  box-shadow: 0 0 25px 0 rgba(89, 205, 226, 0.7);
}
.block-shadow-impact {
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.bottom-shadow {
  box-shadow: -1px 6px 6px -6px rgba(0, 0, 0, 0.35);
}
.text-shadow {
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.before-text-shadow:before {
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.after-text-shadow:after {
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.no-shadow {
  box-shadow: none !important;
}
.full-size {
  width: 100% !important;
}
.block {
  display: block !important;
}
.inline-block {
  display: inline-block !important;
}
.no-display {
  display: none !important;
}
.no-margin {
  margin: 0 !important;
}
.no-margin-right {
  margin-right: 0 !important;
}
.no-margin-left {
  margin-left: 0 !important;
}
.no-margin-top {
  margin-top: 0 !important;
}
.no-margin-bottom {
  margin-bottom: 0 !important;
}
.no-padding {
  padding: 0 !important;
}
.no-padding-left {
  padding-left: 0 !important;
}
.no-padding-right {
  padding-right: 0 !important;
}
.no-padding-top {
  padding-top: 0 !important;
}
.no-padding-bottom {
  padding-bottom: 0 !important;
}
.no-float {
  float: none !important;
}
.no-visible {
  visibility: hidden !important;
}
.no-border {
  border: 0 !important;
}
.no-overflow {
  overflow: hidden !important;
}
.no-scroll {
  overflow: hidden !important;
}
.no-scroll-x {
  overflow-x: hidden !important;
}
.no-scroll-y {
  overflow-y: hidden !important;
}
.no-wrap {
  white-space: nowrap !important;
}
.no-border-left {
  border-left: none !important;
}
.no-border-right {
  border-right: none !important;
}
.no-border-top {
  border-top: none !important;
}
.no-border-bottom {
  border-bottom: none !important;
}
.transparent-border {
  border-color: transparent !important;
}
.place-right {
  float: right !important;
}
.place-left {
  float: left !important;
}
.clear-float:before,
.clear-float:after {
  display: table;
  content: "";
}
.clear-float:after {
  clear: both;
}
.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
}
.clearfix:after {
  clear: both;
}
.no-user-select {
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.no-appearance {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
}
.debug {
  border: 1px dashed red;
}
.example {
  padding: .625rem 1.825rem .625rem 2.5rem;
  border: 1px #ccc dashed;
  position: relative;
  margin: 0 0 .625rem 0;
  background-color: #ffffff;
}
.example:before,
.example:after {
  display: table;
  content: "";
}
.example:after {
  clear: both;
}
.example:before {
  position: absolute;
  content: attr(data-text);
  text-transform: lowercase;
  left: 1.5rem;
  top: 11.875rem;
  color: gray;
  display: block;
  font-size: 1rem;
  line-height: 1rem;
  height: 1rem;
  text-align: right;
  white-space: nowrap;
  direction: ltr;
  width: 12.5rem;
  -webkit-transform: rotate(-90deg);
          transform: rotate(-90deg);
  -webkit-transform-origin: 0 100%;
          transform-origin: 0 100%;
}
.video-container {
  position: relative;
  padding-bottom: 56.25%;
  padding-top: 30px;
  height: 0;
  overflow: hidden;
}
.video-container iframe,
.video-container object,
.video-container embed {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
.padding10 {
  padding: 0.625rem;
}
.padding20 {
  padding: 1.25rem;
}
.padding30 {
  padding: 1.875rem;
}
.padding40 {
  padding: 2.5rem;
}
.padding50 {
  padding: 3.125rem;
}
.padding60 {
  padding: 3.75rem;
}
.padding70 {
  padding: 4.375rem;
}
.padding80 {
  padding: 5rem;
}
.padding90 {
  padding: 5.625rem;
}
.padding100 {
  padding: 6.25rem;
}
.padding5 {
  padding: 5px;
}
.margin5 {
  margin: 5px;
}
.margin10 {
  margin: 0.625rem;
}
.margin20 {
  margin: 1.25rem;
}
.margin30 {
  margin: 1.875rem;
}
.margin40 {
  margin: 2.5rem;
}
.margin50 {
  margin: 3.125rem;
}
.margin60 {
  margin: 3.75rem;
}
.margin70 {
  margin: 4.375rem;
}
.margin80 {
  margin: 5rem;
}
.margin90 {
  margin: 5.625rem;
}
.margin100 {
  margin: 6.25rem;
}
.opacity {
  opacity: .9;
}
.half-opacity {
  opacity: .5;
}
.hi-opacity {
  opacity: .2;
}
.element-selected {
  border: 4px #4390df solid;
}
.element-selected:after {
  position: absolute;
  display: block;
  border-top: 28px solid #4390df;
  border-left: 28px solid transparent;
  right: 0;
  content: "";
  top: 0;
  z-index: 101;
}
.element-selected:before {
  position: absolute;
  display: block;
  content: "";
  background-color: transparent;
  border-color: #ffffff;
  border-left: 2px solid;
  border-bottom: 2px solid;
  height: .25rem;
  width: .5rem;
  right: 0;
  top: 0;
  z-index: 102;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
/* Block function */
.set-border {
  border: 1px #d9d9d9 solid;
}
.set-border.medium-border {
  border-width: 8px;
}
.set-border.large-border {
  border-width: 16px;
}
.grid {
  display: block;
  position: relative;
  margin: .625rem 0;
}
.grid:before,
.grid:after {
  display: table;
  content: "";
}
.grid:after {
  clear: both;
}
.grid .row {
  width: 100%;
  display: block;
  margin: 0 0 2.12765% 0;
}
.grid .row:before,
.grid .row:after {
  display: table;
  content: "";
}
.grid .row:after {
  clear: both;
}
.grid .row:last-child {
  margin-bottom: 0;
}
.grid .row > .cell {
  display: block;
  float: left;
  width: 100%;
  min-height: 10px;
  margin: 0 0 0 2.12765%;
}
.grid .row > .cell:first-child {
  margin-left: 0;
}
.grid .row.cells2 > .cell {
  width: 48.936175%;
}
.grid .row.cells2 > .cell.colspan2 {
  width: 100%;
}
.grid .row.cells2 > .cell.offset1 {
  margin-left: 51.063825%;
}
.grid .row.cells2 > .cell.offset2 {
  margin-left: 102.12765%;
}
.grid .row.cells3 > .cell {
  width: 31.9149%;
}
.grid .row.cells3 > .cell.colspan2 {
  width: 65.95745%;
}
.grid .row.cells3 > .cell.colspan3 {
  width: 100%;
}
.grid .row.cells3 > .cell.offset1 {
  margin-left: 34.04255%;
}
.grid .row.cells3 > .cell.offset2 {
  margin-left: 68.0851%;
}
.grid .row.cells3 > .cell.offset3 {
  margin-left: 102.12765%;
}
.grid .row.cells4 > .cell {
  width: 23.4042625%;
}
.grid .row.cells4 > .cell.colspan2 {
  width: 48.936175%;
}
.grid .row.cells4 > .cell.colspan3 {
  width: 74.4680875%;
}
.grid .row.cells4 > .cell.colspan4 {
  width: 100%;
}
.grid .row.cells4 > .cell.offset1 {
  margin-left: 25.5319125%;
}
.grid .row.cells4 > .cell.offset2 {
  margin-left: 51.063825%;
}
.grid .row.cells4 > .cell.offset3 {
  margin-left: 76.5957375%;
}
.grid .row.cells4 > .cell.offset4 {
  margin-left: 102.12765%;
}
.grid .row.cells5 > .cell {
  width: 18.29788%;
}
.grid .row.cells5 > .cell.colspan2 {
  width: 38.72341%;
}
.grid .row.cells5 > .cell.colspan3 {
  width: 59.14894%;
}
.grid .row.cells5 > .cell.colspan4 {
  width: 79.57447%;
}
.grid .row.cells5 > .cell.colspan5 {
  width: 100%;
}
.grid .row.cells5 > .cell.offset1 {
  margin-left: 20.42553%;
}
.grid .row.cells5 > .cell.offset2 {
  margin-left: 40.85106%;
}
.grid .row.cells5 > .cell.offset3 {
  margin-left: 61.27659%;
}
.grid .row.cells5 > .cell.offset4 {
  margin-left: 81.70212%;
}
.grid .row.cells5 > .cell.offset5 {
  margin-left: 102.12765%;
}
.grid .row.cells6 > .cell {
  width: 14.893625%;
}
.grid .row.cells6 > .cell.colspan2 {
  width: 31.9149%;
}
.grid .row.cells6 > .cell.colspan3 {
  width: 48.936175%;
}
.grid .row.cells6 > .cell.colspan4 {
  width: 65.95745%;
}
.grid .row.cells6 > .cell.colspan5 {
  width: 82.978725%;
}
.grid .row.cells6 > .cell.colspan6 {
  width: 100%;
}
.grid .row.cells6 > .cell.offset1 {
  margin-left: 17.021275%;
}
.grid .row.cells6 > .cell.offset2 {
  margin-left: 34.04255%;
}
.grid .row.cells6 > .cell.offset3 {
  margin-left: 51.063825%;
}
.grid .row.cells6 > .cell.offset4 {
  margin-left: 68.0851%;
}
.grid .row.cells6 > .cell.offset5 {
  margin-left: 85.106375%;
}
.grid .row.cells6 > .cell.offset6 {
  margin-left: 102.12765%;
}
.grid .row.cells7 > .cell {
  width: 12.46201429%;
}
.grid .row.cells7 > .cell.colspan2 {
  width: 27.05167857%;
}
.grid .row.cells7 > .cell.colspan3 {
  width: 41.64134286%;
}
.grid .row.cells7 > .cell.colspan4 {
  width: 56.23100714%;
}
.grid .row.cells7 > .cell.colspan5 {
  width: 70.82067143%;
}
.grid .row.cells7 > .cell.colspan6 {
  width: 85.41033571%;
}
.grid .row.cells7 > .cell.colspan7 {
  width: 100%;
}
.grid .row.cells7 > .cell.offset1 {
  margin-left: 14.58966429%;
}
.grid .row.cells7 > .cell.offset2 {
  margin-left: 29.17932857%;
}
.grid .row.cells7 > .cell.offset3 {
  margin-left: 43.76899286%;
}
.grid .row.cells7 > .cell.offset4 {
  margin-left: 58.35865714%;
}
.grid .row.cells7 > .cell.offset5 {
  margin-left: 72.94832143%;
}
.grid .row.cells7 > .cell.offset6 {
  margin-left: 87.53798571%;
}
.grid .row.cells7 > .cell.offset7 {
  margin-left: 102.12765%;
}
.grid .row.cells8 > .cell {
  width: 10.63830625%;
}
.grid .row.cells8 > .cell.colspan2 {
  width: 23.4042625%;
}
.grid .row.cells8 > .cell.colspan3 {
  width: 36.17021875%;
}
.grid .row.cells8 > .cell.colspan4 {
  width: 48.936175%;
}
.grid .row.cells8 > .cell.colspan5 {
  width: 61.70213125%;
}
.grid .row.cells8 > .cell.colspan6 {
  width: 74.4680875%;
}
.grid .row.cells8 > .cell.colspan7 {
  width: 87.23404375%;
}
.grid .row.cells8 > .cell.colspan8 {
  width: 100%;
}
.grid .row.cells8 > .cell.offset1 {
  margin-left: 12.76595625%;
}
.grid .row.cells8 > .cell.offset2 {
  margin-left: 25.5319125%;
}
.grid .row.cells8 > .cell.offset3 {
  margin-left: 38.29786875%;
}
.grid .row.cells8 > .cell.offset4 {
  margin-left: 51.063825%;
}
.grid .row.cells8 > .cell.offset5 {
  margin-left: 63.82978125%;
}
.grid .row.cells8 > .cell.offset6 {
  margin-left: 76.5957375%;
}
.grid .row.cells8 > .cell.offset7 {
  margin-left: 89.36169375%;
}
.grid .row.cells8 > .cell.offset8 {
  margin-left: 102.12765%;
}
.grid .row.cells9 > .cell {
  width: 9.21986667%;
}
.grid .row.cells9 > .cell.colspan2 {
  width: 20.56738333%;
}
.grid .row.cells9 > .cell.colspan3 {
  width: 31.9149%;
}
.grid .row.cells9 > .cell.colspan4 {
  width: 43.26241667%;
}
.grid .row.cells9 > .cell.colspan5 {
  width: 54.60993333%;
}
.grid .row.cells9 > .cell.colspan6 {
  width: 65.95745%;
}
.grid .row.cells9 > .cell.colspan7 {
  width: 77.30496667%;
}
.grid .row.cells9 > .cell.colspan8 {
  width: 88.65248333%;
}
.grid .row.cells9 > .cell.colspan9 {
  width: 100%;
}
.grid .row.cells9 > .cell.offset1 {
  margin-left: 11.34751667%;
}
.grid .row.cells9 > .cell.offset2 {
  margin-left: 22.69503333%;
}
.grid .row.cells9 > .cell.offset3 {
  margin-left: 34.04255%;
}
.grid .row.cells9 > .cell.offset4 {
  margin-left: 45.39006667%;
}
.grid .row.cells9 > .cell.offset5 {
  margin-left: 56.73758333%;
}
.grid .row.cells9 > .cell.offset6 {
  margin-left: 68.0851%;
}
.grid .row.cells9 > .cell.offset7 {
  margin-left: 79.43261667%;
}
.grid .row.cells9 > .cell.offset8 {
  margin-left: 90.78013333%;
}
.grid .row.cells9 > .cell.offset9 {
  margin-left: 102.12765%;
}
.grid .row.cells10 > .cell {
  width: 8.085115%;
}
.grid .row.cells10 > .cell.colspan2 {
  width: 18.29788%;
}
.grid .row.cells10 > .cell.colspan3 {
  width: 28.510645%;
}
.grid .row.cells10 > .cell.colspan4 {
  width: 38.72341%;
}
.grid .row.cells10 > .cell.colspan5 {
  width: 48.936175%;
}
.grid .row.cells10 > .cell.colspan6 {
  width: 59.14894%;
}
.grid .row.cells10 > .cell.colspan7 {
  width: 69.361705%;
}
.grid .row.cells10 > .cell.colspan8 {
  width: 79.57447%;
}
.grid .row.cells10 > .cell.colspan9 {
  width: 89.787235%;
}
.grid .row.cells10 > .cell.colspan10 {
  width: 100%;
}
.grid .row.cells10 > .cell.offset1 {
  margin-left: 10.212765%;
}
.grid .row.cells10 > .cell.offset2 {
  margin-left: 20.42553%;
}
.grid .row.cells10 > .cell.offset3 {
  margin-left: 30.638295%;
}
.grid .row.cells10 > .cell.offset4 {
  margin-left: 40.85106%;
}
.grid .row.cells10 > .cell.offset5 {
  margin-left: 51.063825%;
}
.grid .row.cells10 > .cell.offset6 {
  margin-left: 61.27659%;
}
.grid .row.cells10 > .cell.offset7 {
  margin-left: 71.489355%;
}
.grid .row.cells10 > .cell.offset8 {
  margin-left: 81.70212%;
}
.grid .row.cells10 > .cell.offset9 {
  margin-left: 91.914885%;
}
.grid .row.cells10 > .cell.offset10 {
  margin-left: 102.12765%;
}
.grid .row.cells11 > .cell {
  width: 7.15668182%;
}
.grid .row.cells11 > .cell.colspan2 {
  width: 16.44101364%;
}
.grid .row.cells11 > .cell.colspan3 {
  width: 25.72534545%;
}
.grid .row.cells11 > .cell.colspan4 {
  width: 35.00967727%;
}
.grid .row.cells11 > .cell.colspan5 {
  width: 44.29400909%;
}
.grid .row.cells11 > .cell.colspan6 {
  width: 53.57834091%;
}
.grid .row.cells11 > .cell.colspan7 {
  width: 62.86267273%;
}
.grid .row.cells11 > .cell.colspan8 {
  width: 72.14700455%;
}
.grid .row.cells11 > .cell.colspan9 {
  width: 81.43133636%;
}
.grid .row.cells11 > .cell.colspan10 {
  width: 90.71566818%;
}
.grid .row.cells11 > .cell.colspan11 {
  width: 100%;
}
.grid .row.cells11 > .cell.offset1 {
  margin-left: 9.28433182%;
}
.grid .row.cells11 > .cell.offset2 {
  margin-left: 18.56866364%;
}
.grid .row.cells11 > .cell.offset3 {
  margin-left: 27.85299545%;
}
.grid .row.cells11 > .cell.offset4 {
  margin-left: 37.13732727%;
}
.grid .row.cells11 > .cell.offset5 {
  margin-left: 46.42165909%;
}
.grid .row.cells11 > .cell.offset6 {
  margin-left: 55.70599091%;
}
.grid .row.cells11 > .cell.offset7 {
  margin-left: 64.99032273%;
}
.grid .row.cells11 > .cell.offset8 {
  margin-left: 74.27465455%;
}
.grid .row.cells11 > .cell.offset9 {
  margin-left: 83.55898636%;
}
.grid .row.cells11 > .cell.offset10 {
  margin-left: 92.84331818%;
}
.grid .row.cells11 > .cell.offset11 {
  margin-left: 102.12765%;
}
.grid .row.cells12 > .cell {
  width: 6.3829875%;
}
.grid .row.cells12 > .cell.colspan2 {
  width: 14.893625%;
}
.grid .row.cells12 > .cell.colspan3 {
  width: 23.4042625%;
}
.grid .row.cells12 > .cell.colspan4 {
  width: 31.9149%;
}
.grid .row.cells12 > .cell.colspan5 {
  width: 40.4255375%;
}
.grid .row.cells12 > .cell.colspan6 {
  width: 48.936175%;
}
.grid .row.cells12 > .cell.colspan7 {
  width: 57.4468125%;
}
.grid .row.cells12 > .cell.colspan8 {
  width: 65.95745%;
}
.grid .row.cells12 > .cell.colspan9 {
  width: 74.4680875%;
}
.grid .row.cells12 > .cell.colspan10 {
  width: 82.978725%;
}
.grid .row.cells12 > .cell.colspan11 {
  width: 91.4893625%;
}
.grid .row.cells12 > .cell.colspan12 {
  width: 100%;
}
.grid .row.cells12 > .cell.offset1 {
  margin-left: 8.5106375%;
}
.grid .row.cells12 > .cell.offset2 {
  margin-left: 17.021275%;
}
.grid .row.cells12 > .cell.offset3 {
  margin-left: 25.5319125%;
}
.grid .row.cells12 > .cell.offset4 {
  margin-left: 34.04255%;
}
.grid .row.cells12 > .cell.offset5 {
  margin-left: 42.5531875%;
}
.grid .row.cells12 > .cell.offset6 {
  margin-left: 51.063825%;
}
.grid .row.cells12 > .cell.offset7 {
  margin-left: 59.5744625%;
}
.grid .row.cells12 > .cell.offset8 {
  margin-left: 68.0851%;
}
.grid .row.cells12 > .cell.offset9 {
  margin-left: 76.5957375%;
}
.grid .row.cells12 > .cell.offset10 {
  margin-left: 85.106375%;
}
.grid .row.cells12 > .cell.offset11 {
  margin-left: 93.6170125%;
}
.grid .row.cells12 > .cell.offset12 {
  margin-left: 102.12765%;
}
.grid .row:empty {
  display: none;
}
.grid.condensed {
  display: block;
  position: relative;
  margin: .625rem 0;
}
.grid.condensed:before,
.grid.condensed:after {
  display: table;
  content: "";
}
.grid.condensed:after {
  clear: both;
}
.grid.condensed .row {
  width: 100%;
  display: block;
  margin: 0 0 0 0;
}
.grid.condensed .row:before,
.grid.condensed .row:after {
  display: table;
  content: "";
}
.grid.condensed .row:after {
  clear: both;
}
.grid.condensed .row:last-child {
  margin-bottom: 0;
}
.grid.condensed .row > .cell {
  display: block;
  float: left;
  width: 100%;
  min-height: 10px;
  margin: 0 0 0 0;
}
.grid.condensed .row > .cell:first-child {
  margin-left: 0;
}
.grid.condensed .row.cells2 > .cell {
  width: 50%;
}
.grid.condensed .row.cells2 > .cell.colspan2 {
  width: 100%;
}
.grid.condensed .row.cells2 > .cell.offset1 {
  margin-left: 50%;
}
.grid.condensed .row.cells2 > .cell.offset2 {
  margin-left: 100%;
}
.grid.condensed .row.cells3 > .cell {
  width: 33.33333333%;
}
.grid.condensed .row.cells3 > .cell.colspan2 {
  width: 66.66666667%;
}
.grid.condensed .row.cells3 > .cell.colspan3 {
  width: 100%;
}
.grid.condensed .row.cells3 > .cell.offset1 {
  margin-left: 33.33333333%;
}
.grid.condensed .row.cells3 > .cell.offset2 {
  margin-left: 66.66666667%;
}
.grid.condensed .row.cells3 > .cell.offset3 {
  margin-left: 100%;
}
.grid.condensed .row.cells4 > .cell {
  width: 25%;
}
.grid.condensed .row.cells4 > .cell.colspan2 {
  width: 50%;
}
.grid.condensed .row.cells4 > .cell.colspan3 {
  width: 75%;
}
.grid.condensed .row.cells4 > .cell.colspan4 {
  width: 100%;
}
.grid.condensed .row.cells4 > .cell.offset1 {
  margin-left: 25%;
}
.grid.condensed .row.cells4 > .cell.offset2 {
  margin-left: 50%;
}
.grid.condensed .row.cells4 > .cell.offset3 {
  margin-left: 75%;
}
.grid.condensed .row.cells4 > .cell.offset4 {
  margin-left: 100%;
}
.grid.condensed .row.cells5 > .cell {
  width: 20%;
}
.grid.condensed .row.cells5 > .cell.colspan2 {
  width: 40%;
}
.grid.condensed .row.cells5 > .cell.colspan3 {
  width: 60%;
}
.grid.condensed .row.cells5 > .cell.colspan4 {
  width: 80%;
}
.grid.condensed .row.cells5 > .cell.colspan5 {
  width: 100%;
}
.grid.condensed .row.cells5 > .cell.offset1 {
  margin-left: 20%;
}
.grid.condensed .row.cells5 > .cell.offset2 {
  margin-left: 40%;
}
.grid.condensed .row.cells5 > .cell.offset3 {
  margin-left: 60%;
}
.grid.condensed .row.cells5 > .cell.offset4 {
  margin-left: 80%;
}
.grid.condensed .row.cells5 > .cell.offset5 {
  margin-left: 100%;
}
.grid.condensed .row.cells6 > .cell {
  width: 16.66666667%;
}
.grid.condensed .row.cells6 > .cell.colspan2 {
  width: 33.33333333%;
}
.grid.condensed .row.cells6 > .cell.colspan3 {
  width: 50%;
}
.grid.condensed .row.cells6 > .cell.colspan4 {
  width: 66.66666667%;
}
.grid.condensed .row.cells6 > .cell.colspan5 {
  width: 83.33333333%;
}
.grid.condensed .row.cells6 > .cell.colspan6 {
  width: 100%;
}
.grid.condensed .row.cells6 > .cell.offset1 {
  margin-left: 16.66666667%;
}
.grid.condensed .row.cells6 > .cell.offset2 {
  margin-left: 33.33333333%;
}
.grid.condensed .row.cells6 > .cell.offset3 {
  margin-left: 50%;
}
.grid.condensed .row.cells6 > .cell.offset4 {
  margin-left: 66.66666667%;
}
.grid.condensed .row.cells6 > .cell.offset5 {
  margin-left: 83.33333333%;
}
.grid.condensed .row.cells6 > .cell.offset6 {
  margin-left: 100%;
}
.grid.condensed .row.cells7 > .cell {
  width: 14.28571429%;
}
.grid.condensed .row.cells7 > .cell.colspan2 {
  width: 28.57142857%;
}
.grid.condensed .row.cells7 > .cell.colspan3 {
  width: 42.85714286%;
}
.grid.condensed .row.cells7 > .cell.colspan4 {
  width: 57.14285714%;
}
.grid.condensed .row.cells7 > .cell.colspan5 {
  width: 71.42857143%;
}
.grid.condensed .row.cells7 > .cell.colspan6 {
  width: 85.71428571%;
}
.grid.condensed .row.cells7 > .cell.colspan7 {
  width: 100%;
}
.grid.condensed .row.cells7 > .cell.offset1 {
  margin-left: 14.28571429%;
}
.grid.condensed .row.cells7 > .cell.offset2 {
  margin-left: 28.57142857%;
}
.grid.condensed .row.cells7 > .cell.offset3 {
  margin-left: 42.85714286%;
}
.grid.condensed .row.cells7 > .cell.offset4 {
  margin-left: 57.14285714%;
}
.grid.condensed .row.cells7 > .cell.offset5 {
  margin-left: 71.42857143%;
}
.grid.condensed .row.cells7 > .cell.offset6 {
  margin-left: 85.71428571%;
}
.grid.condensed .row.cells7 > .cell.offset7 {
  margin-left: 100%;
}
.grid.condensed .row.cells8 > .cell {
  width: 12.5%;
}
.grid.condensed .row.cells8 > .cell.colspan2 {
  width: 25%;
}
.grid.condensed .row.cells8 > .cell.colspan3 {
  width: 37.5%;
}
.grid.condensed .row.cells8 > .cell.colspan4 {
  width: 50%;
}
.grid.condensed .row.cells8 > .cell.colspan5 {
  width: 62.5%;
}
.grid.condensed .row.cells8 > .cell.colspan6 {
  width: 75%;
}
.grid.condensed .row.cells8 > .cell.colspan7 {
  width: 87.5%;
}
.grid.condensed .row.cells8 > .cell.colspan8 {
  width: 100%;
}
.grid.condensed .row.cells8 > .cell.offset1 {
  margin-left: 12.5%;
}
.grid.condensed .row.cells8 > .cell.offset2 {
  margin-left: 25%;
}
.grid.condensed .row.cells8 > .cell.offset3 {
  margin-left: 37.5%;
}
.grid.condensed .row.cells8 > .cell.offset4 {
  margin-left: 50%;
}
.grid.condensed .row.cells8 > .cell.offset5 {
  margin-left: 62.5%;
}
.grid.condensed .row.cells8 > .cell.offset6 {
  margin-left: 75%;
}
.grid.condensed .row.cells8 > .cell.offset7 {
  margin-left: 87.5%;
}
.grid.condensed .row.cells8 > .cell.offset8 {
  margin-left: 100%;
}
.grid.condensed .row.cells9 > .cell {
  width: 11.11111111%;
}
.grid.condensed .row.cells9 > .cell.colspan2 {
  width: 22.22222222%;
}
.grid.condensed .row.cells9 > .cell.colspan3 {
  width: 33.33333333%;
}
.grid.condensed .row.cells9 > .cell.colspan4 {
  width: 44.44444444%;
}
.grid.condensed .row.cells9 > .cell.colspan5 {
  width: 55.55555556%;
}
.grid.condensed .row.cells9 > .cell.colspan6 {
  width: 66.66666667%;
}
.grid.condensed .row.cells9 > .cell.colspan7 {
  width: 77.77777778%;
}
.grid.condensed .row.cells9 > .cell.colspan8 {
  width: 88.88888889%;
}
.grid.condensed .row.cells9 > .cell.colspan9 {
  width: 100%;
}
.grid.condensed .row.cells9 > .cell.offset1 {
  margin-left: 11.11111111%;
}
.grid.condensed .row.cells9 > .cell.offset2 {
  margin-left: 22.22222222%;
}
.grid.condensed .row.cells9 > .cell.offset3 {
  margin-left: 33.33333333%;
}
.grid.condensed .row.cells9 > .cell.offset4 {
  margin-left: 44.44444444%;
}
.grid.condensed .row.cells9 > .cell.offset5 {
  margin-left: 55.55555556%;
}
.grid.condensed .row.cells9 > .cell.offset6 {
  margin-left: 66.66666667%;
}
.grid.condensed .row.cells9 > .cell.offset7 {
  margin-left: 77.77777778%;
}
.grid.condensed .row.cells9 > .cell.offset8 {
  margin-left: 88.88888889%;
}
.grid.condensed .row.cells9 > .cell.offset9 {
  margin-left: 100%;
}
.grid.condensed .row.cells10 > .cell {
  width: 10%;
}
.grid.condensed .row.cells10 > .cell.colspan2 {
  width: 20%;
}
.grid.condensed .row.cells10 > .cell.colspan3 {
  width: 30%;
}
.grid.condensed .row.cells10 > .cell.colspan4 {
  width: 40%;
}
.grid.condensed .row.cells10 > .cell.colspan5 {
  width: 50%;
}
.grid.condensed .row.cells10 > .cell.colspan6 {
  width: 60%;
}
.grid.condensed .row.cells10 > .cell.colspan7 {
  width: 70%;
}
.grid.condensed .row.cells10 > .cell.colspan8 {
  width: 80%;
}
.grid.condensed .row.cells10 > .cell.colspan9 {
  width: 90%;
}
.grid.condensed .row.cells10 > .cell.colspan10 {
  width: 100%;
}
.grid.condensed .row.cells10 > .cell.offset1 {
  margin-left: 10%;
}
.grid.condensed .row.cells10 > .cell.offset2 {
  margin-left: 20%;
}
.grid.condensed .row.cells10 > .cell.offset3 {
  margin-left: 30%;
}
.grid.condensed .row.cells10 > .cell.offset4 {
  margin-left: 40%;
}
.grid.condensed .row.cells10 > .cell.offset5 {
  margin-left: 50%;
}
.grid.condensed .row.cells10 > .cell.offset6 {
  margin-left: 60%;
}
.grid.condensed .row.cells10 > .cell.offset7 {
  margin-left: 70%;
}
.grid.condensed .row.cells10 > .cell.offset8 {
  margin-left: 80%;
}
.grid.condensed .row.cells10 > .cell.offset9 {
  margin-left: 90%;
}
.grid.condensed .row.cells10 > .cell.offset10 {
  margin-left: 100%;
}
.grid.condensed .row.cells11 > .cell {
  width: 9.09090909%;
}
.grid.condensed .row.cells11 > .cell.colspan2 {
  width: 18.18181818%;
}
.grid.condensed .row.cells11 > .cell.colspan3 {
  width: 27.27272727%;
}
.grid.condensed .row.cells11 > .cell.colspan4 {
  width: 36.36363636%;
}
.grid.condensed .row.cells11 > .cell.colspan5 {
  width: 45.45454545%;
}
.grid.condensed .row.cells11 > .cell.colspan6 {
  width: 54.54545455%;
}
.grid.condensed .row.cells11 > .cell.colspan7 {
  width: 63.63636364%;
}
.grid.condensed .row.cells11 > .cell.colspan8 {
  width: 72.72727273%;
}
.grid.condensed .row.cells11 > .cell.colspan9 {
  width: 81.81818182%;
}
.grid.condensed .row.cells11 > .cell.colspan10 {
  width: 90.90909091%;
}
.grid.condensed .row.cells11 > .cell.colspan11 {
  width: 100%;
}
.grid.condensed .row.cells11 > .cell.offset1 {
  margin-left: 9.09090909%;
}
.grid.condensed .row.cells11 > .cell.offset2 {
  margin-left: 18.18181818%;
}
.grid.condensed .row.cells11 > .cell.offset3 {
  margin-left: 27.27272727%;
}
.grid.condensed .row.cells11 > .cell.offset4 {
  margin-left: 36.36363636%;
}
.grid.condensed .row.cells11 > .cell.offset5 {
  margin-left: 45.45454545%;
}
.grid.condensed .row.cells11 > .cell.offset6 {
  margin-left: 54.54545455%;
}
.grid.condensed .row.cells11 > .cell.offset7 {
  margin-left: 63.63636364%;
}
.grid.condensed .row.cells11 > .cell.offset8 {
  margin-left: 72.72727273%;
}
.grid.condensed .row.cells11 > .cell.offset9 {
  margin-left: 81.81818182%;
}
.grid.condensed .row.cells11 > .cell.offset10 {
  margin-left: 90.90909091%;
}
.grid.condensed .row.cells11 > .cell.offset11 {
  margin-left: 100%;
}
.grid.condensed .row.cells12 > .cell {
  width: 8.33333333%;
}
.grid.condensed .row.cells12 > .cell.colspan2 {
  width: 16.66666667%;
}
.grid.condensed .row.cells12 > .cell.colspan3 {
  width: 25%;
}
.grid.condensed .row.cells12 > .cell.colspan4 {
  width: 33.33333333%;
}
.grid.condensed .row.cells12 > .cell.colspan5 {
  width: 41.66666667%;
}
.grid.condensed .row.cells12 > .cell.colspan6 {
  width: 50%;
}
.grid.condensed .row.cells12 > .cell.colspan7 {
  width: 58.33333333%;
}
.grid.condensed .row.cells12 > .cell.colspan8 {
  width: 66.66666667%;
}
.grid.condensed .row.cells12 > .cell.colspan9 {
  width: 75%;
}
.grid.condensed .row.cells12 > .cell.colspan10 {
  width: 83.33333333%;
}
.grid.condensed .row.cells12 > .cell.colspan11 {
  width: 91.66666667%;
}
.grid.condensed .row.cells12 > .cell.colspan12 {
  width: 100%;
}
.grid.condensed .row.cells12 > .cell.offset1 {
  margin-left: 8.33333333%;
}
.grid.condensed .row.cells12 > .cell.offset2 {
  margin-left: 16.66666667%;
}
.grid.condensed .row.cells12 > .cell.offset3 {
  margin-left: 25%;
}
.grid.condensed .row.cells12 > .cell.offset4 {
  margin-left: 33.33333333%;
}
.grid.condensed .row.cells12 > .cell.offset5 {
  margin-left: 41.66666667%;
}
.grid.condensed .row.cells12 > .cell.offset6 {
  margin-left: 50%;
}
.grid.condensed .row.cells12 > .cell.offset7 {
  margin-left: 58.33333333%;
}
.grid.condensed .row.cells12 > .cell.offset8 {
  margin-left: 66.66666667%;
}
.grid.condensed .row.cells12 > .cell.offset9 {
  margin-left: 75%;
}
.grid.condensed .row.cells12 > .cell.offset10 {
  margin-left: 83.33333333%;
}
.grid.condensed .row.cells12 > .cell.offset11 {
  margin-left: 91.66666667%;
}
.grid.condensed .row.cells12 > .cell.offset12 {
  margin-left: 100%;
}
.flex-grid {
  display: block;
  width: 100%;
}
.flex-grid .row {
  display: -webkit-flex;
  display: flex;
}
.flex-grid .row .cell {
  -webkit-flex: 0 0 8.33333333%;
  flex: 0 0 8.33333333%;
}
.flex-grid .row.cell-auto-size .cell {
  -webkit-flex: 1 1 auto;
  flex: 1 1 auto;
}
.flex-grid .row .cell.colspan2 {
  -webkit-flex: 0 0 16.66666666%;
  flex: 0 0 16.66666666%;
}
.flex-grid .row .cell.colspan3 {
  -webkit-flex: 0 0 24.99999999%;
  flex: 0 0 24.99999999%;
}
.flex-grid .row .cell.colspan4 {
  -webkit-flex: 0 0 33.33333332%;
  flex: 0 0 33.33333332%;
}
.flex-grid .row .cell.colspan5 {
  -webkit-flex: 0 0 41.66666665%;
  flex: 0 0 41.66666665%;
}
.flex-grid .row .cell.colspan6 {
  -webkit-flex: 0 0 49.99999998%;
  flex: 0 0 49.99999998%;
}
.flex-grid .row .cell.colspan7 {
  -webkit-flex: 0 0 58.33333331%;
  flex: 0 0 58.33333331%;
}
.flex-grid .row .cell.colspan8 {
  -webkit-flex: 0 0 66.66666664%;
  flex: 0 0 66.66666664%;
}
.flex-grid .row .cell.colspan9 {
  -webkit-flex: 0 0 74.99999997%;
  flex: 0 0 74.99999997%;
}
.flex-grid .row .cell.colspan10 {
  -webkit-flex: 0 0 83.3333333%;
  flex: 0 0 83.3333333%;
}
.flex-grid .row .cell.colspan11 {
  -webkit-flex: 0 0 91.66666663%;
  flex: 0 0 91.66666663%;
}
.flex-grid .row .cell.colspan12 {
  -webkit-flex: 0 0 99.99999996%;
  flex: 0 0 99.99999996%;
}
.flex-grid .row .cell.size1 {
  -webkit-flex: 0 0 8.33333333%;
  flex: 0 0 8.33333333%;
}
.flex-grid .row .cell.size2 {
  -webkit-flex: 0 0 16.66666666%;
  flex: 0 0 16.66666666%;
}
.flex-grid .row .cell.size3 {
  -webkit-flex: 0 0 24.99999999%;
  flex: 0 0 24.99999999%;
}
.flex-grid .row .cell.size4 {
  -webkit-flex: 0 0 33.33333332%;
  flex: 0 0 33.33333332%;
}
.flex-grid .row .cell.size5 {
  -webkit-flex: 0 0 41.66666665%;
  flex: 0 0 41.66666665%;
}
.flex-grid .row .cell.size6 {
  -webkit-flex: 0 0 49.99999998%;
  flex: 0 0 49.99999998%;
}
.flex-grid .row .cell.size7 {
  -webkit-flex: 0 0 58.33333331%;
  flex: 0 0 58.33333331%;
}
.flex-grid .row .cell.size8 {
  -webkit-flex: 0 0 66.66666664%;
  flex: 0 0 66.66666664%;
}
.flex-grid .row .cell.size9 {
  -webkit-flex: 0 0 74.99999997%;
  flex: 0 0 74.99999997%;
}
.flex-grid .row .cell.size10 {
  -webkit-flex: 0 0 83.3333333%;
  flex: 0 0 83.3333333%;
}
.flex-grid .row .cell.size11 {
  -webkit-flex: 0 0 91.66666663%;
  flex: 0 0 91.66666663%;
}
.flex-grid .row .cell.size12 {
  -webkit-flex: 0 0 99.99999996%;
  flex: 0 0 99.99999996%;
}
.flex-grid .row .cell.size-p10 {
  -webkit-flex: 0 0 10%;
  flex: 0 0 10%;
}
.flex-grid .row .cell.size-p20 {
  -webkit-flex: 0 0 20%;
  flex: 0 0 20%;
}
.flex-grid .row .cell.size-p30 {
  -webkit-flex: 0 0 30%;
  flex: 0 0 30%;
}
.flex-grid .row .cell.size-p40 {
  -webkit-flex: 0 0 40%;
  flex: 0 0 40%;
}
.flex-grid .row .cell.size-p50 {
  -webkit-flex: 0 0 50%;
  flex: 0 0 50%;
}
.flex-grid .row .cell.size-p60 {
  -webkit-flex: 0 0 60%;
  flex: 0 0 60%;
}
.flex-grid .row .cell.size-p70 {
  -webkit-flex: 0 0 70%;
  flex: 0 0 70%;
}
.flex-grid .row .cell.size-p80 {
  -webkit-flex: 0 0 80%;
  flex: 0 0 80%;
}
.flex-grid .row .cell.size-p90 {
  -webkit-flex: 0 0 90%;
  flex: 0 0 90%;
}
.flex-grid .row .cell.size-p100 {
  -webkit-flex: 0 0 100%;
  flex: 0 0 100%;
}
.flex-grid .row .cell.size-x100 {
  -webkit-flex: 0 0 100px;
  flex: 0 0 100px;
}
.flex-grid .row .cell.size-x200 {
  -webkit-flex: 0 0 200px;
  flex: 0 0 200px;
}
.flex-grid .row .cell.size-x300 {
  -webkit-flex: 0 0 300px;
  flex: 0 0 300px;
}
.flex-grid .row .cell.size-x400 {
  -webkit-flex: 0 0 400px;
  flex: 0 0 400px;
}
.flex-grid .row .cell.size-x500 {
  -webkit-flex: 0 0 500px;
  flex: 0 0 500px;
}
.flex-grid .row .cell.size-x600 {
  -webkit-flex: 0 0 600px;
  flex: 0 0 600px;
}
.flex-grid .row .cell.size-x700 {
  -webkit-flex: 0 0 700px;
  flex: 0 0 700px;
}
.flex-grid .row .cell.size-x800 {
  -webkit-flex: 0 0 800px;
  flex: 0 0 800px;
}
.flex-grid .row .cell.size-x900 {
  -webkit-flex: 0 0 900px;
  flex: 0 0 900px;
}
.flex-grid .row .cell.size-x1000 {
  -webkit-flex: 0 0 1000px;
  flex: 0 0 1000px;
}
.flex-grid .row .cell.auto-size {
  -webkit-flex: 1 auto;
  flex: 1 auto;
}
.table {
  width: 100%;
  margin: .625rem 0;
}
.table th,
.table td {
  padding: 0.625rem;
}
.table thead {
  border-bottom: 4px solid #999999;
}
.table thead th,
.table thead td {
  cursor: default;
  color: #52677a;
  border-color: transparent;
  text-align: left;
  font-style: normal;
  font-weight: 700;
  line-height: 100%;
}
.table tfoot {
  border-top: 4px solid #999999;
}
.table tfoot th,
.table tfoot td {
  cursor: default;
  color: #52677a;
  border-color: transparent;
  text-align: left;
  font-style: normal;
  font-weight: 700;
  line-height: 100%;
}
.table tbody td {
  padding: 0.625rem 0.85rem;
}
.table .sortable-column {
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.table .sortable-column:after {
  position: absolute;
  content: "";
  width: 1rem;
  height: 1rem;
  left: 100%;
  margin-left: -20px;
  top: 50%;
  margin-top: -0.5rem;
  color: inherit;
  font-size: 1rem;
  line-height: 1;
}
.table .sortable-column.sort-asc,
.table .sortable-column.sort-desc {
  background-color: #eeeeee;
}
.table .sortable-column.sort-asc:after,
.table .sortable-column.sort-desc:after {
  color: #1d1d1d;
}
.table .sortable-column.sort-asc:after {
  content: "\2191";
}
.table .sortable-column.sort-desc:after {
  content: "\2193";
}
.table.sortable-markers-on-left .sortable-column {
  padding-left: 30px;
}
.table.sortable-markers-on-left .sortable-column:before,
.table.sortable-markers-on-left .sortable-column:after {
  left: 0;
  margin-left: 10px;
}
.table tr.selected td {
  background-color: rgba(28, 183, 236, 0.1);
}
.table td.selected {
  background-color: rgba(28, 183, 236, 0.3);
}
.table.striped tbody tr:nth-child(odd) {
  background: #eeeeee;
}
.table.hovered tbody tr:hover {
  background-color: rgba(28, 183, 236, 0.1);
}
.table.cell-hovered tbody td:hover {
  background-color: rgba(28, 183, 236, 0.3);
}
.table.border {
  border: 1px #999999 solid;
}
.table.bordered th,
.table.bordered td {
  border: 1px #999999 solid;
}
.table.bordered thead tr:first-child th,
.table.bordered thead tr:first-child td {
  border-top: none;
}
.table.bordered thead tr:first-child th:first-child,
.table.bordered thead tr:first-child td:first-child {
  border-left: none;
}
.table.bordered thead tr:first-child th:last-child,
.table.bordered thead tr:first-child td:last-child {
  border-right: none;
}
.table.bordered tbody tr:first-child td {
  border-top: none;
}
.table.bordered tbody tr td:first-child {
  border-left: none;
}
.table.bordered tbody tr td:last-child {
  border-right: none;
}
.table.bordered tbody tr:last-child td {
  border-bottom: none;
}
.table .condensed th,
.table .condensed td {
  padding: .3125rem;
}
.table .super-condensed th,
.table .super-condensed td {
  padding: .125rem;
}
.table tbody tr.error {
  background-color: #ce352c;
  color: #ffffff;
}
.table tbody tr.error:hover {
  background-color: #da5a53;
}
.table tbody tr.warning {
  background-color: #fa6800;
  color: #ffffff;
}
.table tbody tr.warning:hover {
  background-color: #ffc194;
}
.table tbody tr.success {
  background-color: #60a917;
  color: #ffffff;
}
.table tbody tr.success:hover {
  background-color: #7ad61d;
}
.table tbody tr.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.table tbody tr.info:hover {
  background-color: #59cde2;
}
.app-bar {
  display: block;
  width: 100%;
  position: relative;
  background-color: #0072c6;
  color: #ffffff;
  height: 3.125rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.app-bar:before,
.app-bar:after {
  display: table;
  content: "";
}
.app-bar:after {
  clear: both;
}
.app-bar .app-bar-element {
  line-height: 3.125rem;
  padding: 0 .625rem;
  font-size: 1rem;
  cursor: pointer;
  color: inherit;
  display: block;
  float: left;
  position: relative;
  vertical-align: middle;
  height: 3.125rem;
}
.app-bar .app-bar-element:hover,
.app-bar .app-bar-element:active {
  background-color: #005696;
}
.app-bar .app-bar-element.branding {
  padding-left: 1rem;
  padding-right: 1rem;
}
.app-bar .app-bar-element .d-menu {
  top: 100%;
  border: 2px solid #005696;
}
.app-bar .app-bar-element .d-menu li:not(.disabled):hover {
  background-color: #eee;
}
.app-bar .app-bar-element .d-menu li:not(.disabled):hover > a {
  color: #1d1d1d;
}
.app-bar .app-bar-element .d-menu .d-menu {
  top: -0.625rem;
  left: 100%;
}
.app-bar .app-bar-element .d-menu .dropdown-toggle:before {
  border-color: #1d1d1d;
}
.app-bar .app-bar-divider {
  display: block;
  float: left;
  line-height: 3.125rem;
  height: 3.125rem;
  width: 1px;
  background-color: #4c9cd7;
  padding: 0;
}
.app-bar .dropdown-toggle:before {
  border-color: #ffffff;
}
.app-bar .app-bar-menu {
  display: block;
  float: left;
  margin: 0;
  padding: 0;
}
.app-bar .app-bar-menu > li,
.app-bar .app-bar-menu > li > a {
  line-height: 3.125rem;
  padding: 0 .625rem;
  font-size: 1rem;
  cursor: pointer;
  color: inherit;
  display: block;
  float: left;
  position: relative;
  vertical-align: middle;
  height: 3.125rem;
}
.app-bar .app-bar-menu > li:hover,
.app-bar .app-bar-menu > li > a:hover,
.app-bar .app-bar-menu > li:active,
.app-bar .app-bar-menu > li > a:active {
  background-color: #005696;
}
.app-bar .app-bar-menu > li.branding,
.app-bar .app-bar-menu > li > a.branding {
  padding-left: 1rem;
  padding-right: 1rem;
}
.app-bar .app-bar-menu > li .d-menu,
.app-bar .app-bar-menu > li > a .d-menu {
  top: 100%;
  border: 2px solid #005696;
}
.app-bar .app-bar-menu > li .d-menu li:not(.disabled):hover,
.app-bar .app-bar-menu > li > a .d-menu li:not(.disabled):hover {
  background-color: #eee;
}
.app-bar .app-bar-menu > li .d-menu li:not(.disabled):hover > a,
.app-bar .app-bar-menu > li > a .d-menu li:not(.disabled):hover > a {
  color: #1d1d1d;
}
.app-bar .app-bar-menu > li .d-menu .d-menu,
.app-bar .app-bar-menu > li > a .d-menu .d-menu {
  top: -0.625rem;
  left: 100%;
}
.app-bar .app-bar-menu > li .d-menu .dropdown-toggle:before,
.app-bar .app-bar-menu > li > a .d-menu .dropdown-toggle:before {
  border-color: #1d1d1d;
}
.app-bar .app-bar-menu > li:before,
.app-bar .app-bar-menu > li > a:before,
.app-bar .app-bar-menu > li:after,
.app-bar .app-bar-menu > li > a:after {
  display: table;
  content: "";
}
.app-bar .app-bar-menu > li:after,
.app-bar .app-bar-menu > li > a:after {
  clear: both;
}
.app-bar .app-bar-menu > li > .input-control.text,
.app-bar .app-bar-menu > li > a > .input-control.text,
.app-bar .app-bar-menu > li > .input-control.password,
.app-bar .app-bar-menu > li > a > .input-control.password {
  margin-top: .55rem;
  font-size: .875rem;
  line-height: 1.8rem;
  display: block;
}
.app-bar .app-bar-menu > li > .input-control.text input,
.app-bar .app-bar-menu > li > a > .input-control.text input,
.app-bar .app-bar-menu > li > .input-control.password input,
.app-bar .app-bar-menu > li > a > .input-control.password input {
  border-color: transparent;
}
.app-bar .app-bar-menu > li > .button,
.app-bar .app-bar-menu > li > a > .button {
  margin-top: -0.15rem;
}
.app-bar .app-bar-menu > li > .image-button,
.app-bar .app-bar-menu > li > a > .image-button {
  margin: 0;
  background-color: transparent;
  color: #ffffff;
  font-size: inherit;
}
.app-bar .app-bar-menu > li > .image-button img.icon,
.app-bar .app-bar-menu > li > a > .image-button img.icon {
  padding: 0;
}
.app-bar .app-bar-menu > li .dropdown-toggle:before,
.app-bar .app-bar-menu > li > a .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.app-bar .app-bar-menu > li .dropdown-toggle.active-toggle:before,
.app-bar .app-bar-menu > li > a .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.app-bar .app-bar-menu > li .d-menu .dropdown-toggle.active-toggle:before,
.app-bar .app-bar-menu > li > a .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.app-bar .app-bar-menu > li.dropdown-toggle,
.app-bar .app-bar-menu > li > a.dropdown-toggle {
  padding-right: 1.5rem;
}
.app-bar .app-bar-menu > li.dropdown-toggle:before,
.app-bar .app-bar-menu > li > a.dropdown-toggle:before {
  border-color: #ffffff;
  display: block;
}
.app-bar .app-bar-menu > li {
  padding: 0;
}
.app-bar .app-bar-menu > li .d-menu {
  top: 100%;
  border: 2px solid #005696;
}
.app-bar .app-bar-menu > li .d-menu li:not(.disabled):hover {
  background-color: #eee;
}
.app-bar .app-bar-menu > li .d-menu li:not(.disabled):hover > a {
  color: #1d1d1d;
}
.app-bar .app-bar-menu > li .d-menu .d-menu {
  top: -0.625rem;
  left: 100%;
}
.app-bar .app-bar-menu > li .d-menu .dropdown-toggle:before {
  border-color: #1d1d1d;
}
.app-bar .app-bar-menu.small-dropdown .d-menu li > a {
  font-size: .8em;
  padding: .325rem 1.2rem .325rem 1.8rem;
}
.app-bar .app-bar-pullbutton {
  float: right;
}
.app-bar .app-bar-pullbutton.automatic {
  display: none;
  float: right;
  color: #fff;
  cursor: pointer;
  font: 2rem sans-serif;
  height: 3.125rem;
  width: 3.125rem;
  line-height: 1.25rem;
  vertical-align: middle;
  text-align: center;
  margin: 0;
}
.app-bar .app-bar-pullbutton.automatic:before {
  content: "\2261";
  position: absolute;
  top: .875rem;
  left: .875rem;
}
.app-bar .app-bar-drop-container {
  position: absolute;
  top: 100%;
  left: 0;
  margin-top: 10px;
  border: 2px solid #005696;
  background: #ffffff;
}
.app-bar .app-bar-drop-container:before {
  content: '';
  position: absolute;
  background-color: #ffffff;
  width: 10px;
  height: 10px;
  border: 2px #005696 solid;
  top: 1px;
  left: 1rem;
  margin: -8px 0;
  border-bottom: none;
  border-right: none;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.app-bar .app-bar-drop-container:before {
  z-index: 0;
}
.app-bar .app-bar-drop-container.place-right {
  right: 0;
  left: auto;
}
.app-bar .app-bar-drop-container.place-right:before {
  left: auto;
  right: 1rem;
}
.app-bar .app-bar-element:before,
.app-bar .app-bar-element:after {
  display: table;
  content: "";
}
.app-bar .app-bar-element:after {
  clear: both;
}
.app-bar .app-bar-element > .input-control.text,
.app-bar .app-bar-element > .input-control.password {
  margin-top: .55rem;
  font-size: .875rem;
  line-height: 1.8rem;
  display: block;
}
.app-bar .app-bar-element > .input-control.text input,
.app-bar .app-bar-element > .input-control.password input {
  border-color: transparent;
}
.app-bar .app-bar-element > .button {
  margin-top: -0.15rem;
}
.app-bar .app-bar-element > .image-button {
  margin: 0;
  background-color: transparent;
  color: #ffffff;
  font-size: inherit;
}
.app-bar .app-bar-element > .image-button img.icon {
  padding: 0;
}
.app-bar.drop-up .app-bar-drop-container {
  top: auto;
  bottom: 3.75rem;
}
.app-bar.drop-up .app-bar-drop-container:before {
  top: auto;
  bottom: 1px;
  -webkit-transform: rotate(225deg);
          transform: rotate(225deg);
}
.app-bar.drop-up .app-bar-menu > li > .d-menu {
  top: auto;
  bottom: 3.125rem;
}
.app-bar.drop-up .app-bar-element > .d-menu {
  top: auto;
  bottom: 3.125rem;
}
.app-bar.drop-up .app-bar-menu li .d-menu .d-menu,
.app-bar.drop-up .app-bar-element .d-menu .d-menu {
  top: auto ;
  bottom: 0;
}
.app-bar .app-bar-element .dropdown-toggle:before,
.app-bar .app-bar-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.app-bar .app-bar-element .dropdown-toggle.active-toggle:before,
.app-bar .app-bar-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.app-bar .app-bar-element .d-menu .dropdown-toggle.active-toggle:before,
.app-bar .app-bar-menu .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.app-bar.fixed-top,
.app-bar.fixed-bottom {
  z-index: 1030;
  position: fixed;
}
.app-bar.fixed-top {
  top: 0;
}
.app-bar.fixed-bottom {
  bottom: 0;
}
.app-bar {
  overflow: visible;
  height: auto;
}
.app-bar .app-bar-pullbutton {
  line-height: 3.125rem;
  padding: 0 .625rem;
  font-size: 1rem;
  cursor: pointer;
  color: inherit;
  display: block;
  float: left;
  position: relative;
  vertical-align: middle;
  height: 3.125rem;
  float: right;
}
.app-bar .app-bar-pullbutton:hover,
.app-bar .app-bar-pullbutton:active {
  background-color: #005696;
}
.app-bar .app-bar-pullbutton.branding {
  padding-left: 1rem;
  padding-right: 1rem;
}
.app-bar .app-bar-pullbutton .d-menu {
  top: 100%;
  border: 2px solid #005696;
}
.app-bar .app-bar-pullbutton .d-menu li:not(.disabled):hover {
  background-color: #eee;
}
.app-bar .app-bar-pullbutton .d-menu li:not(.disabled):hover > a {
  color: #1d1d1d;
}
.app-bar .app-bar-pullbutton .d-menu .d-menu {
  top: -0.625rem;
  left: 100%;
}
.app-bar .app-bar-pullbutton .d-menu .dropdown-toggle:before {
  border-color: #1d1d1d;
}
.app-bar .app-bar-pullbutton:before,
.app-bar .app-bar-pullbutton:after {
  display: table;
  content: "";
}
.app-bar .app-bar-pullbutton:after {
  clear: both;
}
.app-bar .app-bar-pullbutton > .input-control.text,
.app-bar .app-bar-pullbutton > .input-control.password {
  margin-top: .55rem;
  font-size: .875rem;
  line-height: 1.8rem;
  display: block;
}
.app-bar .app-bar-pullbutton > .input-control.text input,
.app-bar .app-bar-pullbutton > .input-control.password input {
  border-color: transparent;
}
.app-bar .app-bar-pullbutton > .button {
  margin-top: -0.15rem;
}
.app-bar .app-bar-pullbutton > .image-button {
  margin: 0;
  background-color: transparent;
  color: #ffffff;
  font-size: inherit;
}
.app-bar .app-bar-pullbutton > .image-button img.icon {
  padding: 0;
}
.app-bar .app-bar-pullbutton .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.app-bar .app-bar-pullbutton .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.app-bar .app-bar-pullbutton .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.app-bar .app-bar-pullbutton {
  display: none;
}
.app-bar .app-bar-pullmenu {
  display: none;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 {
  position: absolute;
  right: 0;
  z-index: 1000;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .app-bar-pullmenubar {
  float: right;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .dropdown-toggle:before {
  border-color: #323232;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li:hover {
  background-color: #0072c6;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li .input-control {
  text-align: center;
  display: block;
  margin: 0.325rem;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li:hover a {
  background-color: #0072c6;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li li:not(:hover) {
  color: #1d1d1d;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li li:not(:hover) a {
  background-color: #ffffff;
}
.app-bar .app-bar-pullmenu .app-bar-menu {
  width: 100%;
  border-top: 1px solid #4c9cd7;
  position: relative;
  float: none;
  display: none;
  z-index: 1000 1;
  background-color: #005696;
  clear: both;
}
.app-bar .app-bar-pullmenu .app-bar-menu > li,
.app-bar .app-bar-pullmenu .app-bar-menu > li > a {
  float: none;
}
.app-bar .app-bar-pullmenu .app-bar-menu > li {
  height: auto;
}
.app-bar .app-bar-pullmenu .app-bar-menu li:hover {
  background-color: #0072c6;
}
.app-bar .app-bar-pullmenu .app-bar-menu li:hover a {
  background-color: #0072c6;
  color: #ffffff;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu {
  border: 0;
  border-top: 1px solid #4c9cd7;
  clear: both;
  float: none;
  width: 100%;
  position: relative;
  left: 0;
  box-shadow: none;
  max-width: 100%;
  background-color: #005696;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu li {
  width: 100%;
  background-color: inherit;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu li a {
  padding-left: 20px;
  padding-right: 0;
  background-color: inherit;
  width: 100%;
  color: #ffffff;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu .dropdown-toggle:before {
  border-color: #ffffff;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu .divider {
  background-color: #4c9cd7;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu .d-menu {
  top: 0;
  left: 0;
}
.app-bar > .container {
  padding: 0 !important;
}
.h-menu li:hover > .dropdown-toggle:before,
.v-menu li:hover > .dropdown-toggle:before,
.d-menu li:hover > .dropdown-toggle:before,
.m-menu li:hover > .dropdown-toggle:before {
  border-color: #ffffff;
}
.h-menu {
  text-align: left;
  display: block;
  height: auto;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  background-color: #ffffff;
  border-collapse: separate;
}
.h-menu:before,
.h-menu:after {
  display: table;
  content: "";
}
.h-menu:after {
  clear: both;
}
.h-menu > li {
  display: block;
  float: left;
  position: relative;
}
.h-menu > li:hover {
  background-color: #59cde2;
  color: #ffffff;
}
.h-menu > li:hover > a {
  color: #ffffff;
}
.h-menu > li.no-hovered {
  background-color: inherit;
  color: inherit;
}
.h-menu > li:first-child {
  margin-left: 0;
}
.h-menu > li > a {
  display: block;
  float: left;
  position: relative;
  font-weight: normal;
  color: #727272;
  font-size: .875rem;
  outline: none;
  text-decoration: none;
  padding: 1.125rem 1.625rem;
  border: none;
}
.h-menu > li > a:hover {
  background-color: #59cde2;
  color: #ffffff;
}
.h-menu > li .input-control,
.h-menu > li .button {
  margin-top: 10px;
}
.h-menu > li.active a {
  background-color: #59cde2;
  color: #ffffff;
}
.h-menu > li > .d-menu {
  left: 0;
  top: 100%;
}
.h-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.h-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.f-menu {
  text-align: left;
  display: block;
  height: auto;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  background-color: #ffffff;
  border-collapse: separate;
  display: -webkit-flex;
  display: flex;
}
.f-menu li:hover > .dropdown-toggle:before {
  border-color: #ffffff;
}
.f-menu:before,
.f-menu:after {
  display: table;
  content: "";
}
.f-menu:after {
  clear: both;
}
.f-menu > li {
  display: block;
  float: left;
  position: relative;
}
.f-menu > li:hover {
  background-color: #59cde2;
  color: #ffffff;
}
.f-menu > li:hover > a {
  color: #ffffff;
}
.f-menu > li.no-hovered {
  background-color: inherit;
  color: inherit;
}
.f-menu > li:first-child {
  margin-left: 0;
}
.f-menu > li > a {
  display: block;
  float: left;
  position: relative;
  font-weight: normal;
  color: #727272;
  font-size: .875rem;
  outline: none;
  text-decoration: none;
  padding: 1.125rem 1.625rem;
  border: none;
}
.f-menu > li > a:hover {
  background-color: #59cde2;
  color: #ffffff;
}
.f-menu > li .input-control,
.f-menu > li .button {
  margin-top: 10px;
}
.f-menu > li.active a {
  background-color: #59cde2;
  color: #ffffff;
}
.f-menu > li > .d-menu {
  left: 0;
  top: 100%;
}
.f-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.f-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.f-menu > li > .d-menu {
  left: auto;
}
.f-menu > li {
  text-align: center;
  -webkit-flex: 1 auto;
  flex: 1 auto;
}
.f-menu > li a {
  text-align: center;
  width: 100%;
}
.f-menu > li .d-menu {
  width: 100%;
  max-width: none;
}
.f-menu > li .d-menu li {
  width: 100%;
}
.f-menu > li .d-menu li a {
  width: 100%;
  min-width: 0;
  padding: .75rem 0;
}
.f-menu .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.f-menu.default-dropdown > li .d-menu {
  width: auto;
  min-width: 12.5rem;
}
.f-menu.default-dropdown > li .d-menu a {
  text-align: left;
  padding: .75rem 2rem .75rem 2.5rem;
}
.v-menu {
  text-align: left;
  background: #ffffff;
  max-width: 15.625rem;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
}
.v-menu li {
  display: block;
  float: none;
  position: relative;
}
.v-menu li:before,
.v-menu li:after {
  display: table;
  content: "";
}
.v-menu li:after {
  clear: both;
}
.v-menu li a {
  color: #727272;
  font-size: .875rem;
  display: block;
  float: none;
  padding: .75rem 2rem .75rem 2.5rem;
  text-decoration: none;
  vertical-align: middle;
  position: relative;
  white-space: nowrap;
  min-width: 12.5rem;
  border: none;
}
.v-menu li a img,
.v-menu li a .icon {
  position: absolute;
  left: .875rem;
  top: 50%;
  margin-top: -0.5625rem;
  color: #262626;
  max-height: 1.125rem;
  font-size: 1.125rem;
  display: inline-block;
  margin-right: .3125rem;
  vertical-align: middle;
  text-align: center;
}
.v-menu li.active {
  border-left: 2px solid;
  border-color: #1ba1e2;
}
.v-menu li.active > a {
  background-color: #59cde2;
  color: #ffffff;
  font-weight: bold;
}
.v-menu li:hover {
  text-decoration: none;
  background: #59cde2;
}
.v-menu li:hover > a,
.v-menu li:hover .icon {
  color: #ffffff;
}
.v-menu li a[data-hotkey] {
  padding-right: 3.2rem;
}
.v-menu li a[data-hotkey]:after {
  content: attr(data-hotkey);
  position: absolute;
  right: 1.2rem;
  width: auto;
  font-size: .8em;
}
.v-menu .divider {
  padding: 0;
  height: 1px;
  margin: 0 1px;
  overflow: hidden;
  background-color: #f2f2f2;
}
.v-menu .divider:hover {
  background-color: #f2f2f2;
}
.v-menu.subdown .d-menu {
  min-width: 0;
  position: relative;
  width: 100%;
  left: 0 ;
  right: 0 ;
  top: 100%;
  box-shadow: none;
}
.v-menu .item-block {
  display: block;
  padding: .625rem;
  background-color: #eeeeee;
}
.v-menu .d-menu {
  left: 100%;
  top: -10%;
}
.v-menu .menu-title {
  background-color: #f6f7f8;
  font-size: 12px;
  line-height: 14px;
  padding: 4px 8px;
  border: 0;
  color: #646464;
}
.v-menu .menu-title:first-child {
  margin: 0;
  border-top-width: 0;
}
.v-menu .menu-title:first-child:hover {
  border-top-width: 0;
}
.v-menu .menu-title:hover {
  background-color: #f6f7f8;
  cursor: default;
  border: 0;
}
.v-menu .dropdown-toggle:before {
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
  margin-top: -2px;
}
.v-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.v-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  transition: all 0.3s ease;
}
.v-menu.subdown .dropdown-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -1.25rem;
}
.v-menu.subdown .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.v-menu li.disabled a {
  color: #eeeeee;
}
.v-menu li.disabled:hover {
  background-color: inherit;
  cursor: default;
  border: 0;
}
.v-menu li.disabled:hover a {
  cursor: inherit;
}
.d-menu {
  text-align: left;
  background: #ffffff;
  max-width: 15.625rem;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
  border-collapse: separate;
  position: absolute;
  display: none;
  z-index: 1000;
  left: 0;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.d-menu li:hover > .dropdown-toggle:before {
  border-color: #ffffff;
}
.d-menu li {
  display: block;
  float: none;
  position: relative;
}
.d-menu li:before,
.d-menu li:after {
  display: table;
  content: "";
}
.d-menu li:after {
  clear: both;
}
.d-menu li a {
  color: #727272;
  font-size: .875rem;
  display: block;
  float: none;
  padding: .75rem 2rem .75rem 2.5rem;
  text-decoration: none;
  vertical-align: middle;
  position: relative;
  white-space: nowrap;
  min-width: 12.5rem;
  border: none;
}
.d-menu li a img,
.d-menu li a .icon {
  position: absolute;
  left: .875rem;
  top: 50%;
  margin-top: -0.5625rem;
  color: #262626;
  max-height: 1.125rem;
  font-size: 1.125rem;
  display: inline-block;
  margin-right: .3125rem;
  vertical-align: middle;
  text-align: center;
}
.d-menu li.active {
  border-left: 2px solid;
  border-color: #1ba1e2;
}
.d-menu li.active > a {
  background-color: #59cde2;
  color: #ffffff;
  font-weight: bold;
}
.d-menu li:hover {
  text-decoration: none;
  background: #59cde2;
}
.d-menu li:hover > a,
.d-menu li:hover .icon {
  color: #ffffff;
}
.d-menu li a[data-hotkey] {
  padding-right: 3.2rem;
}
.d-menu li a[data-hotkey]:after {
  content: attr(data-hotkey);
  position: absolute;
  right: 1.2rem;
  width: auto;
  font-size: .8em;
}
.d-menu .divider {
  padding: 0;
  height: 1px;
  margin: 0 1px;
  overflow: hidden;
  background-color: #f2f2f2;
}
.d-menu .divider:hover {
  background-color: #f2f2f2;
}
.d-menu.subdown .d-menu {
  min-width: 0;
  position: relative;
  width: 100%;
  left: 0 ;
  right: 0 ;
  top: 100%;
  box-shadow: none;
}
.d-menu .item-block {
  display: block;
  padding: .625rem;
  background-color: #eeeeee;
}
.d-menu .d-menu {
  left: 100%;
  top: -10%;
}
.d-menu .menu-title {
  background-color: #f6f7f8;
  font-size: 12px;
  line-height: 14px;
  padding: 4px 8px;
  border: 0;
  color: #646464;
}
.d-menu .menu-title:first-child {
  margin: 0;
  border-top-width: 0;
}
.d-menu .menu-title:first-child:hover {
  border-top-width: 0;
}
.d-menu .menu-title:hover {
  background-color: #f6f7f8;
  cursor: default;
  border: 0;
}
.d-menu .dropdown-toggle:before {
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
  margin-top: -2px;
}
.d-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  transition: all 0.3s ease;
}
.d-menu.subdown .dropdown-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -1.25rem;
}
.d-menu.subdown .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.d-menu li.disabled a {
  color: #eeeeee;
}
.d-menu li.disabled:hover {
  background-color: inherit;
  cursor: default;
  border: 0;
}
.d-menu li.disabled:hover a {
  cursor: inherit;
}
.d-menu.context li a {
  font-size: .75rem;
  padding: .3125rem 2rem .3125rem 2.5rem;
}
.d-menu.context li a .icon {
  margin-top: -0.4375rem;
  font-size: .825rem;
  color: inherit;
}
.d-menu.no-min-size li a {
  min-width: 0;
}
.d-menu.full-size li a {
  min-width: 0;
  width: 100%;
}
.d-menu .d-menu {
  left: 100%;
  top: -10%;
}
.d-menu.open {
  display: block ;
}
.d-menu.drop-left {
  left: -100%;
}
.d-menu.drop-up {
  top: auto;
  bottom: 0;
}
.d-menu.context li a {
  font-size: .75rem;
  padding: .3125rem 2rem .3125rem 2.5rem;
}
.d-menu.context li a .icon {
  margin-top: -0.4375rem;
}
.d-menu.place-right {
  left: auto ;
  right: 0;
  width: auto;
}
.h-menu,
.v-menu,
.d-menu {
  border-collapse: separate;
}
.m-menu {
  border-collapse: separate;
  text-align: left;
  display: block;
  height: auto ;
  position: relative;
  background-color: #ffffff;
  color: #1d1d1d;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
  list-style: none inside none;
  margin: 0;
  padding: 0;
}
.m-menu:before,
.m-menu:after {
  display: table;
  content: "";
}
.m-menu:after {
  clear: both;
}
.m-menu > li,
.m-menu .m-menu-item {
  display: block;
  float: left;
  background-color: #ffffff;
}
.m-menu > li:hover,
.m-menu .m-menu-item:hover {
  background-color: #59cde2;
}
.m-menu > li:hover > a,
.m-menu .m-menu-item:hover > a {
  color: #ffffff;
}
.m-menu > li.no-hovered,
.m-menu .m-menu-item.no-hovered {
  background-color: inherit;
  color: inherit;
}
.m-menu > li:first-child,
.m-menu .m-menu-item:first-child {
  margin-left: 0;
}
.m-menu > li > a,
.m-menu .m-menu-item > a {
  display: block;
  float: left;
  position: relative;
  font-weight: normal;
  color: inherit;
  font-size: .875rem;
  outline: none;
  text-decoration: none;
  padding: 1rem 1.625rem;
  border: none;
}
.m-menu > li > a:hover,
.m-menu .m-menu-item > a:hover {
  background-color: inherit;
}
.m-menu > li > a.dropdown-toggle,
.m-menu .m-menu-item > a.dropdown-toggle {
  padding: 1rem 1.625rem 1rem 1.125rem;
}
.m-menu > li.active-container,
.m-menu .m-menu-item.active-container {
  background-color: #59cde2;
}
.m-menu > li.active-container a,
.m-menu .m-menu-item.active-container a {
  color: #ffffff;
}
.m-menu > li.active-container a.dropdown-toggle:before,
.m-menu .m-menu-item.active-container a.dropdown-toggle:before {
  border-color: #ffffff;
}
.m-menu > li .d-menu,
.m-menu .m-menu-item .d-menu {
  left: 0;
  top: 100%;
}
.m-menu .m-menu-container {
  position: absolute;
  left: 0;
  right: 0;
  top: 100%;
  padding: .3125rem;
  font-size: .75rem;
  z-index: 1000;
  background-color: inherit;
}
.m-menu .m-menu-container li,
.m-menu .m-menu-container a {
  color: #ffffff;
}
.m-menu .m-menu-container a {
  text-decoration: underline;
}
.m-menu .m-menu-container li:hover > a,
.m-menu .m-menu-container li.active > a {
  text-decoration: none;
}
.m-menu .m-menu-container {
  display: none;
}
.m-menu .m-menu-container.open {
  display: block;
}
.m-menu > li .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.m-menu > li .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.v-menu.context li a,
.d-menu.context li a {
  font-size: .75rem;
  padding: .3125rem 2rem .3125rem 2.5rem;
}
.v-menu.context li a .icon,
.d-menu.context li a .icon {
  margin-top: -0.4375rem;
  font-size: .825rem;
  color: inherit;
}
.v-menu.no-min-size li a,
.d-menu.no-min-size li a {
  min-width: 0;
}
.v-menu.full-size li a,
.d-menu.full-size li a {
  min-width: 0;
  width: 100%;
}
.horizontal-menu {
  display: block;
  width: 100%;
  color: #1d1d1d;
  position: relative;
  padding: 0;
  margin: 0;
  list-style: none inside none;
}
.horizontal-menu:before,
.horizontal-menu:after {
  display: table;
  content: "";
}
.horizontal-menu:after {
  clear: both;
}
.horizontal-menu > li {
  display: block;
  float: left;
  color: inherit;
  background-color: inherit;
  position: relative;
}
.horizontal-menu > li > a {
  position: relative;
  display: block;
  float: left;
  font-size: 1.4rem;
  color: inherit;
  background-color: inherit;
  padding: .625rem 1.625rem;
  line-height: 1.4rem;
}
.horizontal-menu > li > .d-menu {
  left: 0;
  top: 100%;
}
.horizontal-menu.compact > li > a {
  font-size: .9rem;
  line-height: .9rem;
}
.horizontal-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.horizontal-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.horizontal-menu .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.vertical-menu {
  display: block;
  width: 100%;
  color: #1d1d1d;
  padding: 0;
  margin: 0;
  list-style: none inside none;
  position: relative;
  width: auto;
  float: left;
}
.vertical-menu:before,
.vertical-menu:after {
  display: table;
  content: "";
}
.vertical-menu:after {
  clear: both;
}
.vertical-menu > li {
  display: block;
  float: left;
  color: inherit;
  background-color: inherit;
  position: relative;
}
.vertical-menu > li > a {
  position: relative;
  display: block;
  float: left;
  font-size: 1.4rem;
  color: inherit;
  background-color: inherit;
  padding: .625rem 1.625rem;
  line-height: 1.4rem;
}
.vertical-menu > li > .d-menu {
  left: 0;
  top: 100%;
}
.vertical-menu.compact > li > a {
  font-size: .9rem;
  line-height: .9rem;
}
.vertical-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.vertical-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.vertical-menu .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.vertical-menu > li > .d-menu {
  left: auto;
}
.vertical-menu > li {
  float: none;
}
.vertical-menu > li > a {
  float: none;
}
.vertical-menu > li > .d-menu {
  left: 100%;
  top: 0;
}
.vertical-menu.compact > li > a {
  padding-top: .325rem;
  padding-bottom: .325rem;
}
.vertical-menu .dropdown-toggle:before {
  margin-top: -2px;
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
}
.vertical-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.vertical-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  transition: all 0.3s ease;
}
.t-menu {
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
  background-color: #ffffff;
  border-collapse: separate;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.t-menu > li {
  position: relative;
}
.t-menu > li > a {
  display: block;
  padding: 1rem 1.2rem;
  border-bottom: 1px #eeeeee solid;
  position: relative;
}
.t-menu > li > a .icon {
  width: 1.5rem;
  height: 1.5rem;
  font-size: 1.5rem;
}
.t-menu > li:hover > a {
  background-color: #1ba1e2;
  color: #ffffff;
}
.t-menu > li:last-child a {
  border-bottom: 0;
}
.t-menu.compact > li > a {
  padding: .5rem .7rem;
}
.t-menu.compact > li > a .icon {
  width: 1rem;
  height: 1rem;
  font-size: 1rem;
}
.t-menu li .t-menu {
  position: absolute;
  left: 100%;
  margin-left: .3125rem ;
  top: 0;
  float: none;
}
.t-menu li .t-menu > li {
  float: left;
  display: block;
}
.t-menu li .t-menu > li > a {
  float: left;
  display: block;
}
.t-menu .t-menu.horizontal .t-menu {
  left: 0 ;
  top: 100% ;
  margin-top: .3125rem ;
  margin-left: 0 ;
}
.t-menu .dropdown-toggle:after {
  content: "";
  background-color: transparent;
  position: absolute;
  left: auto;
  top: auto;
  bottom: 0;
  right: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 0 0 8px 8px;
  border-color: transparent transparent #1ba1e2 transparent;
  -webkit-transform: rotate(0);
          transform: rotate(0);
}
.t-menu .dropdown-toggle:before {
  display: none;
}
.t-menu > li:hover > .dropdown-toggle:after {
  border-color: transparent transparent #1b6eae transparent;
}
.t-menu.horizontal {
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
  background-color: #ffffff;
  border-collapse: separate;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.t-menu.horizontal > li {
  position: relative;
}
.t-menu.horizontal > li > a {
  display: block;
  padding: 1rem 1.2rem;
  border-bottom: 1px #eeeeee solid;
  position: relative;
}
.t-menu.horizontal > li > a .icon {
  width: 1.5rem;
  height: 1.5rem;
  font-size: 1.5rem;
}
.t-menu.horizontal > li:hover > a {
  background-color: #1ba1e2;
  color: #ffffff;
}
.t-menu.horizontal > li:last-child a {
  border-bottom: 0;
}
.t-menu.horizontal.compact > li > a {
  padding: .5rem .7rem;
}
.t-menu.horizontal.compact > li > a .icon {
  width: 1rem;
  height: 1rem;
  font-size: 1rem;
}
.t-menu.horizontal li .t-menu {
  position: absolute;
  left: 100%;
  margin-left: .3125rem ;
  top: 0;
  float: none;
}
.t-menu.horizontal li .t-menu > li {
  float: left;
  display: block;
}
.t-menu.horizontal li .t-menu > li > a {
  float: left;
  display: block;
}
.t-menu.horizontal .t-menu.horizontal .t-menu {
  left: 0 ;
  top: 100% ;
  margin-top: .3125rem ;
  margin-left: 0 ;
}
.t-menu.horizontal .dropdown-toggle:after {
  content: "";
  background-color: transparent;
  position: absolute;
  left: auto;
  top: auto;
  bottom: 0;
  right: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 0 0 8px 8px;
  border-color: transparent transparent #1ba1e2 transparent;
  -webkit-transform: rotate(0);
          transform: rotate(0);
}
.t-menu.horizontal .dropdown-toggle:before {
  display: none;
}
.t-menu.horizontal > li:hover > .dropdown-toggle:after {
  border-color: transparent transparent #1b6eae transparent;
}
.t-menu.horizontal > li {
  display: block;
  float: left;
}
.t-menu.horizontal > li > a {
  display: block;
  float: left;
  border-right: 1px #eeeeee solid;
  border-bottom: 0;
}
.t-menu.horizontal > li:last-child > a {
  border-right: 0;
}
.t-menu.horizontal .t-menu:not(.horizontal) {
  left: 0;
  top: 100% ;
  margin-top: .3125rem ;
  margin-left: 0 ;
}
.t-menu.horizontal .t-menu:not(.horizontal) .t-menu.horizontal {
  left: 100% ;
  margin-left: .3125rem ;
  top: 0 ;
  float: left;
}
.horizontal-menu > li > .d-menu,
.h-menu > li > .d-menu,
.m-menu > li > .d-menu {
  left: auto;
}
[data-role="dropdown"]:not(.open),
[data-role="dropdown"]:not(.keep-open) {
  display: none;
  position: absolute;
  z-index: 1000;
}
.button {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
}
.button.default {
  background-color: #008287;
  color: #fff;
}
.button:hover {
  border-color: #787878;
}
.button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.button:focus {
  outline: 0;
}
.button:disabled,
.button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.button * {
  color: inherit;
}
.button *:hover {
  color: inherit;
}
.button.rounded {
  border-radius: .325rem;
}
.button > [class*=mif-] {
  vertical-align: middle;
}
.button.button-shadow {
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.3);
}
.button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.round-button,
.cycle-button,
.square-button {
  padding: 0 1rem;
  height: 2.125rem;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  width: 2.125rem;
  min-width: 2.125rem;
  padding: 0 ;
  border-radius: 50%;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
}
.round-button.default,
.cycle-button.default,
.square-button.default {
  background-color: #008287;
  color: #fff;
}
.round-button:hover,
.cycle-button:hover,
.square-button:hover {
  border-color: #787878;
}
.round-button:active,
.cycle-button:active,
.square-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.round-button:focus,
.cycle-button:focus,
.square-button:focus {
  outline: 0;
}
.round-button:disabled,
.cycle-button:disabled,
.square-button:disabled,
.round-button.disabled,
.cycle-button.disabled,
.square-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.round-button *,
.cycle-button *,
.square-button * {
  color: inherit;
}
.round-button *:hover,
.cycle-button *:hover,
.square-button *:hover {
  color: inherit;
}
.round-button.rounded,
.cycle-button.rounded,
.square-button.rounded {
  border-radius: .325rem;
}
.round-button > [class*=mif-],
.cycle-button > [class*=mif-],
.square-button > [class*=mif-] {
  vertical-align: middle;
}
.round-button img,
.cycle-button img,
.square-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.round-button.loading-pulse,
.cycle-button.loading-pulse,
.square-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.round-button.loading-pulse:before,
.cycle-button.loading-pulse:before,
.square-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.round-button.loading-pulse.lighten:before,
.cycle-button.loading-pulse.lighten:before,
.square-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.round-button.loading-cube,
.cycle-button.loading-cube,
.square-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.round-button.loading-cube:before,
.cycle-button.loading-cube:before,
.square-button.loading-cube:before,
.round-button.loading-cube:after,
.cycle-button.loading-cube:after,
.square-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.round-button.loading-cube:after,
.cycle-button.loading-cube:after,
.square-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.round-button.loading-cube.lighten:before,
.cycle-button.loading-cube.lighten:before,
.square-button.loading-cube.lighten:before,
.round-button.loading-cube.lighten:after,
.cycle-button.loading-cube.lighten:after,
.square-button.loading-cube.lighten:after {
  background-color: #fff;
}
.round-button.dropdown-toggle,
.cycle-button.dropdown-toggle,
.square-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.round-button.dropdown-toggle.drop-marker-light:before,
.cycle-button.dropdown-toggle.drop-marker-light:before,
.square-button.dropdown-toggle.drop-marker-light:before,
.round-button.dropdown-toggle.drop-marker-light:after,
.cycle-button.dropdown-toggle.drop-marker-light:after,
.square-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.round-button.primary,
.cycle-button.primary,
.square-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.round-button.primary:active,
.cycle-button.primary:active,
.square-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.round-button.success,
.cycle-button.success,
.square-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.round-button.success:active,
.cycle-button.success:active,
.square-button.success:active {
  background: #128023;
  color: #ffffff;
}
.round-button.danger,
.cycle-button.danger,
.square-button.danger,
.round-button.alert,
.cycle-button.alert,
.square-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.round-button.danger:active,
.cycle-button.danger:active,
.square-button.danger:active,
.round-button.alert:active,
.cycle-button.alert:active,
.square-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.round-button.info,
.cycle-button.info,
.square-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.round-button.info:active,
.cycle-button.info:active,
.square-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.round-button.warning,
.cycle-button.warning,
.square-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.round-button.warning:active,
.cycle-button.warning:active,
.square-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.round-button.link,
.cycle-button.link,
.square-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.round-button.link:hover,
.cycle-button.link:hover,
.square-button.link:hover,
.round-button.link:active,
.cycle-button.link:active,
.square-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.square-button {
  border-radius: 0;
}
a.button,
a.round-button,
a.square-button {
  color: inherit;
}
a.button:hover,
a.round-button:hover,
a.square-button:hover {
  text-decoration: none;
}
.button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.button.loading-pulse.lighten:before {
  background-color: #fff;
}
.button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.button.loading-cube:before,
.button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.button.loading-cube.lighten:before,
.button.loading-cube.lighten:after {
  background-color: #fff;
}
.command-button {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  height: auto;
  text-align: left;
  font-size: 1.325rem;
  padding-left: 4rem;
  padding-top: 8px;
  padding-bottom: 4px;
}
.command-button.default {
  background-color: #008287;
  color: #fff;
}
.command-button:hover {
  border-color: #787878;
}
.command-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.command-button:focus {
  outline: 0;
}
.command-button:disabled,
.command-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.command-button * {
  color: inherit;
}
.command-button *:hover {
  color: inherit;
}
.command-button.rounded {
  border-radius: .325rem;
}
.command-button > [class*=mif-] {
  vertical-align: middle;
}
.command-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.command-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.command-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.command-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.command-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.command-button.loading-cube:before,
.command-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.command-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.command-button.loading-cube.lighten:before,
.command-button.loading-cube.lighten:after {
  background-color: #fff;
}
.command-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.command-button.dropdown-toggle.drop-marker-light:before,
.command-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.command-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.command-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.command-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.command-button.success:active {
  background: #128023;
  color: #ffffff;
}
.command-button.danger,
.command-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.command-button.danger:active,
.command-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.command-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.command-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.command-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.command-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.command-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.command-button.link:hover,
.command-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.command-button small {
  display: block;
  font-size: .8rem;
  line-height: 1.625rem;
  margin-top: -0.3125rem;
}
.command-button .icon {
  left: 1rem;
  top: 50%;
  margin-top: -1rem;
  position: absolute;
  font-size: 2rem;
  height: 2rem;
  width: 2rem;
  margin-right: .625rem;
}
.command-button.icon-right {
  padding-left: 1rem;
  padding-right: 4rem;
}
.command-button.icon-right .icon {
  left: auto;
  right: 0;
}
.image-button {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  border: 0;
  padding-left: 2.75rem;
  background-color: #eeeeee;
}
.image-button.default {
  background-color: #008287;
  color: #fff;
}
.image-button:hover {
  border-color: #787878;
}
.image-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.image-button:focus {
  outline: 0;
}
.image-button:disabled,
.image-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.image-button * {
  color: inherit;
}
.image-button *:hover {
  color: inherit;
}
.image-button.rounded {
  border-radius: .325rem;
}
.image-button > [class*=mif-] {
  vertical-align: middle;
}
.image-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.image-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.image-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.image-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.image-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.image-button.loading-cube:before,
.image-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.image-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.image-button.loading-cube.lighten:before,
.image-button.loading-cube.lighten:after {
  background-color: #fff;
}
.image-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.image-button.dropdown-toggle.drop-marker-light:before,
.image-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.image-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.image-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.image-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.image-button.success:active {
  background: #128023;
  color: #ffffff;
}
.image-button.danger,
.image-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.image-button.danger:active,
.image-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.image-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.image-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.image-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.image-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.image-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.image-button.link:hover,
.image-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.image-button:active {
  background-color: #e1e1e1;
}
.image-button .icon {
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 2.125rem;
  padding: .525rem;
  font-size: 1rem;
  background-color: #999999;
  text-align: center;
  vertical-align: middle;
}
.image-button img.icon {
  padding-top: .525rem;
}
.image-button.icon-right {
  padding-left: 1rem;
  padding-right: 2.75rem;
}
.image-button.icon-right .icon {
  right: 0;
  left: auto;
}
a.image-button {
  padding-top: .525rem;
}
.image-button {
  line-height: 100%;
}
.image-button.small-button {
  padding-left: 2rem;
  padding-right: 1rem;
}
.image-button.small-button .icon {
  width: 1.625rem;
  font-size: .875rem;
  height: 100%;
  padding: .4rem;
}
.image-button.small-button.icon-right {
  padding-left: .625rem;
  padding-right: 2rem;
}
.shortcut-button {
  padding: 0 1rem;
  height: 2.125rem;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  width: 5.75rem;
  height: 5.75rem;
  text-align: center;
  font-size: .75rem;
}
.shortcut-button.default {
  background-color: #008287;
  color: #fff;
}
.shortcut-button:hover {
  border-color: #787878;
}
.shortcut-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.shortcut-button:focus {
  outline: 0;
}
.shortcut-button:disabled,
.shortcut-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.shortcut-button * {
  color: inherit;
}
.shortcut-button *:hover {
  color: inherit;
}
.shortcut-button.rounded {
  border-radius: .325rem;
}
.shortcut-button > [class*=mif-] {
  vertical-align: middle;
}
.shortcut-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.shortcut-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.shortcut-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.shortcut-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.shortcut-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.shortcut-button.loading-cube:before,
.shortcut-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.shortcut-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.shortcut-button.loading-cube.lighten:before,
.shortcut-button.loading-cube.lighten:after {
  background-color: #fff;
}
.shortcut-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.shortcut-button.dropdown-toggle.drop-marker-light:before,
.shortcut-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.shortcut-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.shortcut-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.shortcut-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.shortcut-button.success:active {
  background: #128023;
  color: #ffffff;
}
.shortcut-button.danger,
.shortcut-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.shortcut-button.danger:active,
.shortcut-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.shortcut-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.shortcut-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.shortcut-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.shortcut-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.shortcut-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.shortcut-button.link:hover,
.shortcut-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.shortcut-button .icon,
.shortcut-button .title {
  display: block;
  color: inherit;
}
.shortcut-button .icon {
  font-size: 1.7rem;
  height: 1.7rem;
  width: 1.7rem;
  margin: .875rem auto;
}
.shortcut-button .badge {
  color: inherit;
  position: absolute;
  top: 0;
  right: 0;
  font-size: .7rem;
  line-height: 1rem;
  padding: 0 .225rem;
}
a.shortcut-button {
  padding-top: 10px;
}
.button.dropdown-toggle {
  padding-right: 1.625rem;
}
.button.dropdown-toggle.drop-marker-light:before,
.button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.nav-button {
  width: 2rem;
  height: 2rem;
  background-size: 1rem 1rem;
  background: center center no-repeat;
  text-indent: -9999px;
  border: 0;
  display: inline-block;
  cursor: pointer;
  z-index: 2;
  position: relative;
}
.nav-button span {
  position: absolute;
  top: 1.2rem;
  left: .5rem;
  width: 1.2rem;
  height: 2px;
  margin: 0 0 0;
  background: #1d1d1d;
  -webkit-transform: rotate(0);
          transform: rotate(0);
  transition: all 0.3s linear;
}
.nav-button span:before,
.nav-button span:after {
  content: '';
  position: absolute;
  top: -0.5rem;
  right: 0;
  width: 1.2rem;
  height: 2px;
  background: #1d1d1d;
  -webkit-transform: rotate(0);
          transform: rotate(0);
  transition: all 0.3s linear;
}
.nav-button span:after {
  top: .5rem;
}
.nav-button.transform span {
  -webkit-transform: rotate(180deg);
          transform: rotate(180deg);
  background: #1d1d1d;
}
.nav-button.transform span:before,
.nav-button.transform span:after {
  content: '';
  top: -5px;
  right: 0;
  width: .75rem;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.nav-button.transform span:after {
  top: 5px;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.nav-button.light span {
  background-color: #ffffff;
}
.nav-button.light span:before,
.nav-button.light span:after {
  background-color: #ffffff;
}
.group-of-buttons .button.active,
.group-of-buttons .toolbar-button.active {
  background-color: #00ccff;
  color: #ffffff;
}
.group-of-buttons .button:active,
.group-of-buttons .toolbar-button:active {
  background-color: #1ba1e2;
  color: #ffffff;
}
.split-button,
.dropdown-button {
  display: inline-block;
  position: relative;
  vertical-align: middle;
}
.split-button:before,
.dropdown-button:before,
.split-button:after,
.dropdown-button:after {
  display: table;
  content: "";
}
.split-button:after,
.dropdown-button:after {
  clear: both;
}
.split-button .button,
.dropdown-button .button,
.split-button .split,
.dropdown-button .split {
  display: block;
  float: left;
}
.split-button .split,
.dropdown-button .split {
  padding: 0 1rem 0 .625rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle ;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  outline: none;
  font-size: .875rem;
  position: relative;
  margin: .15625rem 0;
}
.split-button .split:hover,
.dropdown-button .split:hover {
  background-color: #eeeeee;
  border-color: #787878;
}
.split-button .split.dropdown-toggle:before,
.dropdown-button .split.dropdown-toggle:before {
  transition: all 0.3s ease;
}
.split-button .split.dropdown-toggle.active-toggle:before,
.dropdown-button .split.dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.split-button .split-content,
.dropdown-button .split-content {
  position: absolute;
  top: 100%;
}
.split.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.split.primary:active {
  background: #1b6eae;
}
.split.primary:hover {
  background: #59cde2;
  border-color: #59cde2;
}
.split.primary.dropdown-toggle:before {
  border-color: #ffffff;
}
.split.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.split.success:active {
  background: #128023;
}
.split.success:hover {
  background: #7ad61d;
  border-color: #7ad61d;
}
.split.success.dropdown-toggle:before {
  border-color: #ffffff;
}
.split.danger {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.split.danger:active {
  background: #9a1616;
}
.split.danger:hover {
  background: #da5a53;
  border-color: #da5a53;
}
.split.danger.dropdown-toggle:before {
  border-color: #ffffff;
}
.split.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.split.info:active {
  background: #1ba1e2;
}
.split.info:hover {
  background: #4390df;
  border-color: #4390df;
}
.split.info.dropdown-toggle:before {
  border-color: #ffffff;
}
.split.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.split.warning:active {
  background: #bf5a15;
}
.split.warning:hover {
  background: #ffc194;
  border-color: #ffc194;
}
.split.warning.dropdown-toggle:before {
  border-color: #ffffff;
}
.mini-button,
.small-button,
.large-button,
.big-button {
  line-height: 100%;
}
.mini-button {
  font-size: .6rem;
  padding: .2rem .625rem;
  height: 1.4rem;
}
.small-button {
  font-size: .7rem;
  padding: 0 .625rem;
  height: 1.7rem;
}
.large-button {
  height: 2.55rem;
  font-size: 1.05rem;
}
.big-button {
  height: 3.125rem;
  font-size: 1.2rem;
}
.round-button.mini-button,
.cycle-button.mini-button,
.square-button.mini-button {
  width: 1.4rem;
  height: 1.4rem;
  font-size: .6rem;
  line-height: 1;
  padding: 0;
  min-width: 0;
}
.round-button.small-button,
.cycle-button.small-button,
.square-button.small-button {
  width: 1.7rem;
  height: 1.7rem;
  font-size: .7rem;
  line-height: 1.68rem;
  padding: 0;
  min-width: 0;
}
.round-button.large-button,
.cycle-button.large-button,
.square-button.large-button {
  font-size: 1.05rem;
  line-height: 1;
  width: 2.55rem;
  height: 2.55rem;
}
.round-button.big-button,
.cycle-button.big-button,
.square-button.big-button {
  font-size: 1.2rem;
  line-height: 1;
  width: 3.125rem;
  height: 3.125rem;
}
.button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.button.success:active {
  background: #128023;
  color: #ffffff;
}
.button.danger,
.button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.button.danger:active,
.button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.button.link:hover,
.button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
a.button,
span.button,
div.button,
a.round-button,
span.round-button,
div.round-button,
a.cycle-button,
span.cycle-button,
div.cycle-button,
a.square-button,
span.square-button,
div.square-button {
  padding-top: .53125rem;
}
a.button.big-button,
span.button.big-button,
div.button.big-button,
a.round-button.big-button,
span.round-button.big-button,
div.round-button.big-button,
a.cycle-button.big-button,
span.cycle-button.big-button,
div.cycle-button.big-button,
a.square-button.big-button,
span.square-button.big-button,
div.square-button.big-button {
  padding-top: .78125rem;
}
.dropdown-button button.dropdown-toggle:before {
  transition: all 0.3s ease;
}
.dropdown-button button.dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.shortcut-button[data-hotkey]::after {
  position: absolute;
  content: attr(data-hotkey);
  font-size: .625rem;
  bottom: 0;
  right: 0;
  color: #999999;
}
.shortcut-button[data-hotkey].no-hotkey-display::after {
  display: none;
}
.toolbar {
  position: relative;
}
.toolbar:before,
.toolbar:after {
  display: table;
  content: "";
}
.toolbar:after {
  clear: both;
}
.toolbar-section {
  position: relative;
  padding-left: .5725rem;
  margin: .125rem;
  float: left;
  width: auto;
}
.toolbar-section.no-divider:before {
  display: none;
}
.toolbar-section:before {
  position: absolute;
  content: "";
  width: .325rem;
  height: 100%;
  left: 0;
  background-color: #eeeeee;
  cursor: move;
}
.toolbar .toolbar-button {
  padding: 0 1rem;
  height: 2.125rem;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  width: 2.125rem;
  min-width: 2.125rem;
  padding: 0 ;
  border-radius: 50%;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
  border-radius: 0;
  margin: 0;
}
.toolbar .toolbar-button.default {
  background-color: #008287;
  color: #fff;
}
.toolbar .toolbar-button:hover {
  border-color: #787878;
}
.toolbar .toolbar-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.toolbar .toolbar-button:focus {
  outline: 0;
}
.toolbar .toolbar-button:disabled,
.toolbar .toolbar-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.toolbar .toolbar-button * {
  color: inherit;
}
.toolbar .toolbar-button *:hover {
  color: inherit;
}
.toolbar .toolbar-button.rounded {
  border-radius: .325rem;
}
.toolbar .toolbar-button > [class*=mif-] {
  vertical-align: middle;
}
.toolbar .toolbar-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.toolbar .toolbar-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.toolbar .toolbar-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.toolbar .toolbar-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.toolbar .toolbar-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.toolbar .toolbar-button.loading-cube:before,
.toolbar .toolbar-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.toolbar .toolbar-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.toolbar .toolbar-button.loading-cube.lighten:before,
.toolbar .toolbar-button.loading-cube.lighten:after {
  background-color: #fff;
}
.toolbar .toolbar-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.toolbar .toolbar-button.dropdown-toggle.drop-marker-light:before,
.toolbar .toolbar-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.toolbar .toolbar-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.toolbar .toolbar-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.toolbar .toolbar-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.toolbar .toolbar-button.success:active {
  background: #128023;
  color: #ffffff;
}
.toolbar .toolbar-button.danger,
.toolbar .toolbar-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.toolbar .toolbar-button.danger:active,
.toolbar .toolbar-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.toolbar .toolbar-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.toolbar .toolbar-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.toolbar .toolbar-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.toolbar .toolbar-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.toolbar .toolbar-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.toolbar .toolbar-button.link:hover,
.toolbar .toolbar-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.toolbar .toolbar-button.mini-button {
  width: 1.4rem;
  height: 1.4rem;
  font-size: .6rem;
  line-height: 1;
  padding: 0;
  min-width: 0;
}
.toolbar .toolbar-button.small-button {
  width: 1.7rem;
  height: 1.7rem;
  font-size: .7rem;
  line-height: 1.68rem;
  padding: 0;
  min-width: 0;
}
.toolbar .toolbar-button.large-button {
  font-size: 1.05rem;
  line-height: 1;
  width: 2.55rem;
  height: 2.55rem;
}
.toolbar .toolbar-button.big-button {
  font-size: 1.2rem;
  line-height: 1;
  width: 3.125rem;
  height: 3.125rem;
}
.toolbar-group,
.toolbar-section {
  display: inline-block;
}
.toolbar-group.condensed:before,
.toolbar-section.condensed:before,
.toolbar-group.condensed:after,
.toolbar-section.condensed:after {
  display: table;
  content: "";
}
.toolbar-group.condensed:after,
.toolbar-section.condensed:after {
  clear: both;
}
.toolbar-group.condensed .button,
.toolbar-section.condensed .button,
.toolbar-group.condensed .toolbar-button,
.toolbar-section.condensed .toolbar-button {
  display: block;
  float: left;
}
.toolbar-group-check .toolbar-button.checked {
  background-color: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.toolbar-group-radio .toolbar-button.checked {
  background-color: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.toolbar.rounded > .toolbar-button,
.toolbar.rounded > .toolbar-section .toolbar-button {
  border-radius: .3125rem;
}
.toolbar.rounded .toolbar-section:before {
  border-radius: .3125rem;
}
.v-toolbar {
  position: relative;
  float: left;
}
.v-toolbar:before,
.v-toolbar:after {
  display: table;
  content: "";
}
.v-toolbar:after {
  clear: both;
}
.v-toolbar .toolbar-button {
  padding: 0 1rem;
  height: 2.125rem;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  width: 2.125rem;
  min-width: 2.125rem;
  padding: 0 ;
  border-radius: 50%;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
  border-radius: 0;
  margin: 0;
}
.v-toolbar .toolbar-button.default {
  background-color: #008287;
  color: #fff;
}
.v-toolbar .toolbar-button:hover {
  border-color: #787878;
}
.v-toolbar .toolbar-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.v-toolbar .toolbar-button:focus {
  outline: 0;
}
.v-toolbar .toolbar-button:disabled,
.v-toolbar .toolbar-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.v-toolbar .toolbar-button * {
  color: inherit;
}
.v-toolbar .toolbar-button *:hover {
  color: inherit;
}
.v-toolbar .toolbar-button.rounded {
  border-radius: .325rem;
}
.v-toolbar .toolbar-button > [class*=mif-] {
  vertical-align: middle;
}
.v-toolbar .toolbar-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.v-toolbar .toolbar-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.v-toolbar .toolbar-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.v-toolbar .toolbar-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.v-toolbar .toolbar-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.v-toolbar .toolbar-button.loading-cube:before,
.v-toolbar .toolbar-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.v-toolbar .toolbar-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.v-toolbar .toolbar-button.loading-cube.lighten:before,
.v-toolbar .toolbar-button.loading-cube.lighten:after {
  background-color: #fff;
}
.v-toolbar .toolbar-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.v-toolbar .toolbar-button.dropdown-toggle.drop-marker-light:before,
.v-toolbar .toolbar-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.v-toolbar .toolbar-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.v-toolbar .toolbar-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.v-toolbar .toolbar-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.v-toolbar .toolbar-button.success:active {
  background: #128023;
  color: #ffffff;
}
.v-toolbar .toolbar-button.danger,
.v-toolbar .toolbar-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.v-toolbar .toolbar-button.danger:active,
.v-toolbar .toolbar-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.v-toolbar .toolbar-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.v-toolbar .toolbar-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.v-toolbar .toolbar-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.v-toolbar .toolbar-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.v-toolbar .toolbar-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.v-toolbar .toolbar-button.link:hover,
.v-toolbar .toolbar-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.v-toolbar .toolbar-button.mini-button {
  width: 1.4rem;
  height: 1.4rem;
  font-size: .6rem;
  line-height: 1;
  padding: 0;
  min-width: 0;
}
.v-toolbar .toolbar-button.small-button {
  width: 1.7rem;
  height: 1.7rem;
  font-size: .7rem;
  line-height: 1.68rem;
  padding: 0;
  min-width: 0;
}
.v-toolbar .toolbar-button.large-button {
  font-size: 1.05rem;
  line-height: 1;
  width: 2.55rem;
  height: 2.55rem;
}
.v-toolbar .toolbar-button.big-button {
  font-size: 1.2rem;
  line-height: 1;
  width: 3.125rem;
  height: 3.125rem;
}
.v-toolbar.rounded > .toolbar-button,
.v-toolbar.rounded > .toolbar-section .toolbar-button {
  border-radius: .3125rem;
}
.v-toolbar.rounded .toolbar-section:before {
  border-radius: .3125rem;
}
.v-toolbar .toolbar-section {
  padding-left: 0;
  padding-top: .5725rem;
}
.v-toolbar .toolbar-section:before {
  width: 100%;
  top: 0;
  height: .325rem;
}
.v-toolbar .toolbar-button {
  display: block;
  margin-bottom: .25rem;
}
.v-toolbar.no-divider .toolbar-section:before {
  display: none;
}
.pagination {
  display: block;
  margin: .625rem 0;
}
.pagination:before,
.pagination:after {
  display: table;
  content: "";
}
.pagination:after {
  clear: both;
}
.pagination > .item {
  display: block;
  float: left;
  margin-left: .0652rem;
  padding: 0.25rem .625rem;
  background-color: #ffffff;
  cursor: pointer;
  border: 1px #eeeeee solid;
  text-align: center;
  font-size: .875rem;
  color: #1d1d1d;
}
.pagination > .item:first-child {
  margin-left: 0 ;
}
.pagination > .item.current,
.pagination > .item.active {
  background-color: #1ba1e2;
  border-color: #59cde2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.pagination > .item:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.pagination > .item:disabled,
.pagination > .item.disabled {
  cursor: default;
  background-color: #eeeeee;
  border-color: #eeeeee;
  color: #999999;
}
.pagination > .item.spaces {
  border: 0;
  cursor: default;
  color: #1d1d1d;
}
.pagination > .item.spaces:hover {
  background-color: inherit ;
  color: #1d1d1d;
}
.pagination.rounded > .item {
  border-radius: .3125rem;
}
.pagination.cycle > .item {
  width: 28px;
  height: 28px;
  border-radius: 50%;
  font-size: .7rem;
  padding: .4375rem 0;
}
.pagination.no-border > .item {
  border: 0;
}
.pagination.no-border > .item:hover {
  color: #59cde2;
  background-color: transparent ;
}
.pagination.no-border > .item:disabled,
.pagination.no-border > .item.disabled {
  cursor: default;
  background-color: transparent;
  border-color: transparent;
  color: #999999;
}
.pagination.no-border > .item.current:hover,
.pagination.no-border > .item.active:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.breadcrumbs {
  padding: 0;
  margin: 0;
  list-style: none inside none;
  background-color: #ffffff;
  color: #999;
  padding: 1rem;
}
.breadcrumbs > li {
  display: inline-block;
  color: inherit;
  margin: 0 1rem 0 0;
  position: relative;
  vertical-align: middle;
}
.breadcrumbs > li:before,
.breadcrumbs > li:after {
  display: block;
  position: absolute;
  vertical-align: middle;
  color: transparent;
  font-size: 0;
  content: "";
  height: 1px;
  width: .375rem;
  background-color: #1d1d1d;
  top: 50%;
  left: 100%;
  margin-left: .5rem;
}
.breadcrumbs > li:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  margin-top: -0.125rem;
}
.breadcrumbs > li:after {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-top: .125rem;
}
.breadcrumbs > li > a {
  color: inherit;
  display: inline-block;
  line-height: 1;
}
.breadcrumbs > li:last-child {
  color: #1d1d1d;
  font-weight: bolder;
}
.breadcrumbs > li:last-child a {
  cursor: default;
}
.breadcrumbs > li:last-child:before,
.breadcrumbs > li:last-child:after {
  background-color: transparent;
}
.breadcrumbs > li:hover {
  color: #1d1d1d;
}
.breadcrumbs img,
.breadcrumbs .icon {
  display: inline-block;
  line-height: .8;
  height: 1rem;
  width: 1rem;
  font-size: 1rem;
  vertical-align: -15%;
}
.breadcrumbs.dark {
  background-color: #393832;
}
.breadcrumbs.dark > li:hover,
.breadcrumbs.dark > li:last-child {
  color: #ffffff;
}
.breadcrumbs.dark > li:before,
.breadcrumbs.dark > li:after {
  background-color: #ffffff;
}
.breadcrumbs2 {
  margin: 0.625rem 0;
  padding: 0;
  list-style: none;
  overflow: hidden;
  width: 100%;
}
.breadcrumbs2 li {
  float: left;
  margin: 0 .2em 0 1em;
}
.breadcrumbs2 a {
  background: #d9d9d9;
  padding: .3em 1em;
  float: left;
  text-decoration: none;
  color: #2086bf;
  position: relative;
}
.breadcrumbs2 a:hover {
  background: #1ba1e2;
  color: #ffffff;
}
.breadcrumbs2 a:hover:before {
  border-color: #1ba1e2 #1ba1e2 #1ba1e2 transparent;
}
.breadcrumbs2 a:hover:after {
  border-left-color: #1ba1e2;
}
.breadcrumbs2 a:before {
  content: "";
  position: absolute;
  top: 50%;
  margin-top: -1.5em;
  border-width: 1.5em 0 1.5em 1em;
  border-style: solid;
  border-color: #d9d9d9 #d9d9d9 #d9d9d9 transparent;
  left: -1em;
  margin-left: 1px;
}
.breadcrumbs2 a:after {
  content: "";
  position: absolute;
  top: 50%;
  margin-top: -1.5em;
  border-top: 1.5em solid transparent;
  border-bottom: 1.5em solid transparent;
  border-left: 1em solid #d9d9d9;
  right: -1em;
  margin-right: 1px;
}
.breadcrumbs2 > li:first-child {
  margin-left: 0;
}
.breadcrumbs2 > li:first-child a:before {
  content: normal;
}
.breadcrumbs2 > li:last-child {
  background: none;
}
.breadcrumbs2 > li:last-child a {
  color: #1d1d1d;
}
.breadcrumbs2 > li:last-child:after,
.breadcrumbs2 > li:last-child:before {
  content: normal;
}
.breadcrumbs2 > li:last-child:hover a {
  color: #ffffff;
}
.breadcrumbs2 .active,
.breadcrumbs2 .active:hover {
  background: none;
}
.breadcrumbs2 .active a,
.breadcrumbs2 .active:hover a {
  color: #1d1d1d;
}
.breadcrumbs2 .active:hover a {
  color: #ffffff;
}
.breadcrumbs2 .active:after,
.breadcrumbs2 .active:before {
  content: normal;
}
.breadcrumbs2.small a {
  padding: .2em 1em;
  font-size: 11.9px;
}
.breadcrumbs2.mini a {
  padding: .1em 1em;
  font-size: 10.5px;
}
.breadcrumbs2 > li > a > [class*=mif] {
  vertical-align: -10%;
}
.input-control {
  display: inline-block;
  min-height: 2.125rem;
  height: 2.125rem;
  position: relative;
  vertical-align: middle;
  margin: .325rem 0;
  line-height: 1;
}
.input-control[data-role=select] {
  height: auto;
}
.input-control.text,
.input-control.select,
.input-control.file,
.input-control.password,
.input-control.number,
.input-control.email,
.input-control.tel {
  width: 10.875rem;
}
.input-control.text .button,
.input-control.select .button,
.input-control.file .button,
.input-control.password .button,
.input-control.number .button,
.input-control.email .button,
.input-control.tel .button {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  margin: 0;
}
.input-control.text > label,
.input-control.select > label,
.input-control.file > label,
.input-control.password > label,
.input-control.number > label,
.input-control.email > label,
.input-control.tel > label,
.input-control.text > .label,
.input-control.select > .label,
.input-control.file > .label,
.input-control.password > .label,
.input-control.number > .label,
.input-control.email > .label,
.input-control.tel > .label {
  position: absolute;
  left: 0;
  top: -1rem;
  font-size: .875rem;
}
.input-control.text > input:disabled + .button,
.input-control.select > input:disabled + .button,
.input-control.file > input:disabled + .button,
.input-control.password > input:disabled + .button,
.input-control.number > input:disabled + .button,
.input-control.email > input:disabled + .button,
.input-control.tel > input:disabled + .button {
  display: none;
}
.input-control.text .prepend-icon,
.input-control.select .prepend-icon,
.input-control.file .prepend-icon,
.input-control.password .prepend-icon,
.input-control.number .prepend-icon,
.input-control.email .prepend-icon,
.input-control.tel .prepend-icon {
  width: 24px;
  height: 24px;
  font-size: 24px;
  line-height: 1;
  position: absolute;
  top: 50%;
  margin-top: -12px;
  left: 4px;
  z-index: 2;
  color: #999999;
}
.input-control.text .prepend-icon ~ input,
.input-control.select .prepend-icon ~ input,
.input-control.file .prepend-icon ~ input,
.input-control.password .prepend-icon ~ input,
.input-control.number .prepend-icon ~ input,
.input-control.email .prepend-icon ~ input,
.input-control.tel .prepend-icon ~ input {
  padding-left: 30px;
}
.input-control input,
.input-control textarea,
.input-control select {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  position: relative;
  border: 1px #d9d9d9 solid;
  width: 100%;
  height: 100%;
  padding: .3125rem;
  z-index: 0;
}
.input-control input:focus,
.input-control textarea:focus,
.input-control select:focus {
  outline: none;
}
.input-control input:disabled,
.input-control textarea:disabled,
.input-control select:disabled {
  background-color: #EBEBE4;
}
.input-control input:focus,
.input-control textarea:focus,
.input-control select:focus,
.input-control input:hover,
.input-control textarea:hover,
.input-control select:hover {
  border-color: #787878;
}
.input-control textarea {
  position: relative;
  min-height: 6.25rem;
  font-family: "Segoe UI", "Open Sans", sans-serif, serif;
}
.input-control.textarea {
  height: auto;
}
.input-control.select {
  position: relative;
}
.input-control.select select {
  padding-right: 20px;
}
.input-control.rounded input,
.input-control.rounded textarea,
.input-control.rounded select {
  border-radius: 0.3125rem;
}
.input-control.big-input {
  height: 4.125rem;
}
.input-control.big-input input {
  font-size: 1.875rem;
  padding-left: 1.25rem ;
}
.input-control.big-input .button {
  height: 3.25rem;
  top: 50%;
  margin-top: -1.625rem;
  right: 0.3125rem;
  font-size: 1.125rem;
  font-weight: bold;
  padding-left: 1.875rem;
  padding-right: 1.875rem;
}
.input-control [class*=input-state-] {
  position: absolute;
  display: none;
  top: 50%;
  right: 8px;
  z-index: 3;
  font-size: 1rem;
  margin-top: -0.5rem;
}
.input-control.required input,
.input-control.required textarea,
.input-control.required select {
  border: 1px dashed #1ba1e2;
}
.input-control.required.neon input,
.input-control.required.neon textarea,
.input-control.required.neon select {
  box-shadow: 0 0 25px 0 rgba(89, 205, 226, 0.7);
}
.input-control.required .input-state-required {
  display: block;
  color: #1ba1e2;
}
.input-control.error input,
.input-control.error textarea,
.input-control.error select {
  border: 1px solid #ce352c;
}
.input-control.error.neon input,
.input-control.error.neon textarea,
.input-control.error.neon select {
  box-shadow: 0 0 25px 0 rgba(128, 0, 0, 0.7);
}
.input-control.error .input-state-error {
  display: block;
  color: #ce352c;
}
.input-control.warning input,
.input-control.warning textarea,
.input-control.warning select {
  border: 1px solid #e3c800;
}
.input-control.warning.neon input,
.input-control.warning.neon textarea,
.input-control.warning.neon select {
  box-shadow: 0 0 25px 0 rgba(255, 165, 0, 0.7);
}
.input-control.warning .input-state-warning {
  display: block;
  color: #e3c800;
}
.input-control.success input,
.input-control.success textarea,
.input-control.success select {
  border: 1px solid #60a917;
}
.input-control.success.neon input,
.input-control.success.neon textarea,
.input-control.success.neon select {
  box-shadow: 0 0 25px 0 rgba(0, 128, 0, 0.7);
}
.input-control.success .input-state-success {
  display: block;
  color: #60a917;
}
.input-control.info input,
.input-control.info textarea,
.input-control.info select {
  border: 1px solid #1ba1e2;
}
.input-control.info.neon input,
.input-control.info.neon textarea,
.input-control.info.neon select {
  box-shadow: 0 0 25px 0 rgba(89, 205, 226, 0.7);
}
.input-control.info .input-state-success {
  display: block;
  color: #1ba1e2;
}
input.error,
select.error,
textarea.error {
  border: 1px solid #ce352c;
}
input.warning,
select.warning,
textarea.warning {
  border: 1px solid #e3c800;
}
input.info,
select.info,
textarea.info {
  border: 1px solid #1ba1e2;
}
input.success,
select.success,
textarea.success {
  border: 1px solid #60a917;
}
input.required,
select.required,
textarea.required {
  border: 1px dashed #1ba1e2;
}
.input-control.file input[type=file] {
  position: absolute;
  opacity: 0;
  width: 0.0625rem;
  height: 0.0625rem;
}
.input-control.file input[type=file]:disabled ~ input[type=text],
.input-control.file input[type=file]:disabled ~ .button {
  background-color: #EBEBE4;
}
.input-control.file:hover input[type=text],
.input-control.file:hover button {
  border-color: #787878;
}
.input-control .button-group {
  position: absolute;
  right: 0;
  top: 0;
  margin: 0;
  padding: 0;
  z-index: 2;
}
.input-control .button-group:before,
.input-control .button-group:after {
  display: table;
  content: "";
}
.input-control .button-group:after {
  clear: both;
}
.input-control .button-group .button {
  position: relative;
  float: left;
  margin: 0;
}
.input-control > .helper-button,
.input-control > .button-group > .helper-button {
  visibility: hidden;
  margin: 0;
  border: 0;
  height: 1.875rem;
  padding: 0 .6rem;
  z-index: 100;
  font-size: .75rem;
}
.input-control > .button.helper-button {
  margin: 2px 2px 0;
}
.input-control > .button-group > .button.helper-button {
  margin: 2px 0 ;
}
.input-control > .button-group > .button.helper-button:last-child {
  margin-right: 2px ;
}
.input-control input:focus ~ .helper-button,
.input-control input:focus ~ .button-group > .helper-button {
  visibility: visible;
}
.input-control input ~ .helper-button:active,
.input-control input ~ .button-group > .helper-button:active {
  visibility: visible;
}
.input-control input:disabled ~ .helper-button,
.input-control input:disabled ~ .button-group > .helper-button {
  display: none ;
}
.input-control.modern {
  position: relative;
  width: 12.25rem;
  height: 3rem;
  display: inline-block;
  margin: .625rem 0;
}
.input-control.modern input {
  position: absolute;
  top: 1rem;
  left: 0;
  right: 0;
  bottom: .5rem;
  border: 0;
  border-bottom: 2px #DDDDDD solid;
  background-color: transparent;
  outline: none;
  font-size: 1rem;
  padding-bottom: .5rem;
  padding-left: 0;
  width: 100%;
  z-index: 2;
  height: 1.75rem;
}
.input-control.modern input:focus {
  border-bottom-color: #1d1d1d;
}
.input-control.modern .label,
.input-control.modern .informer {
  position: absolute;
  display: block;
  z-index: 1;
  color: #1d1d1d;
}
.input-control.modern .label {
  opacity: 0;
  top: 16px;
  left: 0;
  transition: all 0.3s linear;
}
.input-control.modern .informer {
  opacity: 0;
  bottom: .75rem;
  color: #C8C8C8;
  font-size: .8rem;
  transition: all 0.3s linear;
}
.input-control.modern .placeholder {
  font-size: 1rem;
  color: #C8C8C8;
  position: absolute;
  top: 1.2rem;
  left: 0;
  z-index: 1;
  opacity: 1;
  transition: all 0.3s linear;
}
.input-control.modern .helper-button {
  top: 8px;
}
.input-control.modern.iconic {
  margin-left: 32px;
}
.input-control.modern.iconic .icon {
  width: 24px;
  height: 24px;
  font-size: 24px;
  line-height: 1;
  position: absolute;
  left: -28px;
  top: 50%;
  margin-top: -8px;
  display: block;
  opacity: .2;
  transition: all 0.3s linear;
}
.input-control.modern.iconic .icon img {
  width: 100%;
  max-width: 100%;
  height: 100%;
  max-height: 100%;
}
.input-control.modern.iconic.full-size {
  width: calc(100% - 32px) !important;
}
.input-control.modern input:focus ~ .label {
  opacity: 1;
  -webkit-transform: translateY(-18px);
          transform: translateY(-18px);
  transition: all 0.3s linear;
}
.input-control.modern input:focus ~ .placeholder {
  opacity: 0;
  -webkit-transform: translateX(200px);
          transform: translateX(200px);
  transition: all 0.3s linear;
}
.input-control.modern input:focus ~ .informer {
  opacity: 1;
  color: #1d1d1d;
  bottom: -0.75rem;
  transition: all 0.3s linear;
}
.input-control.modern input:focus ~ .icon {
  opacity: 1;
  transition: all 0.3s linear;
}
.input-control.modern.error input {
  border-bottom-color: #ce352c;
}
.input-control.modern.error .informer,
.input-control.modern.error .label {
  color: #ce352c;
}
.input-control.modern.success input {
  border-bottom-color: #60a917;
}
.input-control.modern.success .informer,
.input-control.modern.success .label {
  color: #60a917;
}
.input-control.modern.warning input {
  border-bottom-color: #e3c800;
}
.input-control.modern.warning .informer,
.input-control.modern.warning .label {
  color: #e3c800;
}
.input-control.modern.info input {
  border-bottom-color: #1ba1e2;
}
.input-control.modern.info .informer,
.input-control.modern.info .label {
  color: #1ba1e2;
}
.input-control.modern input:disabled {
  border-bottom-style: dotted;
  color: #BCBCBC;
}
.input-control.checkbox,
.input-control.radio {
  line-height: 1.875rem;
  min-width: 1rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.input-control.checkbox input[type="checkbox"],
.input-control.radio input[type="checkbox"],
.input-control.checkbox input[type="radio"],
.input-control.radio input[type="radio"] {
  position: absolute;
  opacity: 0;
  width: 0.0625rem;
  height: 0.0625rem;
}
.input-control.checkbox .caption,
.input-control.radio .caption {
  margin: 0 .125rem;
  vertical-align: middle;
}
.input-control.checkbox .check,
.input-control.radio .check {
  width: 1.625rem;
  height: 1.625rem;
  background-color: #ffffff;
  border: 1px #999999 solid;
  padding: 0;
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.input-control.checkbox.text-left .check,
.input-control.radio.text-left .check {
  margin: 0 0 0 .3125rem;
}
.input-control.checkbox .check:focus,
.input-control.radio .check:focus {
  border-color: #bcd9e2;
}
.input-control.checkbox .check:before,
.input-control.radio .check:before {
  position: absolute;
  vertical-align: middle;
  color: transparent;
  font-size: 0;
  content: "";
  height: .3125rem;
  width: .565rem;
  background-color: transparent;
  border-left: .1875rem solid;
  border-bottom: .1875rem solid;
  border-color: transparent;
  left: 50%;
  top: 50%;
  margin-left: -0.325rem;
  margin-top: -0.365rem;
  display: block;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  transition: all 0.2s linear;
}
.input-control.checkbox input[type=radio] ~ .check:before,
.input-control.radio input[type=radio] ~ .check:before {
  border-color: transparent;
}
.input-control.checkbox input[type="checkbox"]:checked ~ .check:before,
.input-control.radio input[type="checkbox"]:checked ~ .check:before,
.input-control.checkbox input[type="radio"]:checked ~ .check:before,
.input-control.radio input[type="radio"]:checked ~ .check:before {
  border-color: #555555;
  transition: all 0.2s linear;
}
.input-control.checkbox input[type="checkbox"]:disabled ~ .caption,
.input-control.radio input[type="checkbox"]:disabled ~ .caption,
.input-control.checkbox input[type="radio"]:disabled ~ .caption,
.input-control.radio input[type="radio"]:disabled ~ .caption {
  color: #cacaca;
  cursor: default;
}
.input-control.checkbox input[type="checkbox"]:disabled ~ .check,
.input-control.radio input[type="checkbox"]:disabled ~ .check,
.input-control.checkbox input[type="radio"]:disabled ~ .check,
.input-control.radio input[type="radio"]:disabled ~ .check {
  border-color: #cacaca;
  cursor: default;
}
.input-control.checkbox input[type="checkbox"]:disabled:checked ~ .check:before,
.input-control.radio input[type="checkbox"]:disabled:checked ~ .check:before {
  border-color: #cacaca;
}
.input-control.checkbox input[type="radio"]:disabled:checked ~ .check:before,
.input-control.radio input[type="radio"]:disabled:checked ~ .check:before {
  background-color: #cacaca;
}
.input-control.checkbox input[data-show="indeterminate"] ~ .check:before,
.input-control.radio input[data-show="indeterminate"] ~ .check:before,
.input-control.checkbox input[data-show="indeterminate"]:checked ~ .check:before,
.input-control.radio input[data-show="indeterminate"]:checked ~ .check:before,
.input-control.checkbox input.indeterminate:checked ~ .check:before,
.input-control.radio input.indeterminate:checked ~ .check:before,
.input-control.checkbox input[type="checkbox"]:indeterminate ~ .check:before,
.input-control.radio input[type="checkbox"]:indeterminate ~ .check:before {
  display: none;
}
.input-control.checkbox input[data-show="indeterminate"] ~ .check:after,
.input-control.radio input[data-show="indeterminate"] ~ .check:after,
.input-control.checkbox input[data-show="indeterminate"]:checked ~ .check:after,
.input-control.radio input[data-show="indeterminate"]:checked ~ .check:after,
.input-control.checkbox input.indeterminate:checked ~ .check:after,
.input-control.radio input.indeterminate:checked ~ .check:after,
.input-control.checkbox input[type="checkbox"]:indeterminate ~ .check:after,
.input-control.radio input[type="checkbox"]:indeterminate ~ .check:after {
  position: absolute;
  display: block;
  content: "";
  background-color: #1d1d1d;
  height: .875rem;
  width: .875rem;
  left: 50%;
  top: 50%;
  margin-left: -0.4375rem;
  margin-top: -0.4375rem;
}
.input-control.checkbox input[data-show="indeterminate"]:not(:checked) ~ .check:after,
.input-control.radio input[data-show="indeterminate"]:not(:checked) ~ .check:after {
  background-color: transparent;
}
.input-control.checkbox input[data-show="indeterminate"]:disabled ~ .check:after,
.input-control.radio input[data-show="indeterminate"]:disabled ~ .check:after {
  background-color: #cacaca;
}
.input-control.radio .check {
  border: 1px #999999 solid;
  border-radius: 50%;
}
.input-control.radio .check:before {
  position: absolute;
  display: block;
  content: "";
  background-color: #1d1d1d;
  height: .5624rem;
  width: .5624rem;
  left: 50%;
  top: 50%;
  margin-left: -0.375rem;
  margin-top: -0.375rem;
  -webkit-transform: rotate(0deg);
          transform: rotate(0deg);
  border-radius: 50%;
}
.input-control.radio input[type="radio"]:checked ~ .check:before {
  border-color: transparent;
}
.input-control.radio input[type="radio"]:not(:checked) ~ .check:before {
  background-color: transparent;
}
.input-control.radio input[type="radio"]:disabled ~ .check:before {
  border-color: transparent;
}
.input-control.small-check .check {
  width: 1rem;
  height: 1rem;
}
.input-control.small-check .check:before {
  width: 6px;
  height: 3px;
  margin-left: -4px;
  margin-top: -4px;
  border-width: 2px;
}
.input-control.small-check.radio .check:before {
  height: .375rem;
  width: .375rem;
  left: 50%;
  top: 50%;
  margin-left: -0.25rem;
  margin-top: -0.25rem;
}
.input-control.small-check input[data-show="indeterminate"] ~ .check:after,
.input-control.small-check input[data-show="indeterminate"]:checked ~ .check:after,
.input-control.small-check input.indeterminate:checked ~ .check:after,
.input-control.small-check input[type="checkbox"]:indeterminate ~ .check:after {
  height: .375rem;
  width: .375rem;
  left: 50%;
  top: 50%;
  margin-left: -0.1875rem;
  margin-top: -0.1875rem;
}
input[type="button"],
input[type="reset"],
input[type="submit"] {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  vertical-align: middle;
}
input[type="button"].default,
input[type="reset"].default,
input[type="submit"].default {
  background-color: #008287;
  color: #fff;
}
input[type="button"]:hover,
input[type="reset"]:hover,
input[type="submit"]:hover {
  border-color: #787878;
}
input[type="button"]:active,
input[type="reset"]:active,
input[type="submit"]:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
input[type="button"]:focus,
input[type="reset"]:focus,
input[type="submit"]:focus {
  outline: 0;
}
input[type="button"]:disabled,
input[type="reset"]:disabled,
input[type="submit"]:disabled,
input[type="button"].disabled,
input[type="reset"].disabled,
input[type="submit"].disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
input[type="button"] *,
input[type="reset"] *,
input[type="submit"] * {
  color: inherit;
}
input[type="button"] *:hover,
input[type="reset"] *:hover,
input[type="submit"] *:hover {
  color: inherit;
}
input[type="button"].rounded,
input[type="reset"].rounded,
input[type="submit"].rounded {
  border-radius: .325rem;
}
input[type="button"] > [class*=mif-],
input[type="reset"] > [class*=mif-],
input[type="submit"] > [class*=mif-] {
  vertical-align: middle;
}
input[type="button"] img,
input[type="reset"] img,
input[type="submit"] img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
input[type="button"].loading-pulse,
input[type="reset"].loading-pulse,
input[type="submit"].loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
input[type="button"].loading-pulse:before,
input[type="reset"].loading-pulse:before,
input[type="submit"].loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
input[type="button"].loading-pulse.lighten:before,
input[type="reset"].loading-pulse.lighten:before,
input[type="submit"].loading-pulse.lighten:before {
  background-color: #fff;
}
input[type="button"].loading-cube,
input[type="reset"].loading-cube,
input[type="submit"].loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
input[type="button"].loading-cube:before,
input[type="reset"].loading-cube:before,
input[type="submit"].loading-cube:before,
input[type="button"].loading-cube:after,
input[type="reset"].loading-cube:after,
input[type="submit"].loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
input[type="button"].loading-cube:after,
input[type="reset"].loading-cube:after,
input[type="submit"].loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
input[type="button"].loading-cube.lighten:before,
input[type="reset"].loading-cube.lighten:before,
input[type="submit"].loading-cube.lighten:before,
input[type="button"].loading-cube.lighten:after,
input[type="reset"].loading-cube.lighten:after,
input[type="submit"].loading-cube.lighten:after {
  background-color: #fff;
}
input[type="button"].dropdown-toggle,
input[type="reset"].dropdown-toggle,
input[type="submit"].dropdown-toggle {
  padding-right: 1.625rem;
}
input[type="button"].dropdown-toggle.drop-marker-light:before,
input[type="reset"].dropdown-toggle.drop-marker-light:before,
input[type="submit"].dropdown-toggle.drop-marker-light:before,
input[type="button"].dropdown-toggle.drop-marker-light:after,
input[type="reset"].dropdown-toggle.drop-marker-light:after,
input[type="submit"].dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
input[type="button"].primary,
input[type="reset"].primary,
input[type="submit"].primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
input[type="button"].primary:active,
input[type="reset"].primary:active,
input[type="submit"].primary:active {
  background: #1b6eae;
  color: #ffffff;
}
input[type="button"].success,
input[type="reset"].success,
input[type="submit"].success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
input[type="button"].success:active,
input[type="reset"].success:active,
input[type="submit"].success:active {
  background: #128023;
  color: #ffffff;
}
input[type="button"].danger,
input[type="reset"].danger,
input[type="submit"].danger,
input[type="button"].alert,
input[type="reset"].alert,
input[type="submit"].alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
input[type="button"].danger:active,
input[type="reset"].danger:active,
input[type="submit"].danger:active,
input[type="button"].alert:active,
input[type="reset"].alert:active,
input[type="submit"].alert:active {
  background: #9a1616;
  color: #ffffff;
}
input[type="button"].info,
input[type="reset"].info,
input[type="submit"].info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
input[type="button"].info:active,
input[type="reset"].info:active,
input[type="submit"].info:active {
  background: #1ba1e2;
  color: #ffffff;
}
input[type="button"].warning,
input[type="reset"].warning,
input[type="submit"].warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
input[type="button"].warning:active,
input[type="reset"].warning:active,
input[type="submit"].warning:active {
  background: #bf5a15;
  color: #ffffff;
}
input[type="button"].link,
input[type="reset"].link,
input[type="submit"].link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
input[type="button"].link:hover,
input[type="reset"].link:hover,
input[type="submit"].link:hover,
input[type="button"].link:active,
input[type="reset"].link:active,
input[type="submit"].link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.switch,
.switch-original {
  display: inline-block;
  margin: 0 .625rem 0 0;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.switch input,
.switch-original input {
  position: absolute;
  opacity: 0;
  width: 0.0625rem;
  height: 0.0625rem;
}
.switch .check,
.switch-original .check,
.switch .caption,
.switch-original .caption {
  display: inline-block;
  vertical-align: middle;
  line-height: 18px;
}
.switch .check {
  width: 36px;
  height: 16px;
  background-color: #929292;
  border-radius: 8px;
  overflow: visible;
  position: relative;
}
.switch .check:before {
  position: absolute;
  display: block;
  content: "";
  width: 22px;
  height: 22px;
  z-index: 2;
  margin-top: -4px;
  margin-left: -3px;
  border-radius: 50%;
  background-color: #ffffff;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.switch input:checked ~ .check {
  background-color: #008287;
}
.switch input:not(:checked) ~ .check:before {
  background-color: #ffffff;
  transition: all 0.2s linear;
}
.switch input:checked ~ .check {
  background-color: #008287;
}
.switch input:checked ~ .check:before {
  -webkit-transform: translateX(22px);
          transform: translateX(22px);
  transition: all 0.2s linear;
}
.switch input:disabled ~ .check {
  background-color: #D5D5D5;
}
.switch input:disabled ~ .check:before {
  background-color: #BDBDBD;
}
.switch-original .caption {
  margin: 0 5px;
}
.switch-original .check {
  position: relative;
  height: 1.125rem;
  width: 2.8125rem;
  outline: 2px #a6a6a6 solid;
  border: 1px #fff solid;
  cursor: pointer;
  background: #A6A6A6;
  z-index: 1;
  display: inline-block;
  vertical-align: middle;
}
.switch-original .check:after {
  position: absolute;
  left: -1px;
  top: -1px;
  display: block;
  content: "";
  height: 1rem;
  width: .5625rem;
  outline: 2px #333 solid;
  border: 1px #333 solid;
  cursor: pointer;
  background: #333;
  z-index: 2;
  transition: all 0.2s linear;
}
.switch-original input[type="checkbox"]:focus ~ .check {
  outline: 1px #999999 dotted;
}
.switch-original input[type="checkbox"]:checked ~ .check {
  background: #008287;
}
.switch-original input[type="checkbox"]:checked ~ .check:after {
  left: auto;
  -webkit-transform: translateX(2rem);
          transform: translateX(2rem);
  transition: all 0.2s linear;
}
.switch-original input[type="checkbox"]:disabled ~ .check {
  background-color: #e6e6e6;
  border-color: #ffffff;
}
.switch-original input[type="checkbox"]:disabled ~ .check:after {
  background-color: #8a8a8a;
  outline-color: #8a8a8a;
  border-color: #8a8a8a;
}
.input-control.range input[type=range] {
  border: 0;
  box-sizing: border-box;
  line-height: 1;
  background-color: transparent;
  cursor: pointer;
  -webkit-appearance: none;
  width: 100%;
}
.input-control.range input[type=range]::-webkit-slider-thumb {
  -webkit-appearance: none;
}
.input-control.range input[type=range]:focus {
  outline: none;
}
.input-control.range input[type=range]::-ms-track {
  width: 100%;
  cursor: pointer;
  background: transparent;
  border-color: transparent;
  color: transparent;
}
.input-control.range input[type=range]::-webkit-slider-thumb {
  -webkit-appearance: none;
  width: 1em;
  height: 1em;
  margin-top: 0;
  background-color: #555555;
  border: 2px solid #555555;
  cursor: pointer;
}
.input-control.range input[type=range]::-moz-range-thumb {
  width: 1em;
  height: 1em;
  margin-top: 0;
  background-color: #555555;
  border: 2px solid #555555;
  cursor: pointer;
  border-radius: 0;
  margin: 0;
}
.input-control.range input[type=range]::-ms-thumb {
  width: 1em;
  height: 1em;
  margin-top: 0;
  background-color: #555555;
  border: 2px solid #555555;
  cursor: pointer;
}
.input-control.range input[type=range]:hover::-webkit-slider-thumb {
  border-color: #373737;
  background-color: #1d1d1d;
}
.input-control.range input[type=range]:hover::-moz-range-thumb {
  border-color: #373737;
  background-color: #1d1d1d;
}
.input-control.range input[type=range]:hover::-ms-thumb {
  border-color: #373737;
  background-color: #1d1d1d;
}
.input-control.range input[type=range]:active::-webkit-slider-thumb {
  border-color: #373737;
}
.input-control.range input[type=range]:active::-moz-range-thumb {
  border-color: #373737;
}
.input-control.range input[type=range]:active::-ms-thumb {
  border-color: #373737;
}
.input-control.range input[type=range]::-webkit-slider-runnable-track {
  width: 100%;
  cursor: pointer;
  height: 100%;
  background-color: #00aba9;
  transition: background .3s ease;
}
.input-control.range input[type=range]::-moz-range-track {
  width: 100%;
  cursor: pointer;
  height: 100%;
  background-color: #00aba9;
  transition: background .3s ease;
}
.input-control.range input[type=range]::-ms-track {
  background: #00aba9;
  border-color: transparent;
  color: transparent;
  height: 1.25em;
}
.input-control.range input[type=range]::-ms-fill-lower {
  background: #00aba9;
}
.input-control.range input[type=range]::-ms-fill-upper {
  display: none;
}
.input-control.range input[type=range]::-moz-range-track {
  height: 1.25em;
}
.input-control.range.big-input {
  height: 2.125rem;
}
.input-control.range.big-input input[type=range] {
  padding: 0;
}
.input-control.range.big-input input[type=range]::-moz-range-track {
  height: 1.2em;
}
.progress,
.progress-bar {
  display: block;
  position: relative;
  width: 100%;
  height: auto;
  margin: .625rem 0;
  background: #eeeeee;
  overflow: hidden;
}
.progress:before,
.progress-bar:before,
.progress:after,
.progress-bar:after {
  display: table;
  content: "";
}
.progress:after,
.progress-bar:after {
  clear: both;
}
.progress .bar,
.progress-bar .bar {
  position: relative;
  display: block;
  float: left;
  width: 0;
  background-color: #1ba1e2;
  z-index: 1;
  text-align: center;
  height: .625rem;
  line-height: .625rem;
  color: #ffffff;
}
.progress.small > .bar,
.progress-bar.small > .bar {
  height: .3125rem;
}
.progress.large > .bar,
.progress-bar.large > .bar {
  height: 1rem;
}
.progress.gradient-bar .bar,
.progress-bar.gradient-bar .bar {
  background: linear-gradient(to right, #4cd964, #5ac8fa, #007aff, #34aadc, #5856d6, #ff2d55);
}
.progress.ani .bar,
.progress-bar.ani .bar {
  -webkit-animation: ani-bg-stripes 2s linear infinite;
          animation: ani-bg-stripes 2s linear infinite;
}
.popover {
  display: block;
  min-width: 12.5rem;
  height: auto;
  position: relative;
  background-color: #eeeeee;
  padding: 1.25rem;
}
.popover * {
  color: inherit;
}
.popover.popover-shadow {
  box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.4);
}
.popover:before {
  content: "";
  width: .625rem;
  height: .625rem;
  display: block;
  position: absolute;
  background-color: inherit;
  left: -0.3125rem;
  top: 50%;
  margin-top: -0.3125rem;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.popover.marker-on-top:before {
  top: 0;
  left: 50%;
  margin-left: -0.3125rem;
}
.popover.marker-on-right:before {
  top: 50%;
  margin-top: -0.3125rem;
  left: 100%;
  margin-left: -0.3125rem;
}
.popover.marker-on-bottom:before {
  top: 100%;
  margin-left: -0.3125rem;
  left: 50%;
  margin-top: -0.3125rem;
}
.overlay {
  position: fixed;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(255, 255, 255, 0.5);
  z-index: 1049;
}
.overlay.transparent {
  background-color: rgba(255, 255, 255, 0);
}
.window {
  display: block;
  position: relative;
  height: auto;
  width: 100%;
  background-color: #ffffff;
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.window-caption {
  position: relative;
  background-color: #ffffff;
  padding: .4375rem .3125rem;
  border-bottom: 1px #e9e9e9 solid;
  border-top: 0;
  cursor: default;
}
.window-caption .window-caption-title {
  font-size: .875rem;
  font-style: normal;
  font-weight: 700;
}
.window-caption .window-caption-icon {
  margin-left: .3125rem;
}
.window-caption .window-caption-icon * {
  height: 1rem;
  width: 1rem;
}
.window-caption .window-caption-icon ~ .window-caption-title {
  padding-left: .3125rem;
}
.window-caption .btn-close,
.window-caption .btn-min,
.window-caption .btn-max {
  position: absolute;
  height: 1.5rem;
  width: 1.5rem;
  min-height: 1.5rem;
  text-align: center;
  vertical-align: middle;
  font-size: 1rem;
  font-weight: normal;
  padding: 0 0 .625rem 0;
  z-index: 3;
  outline: none;
  cursor: pointer;
  display: block;
  background-color: #ffffff;
  color: #777777;
  top: .25rem;
  right: .25rem;
}
.window-caption .btn-close:hover,
.window-caption .btn-min:hover,
.window-caption .btn-max:hover {
  background-color: #cde6f7;
  color: #2a8dd4;
}
.window-caption .btn-close:hover:after,
.window-caption .btn-min:hover:after,
.window-caption .btn-max:hover:after {
  border-color: #2a8dd4;
}
.window-caption .btn-close:active,
.window-caption .btn-min:active,
.window-caption .btn-max:active {
  background-color: #92c0e0;
  color: #ffffff;
}
.window-caption .btn-close:after,
.window-caption .btn-min:after,
.window-caption .btn-max:after {
  border-color: #777777;
  content: '\D7';
  position: absolute;
  left: 50%;
  top: -2px;
  margin-left: -0.25em;
}
.window-caption .btn-min:after,
.window-caption .btn-max:after {
  display: block;
  position: absolute;
  width: .625rem;
  height: .625rem;
  border: 0 #000 solid;
  border-bottom-width: 2px;
  content: ' ';
  bottom: .375rem;
  left: 50%;
  margin-left: -0.375rem;
  top: auto;
}
.window-caption .btn-max:after {
  height: .375rem;
  border: 1px #000 solid;
  border-top-width: 2px;
}
.window-caption .btn-max {
  right: 1.8125rem;
}
.window-caption .btn-min {
  right: 3.375rem;
}
.window-caption .btn-close:after {
  margin-top: .1875rem;
  margin-left: -0.3125rem;
}
.window-content {
  position: relative;
  width: 100%;
  height: auto;
  display: block;
  padding: .25rem;
}
.window.success {
  box-shadow: 0 0 25px 0 rgba(0, 128, 0, 0.7);
}
.window.success .window-caption {
  background-color: #60a917;
  color: #ffffff;
}
.window.error {
  box-shadow: 0 0 25px 0 rgba(128, 0, 0, 0.7);
}
.window.error .window-caption {
  background-color: #ce352c;
  color: #ffffff;
}
.window.warning {
  box-shadow: 0 0 25px 0 rgba(255, 165, 0, 0.7);
}
.window.warning .window-caption {
  background-color: #fa6800;
  color: #ffffff;
}
.simple-list,
.numeric-list {
  list-style: none;
  counter-reset: li;
  padding-left: 0;
  margin-left: .625rem;
  color: #262626;
}
.simple-list li ul,
.numeric-list li ul,
.simple-list li ol,
.numeric-list li ol {
  list-style: none;
  padding-left: 1.5625rem;
}
.simple-list li,
.numeric-list li {
  position: relative;
  padding: 4px 12px;
  list-style: none;
  color: inherit;
}
.simple-list li:before,
.numeric-list li:before {
  position: absolute;
  top: 50%;
  margin-top: -0.8rem;
  left: -0.625rem;
  color: #59cde2;
  font-size: 2rem;
  vertical-align: middle;
  width: 1.25rem;
  height: 1.25rem;
  line-height: 1.25rem;
}
.simple-list ul,
.numeric-list ul {
  margin: 4px .5em 0;
}
.simple-list > li:before {
  content: "\2022";
}
.simple-list ul li:before {
  content: "\00B7";
}
.numeric-list > li {
  padding: 4px 12px 4px 18px;
}
.numeric-list > li:before {
  content: counter(li);
  counter-increment: li;
  font-size: .8rem ;
  color: #ffffff;
  background-color: #59cde2;
  border-radius: 50%;
  text-align: center;
  margin-top: -0.65rem;
}
.numeric-list.square-marker > li:before,
.numeric-list.square-bullet > li:before {
  border-radius: 0;
}
.simple-list.large-bullet li,
.numeric-list.large-bullet li {
  margin: 6px 0;
  padding-left: 2rem;
}
.simple-list.large-bullet li:before,
.numeric-list.large-bullet li:before {
  line-height: 2rem;
  width: 2rem;
  height: 2rem;
  margin-top: -1rem;
}
.simple-list.large-bullet li {
  padding-left: 1rem;
}
.simple-list.large-bullet li:before {
  margin-top: -1.3rem;
  font-size: 3rem;
}
.simple-list.dark-bullet li:before {
  color: #1d1d1d;
}
.simple-list.alert-bullet li:before {
  color: #ce352c;
}
.simple-list.info-bullet li:before {
  color: #1ba1e2;
}
.simple-list.success-bullet li:before {
  color: #60a917;
}
.simple-list.warning-bullet li:before {
  color: #e3c800;
}
.simple-list.red-bullet li:before {
  color: #ce352c;
}
.simple-list.blue-bullet li:before {
  color: #1ba1e2;
}
.simple-list.green-bullet li:before {
  color: #60a917;
}
.simple-list.yellow-bullet li:before {
  color: #e3c800;
}
.numeric-list.dark-bullet li:before {
  background-color: #1d1d1d;
}
.numeric-list.alert-bullet li:before {
  background-color: #ce352c;
}
.numeric-list.info-bullet li:before {
  background-color: #1ba1e2;
}
.numeric-list.success-bullet li:before {
  background-color: #60a917;
}
.numeric-list.warning-bullet li:before {
  background-color: #e3c800;
}
.numeric-list.red-bullet li:before {
  background-color: #ce352c;
}
.numeric-list.blue-bullet li:before {
  background-color: #1ba1e2;
}
.numeric-list.green-bullet li:before {
  background-color: #60a917;
}
.numeric-list.yellow-bullet li:before {
  background-color: #e3c800;
}
.step-list {
  margin: 0 0 0 2rem;
  padding: 0;
  list-style-type: none;
  counter-reset: li;
}
.step-list > li {
  border-left: 1px #ccc solid;
  position: relative;
  padding: 0 .625rem;
  margin: .625rem;
  vertical-align: top;
}
.step-list > li:before {
  position: absolute;
  content: counter(li);
  counter-increment: li;
  font-size: 2rem;
  color: #999999;
  left: 0;
  top: .3125rem;
  margin-left: -1.5rem;
}
.image-container {
  display: inline-block;
  position: relative;
  vertical-align: middle;
  max-width: 100%;
  background-color: transparent;
}
.image-container .frame {
  background-color: #ffffff;
  position: relative;
  width: 100%;
  height: 100%;
}
.image-container img {
  display: block;
  width: 100%;
  height: 100%;
}
.image-container .image-overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  opacity: 0;
  overflow: hidden;
  font-size: .875rem;
  line-height: 1rem;
  padding: 1em 1.5em;
  background-color: rgba(27, 161, 226, 0.7);
  color: #ffffff;
  text-align: center;
  border-radius: inherit;
  transition: all 0.65s ease;
}
.image-container .image-overlay:hover {
  opacity: 1;
}
.image-container .image-overlay:hover:before,
.image-container .image-overlay:hover:after {
  opacity: 1;
  -webkit-transform: scale(1);
          transform: scale(1);
}
.image-container .image-overlay:before,
.image-container .image-overlay:after {
  display: block;
  position: absolute;
  content: "";
  border: 1px solid rgba(255, 255, 255, 0.7);
  top: 1em;
  bottom: 1em;
  left: 1em;
  right: 1em;
  opacity: 0;
  border-radius: inherit;
  -webkit-transform: scale(1.5);
          transform: scale(1.5);
  transition: all 0.65s ease;
}
.image-container .image-overlay:after {
  border-left: none;
  border-right: none;
  bottom: 1em;
  top: 1em;
}
.image-container .image-overlay:before {
  border-top: none;
  border-bottom: none;
  bottom: 1em;
  top: 1em;
}
.image-container.diamond {
  overflow: hidden;
}
.image-container.diamond .frame {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  overflow: hidden;
}
.image-container.diamond .frame img,
.image-container.diamond .frame .image-replacer {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.image-container.rounded img {
  border-radius: 0.3125rem;
}
.image-container.bordered .frame {
  border: 1px #eeeeee solid;
  padding: .5rem;
}
.image-container.polaroid .frame {
  border: 1px #eeeeee solid;
  padding: .5rem .5rem 2rem;
}
.image-container.handing {
  margin-top: 20px;
}
.image-container.handing .frame {
  border: 1px #eeeeee solid;
  position: relative;
  padding: .5rem;
}
.image-container.handing .frame:after {
  content: "";
  position: absolute;
  width: .625rem;
  height: .625rem;
  background-color: #647687;
  border-radius: 50%;
  top: -20%;
  left: 50%;
  margin-left: -0.3125rem;
  z-index: 3;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.image-container.handing.image-format-hd .frame:after {
  top: -25%;
}
.image-container.handing.image-format-square .frame:after {
  top: -15%;
}
.image-container.handing:after {
  position: absolute;
  content: "";
  background-color: transparent;
  border-top: 1px solid #eeeeee;
  -webkit-transform: rotate(-16deg);
          transform: rotate(-16deg);
  z-index: 2;
  top: 0;
  left: 0;
  width: 50%;
  height: 50%;
  -webkit-transform-origin: top left;
          transform-origin: top left;
}
.image-container.handing:before {
  position: absolute;
  content: "";
  background-color: transparent;
  border-top: 1px solid #eeeeee;
  -webkit-transform: rotate(16deg);
          transform: rotate(16deg);
  z-index: 2;
  top: 0;
  right: 0;
  width: 50%;
  height: 50%;
  -webkit-transform-origin: top right;
          transform-origin: top right;
}
.image-container.handing.ani {
  -webkit-transform-origin: 50% -25px;
          transform-origin: 50% -25px;
  -webkit-animation: swinging 10s ease-in-out 0s infinite;
          animation: swinging 10s ease-in-out 0s infinite;
}
.image-container.handing.ani-hover:hover {
  -webkit-transform-origin: 50% -25px;
          transform-origin: 50% -25px;
  -webkit-animation: swinging 5s ease-in-out 0s;
          animation: swinging 5s ease-in-out 0s;
}
.ani-spin,
.ani-hover-spin:hover {
  -webkit-animation: ani-spin 1.5s linear infinite;
          animation: ani-spin 1.5s linear infinite;
}
.ani-spin.ani-fast,
.ani-hover-spin.ani-fast:hover {
  -webkit-animation: ani-spin 0.7s linear infinite;
          animation: ani-spin 0.7s linear infinite;
}
.ani-spin.ani-slow,
.ani-hover-spin.ani-slow:hover {
  -webkit-animation: ani-spin 2.2s linear infinite;
          animation: ani-spin 2.2s linear infinite;
}
.ani-pulse,
.ani-hover-pulse:hover {
  -webkit-animation: ani-pulse 1.7s infinite;
          animation: ani-pulse 1.7s infinite;
}
.ani-pulse.ani-fast,
.ani-hover-pulse.ani-fast:hover {
  -webkit-animation: ani-pulse 1s infinite;
          animation: ani-pulse 1s infinite;
}
.ani-pulse.ani-slow,
.ani-hover-pulse.ani-slow:hover {
  -webkit-animation: ani-pulse 3s infinite;
          animation: ani-pulse 3s infinite;
}
.ani-spanner,
.ani-hover-spanner:hover {
  transform-origin-x: 90%;
  transform-origin-y: 35%;
  transform-origin-z: initial;
  -webkit-animation: ani-wrench 2.5s ease infinite;
          animation: ani-wrench 2.5s ease infinite;
}
.ani-spanner.ani-fast,
.ani-hover-spanner.ani-fast:hover {
  -webkit-animation: ani-wrench 1.2s ease infinite;
          animation: ani-wrench 1.2s ease infinite;
}
.ani-spanner.ani-slow,
.ani-hover-spanner.ani-slow:hover {
  -webkit-animation: ani-wrench 3.7s ease infinite;
          animation: ani-wrench 3.7s ease infinite;
}
.ani-ring,
.ani-hover-ring:hover {
  transform-origin-x: 50%;
  transform-origin-y: 0px;
  transform-origin-z: initial;
  -webkit-animation: ani-ring 2s ease infinite;
          animation: ani-ring 2s ease infinite;
}
.ani-ring.ani-fast,
.ani-hover-ring.ani-fast:hover {
  -webkit-animation: ani-ring 1s ease infinite;
          animation: ani-ring 1s ease infinite;
}
.ani-ring.ani-slow,
.ani-hover-ring.ani-slow:hover {
  -webkit-animation: ani-ring 3s ease infinite;
          animation: ani-ring 3s ease infinite;
}
.ani-vertical,
.ani-hover-vertical:hover {
  -webkit-animation: ani-vertical 2s ease infinite;
          animation: ani-vertical 2s ease infinite;
}
.ani-vertical.ani-fast,
.ani-vertical.ani-fast:hover {
  -webkit-animation: ani-vertical 1s ease infinite;
          animation: ani-vertical 1s ease infinite;
}
.ani-vertical.ani-slow,
.ani-hover-vertical.ani-slow:hover {
  -webkit-animation: ani-vertical 4s ease infinite;
          animation: ani-vertical 4s ease infinite;
}
.ani-horizontal,
.ani-hover-horizontal:hover {
  -webkit-animation: ani-horizontal 2s ease infinite;
          animation: ani-horizontal 2s ease infinite;
}
.ani-horizontal.ani-fast,
.ani-horizontal.ani-fast:hover {
  -webkit-animation: ani-horizontal 1s ease infinite;
          animation: ani-horizontal 1s ease infinite;
}
.ani-horizontal.ani-slow,
.ani-horizontal.ani-slow:hover {
  -webkit-animation: ani-horizontal 3s ease infinite;
          animation: ani-horizontal 3s ease infinite;
}
.ani-flash,
.ani-hover-flash:hover {
  -webkit-animation: ani-flash 2s ease infinite;
          animation: ani-flash 2s ease infinite;
}
.ani-flash.ani-fast,
.ani-hover-flash.ani-fast:hover {
  -webkit-animation: ani-flash 1s ease infinite;
          animation: ani-flash 1s ease infinite;
}
.ani-flash.ani-slow,
.ani-hover-flash.ani-slow:hover {
  -webkit-animation: ani-flash 3s ease infinite;
          animation: ani-flash 3s ease infinite;
}
.ani-bounce,
.ani-hover-bounce:hover {
  -webkit-animation: ani-bounce 2s ease infinite;
          animation: ani-bounce 2s ease infinite;
}
.ani-bounce.ani-fast,
.ani-hover-bounce.ani-fast:hover {
  -webkit-animation: ani-bounce 1s ease infinite;
          animation: ani-bounce 1s ease infinite;
}
.ani-bounce.ani-slow,
.ani-hover-bounce.ani-slow:hover {
  -webkit-animation: ani-bounce 3s ease infinite;
          animation: ani-bounce 3s ease infinite;
}
.ani-float,
.ani-hover-float:hover {
  -webkit-animation: ani-float 2s linear infinite;
          animation: ani-float 2s linear infinite;
}
.ani-float.ani-fast,
.ani-hover-float.ani-fast:hover {
  -webkit-animation: ani-float 1s linear infinite;
          animation: ani-float 1s linear infinite;
}
.ani-float.ani-slow,
.ani-hover-float.ani-slow:hover {
  -webkit-animation: ani-float 3s linear infinite;
          animation: ani-float 3s linear infinite;
}
.ani-heartbeat,
.ani-hover-heartbeat:hover {
  -webkit-animation: ani-heartbeat 2s linear infinite;
          animation: ani-heartbeat 2s linear infinite;
}
.ani-heartbeat.ani-fast,
.ani-hover-heartbeat.ani-fast:hover {
  -webkit-animation: ani-heartbeat 1s linear infinite;
          animation: ani-heartbeat 1s linear infinite;
}
.ani-heartbeat.ani-slow,
.ani-hover-heartbeat.ani-slow:hover {
  -webkit-animation: ani-heartbeat 3s linear infinite;
          animation: ani-heartbeat 3s linear infinite;
}
.ani-shake,
.ani-hover-shake:hover {
  -webkit-animation: ani-wrench 2.5s ease infinite;
          animation: ani-wrench 2.5s ease infinite;
}
.ani-shake.ani-fast,
.ani-hover-shake.ani-fast:hover {
  -webkit-animation: ani-wrench 1.2s ease infinite;
          animation: ani-wrench 1.2s ease infinite;
}
.ani-shake.ani-slow,
.ani-hover-shake.ani-slow:hover {
  -webkit-animation: ani-wrench 3.7s ease infinite;
          animation: ani-wrench 3.7s ease infinite;
}
.ani-shuttle,
.ani-hover-shuttle:hover {
  -webkit-animation: ani-shuttle 2s linear infinite;
          animation: ani-shuttle 2s linear infinite;
}
.ani-shuttle.ani-fast,
.ani-hover-shuttle.ani-fast:hover {
  -webkit-animation: ani-shuttle 1s linear infinite;
          animation: ani-shuttle 1s linear infinite;
}
.ani-shuttle.ani-slow,
.ani-hover-shuttle.ani-slow:hover {
  -webkit-animation: ani-shuttle 3s linear infinite;
          animation: ani-shuttle 3s linear infinite;
}
.ani-pass,
.ani-hover-pass:hover {
  -webkit-animation: ani-pass 2s linear infinite;
          animation: ani-pass 2s linear infinite;
}
.ani-pass.ani-fast,
.ani-hover-pass.ani-fast:hover {
  -webkit-animation: ani-pass 1s linear infinite;
          animation: ani-pass 1s linear infinite;
}
.ani-pass.ani-slow,
.ani-hover-pass.ani-slow:hover {
  -webkit-animation: ani-pass 3s linear infinite;
          animation: ani-pass 3s linear infinite;
}
.ani-ripple,
.ani-hover-ripple:hover {
  -webkit-animation: ani-ripple 2s infinite linear;
          animation: ani-ripple 2s infinite linear;
}
.ani-ripple.ani-fast,
.ani-hover-ripple.ani-fast:hover {
  -webkit-animation: ani-ripple 1s infinite linear;
          animation: ani-ripple 1s infinite linear;
}
.ani-ripple.ani-slow,
.ani-hover-ripple.ani-slow:hover {
  -webkit-animation: ani-ripple 3s infinite linear;
          animation: ani-ripple 3s infinite linear;
}
@-webkit-keyframes swinging {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  5% {
    -webkit-transform: rotate(10deg);
            transform: rotate(10deg);
  }
  10% {
    -webkit-transform: rotate(-9deg);
            transform: rotate(-9deg);
  }
  15% {
    -webkit-transform: rotate(8deg);
            transform: rotate(8deg);
  }
  20% {
    -webkit-transform: rotate(-7deg);
            transform: rotate(-7deg);
  }
  25% {
    -webkit-transform: rotate(6deg);
            transform: rotate(6deg);
  }
  30% {
    -webkit-transform: rotate(-5deg);
            transform: rotate(-5deg);
  }
  35% {
    -webkit-transform: rotate(4deg);
            transform: rotate(4deg);
  }
  40% {
    -webkit-transform: rotate(-3deg);
            transform: rotate(-3deg);
  }
  45% {
    -webkit-transform: rotate(2deg);
            transform: rotate(2deg);
  }
  50% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@keyframes swinging {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  5% {
    -webkit-transform: rotate(10deg);
            transform: rotate(10deg);
  }
  10% {
    -webkit-transform: rotate(-9deg);
            transform: rotate(-9deg);
  }
  15% {
    -webkit-transform: rotate(8deg);
            transform: rotate(8deg);
  }
  20% {
    -webkit-transform: rotate(-7deg);
            transform: rotate(-7deg);
  }
  25% {
    -webkit-transform: rotate(6deg);
            transform: rotate(6deg);
  }
  30% {
    -webkit-transform: rotate(-5deg);
            transform: rotate(-5deg);
  }
  35% {
    -webkit-transform: rotate(4deg);
            transform: rotate(4deg);
  }
  40% {
    -webkit-transform: rotate(-3deg);
            transform: rotate(-3deg);
  }
  45% {
    -webkit-transform: rotate(2deg);
            transform: rotate(2deg);
  }
  50% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@-webkit-keyframes scaleout {
  0% {
    -webkit-transform: scale(0);
            transform: scale(0);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
    opacity: 0;
  }
}
@keyframes scaleout {
  0% {
    -webkit-transform: scale(0);
            transform: scale(0);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
    opacity: 0;
  }
}
@-webkit-keyframes cubemove {
  25% {
    -webkit-transform: translateX(10px) rotate(-90deg);
            transform: translateX(10px) rotate(-90deg);
  }
  50% {
    -webkit-transform: translateX(10px) translateY(10px) rotate(-179deg);
            transform: translateX(10px) translateY(10px) rotate(-179deg);
  }
  50.1% {
    -webkit-transform: translateX(10px) translateY(10px) rotate(-180deg);
            transform: translateX(10px) translateY(10px) rotate(-180deg);
  }
  75% {
    -webkit-transform: translateX(0px) translateY(10px) rotate(-270deg);
            transform: translateX(0px) translateY(10px) rotate(-270deg);
  }
  100% {
    -webkit-transform: rotate(-360deg);
            transform: rotate(-360deg);
  }
}
@keyframes cubemove {
  25% {
    -webkit-transform: translateX(10px) rotate(-90deg);
            transform: translateX(10px) rotate(-90deg);
  }
  50% {
    -webkit-transform: translateX(10px) translateY(10px) rotate(-179deg);
            transform: translateX(10px) translateY(10px) rotate(-179deg);
  }
  50.1% {
    -webkit-transform: translateX(10px) translateY(10px) rotate(-180deg);
            transform: translateX(10px) translateY(10px) rotate(-180deg);
  }
  75% {
    -webkit-transform: translateX(0px) translateY(10px) rotate(-270deg);
            transform: translateX(0px) translateY(10px) rotate(-270deg);
  }
  100% {
    -webkit-transform: rotate(-360deg);
            transform: rotate(-360deg);
  }
}
@-webkit-keyframes orbit {
  0% {
    opacity: 1;
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
    -webkit-transform: rotate(225deg);
            transform: rotate(225deg);
  }
  7% {
    -webkit-transform: rotate(345deg);
            transform: rotate(345deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  35% {
    -webkit-transform: rotate(495deg);
            transform: rotate(495deg);
    -webkit-animation-timing-function: ease-in-out;
            animation-timing-function: ease-in-out;
  }
  42% {
    -webkit-transform: rotate(690deg);
            transform: rotate(690deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  70% {
    opacity: 1;
    -webkit-transform: rotate(835deg);
            transform: rotate(835deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  76% {
    opacity: 1;
  }
  77% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  78% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    opacity: 0;
  }
  100% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    opacity: 0;
  }
}
@keyframes orbit {
  0% {
    opacity: 1;
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
    -webkit-transform: rotate(225deg);
            transform: rotate(225deg);
  }
  7% {
    -webkit-transform: rotate(345deg);
            transform: rotate(345deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  35% {
    -webkit-transform: rotate(495deg);
            transform: rotate(495deg);
    -webkit-animation-timing-function: ease-in-out;
            animation-timing-function: ease-in-out;
  }
  42% {
    -webkit-transform: rotate(690deg);
            transform: rotate(690deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  70% {
    opacity: 1;
    -webkit-transform: rotate(835deg);
            transform: rotate(835deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  76% {
    opacity: 1;
  }
  77% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  78% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    opacity: 0;
  }
  100% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    opacity: 0;
  }
}
@-webkit-keyframes metro-slide {
  0% {
    left: -50%;
  }
  100% {
    left: 150%;
  }
}
@keyframes metro-slide {
  0% {
    left: -50%;
  }
  100% {
    left: 150%;
  }
}
@-webkit-keyframes metro-opacity {
  0% {
    opacity: 0;
  }
  50% {
    opacity: .5;
  }
  100% {
    opacity: 1;
  }
}
@keyframes metro-opacity {
  0% {
    opacity: 0;
  }
  50% {
    opacity: .5;
  }
  100% {
    opacity: 1;
  }
}
@-webkit-keyframes ani-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
            transform: rotate(359deg);
  }
}
@keyframes ani-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
            transform: rotate(359deg);
  }
}
@-webkit-keyframes ani-pulse {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
            transform: rotate(359deg);
  }
}
@keyframes ani-pulse {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
            transform: rotate(359deg);
  }
}
@-webkit-keyframes ani-wrench {
  0% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  8% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  10% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  18% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  20% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  28% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  30% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  38% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  40% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  48% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  50% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  58% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  60% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  68% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  75% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@keyframes ani-wrench {
  0% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  8% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  10% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  18% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  20% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  28% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  30% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  38% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  40% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  48% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  50% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  58% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  60% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  68% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  75% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@-webkit-keyframes ani-ring {
  0% {
    -webkit-transform: rotate(-15deg);
            transform: rotate(-15deg);
  }
  2% {
    -webkit-transform: rotate(15deg);
            transform: rotate(15deg);
  }
  4% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  6% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  8% {
    -webkit-transform: rotate(-22deg);
            transform: rotate(-22deg);
  }
  10% {
    -webkit-transform: rotate(22deg);
            transform: rotate(22deg);
  }
  12% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  14% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  16% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  18% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  20% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@keyframes ani-ring {
  0% {
    -webkit-transform: rotate(-15deg);
            transform: rotate(-15deg);
  }
  2% {
    -webkit-transform: rotate(15deg);
            transform: rotate(15deg);
  }
  4% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  6% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  8% {
    -webkit-transform: rotate(-22deg);
            transform: rotate(-22deg);
  }
  10% {
    -webkit-transform: rotate(22deg);
            transform: rotate(22deg);
  }
  12% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  14% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  16% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  18% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  20% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@-webkit-keyframes ani-vertical {
  0% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  4% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  8% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  12% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  16% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  20% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  22% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
}
@keyframes ani-vertical {
  0% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  4% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  8% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  12% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  16% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  20% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  22% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
}
@-webkit-keyframes ani-horizontal {
  0% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  6% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  12% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  18% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  24% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  30% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  36% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
}
@keyframes ani-horizontal {
  0% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  6% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  12% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  18% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  24% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  30% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  36% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
}
@-webkit-keyframes ani-flash {
  0%,
  100%,
  50% {
    opacity: 1;
  }
  25%,
  75% {
    opacity: 0;
  }
}
@keyframes ani-flash {
  0%,
  100%,
  50% {
    opacity: 1;
  }
  25%,
  75% {
    opacity: 0;
  }
}
@-webkit-keyframes ani-bounce {
  0%,
  10%,
  20%,
  50%,
  80% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  40% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
  60% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
}
@keyframes ani-bounce {
  0%,
  10%,
  20%,
  50%,
  80% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  40% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
  60% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
}
@-webkit-keyframes ani-float {
  0% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  50% {
    -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
  }
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}
@keyframes ani-float {
  0% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  50% {
    -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
  }
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}
@-webkit-keyframes ani-heartbeat {
  0% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  50% {
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
  100% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
}
@keyframes ani-heartbeat {
  0% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  50% {
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
  100% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
}
@-webkit-keyframes ani-shuttle {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  10%,
  20% {
    -webkit-transform: scale(0.9) rotate(-8deg);
            transform: scale(0.9) rotate(-8deg);
  }
  30%,
  50%,
  70% {
    -webkit-transform: scale(1.3) rotate(8deg);
            transform: scale(1.3) rotate(8deg);
  }
  40%,
  60% {
    -webkit-transform: scale(1.3) rotate(-8deg);
            transform: scale(1.3) rotate(-8deg);
  }
  80% {
    -webkit-transform: scale(1) rotate(0);
            transform: scale(1) rotate(0);
  }
}
@keyframes ani-shuttle {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  10%,
  20% {
    -webkit-transform: scale(0.9) rotate(-8deg);
            transform: scale(0.9) rotate(-8deg);
  }
  30%,
  50%,
  70% {
    -webkit-transform: scale(1.3) rotate(8deg);
            transform: scale(1.3) rotate(8deg);
  }
  40%,
  60% {
    -webkit-transform: scale(1.3) rotate(-8deg);
            transform: scale(1.3) rotate(-8deg);
  }
  80% {
    -webkit-transform: scale(1) rotate(0);
            transform: scale(1) rotate(0);
  }
}
@-webkit-keyframes ani-pass {
  0% {
    -webkit-transform: translateX(-50%);
            transform: translateX(-50%);
    opacity: 0;
  }
  50% {
    -webkit-transform: translateX(0%);
            transform: translateX(0%);
    opacity: 1;
  }
  100% {
    -webkit-transform: translateX(50%);
            transform: translateX(50%);
    opacity: 0;
  }
}
@keyframes ani-pass {
  0% {
    -webkit-transform: translateX(-50%);
            transform: translateX(-50%);
    opacity: 0;
  }
  50% {
    -webkit-transform: translateX(0%);
            transform: translateX(0%);
    opacity: 1;
  }
  100% {
    -webkit-transform: translateX(50%);
            transform: translateX(50%);
    opacity: 0;
  }
}
@-webkit-keyframes ani-ripple {
  0% {
    opacity: .6;
  }
  50% {
    -webkit-transform: scale(1.8);
            transform: scale(1.8);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes ani-ripple {
  0% {
    opacity: .6;
  }
  50% {
    -webkit-transform: scale(1.8);
            transform: scale(1.8);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes ani-shrink {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  90% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  100% {
    -webkit-transform: scale(0.5);
            transform: scale(0.5);
  }
}
@keyframes ani-shrink {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  90% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  100% {
    -webkit-transform: scale(0.5);
            transform: scale(0.5);
  }
}
@-webkit-keyframes ani-drop {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  25% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@keyframes ani-drop {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  25% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@-webkit-keyframes ani-drop2 {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  50% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@keyframes ani-drop2 {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  50% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@-webkit-keyframes ani-drop3 {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  75% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@keyframes ani-drop3 {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  75% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@-webkit-keyframes ani-pre-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@keyframes ani-pre-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@-webkit-keyframes ani-bg-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes ani-bg-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.calendar {
  min-width: 13.75rem;
  border: 1px #eeeeee solid;
  font-size: .75rem;
  padding: .3125rem;
  background-color: #ffffff;
}
.calendar .calendar-grid {
  margin: 0;
  padding: 0;
}
.calendar .calendar-row {
  margin: 0 0 .3125rem;
  width: 100%;
}
.calendar .calendar-row:before,
.calendar .calendar-row:after {
  display: table;
  content: "";
}
.calendar .calendar-row:after {
  clear: both;
}
.calendar .calendar-row:last-child {
  margin-bottom: 0;
}
.calendar .calendar-cell {
  width: 12.46201429%;
  margin: 0 0 0 2.12765%;
  display: block;
  float: left;
}
.calendar .calendar-cell:first-child {
  margin-left: 0;
}
.calendar .calendar-cell.sel-month {
  width: 41.64134286%;
}
.calendar .calendar-cell.sel-year {
  width: 48.936175%;
}
.calendar .calendar-cell.sel-plus,
.calendar .calendar-cell.sel-minus {
  width: 23.4042625%;
}
.calendar .calendar-cell.month-cell,
.calendar .calendar-cell.year-cell {
  width: 23.4042625%;
}
.calendar .calendar-actions .button {
  margin: .15625rem;
}
.calendar .day-of-week {
  padding: .3125rem;
  cursor: default;
}
.calendar a {
  display: block;
  padding: .3125rem 0;
}
.calendar a:hover {
  background-color: #75c7ee;
  color: #ffffff;
  border-radius: inherit;
}
.calendar .calendar-header {
  background-color: #59cde2;
  color: #ffffff;
}
.calendar .calendar-header a {
  color: #ffffff;
  padding: .325rem;
}
.calendar .calendar-header a:hover {
  background-color: #47b4e9;
  color: #ffffff;
}
.calendar .calendar-actions:before,
.calendar .calendar-actions:after {
  display: table;
  content: "";
}
.calendar .calendar-actions:after {
  clear: both;
}
.calendar .today a {
  background-color: #60a917;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.calendar .day {
  border: 1px #bcd9e2 solid;
  text-align: center;
}
.calendar .day a {
  display: block;
  position: relative;
  text-align: center;
}
.calendar .month,
.calendar .year {
  border: 1px #bcd9e2 solid;
}
.calendar .month a,
.calendar .year a {
  padding-top: 1.3125rem;
  padding-bottom: 1.3125rem;
}
.calendar .empty {
  cursor: default;
}
.calendar .other-day {
  display: block;
  text-align: center;
  color: #999999;
  padding: .325rem;
  background-color: #eeeeee;
  border: 1px #bcd9e2 solid;
}
.calendar .exclude {
  background-color: #ce352c;
}
.calendar .exclude a {
  cursor: not-allowed;
  background-color: #ce352c;
  color: #ffffff;
}
.calendar .stored {
  background-color: #f472d0;
}
.calendar .stored a {
  cursor: pointer;
  background-color: #f472d0;
  color: #ffffff;
}
.calendar .selected {
  background-color: #59cde2;
}
.calendar .selected a {
  background-color: #59cde2;
  color: #ffffff;
}
.calendar.rounded button {
  border-radius: 0.3125rem;
}
.calendar.rounded .day,
.calendar.rounded .month,
.calendar.rounded .year,
.calendar.rounded .other-day,
.calendar.rounded .today,
.calendar.rounded .calendar-header,
.calendar.rounded .selected {
  border-radius: 0.3125rem;
}
.calendar.rounded .today a,
.calendar.rounded .selected a,
.calendar.rounded .exclude a {
  border-radius: 0.3125rem;
}
.calendar.rounded .calendar-header a:hover {
  border-radius: 0.3125rem;
}
.calendar.no-border .day,
.calendar.no-border .month,
.calendar.no-border .year,
.calendar.no-border .other-day,
.calendar.no-border .today,
.calendar.no-border .calendar-header {
  border: 0;
}
.calendar.no-border .today a {
  border: 0;
}
.calendar-dropdown {
  border: 0;
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.stepper {
  margin: 10px 0;
  width: 100%;
}
.stepper:before,
.stepper:after {
  display: table;
  content: "";
}
.stepper:after {
  clear: both;
}
.stepper > ul {
  counter-reset: li;
  border-top: 1px #1d1d1d dotted;
  position: relative;
  padding: 0;
  margin: 30px 0;
  width: 100%;
  display: block;
}
.stepper > ul li {
  list-style: none;
  float: left;
  width: 2em;
  height: 2em;
  margin-top: -1em;
  position: absolute;
  left: 0;
  background: #666;
  cursor: pointer;
  font-size: .875rem;
}
.stepper > ul li:before {
  content: counter(li);
  counter-increment: li;
  position: absolute;
  box-sizing: border-box;
  padding: .3em 10px;
  color: #fff;
  font-weight: bold;
  font-family: "Helvetica Neue", Arial, sans-serif;
  font-size: .9em;
  text-align: center;
}
.stepper > ul li:hover {
  background-color: #999999;
}
.stepper > ul li.current,
.stepper > ul li.complete {
  transition: all 0.2s ease;
}
.stepper > ul li.current {
  background-color: #1ba1e2;
}
.stepper > ul li.current:hover {
  background-color: #00ccff;
}
.stepper > ul li.complete {
  background-color: #60a917;
}
.stepper > ul li.complete:hover {
  background-color: #7ad61d;
}
.stepper.cycle li {
  border-radius: 50%;
}
.stepper.diamond li {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.stepper.diamond li:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.wizard {
  position: relative;
}
.wizard .steps {
  margin: 10px 0;
  padding: 20px;
  border: 1px #eeeeee solid;
  position: relative;
}
.wizard .steps .step {
  position: relative;
  width: 100%;
  height: 100%;
  display: none;
}
.wizard .steps .step:first-child {
  display: block;
}
.wizard .actions .group-right {
  float: right;
}
.wizard .actions .group-left {
  float: left;
}
.wizard .actions button {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  margin-right: 2px;
}
.wizard .actions button.default {
  background-color: #008287;
  color: #fff;
}
.wizard .actions button:hover {
  border-color: #787878;
}
.wizard .actions button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.wizard .actions button:focus {
  outline: 0;
}
.wizard .actions button:disabled,
.wizard .actions button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.wizard .actions button * {
  color: inherit;
}
.wizard .actions button *:hover {
  color: inherit;
}
.wizard .actions button.rounded {
  border-radius: .325rem;
}
.wizard .actions button > [class*=mif-] {
  vertical-align: middle;
}
.wizard .actions button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.wizard .actions button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.wizard .actions button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.wizard .actions button.loading-pulse.lighten:before {
  background-color: #fff;
}
.wizard .actions button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.wizard .actions button.loading-cube:before,
.wizard .actions button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.wizard .actions button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.wizard .actions button.loading-cube.lighten:before,
.wizard .actions button.loading-cube.lighten:after {
  background-color: #fff;
}
.wizard .actions button.dropdown-toggle {
  padding-right: 1.625rem;
}
.wizard .actions button.dropdown-toggle.drop-marker-light:before,
.wizard .actions button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.wizard .actions button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.wizard .actions button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.wizard .actions button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.wizard .actions button.success:active {
  background: #128023;
  color: #ffffff;
}
.wizard .actions button.danger,
.wizard .actions button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.wizard .actions button.danger:active,
.wizard .actions button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.wizard .actions button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.wizard .actions button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.wizard .actions button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.wizard .actions button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.wizard .actions button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.wizard .actions button.link:hover,
.wizard .actions button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.wizard .actions button:last-child {
  margin-right: 0;
}
.wizard .actions button.btn-finish {
  background-color: #60a917;
  color: #ffffff;
}
.wizard .actions button:disabled {
  background-color: #6f6f6f;
}
.wizard2 {
  counter-reset: div;
  position: relative;
  width: 100%;
}
.wizard2:before,
.wizard2:after {
  display: table;
  content: "";
}
.wizard2:after {
  clear: both;
}
.wizard2 .step {
  width: auto;
  display: block;
  float: left;
  position: relative;
  z-index: 1;
  padding: 0 0 3rem;
}
.wizard2 .step:before {
  content: counter(div);
  counter-increment: div;
  position: absolute;
  font-size: .8rem;
  bottom: 20px;
  width: 24px;
  text-align: center;
}
.wizard2 .step.active {
  border: 0;
}
.wizard2 .step.active:before {
  visibility: hidden;
}
.wizard2 .step.prev {
  border-left: 24px solid #eeeeee;
  border-right: 1px solid #e6e6e6;
  width: 0 ;
}
.wizard2 .step.prev:before {
  left: 0 ;
  margin-left: -24px;
  color: #1d1d1d;
}
.wizard2 .step.next {
  border-left: 1px solid #e6e6e6;
  border-right: 24px solid #1ba1e2;
  width: 0;
}
.wizard2 .step.next:before {
  left: 100%;
  color: #ffffff;
}
.wizard2 .step.next + .next {
  border-color: #1891cb;
}
.wizard2 .step.next + .next + .next {
  border-color: #1681b4;
}
.wizard2 .step.next + .next + .next + .next {
  border-color: #13709e;
}
.wizard2 .step.next + .next + .next + .next + .next {
  border-color: #106087;
}
.wizard2 .step.next + .next + .next + .next + .next + .next {
  border-color: #0b4059;
}
.wizard2 .step.next + .next + .next + .next + .next + .next + .next {
  border-color: #082f43;
}
.wizard2 .step.next + .next + .next + .next + .next + .next + .next + .next {
  border-color: #051f2c;
}
.wizard2 .step.next + .next + .next + .next + .next + .next + .next + .next + .next {
  border-color: #030f15;
}
.wizard2 .step-content {
  width: auto;
  overflow: hidden;
  padding: .625rem;
}
.wizard2 .step.prev .step-content,
.wizard2 .step.next .step-content {
  width: 0 ;
  padding: 0 ;
}
.wizard2 .action-bar {
  padding: 0 .625rem;
  position: absolute;
  bottom: 10px;
  text-align: right;
  z-index: 2;
}
.wizard2 .action-bar:before,
.wizard2 .action-bar:after {
  display: table;
  content: "";
}
.wizard2 .action-bar:after {
  clear: both;
}
.wizard2 .action-bar .button {
  margin: 0 .125rem;
  opacity: .6;
}
.wizard2 .action-bar .button:hover {
  opacity: 1;
}
.countdown {
  display: inline-block;
  font-weight: 700;
  font-size: 1rem;
  margin: .1em 0 1.2em;
}
.countdown .part {
  display: inline-block;
  position: relative;
}
.countdown .part.days:after,
.countdown .part.hours:after,
.countdown .part.minutes:after,
.countdown .part.seconds:after {
  position: absolute;
  content: attr(data-day-text);
  text-align: center;
  top: 100%;
  left: 0;
  width: 100%;
  font-size: .6em;
  color: inherit;
}
.countdown .part.disabled .digit {
  opacity: .3;
  box-shadow: none;
}
.countdown .digit,
.countdown .divider {
  display: inline-block;
  padding: .3125em .625em;
  background-color: #1ba1e2;
  color: #ffffff;
  cursor: default;
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
  transition: all 0.5s ease;
}
.countdown .digit,
.countdown .divider {
  margin-left: 4px;
}
.countdown .divider {
  padding: .125em .25em;
  color: #1d1d1d;
  background-color: transparent;
  box-shadow: none;
}
.countdown.tick .divider {
  opacity: 0;
}
.countdown.labels-top {
  margin: 1.2em 0 .1em;
}
.countdown.labels-top .part.days:after,
.countdown.labels-top .part.hours:after,
.countdown.labels-top .part.minutes:after,
.countdown.labels-top .part.seconds:after {
  top: 0;
  left: 0;
  margin-top: -1.5em;
}
.countdown.rounded .part .digit {
  border-radius: .5em;
}
.countdown .digit.scaleIn {
  transition: all 0.5s ease;
  -webkit-transform: scale(1.1);
          transform: scale(1.1);
}
.sidebar-container {
  background-color: #71b1d1;
  color: #ffffff;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  overflow-x: hidden;
  overflow-y: scroll;
}
.sidebar {
  background-color: #71b1d1;
  color: #ffffff;
  position: relative;
  width: 100%;
  padding: 0;
  margin: 0;
  list-style: none inside none;
}
.sidebar li {
  display: block;
  background-color: inherit;
  color: inherit;
  position: relative;
  height: 52px;
}
.sidebar li a {
  display: block;
  background-color: inherit;
  color: inherit;
  padding: .625rem 1rem .625rem 3.75rem;
  position: relative;
  width: 100%;
  height: 100%;
  line-height: .875rem;
}
.sidebar li a .icon {
  width: 28px;
  height: 28px;
  font-size: 28px;
  line-height: 28px;
  vertical-align: middle;
  text-align: center;
  position: absolute;
  left: .625rem;
  top: .625rem;
}
.sidebar li a .title,
.sidebar li a .counter {
  display: block;
  margin: 0;
  white-space: nowrap;
}
.sidebar li a .title {
  font-size: .6875rem;
  font-weight: bold;
  text-transform: uppercase;
}
.sidebar li a .counter {
  font-size: .7rem;
  font-weight: normal;
}
.sidebar li:hover {
  background-color: #7cc1de;
}
.sidebar li.active {
  background-color: #ffffff;
  color: #323232;
}
.sidebar {
  transition: all 0.2s ease;
}
.sidebar.compact {
  width: 52px;
  transition: all 0.2s ease;
}
.sidebar.compact a {
  padding-right: 0;
  padding-left: 0;
  width: 52px;
}
.sidebar.compact .title {
  display: none ;
}
.sidebar.compact .counter {
  position: absolute;
  top: 0;
  right: 4px;
}
.sidebar2 {
  text-align: left;
  background: #ffffff;
  max-width: 15.625rem;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
  border-collapse: separate;
  border: 1px #eeeeee solid;
  width: 100%;
}
.sidebar2 li:hover > .dropdown-toggle:before {
  border-color: #ffffff;
}
.sidebar2 li {
  display: block;
  float: none;
  position: relative;
}
.sidebar2 li:before,
.sidebar2 li:after {
  display: table;
  content: "";
}
.sidebar2 li:after {
  clear: both;
}
.sidebar2 li a {
  color: #727272;
  font-size: .875rem;
  display: block;
  float: none;
  padding: .75rem 2rem .75rem 2.5rem;
  text-decoration: none;
  vertical-align: middle;
  position: relative;
  white-space: nowrap;
  min-width: 12.5rem;
  border: none;
}
.sidebar2 li a img,
.sidebar2 li a .icon {
  position: absolute;
  left: .875rem;
  top: 50%;
  margin-top: -0.5625rem;
  color: #262626;
  max-height: 1.125rem;
  font-size: 1.125rem;
  display: inline-block;
  margin-right: .3125rem;
  vertical-align: middle;
  text-align: center;
}
.sidebar2 li.active {
  border-left: 2px solid;
  border-color: #1ba1e2;
}
.sidebar2 li.active > a {
  background-color: #59cde2;
  color: #ffffff;
  font-weight: bold;
}
.sidebar2 li:hover {
  text-decoration: none;
  background: #59cde2;
}
.sidebar2 li:hover > a,
.sidebar2 li:hover .icon {
  color: #ffffff;
}
.sidebar2 li a[data-hotkey] {
  padding-right: 3.2rem;
}
.sidebar2 li a[data-hotkey]:after {
  content: attr(data-hotkey);
  position: absolute;
  right: 1.2rem;
  width: auto;
  font-size: .8em;
}
.sidebar2 .divider {
  padding: 0;
  height: 1px;
  margin: 0 1px;
  overflow: hidden;
  background-color: #f2f2f2;
}
.sidebar2 .divider:hover {
  background-color: #f2f2f2;
}
.sidebar2.subdown .d-menu {
  min-width: 0;
  position: relative;
  width: 100%;
  left: 0 ;
  right: 0 ;
  top: 100%;
  box-shadow: none;
}
.sidebar2 .item-block {
  display: block;
  padding: .625rem;
  background-color: #eeeeee;
}
.sidebar2 .d-menu {
  left: 100%;
  top: -10%;
}
.sidebar2 .menu-title {
  background-color: #f6f7f8;
  font-size: 12px;
  line-height: 14px;
  padding: 4px 8px;
  border: 0;
  color: #646464;
}
.sidebar2 .menu-title:first-child {
  margin: 0;
  border-top-width: 0;
}
.sidebar2 .menu-title:first-child:hover {
  border-top-width: 0;
}
.sidebar2 .menu-title:hover {
  background-color: #f6f7f8;
  cursor: default;
  border: 0;
}
.sidebar2 .dropdown-toggle:before {
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
  margin-top: -2px;
}
.sidebar2 .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.sidebar2 .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  transition: all 0.3s ease;
}
.sidebar2.subdown .dropdown-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -1.25rem;
}
.sidebar2.subdown .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.sidebar2 li.disabled a {
  color: #eeeeee;
}
.sidebar2 li.disabled:hover {
  background-color: inherit;
  cursor: default;
  border: 0;
}
.sidebar2 li.disabled:hover a {
  cursor: inherit;
}
.sidebar2.context li a {
  font-size: .75rem;
  padding: .3125rem 2rem .3125rem 2.5rem;
}
.sidebar2.context li a .icon {
  margin-top: -0.4375rem;
  font-size: .825rem;
  color: inherit;
}
.sidebar2.no-min-size li a {
  min-width: 0;
}
.sidebar2.full-size li a {
  min-width: 0;
  width: 100%;
}
.sidebar2 .d-menu {
  min-width: 0;
  position: relative;
  width: 100%;
  left: 0 ;
  right: 0 ;
  top: 100%;
  box-shadow: none;
}
.sidebar2 .dropdown-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -1.25rem;
}
.sidebar2 .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.sidebar2 li {
  border-top: 1px #eeeeee solid;
  cursor: default;
}
.sidebar2 li.stick {
  position: relative;
}
.sidebar2 li.stick:before {
  content: "";
  position: absolute;
  width: 7px;
  height: 44px;
  left: -7px;
  text-indent: -9999px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  background-color: inherit;
}
.sidebar2 li.disabled {
  background-color: inherit;
}
.sidebar2 li.disabled:hover {
  border-top: 1px #eeeeee solid;
}
.sidebar2 li a {
  background-color: #ffffff;
  color: #323232;
  white-space: normal;
  min-width: 0;
}
.sidebar2 li a .icon {
  color: inherit ;
}
.sidebar2 li.title {
  padding: 20px 20px 10px 20px;
  font-size: 24px;
  border: 0;
}
.sidebar2 li.title:hover {
  background-color: inherit;
}
.sidebar2 li:not(.title) + li.title {
  border-top: 1px #eeeeee solid;
}
.sidebar2 li.active {
  background-color: #71b1d1;
  border: none;
}
.sidebar2 li.active a {
  background-color: #71b1d1;
  color: #ffffff;
}
.sidebar2 li.active a .icon {
  color: inherit;
}
.sidebar2 li:hover a {
  background-color: #7cc1de;
}
.sidebar2 li.disabled:hover a {
  background-color: inherit;
}
.sidebar2 li li:not(:hover) {
  color: #1d1d1d;
}
.sidebar2 li li:not(:hover) a {
  background-color: #ffffff;
}
.sidebar2 .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.sidebar2 .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.sidebar2.dark li {
  border-top: 1px #5c5c5c solid;
}
.sidebar2.dark li.title {
  background-color: #3D3D3D;
  color: #ffffff;
}
.sidebar2.dark li a {
  background-color: #3D3D3D;
  color: #ffffff;
}
.sidebar2.dark li a:hover {
  background-color: #262626;
  color: #ffffff;
}
.sidebar2.dark li:not(.title) + li.title,
.sidebar2.dark li.disabled {
  border-top-color: #5c5c5c;
}
.sidebar2.dark li.disabled:hover {
  border-top-color: #5c5c5c ;
}
.sidebar2.dark li.disabled:hover a {
  background-color: #3D3D3D;
}
.sidebar2.dark li.disabled a {
  color: #999999;
}
.sidebar2.dark li.active a {
  background-color: #ce352c;
}
.sidebar2.dark .dropdown-toggle:before {
  border-color: #ffffff;
}
.sidebar2.dark .d-menu li a {
  background-color: #3D3D3D;
  color: #ffffff;
}
.sidebar2.dark .d-menu li a:hover {
  background-color: #262626;
  color: #ffffff;
}
.tabcontrol {
  position: relative;
  width: 100%;
}
.tabcontrol .tabs {
  width: 100%;
  margin: 0;
  padding: 0;
  list-style: none inside;
  border-bottom: 2px #1ba1e2 solid;
  white-space: nowrap;
  overflow: visible;
}
.tabcontrol .tabs:before,
.tabcontrol .tabs:after {
  display: table;
  content: "";
}
.tabcontrol .tabs:after {
  clear: both;
}
.tabcontrol .tabs li {
  display: block;
  float: left;
  position: relative;
  white-space: nowrap;
}
.tabcontrol .tabs li a {
  display: block;
  float: left;
  padding: 8px 24px;
  color: #1d1d1d;
  font-size: .6875rem;
  font-weight: bold;
  text-transform: uppercase;
  position: relative;
  white-space: nowrap;
}
.tabcontrol .tabs li:hover a {
  background-color: #eeeeee;
}
.tabcontrol .tabs li.active a {
  background-color: #1ba1e2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.tabcontrol .tabs li.disabled a {
  background: #eeeeee linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
  color: #999999;
  cursor: default;
}
.tabcontrol .tabs li.non-visible-tabs {
  display: block;
  float: right;
}
.tabcontrol .tabs li.non-visible-tabs:empty {
  display: none;
}
.tabcontrol .tabs li.non-visible-tabs.dropdown-toggle {
  height: 100% ;
}
.tabcontrol.tabs-bottom .tabs {
  border-bottom: none;
  border-top: 2px #1ba1e2 solid;
}
.tabcontrol.tabs-bottom .tabs li.disabled {
  top: 0;
}
.tabcontrol.tabs-bottom .tabs li:hover {
  top: 0;
}
.tabcontrol .frames {
  width: 100%;
  position: relative;
}
.tabcontrol .frames .frame {
  display: block;
  position: relative;
  width: 100%;
  padding: 20px;
  background-color: #999999;
}
.tabcontrol2 {
  position: relative;
  width: 100%;
}
.tabcontrol2 .tabs {
  width: 100%;
  margin: 0;
  padding: 0;
  list-style: none inside;
  border-bottom: 2px #1ba1e2 solid;
  white-space: nowrap;
  overflow: visible;
}
.tabcontrol2 .tabs:before,
.tabcontrol2 .tabs:after {
  display: table;
  content: "";
}
.tabcontrol2 .tabs:after {
  clear: both;
}
.tabcontrol2 .tabs li {
  display: block;
  float: left;
  position: relative;
  white-space: nowrap;
}
.tabcontrol2 .tabs li a {
  display: block;
  float: left;
  padding: 8px 24px;
  color: #1d1d1d;
  font-size: .6875rem;
  font-weight: bold;
  text-transform: uppercase;
  position: relative;
  white-space: nowrap;
}
.tabcontrol2 .tabs li:hover a {
  background-color: #eeeeee;
}
.tabcontrol2 .tabs li.active a {
  background-color: #1ba1e2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.tabcontrol2 .tabs li.disabled a {
  background: #eeeeee linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
  color: #999999;
  cursor: default;
}
.tabcontrol2 .tabs li.non-visible-tabs {
  display: block;
  float: right;
}
.tabcontrol2 .tabs li.non-visible-tabs:empty {
  display: none;
}
.tabcontrol2 .tabs li.non-visible-tabs.dropdown-toggle {
  height: 100% ;
}
.tabcontrol2.tabs-bottom .tabs {
  border-bottom: none;
  border-top: 2px #1ba1e2 solid;
}
.tabcontrol2.tabs-bottom .tabs li.disabled {
  top: 0;
}
.tabcontrol2.tabs-bottom .tabs li:hover {
  top: 0;
}
.tabcontrol2 .frames {
  width: 100%;
  position: relative;
}
.tabcontrol2 .frames .frame {
  display: block;
  position: relative;
  width: 100%;
  padding: 20px;
  background-color: #999999;
}
.tabcontrol2 .tabs {
  border-bottom: 0;
  vertical-align: bottom;
  z-index: 2;
}
.tabcontrol2 .tabs li {
  padding-top: 2px;
  overflow: visible;
  margin: 0 2px;
}
.tabcontrol2 .tabs li:after {
  content: "";
  position: absolute;
  left: 0;
  top: 100%;
  width: 100%;
  background-color: #ffffff;
  height: 2px;
  z-index: 3;
}
.tabcontrol2 .tabs li:not(.active):after {
  background-color: #eeeeee;
  height: 1px;
}
.tabcontrol2 .tabs li:first-child {
  margin-left: 10px;
}
.tabcontrol2 .tabs li a {
  background-color: #eeeeee;
  padding-top: .3125rem;
  text-shadow: none ;
}
.tabcontrol2 .tabs li.active {
  padding-top: 0;
  padding-bottom: 0;
}
.tabcontrol2 .tabs li.active a {
  background-color: #ffffff;
  border: 1px #eeeeee solid;
  border-top: 2px #ce352c solid;
  border-bottom: 0;
  color: #1ba1e2;
}
.tabcontrol2 .tabs li.active:hover a {
  background-color: inherit;
}
.tabcontrol2 .tabs li:hover a {
  background-color: #e1e1e1;
}
.tabcontrol2.tabs-bottom .tabs {
  border-top: 0;
}
.tabcontrol2.tabs-bottom .tabs li {
  padding: 0;
}
.tabcontrol2.tabs-bottom .tabs li:after {
  top: -1px;
  background-color: #ffffff;
}
.tabcontrol2.tabs-bottom .tabs li.active {
  padding-bottom: 0;
}
.tabcontrol2.tabs-bottom .tabs li.active a {
  border: 1px #eeeeee solid;
  border-bottom: 2px #ce352c solid;
  border-top: 0;
}
.tabcontrol2.tabs-bottom .tabs li:not(.active) {
  margin-bottom: 0;
}
.tabcontrol2.tabs-bottom .tabs li:not(.active):after {
  background-color: #eeeeee;
}
.tabcontrol2 .frames {
  z-index: 1;
  border: 1px #eeeeee solid;
}
.tabcontrol2 .frames .frame {
  background-color: #ffffff;
}
.accordion > .frame {
  margin-top: 1px;
}
.accordion > .frame:first-child {
  margin-top: 0;
}
.accordion > .frame > .heading {
  display: block;
  padding: 8px 16px 8px 20px;
  background-color: #f6f6f6;
  cursor: pointer;
  font-size: .6875rem;
  text-transform: uppercase;
  font-weight: bold;
  position: relative;
  border: 1px #eeeeee solid;
  overflow: hidden;
  z-index: 2;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  transition: all 0.3s ease;
}
.accordion > .frame > .heading:before {
  position: absolute;
  display: block;
  left: 4px;
  top: 6px;
  content: '';
  width: 0;
  height: 0;
  border-left: 6px solid transparent;
  border-top: 6px solid transparent;
  border-bottom: 6px solid black;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  transition: all 0.3s ease;
}
.accordion > .frame > .heading:hover {
  background-color: #eeeeee;
}
.accordion > .frame > .heading .icon {
  position: absolute;
  right: 0;
  top: 0;
  font-size: 3rem;
  width: 3rem;
  max-height: 3rem;
  opacity: .6;
  color: #999999;
}
.accordion > .frame.active > .heading {
  background-color: #1ba1e2;
  border-color: #1ba1e2;
  color: #ffffff;
  box-shadow: -1px 6px 6px -6px rgba(0, 0, 0, 0.35);
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
  transition: all 0.3s ease;
}
.accordion > .frame.active > .heading .icon {
  color: #ffffff;
}
.accordion > .frame.active > .heading:before {
  left: 8px;
  border-bottom-color: #ffffff;
  transition: all 0.3s ease;
  -webkit-transform: rotate(0deg);
          transform: rotate(0deg);
  -webkit-transform-origin: 50% 50%;
          transform-origin: 50% 50%;
}
.accordion > .frame.active > .content {
  display: block;
}
.accordion > .frame > .content {
  padding: .625rem;
  display: none;
  background-color: #ffffff;
  z-index: 1;
}
.accordion > .frame.disabled > .heading {
  cursor: default;
  background: #ffffff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
}
.accordion.large-heading > .frame > .heading {
  font-size: 2rem;
  line-height: 1.1;
  font-weight: 300;
  padding-left: 32px;
  text-shadow: none;
}
.accordion.large-heading > .frame > .heading:before {
  top: 10px;
  border-left: 12px solid transparent;
  border-top: 12px solid transparent;
  border-bottom: 12px solid black;
}
.accordion.large-heading > .frame.active > .heading:before {
  border-bottom-color: #ffffff;
}
.carousel {
  display: block;
  width: 100%;
  position: relative;
  min-height: 100px;
  overflow: hidden;
}
.carousel .slide {
  top: 0;
  left: 0;
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  min-height: 100%;
}
.carousel .slide:before,
.carousel .slide:after {
  display: table;
  content: "";
}
.carousel .slide:after {
  clear: both;
}
.carousel [class*="carousel-switch"],
.carousel .carousel-bullets {
  position: absolute;
  display: block;
  z-index: 999;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.carousel .carousel-bullets {
  left: 0;
  right: 0;
  bottom: .625rem;
  text-align: center;
}
.carousel .carousel-bullets .carousel-bullet {
  display: inline-block;
  float: none;
  width: .625rem;
  height: .625rem;
  background-color: #ababab;
  box-shadow: none;
  border-radius: 50%;
  margin-right: .625rem;
  cursor: pointer;
  border: 1px #ffffff solid;
}
.carousel .carousel-bullets .carousel-bullet:last-child {
  margin-right: 0;
}
.carousel .carousel-bullets .carousel-bullet.bullet-on {
  background-color: #59cde2;
}
.carousel.square-bullets .carousel-bullet {
  border-radius: 0 ;
}
.carousel .carousel-switch-next,
.carousel .carousel-switch-prev {
  width: auto;
  line-height: 4rem;
  height: 4rem;
  text-decoration: none;
  margin-top: -2rem;
  top: 50%;
  font-size: 4rem;
  font-weight: 300;
  color: #eeeeee;
  cursor: pointer;
  vertical-align: middle;
  padding: 0;
}
.carousel .carousel-switch-next:hover,
.carousel .carousel-switch-prev:hover {
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.carousel .carousel-switch-next img,
.carousel .carousel-switch-prev img {
  max-width: 64px;
  max-height: 64px;
}
.carousel .carousel-switch-next {
  right: 0;
  left: auto;
}
.carousel .carousel-switch-prev {
  left: 0;
  right: auto;
}
.panel {
  display: block;
  position: relative;
  background-color: #ffffff;
}
.panel > .heading,
.panel > .content {
  display: block;
  position: relative;
  color: #1d1d1d;
}
.panel > .heading {
  padding: .625rem 0 ;
  color: #ffffff;
  background-color: #1ba1e2;
  cursor: default;
  vertical-align: middle;
  z-index: 2;
  height: 2.625rem;
  box-shadow: -1px 6px 6px -6px rgba(0, 0, 0, 0.35);
  font: 500 1.125rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.panel > .heading > .title {
  margin-left: .625rem;
}
.panel > .heading > .icon + .title {
  margin-left: 3.625rem;
}
.panel > .heading > .icon {
  position: absolute;
  background-color: #1b6eae;
  top: 0;
  left: 0;
  bottom: 0;
  vertical-align: middle;
  height: 2.625rem;
  width: 2.625rem;
  text-align: center;
  padding: .625rem;
}
.panel > .content {
  background-color: #e8f1f4;
  z-index: 1;
  font-size: 0.875rem;
}
.panel.collapsible > .heading {
  cursor: pointer;
}
.panel.collapsible > .heading:before {
  content: "\2212";
  display: block;
  position: absolute;
  top: 50%;
  margin-top: -1.3rem;
  right: .625rem;
  color: inherit;
  vertical-align: middle;
  font-size: 2rem;
}
.panel.collapsed > .heading:before {
  content: "\002b";
}
.panel.collapsed > .content {
  display: none;
}
.panel.alert > .heading,
.panel.error > .heading,
.panel.danger > .heading {
  background-color: #ce352c;
}
.panel.warning > .heading {
  background-color: #fa6800;
}
.panel.success > .heading {
  background-color: #60a917;
}
.rating {
  cursor: pointer;
  display: inline-block;
}
.rating:before,
.rating:after {
  display: table;
  content: "";
}
.rating:after {
  clear: both;
}
.rating .star {
  cursor: pointer;
  display: block;
  float: left;
  color: #555555;
  font-size: 20px;
  z-index: 1;
  position: relative;
  width: 20px;
  height: 24px;
  vertical-align: middle;
  line-height: 22px;
}
.rating .star:before,
.rating .star:after {
  position: absolute;
  content: '\2605';
  display: block;
  z-index: 2;
  top: 0 ;
  left: 0;
  vertical-align: middle;
}
.rating .star.on {
  color: gold;
}
.rating .star.on.half {
  color: #555555;
}
.rating .star.on.half:after {
  color: gold;
}
.rating .star.half:after {
  z-index: 3;
  width: 8px;
  overflow: hidden;
}
.rating.poor .star.on {
  color: #ce352c;
}
.rating.poor .star.on.half {
  color: #555555;
}
.rating.poor .star.on.half:after {
  color: #ce352c;
}
.rating.regular .star.on {
  color: gold;
}
.rating.regular .star.on.half {
  color: #555555;
}
.rating.regular .star.on.half:after {
  color: gold;
}
.rating.good .star.on {
  color: #60a917;
}
.rating.good .star.on.half {
  color: #555555;
}
.rating.good .star.on.half:after {
  color: #60a917;
}
.rating:not(.static) .star:hover {
  color: gold ;
}
.rating:not(.static) .star:hover.half,
.rating:not(.static) .star:hover.on.half {
  color: gold;
}
.rating:not(.static) .star:hover.half:after,
.rating:not(.static) .star:hover.on.half:after {
  color: gold;
}
.rating:not(.static):hover > .star,
.rating:not(.static):hover > .star:after {
  color: gold ;
}
.rating:not(.static):hover > .star.half,
.rating:not(.static):hover > .star:after.half,
.rating:not(.static):hover > .star.on.half,
.rating:not(.static):hover > .star:after.on.half {
  color: gold;
}
.rating:not(.static):hover > .star.half:after,
.rating:not(.static):hover > .star:after.half:after,
.rating:not(.static):hover > .star.on.half:after,
.rating:not(.static):hover > .star:after.on.half:after {
  color: gold;
}
.rating:not(.static) .star:hover ~ .star,
.rating:not(.static) .star:hover ~ .star:after {
  color: gray ;
}
.rating:not(.static) .star:hover ~ .star.half,
.rating:not(.static) .star:hover ~ .star:after.half,
.rating:not(.static) .star:hover ~ .star.on.half,
.rating:not(.static) .star:hover ~ .star:after.on.half {
  color: gray;
}
.rating:not(.static) .star:hover ~ .star.half:after,
.rating:not(.static) .star:hover ~ .star:after.half:after,
.rating:not(.static) .star:hover ~ .star.on.half:after,
.rating:not(.static) .star:hover ~ .star:after.on.half:after {
  color: gray;
}
.rating.small .star {
  width: 14px;
  height: 16px;
  font-size: 14px;
  line-height: 14px;
}
.rating.small .star.half:after {
  width: 6px;
}
.rating.large .star {
  width: 28px;
  height: 30px;
  font-size: 32px;
  line-height: 24px;
}
.rating.large .star.half:after {
  width: 13px;
}
.rating .score {
  display: block;
  font-size: .8rem;
}
.rating.small .score {
  font-size: .6rem;
}
.rating.large .score {
  font-size: 1rem;
}
.slider {
  height: 2.125rem;
  line-height: 1;
  width: auto;
  position: relative;
}
.slider .marker {
  height: 1rem;
  width: 1rem;
  cursor: pointer;
  position: absolute;
  top: 50%;
  margin-top: -0.5rem;
  left: 0;
  background-color: #1d1d1d;
  z-index: 2;
}
.slider .marker:focus,
.slider .marker:active,
.slider .markerhover {
  border: 2px #ce352c solid;
}
.slider .slider-backside,
.slider .complete {
  height: .5rem;
  background: #999999;
  width: 100%;
  line-height: 2.125rem;
  top: 50%;
  margin-top: -0.25rem;
  position: absolute;
}
.slider .complete {
  width: auto;
  background-color: #00aba9;
  z-index: 2;
  transition: background .3s ease;
  left: 0;
}
.slider .buffer {
  height: 4px;
  width: auto;
  background-color: #ffffff;
  z-index: 1;
  transition: background .3s ease;
  position: absolute;
  top: 50%;
  margin-top: -2px;
  left: 0;
}
.slider .slider-hint {
  min-width: 1.8rem;
  width: auto;
  height: auto;
  position: absolute;
  z-index: 3;
  border: 1px #ccc solid;
  padding: .25rem;
  top: -1.2rem;
  text-align: center;
  font-size: .625rem;
  display: none;
  background: #fffcc0;
}
.slider .slider-hint:before {
  border: 1px #ccc solid;
  border-left: 0;
  border-top: 0;
  content: "";
  width: .25rem;
  height: .25rem;
  display: block;
  position: absolute;
  background-color: inherit;
  margin-top: -0.125rem;
  margin-left: -0.15625rem;
  top: 100%;
  left: 50%;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.slider.hint-bottom .slider-hint {
  top: 100%;
  margin-top: -0.125rem;
}
.slider.hint-bottom .slider-hint:before {
  top: -0.0625rem;
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
}
.slider.permanent-hint > .slider-hint {
  display: block;
}
.slider:hover .complete {
  background-color: #45fffd;
}
.slider:active .complete,
.slider:active + .marker:active .complete {
  background-color: #45fffd;
}
.slider.place-left {
  margin-right: 20px;
}
.slider.place-right {
  margin-left: 20px;
}
.slider.ani .complete {
  -webkit-animation: ani-bg-stripes 2s linear infinite;
          animation: ani-bg-stripes 2s linear infinite;
}
.slider.vertical {
  min-height: 100px;
  width: 2.125rem;
  display: inline-block;
}
.slider.vertical .slider-backside,
.slider.vertical .complete {
  position: absolute;
  height: 100%;
  width: .5rem;
  bottom: 0;
  left: 50%;
  margin-left: -0.25rem;
  top: auto;
}
.slider.vertical .marker {
  left: 50%;
  top: auto;
  margin-left: -0.5rem;
}
.slider.vertical .buffer {
  position: absolute;
  height: auto;
  width: 6px ;
  bottom: 0;
  left: 50%;
  margin-left: -3px;
  top: auto;
}
.slider.vertical .slider-hint {
  left: 100%;
  margin-top: 0;
}
.slider.vertical .slider-hint:before {
  height: .25rem;
  width: .25rem;
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  left: -1px;
  top: 50%;
  margin-top: -0.125rem;
  margin-left: -0.135rem;
}
.slider.vertical.hint-left .slider-hint {
  left: -100%;
  margin-left: .25rem;
}
.slider.vertical.hint-left .slider-hint:before {
  left: 100%;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.slider.cycle-marker .marker {
  border-radius: 50%;
}
.tile-area {
  min-width: 100%;
  height: 100%;
  position: relative;
  padding: 120px 80px 0 0;
  overflow: hidden;
}
.tile-area:before,
.tile-area:after {
  display: table;
  content: "";
}
.tile-area:after {
  clear: both;
}
.tile-area .tile-area-title {
  position: fixed;
  top: 20px;
  left: 80px;
  font-weight: 300;
  font-size: 42px;
  line-height: 1.1;
}
.tile-group {
  margin-left: 80px;
  min-width: 80px;
  width: auto;
  float: left;
  display: block;
  padding-top: 40px;
  position: relative;
}
.tile-group.one {
  width: 160px;
}
.tile-group.two,
.tile-group.double {
  width: 320px;
}
.tile-group.three,
.tile-group.triple {
  width: 480px;
}
.tile-group.four,
.tile-group.quadro {
  width: 640px;
}
.tile-group.five {
  width: 800px;
}
.tile-group.six {
  width: 960px;
}
.tile-group.seven {
  width: 1120px;
}
.tile-group .tile-group-title {
  color: #ffffff;
  font-size: 18px;
  line-height: 20px;
  position: absolute;
  top: 10px;
  left: 0;
}
.tile-container {
  width: 100%;
  height: auto;
  display: block;
  margin: 0;
  padding: 0;
}
.tile-container:before,
.tile-container:after {
  display: table;
  content: "";
}
.tile-container:after {
  clear: both;
}
.tile {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.tile:hover {
  outline: #999999 solid 3px;
}
.tile:active {
  outline: 0;
}
.tile.no-outline {
  outline-color: transparent;
}
.tile.small-tile {
  width: 70px;
  height: 70px;
}
.tile.wide-tile {
  width: 310px;
  height: 150px;
}
.tile.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile.large-tile {
  width: 310px;
  height: 310px;
}
.tile.big-tile {
  width: 470px;
  height: 470px;
}
.tile.super-tile {
  width: 630px;
  height: 630px;
}
.tile-square {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
}
.tile-square:hover {
  outline: #999999 solid 3px;
}
.tile-square:active {
  outline: 0;
}
.tile-square.no-outline {
  outline-color: transparent;
}
.tile-square.small-tile {
  width: 70px;
  height: 70px;
}
.tile-square.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-square.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-square.large-tile {
  width: 310px;
  height: 310px;
}
.tile-square.big-tile {
  width: 470px;
  height: 470px;
}
.tile-square.super-tile {
  width: 630px;
  height: 630px;
}
.tile-square .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-square:hover .tile-content.flipVertical,
.tile-square.hover .tile-content.flipVertical,
.tile-square.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-square .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-square .tile-content.flipVertical .slide,
.tile-square .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-square .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-square .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-square .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-square:hover .tile-content.flipHorizontal,
.tile-square.hover .tile-content.flipHorizontal,
.tile-square.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-square .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-square .tile-content.flipHorizontal .slide,
.tile-square .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-square .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-square .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-square .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-square .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-small {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 70px;
  height: 70px;
}
.tile-small:hover {
  outline: #999999 solid 3px;
}
.tile-small:active {
  outline: 0;
}
.tile-small.no-outline {
  outline-color: transparent;
}
.tile-small.small-tile {
  width: 70px;
  height: 70px;
}
.tile-small.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-small.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-small.large-tile {
  width: 310px;
  height: 310px;
}
.tile-small.big-tile {
  width: 470px;
  height: 470px;
}
.tile-small.super-tile {
  width: 630px;
  height: 630px;
}
.tile-small .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-small:hover .tile-content.flipVertical,
.tile-small.hover .tile-content.flipVertical,
.tile-small.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-small .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-small .tile-content.flipVertical .slide,
.tile-small .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-small .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-small .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-small .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-small:hover .tile-content.flipHorizontal,
.tile-small.hover .tile-content.flipHorizontal,
.tile-small.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-small .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-small .tile-content.flipHorizontal .slide,
.tile-small .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-small .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-small .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-small .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-small .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-wide {
  width: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 310px;
  height: 150px;
}
.tile-wide:hover {
  outline: #999999 solid 3px;
}
.tile-wide:active {
  outline: 0;
}
.tile-wide.no-outline {
  outline-color: transparent;
}
.tile-wide.small-tile {
  width: 70px;
  height: 70px;
}
.tile-wide.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-wide.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-wide.large-tile {
  width: 310px;
  height: 310px;
}
.tile-wide.big-tile {
  width: 470px;
  height: 470px;
}
.tile-wide.super-tile {
  width: 630px;
  height: 630px;
}
.tile-wide .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-wide:hover .tile-content.flipVertical,
.tile-wide.hover .tile-content.flipVertical,
.tile-wide.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-wide .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-wide .tile-content.flipVertical .slide,
.tile-wide .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-wide .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-wide .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-wide .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-wide:hover .tile-content.flipHorizontal,
.tile-wide.hover .tile-content.flipHorizontal,
.tile-wide.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-wide .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-wide .tile-content.flipHorizontal .slide,
.tile-wide .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-wide .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-wide .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-wide .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-wide .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-large {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 310px;
  height: 310px;
}
.tile-large:hover {
  outline: #999999 solid 3px;
}
.tile-large:active {
  outline: 0;
}
.tile-large.no-outline {
  outline-color: transparent;
}
.tile-large.small-tile {
  width: 70px;
  height: 70px;
}
.tile-large.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-large.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-large.large-tile {
  width: 310px;
  height: 310px;
}
.tile-large.big-tile {
  width: 470px;
  height: 470px;
}
.tile-large.super-tile {
  width: 630px;
  height: 630px;
}
.tile-large .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-large:hover .tile-content.flipVertical,
.tile-large.hover .tile-content.flipVertical,
.tile-large.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-large .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-large .tile-content.flipVertical .slide,
.tile-large .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-large .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-large .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-large .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-large:hover .tile-content.flipHorizontal,
.tile-large.hover .tile-content.flipHorizontal,
.tile-large.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-large .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-large .tile-content.flipHorizontal .slide,
.tile-large .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-large .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-large .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-large .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-large .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-big {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 470px;
  height: 470px;
}
.tile-big:hover {
  outline: #999999 solid 3px;
}
.tile-big:active {
  outline: 0;
}
.tile-big.no-outline {
  outline-color: transparent;
}
.tile-big.small-tile {
  width: 70px;
  height: 70px;
}
.tile-big.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-big.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-big.large-tile {
  width: 310px;
  height: 310px;
}
.tile-big.big-tile {
  width: 470px;
  height: 470px;
}
.tile-big.super-tile {
  width: 630px;
  height: 630px;
}
.tile-big .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-big:hover .tile-content.flipVertical,
.tile-big.hover .tile-content.flipVertical,
.tile-big.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-big .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-big .tile-content.flipVertical .slide,
.tile-big .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-big .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-big .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-big .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-big:hover .tile-content.flipHorizontal,
.tile-big.hover .tile-content.flipHorizontal,
.tile-big.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-big .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-big .tile-content.flipHorizontal .slide,
.tile-big .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-big .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-big .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-big .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-big .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-super {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 630px;
  height: 630px;
}
.tile-super:hover {
  outline: #999999 solid 3px;
}
.tile-super:active {
  outline: 0;
}
.tile-super.no-outline {
  outline-color: transparent;
}
.tile-super.small-tile {
  width: 70px;
  height: 70px;
}
.tile-super.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-super.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-super.large-tile {
  width: 310px;
  height: 310px;
}
.tile-super.big-tile {
  width: 470px;
  height: 470px;
}
.tile-super.super-tile {
  width: 630px;
  height: 630px;
}
.tile-super .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-super:hover .tile-content.flipVertical,
.tile-super.hover .tile-content.flipVertical,
.tile-super.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-super .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-super .tile-content.flipVertical .slide,
.tile-super .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-super .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-super .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-super .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-super:hover .tile-content.flipHorizontal,
.tile-super.hover .tile-content.flipHorizontal,
.tile-super.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-super .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-super .tile-content.flipHorizontal .slide,
.tile-super .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-super .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-super .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-super .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-super .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-small-x {
  width: 70px;
}
.tile-square-x {
  width: 150px;
}
.tile-wide-x {
  width: 310px;
}
.tile-large-x {
  width: 310px;
}
.tile-big-x {
  width: 470px;
}
.tile-super-x {
  width: 630px;
}
.tile-small-y {
  height: 70px;
}
.tile-square-y {
  height: 150px;
}
.tile-wide-y {
  height: 310px;
}
.tile-large-y {
  height: 310px;
}
.tile-big-y {
  height: 470px;
}
.tile-super-y {
  height: 630px;
}
.tile-content {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: inherit;
  overflow: hidden;
  display: none;
}
.tile-content:first-child {
  display: block;
}
.tile-content .live-slide {
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  display: none;
  overflow: hidden;
}
.tile-content .live-slide:nth-child(1) {
  display: block;
}
.tile-content.iconic .icon {
  position: absolute;
  width: 64px;
  height: 64px;
  font-size: 64px;
  top: 50%;
  margin-top: -40px;
  left: 50%;
  margin-left: -32px;
  text-align: center;
}
.tile-small .tile-content.iconic .icon {
  width: 32px;
  height: 32px;
  font-size: 32px;
  margin-left: -16px;
  margin-top: -16px;
}
.tile-content.image-set > img,
.tile-content.image-set > .image-container {
  margin: 0;
  padding: 0;
  width: 25% ;
  height: 50% ;
  float: left;
  border: 1px #1e1e1e solid;
}
.tile-content.image-set > img:first-child,
.tile-content.image-set > .image-container:first-child {
  width: 50% ;
  float: left;
  height: 100% ;
}
.tile-content.slide-up > .slide,
.tile-content.slide-down > .slide,
.tile-content.slide-up-2 > .slide,
.tile-content.slide-down-2 > .slide,
.tile-content.slide-left > .slide,
.tile-content.slide-right > .slide,
.tile-content.slide-left-2 > .slide,
.tile-content.slide-right-2 > .slide,
.tile-content.slide-up > .slide-over,
.tile-content.slide-down > .slide-over,
.tile-content.slide-up-2 > .slide-over,
.tile-content.slide-down-2 > .slide-over,
.tile-content.slide-left > .slide-over,
.tile-content.slide-right > .slide-over,
.tile-content.slide-left-2 > .slide-over,
.tile-content.slide-right-2 > .slide-over {
  width: 100%;
  height: inherit;
  display: block;
  position: absolute;
  box-shadow: inset 0 0 1px #FFFFCC;
}
.tile-content.slide-up > .slide,
.tile-content.slide-down > .slide,
.tile-content.slide-up-2 > .slide,
.tile-content.slide-down-2 > .slide,
.tile-content.slide-left > .slide,
.tile-content.slide-right > .slide,
.tile-content.slide-left-2 > .slide,
.tile-content.slide-right-2 > .slide {
  top: 0;
  z-index: 1;
  transition: all 0.3s ease;
}
.tile-content.slide-up:hover > .slide,
.tile-content.slide-down:hover > .slide,
.tile-content.slide-up-2:hover > .slide,
.tile-content.slide-down-2:hover > .slide,
.tile-content.slide-left:hover > .slide,
.tile-content.slide-right:hover > .slide,
.tile-content.slide-left-2:hover > .slide,
.tile-content.slide-right-2:hover > .slide {
  -webkit-transform: scale(1.5);
          transform: scale(1.5);
  transition: all 0.6s ease;
}
.tile-content.slide-up > .slide-over {
  top: 100%;
  z-index: 2;
  height: 75%;
  transition: all 0.6s ease;
}
.tile-content.slide-up:hover > .slide-over {
  top: 25%;
  transition: all 0.3s ease;
}
.tile-content.slide-up-2 > .slide-over {
  top: 100%;
  z-index: 2;
  height: 100%;
  transition: all 0.3s ease;
}
.tile-content.slide-up-2:hover > .slide {
  -webkit-transform: scale(1);
          transform: scale(1);
  top: -100%;
  transition: all 0.4s ease;
}
.tile-content.slide-up-2:hover > .slide-over {
  top: 0;
  transition: all 0.4s ease;
}
.tile-content.slide-down > .slide-over {
  top: -100%;
  z-index: 2;
  height: 75%;
  transition: all 0.6s ease;
}
.tile-content.slide-down:hover > .slide-over {
  top: 0;
  transition: all 0.3s ease;
}
.tile-content.slide-down-2 > .slide-over {
  top: -100%;
  z-index: 2;
  height: 100%;
  transition: all 0.3s ease;
}
.tile-content.slide-down-2:hover > .slide {
  -webkit-transform: scale(1);
          transform: scale(1);
  top: 100%;
  transition: all 0.4s ease;
}
.tile-content.slide-down-2:hover > .slide-over {
  top: 0;
  transition: all 0.4s ease;
}
.tile-content.slide-left > .slide-over {
  left: -100%;
  z-index: 2;
  width: 75%;
  height: 100%;
  transition: all 0.6s ease;
}
.tile-content.slide-left:hover > .slide-over {
  left: 0;
  transition: all 0.3s ease;
}
.tile-content.slide-left-2 > .slide {
  left: 0;
  transition: all 0.3s ease;
}
.tile-content.slide-left-2 > .slide-over {
  left: -100%;
  z-index: 2;
  width: 100%;
  height: 100%;
  transition: all 0.3s ease;
}
.tile-content.slide-left-2:hover > .slide {
  -webkit-transform: scale(1);
          transform: scale(1);
  left: 100%;
  transition: all 0.4s ease;
}
.tile-content.slide-left-2:hover > .slide-over {
  left: 0;
  transition: all 0.4s ease;
}
.tile-content.slide-right > .slide-over {
  left: 100%;
  z-index: 2;
  width: 75%;
  height: 100%;
  transition: all 0.6s ease;
}
.tile-content.slide-right:hover > .slide-over {
  left: 25%;
  transition: all 0.3s ease;
}
.tile-content.slide-right-2 > .slide {
  left: 0;
  transition: all 0.3s ease;
}
.tile-content.slide-right-2 > .slide-over {
  left: 100%;
  z-index: 2;
  width: 100%;
  height: 100%;
  transition: all 0.3s ease;
}
.tile-content.slide-right-2:hover > .slide {
  -webkit-transform: scale(1);
          transform: scale(1);
  left: -100%;
  transition: all 0.4s ease;
}
.tile-content.slide-right-2:hover > .slide-over {
  left: 0;
  transition: all 0.4s ease;
}
.tile-content.zooming .slide {
  box-shadow: inset 0 0 1px #FFFFCC;
  width: 100%;
  height: 100%;
  display: block;
  position: relative;
  transition: all 0.6s ease;
}
.tile-content.zooming .slide:hover {
  -webkit-transform: scale(1.5);
          transform: scale(1.5);
  transition: all 0.6s ease;
}
.tile-content.zooming-out .slide {
  width: 100%;
  height: 100%;
  display: block;
  position: relative;
  -webkit-transform: scale(1.5);
          transform: scale(1.5);
  transition: all 0.6s ease;
}
.tile-content.zooming-out .slide:hover {
  -webkit-transform: scale(1);
          transform: scale(1);
  transition: all 0.6s ease;
}
.tile-small,
.tile,
.tile-square,
.tile-wide,
.tile-large,
.tile-big,
.tile-super {
  overflow: visible;
}
.tile-small .tile-content.flipVertical,
.tile .tile-content.flipVertical,
.tile-square .tile-content.flipVertical,
.tile-wide .tile-content.flipVertical,
.tile-large .tile-content.flipVertical,
.tile-big .tile-content.flipVertical,
.tile-super .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-small:hover .tile-content.flipVertical,
.tile:hover .tile-content.flipVertical,
.tile-square:hover .tile-content.flipVertical,
.tile-wide:hover .tile-content.flipVertical,
.tile-large:hover .tile-content.flipVertical,
.tile-big:hover .tile-content.flipVertical,
.tile-super:hover .tile-content.flipVertical,
.tile-small.hover .tile-content.flipVertical,
.tile.hover .tile-content.flipVertical,
.tile-square.hover .tile-content.flipVertical,
.tile-wide.hover .tile-content.flipVertical,
.tile-large.hover .tile-content.flipVertical,
.tile-big.hover .tile-content.flipVertical,
.tile-super.hover .tile-content.flipVertical,
.tile-small.flip .tile-content.flipVertical,
.tile.flip .tile-content.flipVertical,
.tile-square.flip .tile-content.flipVertical,
.tile-wide.flip .tile-content.flipVertical,
.tile-large.flip .tile-content.flipVertical,
.tile-big.flip .tile-content.flipVertical,
.tile-super.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-small .tile-content.flipVertical,
.tile .tile-content.flipVertical,
.tile-square .tile-content.flipVertical,
.tile-wide .tile-content.flipVertical,
.tile-large .tile-content.flipVertical,
.tile-big .tile-content.flipVertical,
.tile-super .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-small .tile-content.flipVertical .slide,
.tile .tile-content.flipVertical .slide,
.tile-square .tile-content.flipVertical .slide,
.tile-wide .tile-content.flipVertical .slide,
.tile-large .tile-content.flipVertical .slide,
.tile-big .tile-content.flipVertical .slide,
.tile-super .tile-content.flipVertical .slide,
.tile-small .tile-content.flipVertical .slide-over,
.tile .tile-content.flipVertical .slide-over,
.tile-square .tile-content.flipVertical .slide-over,
.tile-wide .tile-content.flipVertical .slide-over,
.tile-large .tile-content.flipVertical .slide-over,
.tile-big .tile-content.flipVertical .slide-over,
.tile-super .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-small .tile-content.flipVertical .slide,
.tile .tile-content.flipVertical .slide,
.tile-square .tile-content.flipVertical .slide,
.tile-wide .tile-content.flipVertical .slide,
.tile-large .tile-content.flipVertical .slide,
.tile-big .tile-content.flipVertical .slide,
.tile-super .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-small .tile-content.flipVertical .slide-over,
.tile .tile-content.flipVertical .slide-over,
.tile-square .tile-content.flipVertical .slide-over,
.tile-wide .tile-content.flipVertical .slide-over,
.tile-large .tile-content.flipVertical .slide-over,
.tile-big .tile-content.flipVertical .slide-over,
.tile-super .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-small .tile-content.flipHorizontal,
.tile .tile-content.flipHorizontal,
.tile-square .tile-content.flipHorizontal,
.tile-wide .tile-content.flipHorizontal,
.tile-large .tile-content.flipHorizontal,
.tile-big .tile-content.flipHorizontal,
.tile-super .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-small:hover .tile-content.flipHorizontal,
.tile:hover .tile-content.flipHorizontal,
.tile-square:hover .tile-content.flipHorizontal,
.tile-wide:hover .tile-content.flipHorizontal,
.tile-large:hover .tile-content.flipHorizontal,
.tile-big:hover .tile-content.flipHorizontal,
.tile-super:hover .tile-content.flipHorizontal,
.tile-small.hover .tile-content.flipHorizontal,
.tile.hover .tile-content.flipHorizontal,
.tile-square.hover .tile-content.flipHorizontal,
.tile-wide.hover .tile-content.flipHorizontal,
.tile-large.hover .tile-content.flipHorizontal,
.tile-big.hover .tile-content.flipHorizontal,
.tile-super.hover .tile-content.flipHorizontal,
.tile-small.flip .tile-content.flipHorizontal,
.tile.flip .tile-content.flipHorizontal,
.tile-square.flip .tile-content.flipHorizontal,
.tile-wide.flip .tile-content.flipHorizontal,
.tile-large.flip .tile-content.flipHorizontal,
.tile-big.flip .tile-content.flipHorizontal,
.tile-super.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-small .tile-content.flipHorizontal,
.tile .tile-content.flipHorizontal,
.tile-square .tile-content.flipHorizontal,
.tile-wide .tile-content.flipHorizontal,
.tile-large .tile-content.flipHorizontal,
.tile-big .tile-content.flipHorizontal,
.tile-super .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-small .tile-content.flipHorizontal .slide,
.tile .tile-content.flipHorizontal .slide,
.tile-square .tile-content.flipHorizontal .slide,
.tile-wide .tile-content.flipHorizontal .slide,
.tile-large .tile-content.flipHorizontal .slide,
.tile-big .tile-content.flipHorizontal .slide,
.tile-super .tile-content.flipHorizontal .slide,
.tile-small .tile-content.flipHorizontal .slide-over,
.tile .tile-content.flipHorizontal .slide-over,
.tile-square .tile-content.flipHorizontal .slide-over,
.tile-wide .tile-content.flipHorizontal .slide-over,
.tile-large .tile-content.flipHorizontal .slide-over,
.tile-big .tile-content.flipHorizontal .slide-over,
.tile-super .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-small .tile-content.flipHorizontal .slide,
.tile .tile-content.flipHorizontal .slide,
.tile-square .tile-content.flipHorizontal .slide,
.tile-wide .tile-content.flipHorizontal .slide,
.tile-large .tile-content.flipHorizontal .slide,
.tile-big .tile-content.flipHorizontal .slide,
.tile-super .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-small .tile-content.flipHorizontal .slide-over,
.tile .tile-content.flipHorizontal .slide-over,
.tile-square .tile-content.flipHorizontal .slide-over,
.tile-wide .tile-content.flipHorizontal .slide-over,
.tile-large .tile-content.flipHorizontal .slide-over,
.tile-big .tile-content.flipHorizontal .slide-over,
.tile-super .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-content .image-container,
.tile-content .carousel {
  box-shadow: inset 0 0 1px #FFFFCC;
  width: 100%;
  height: 100%;
}
[class*=tile-transform-] {
  transition: all 0.22s ease;
}
.tile-transform-right {
  -webkit-transform-origin: left 50%;
          transform-origin: left 50%;
}
.tile.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.138372rad) !important;
          transform: perspective(500px) rotateY(0.138372rad) !important;
}
.tile-square.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.138372rad) !important;
          transform: perspective(500px) rotateY(0.138372rad) !important;
}
.tile-wide.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.069186rad) !important;
          transform: perspective(500px) rotateY(0.069186rad) !important;
}
.tile-large.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.069186rad) !important;
          transform: perspective(500px) rotateY(0.069186rad) !important;
}
.tile-big.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.046124rad) !important;
          transform: perspective(500px) rotateY(0.046124rad) !important;
}
.tile-super.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.034593rad) !important;
          transform: perspective(500px) rotateY(0.034593rad) !important;
}
.tile-small.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.276744rad) !important;
          transform: perspective(500px) rotateY(0.276744rad) !important;
}
.tile-transform-left {
  -webkit-transform-origin: right 50%;
          transform-origin: right 50%;
}
.tile.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.138372rad) !important;
          transform: perspective(500px) rotateY(-0.138372rad) !important;
}
.tile-square.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.138372rad) !important;
          transform: perspective(500px) rotateY(-0.138372rad) !important;
}
.tile-wide.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.069186rad) !important;
          transform: perspective(500px) rotateY(-0.069186rad) !important;
}
.tile-large.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.069186rad) !important;
          transform: perspective(500px) rotateY(-0.069186rad) !important;
}
.tile-big.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.046124rad) !important;
          transform: perspective(500px) rotateY(-0.046124rad) !important;
}
.tile-super.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.034593rad) !important;
          transform: perspective(500px) rotateY(-0.034593rad) !important;
}
.tile-small.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.276744rad) !important;
          transform: perspective(500px) rotateY(-0.276744rad) !important;
}
.tile-transform-top {
  -webkit-transform-origin: 50% bottom;
          transform-origin: 50% bottom;
}
.tile.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.138372rad) !important;
          transform: perspective(500px) rotateX(0.138372rad) !important;
}
.tile-square.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.138372rad) !important;
          transform: perspective(500px) rotateX(0.138372rad) !important;
}
.tile-wide.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.069186rad) !important;
          transform: perspective(500px) rotateX(0.069186rad) !important;
}
.tile-large.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.069186rad) !important;
          transform: perspective(500px) rotateX(0.069186rad) !important;
}
.tile-big.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.046124rad) !important;
          transform: perspective(500px) rotateX(0.046124rad) !important;
}
.tile-super.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.034593rad) !important;
          transform: perspective(500px) rotateX(0.034593rad) !important;
}
.tile-small.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.276744rad) !important;
          transform: perspective(500px) rotateX(0.276744rad) !important;
}
.tile-transform-bottom {
  -webkit-transform-origin: 50% top;
          transform-origin: 50% top;
}
.tile.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.138372rad) !important;
          transform: perspective(500px) rotateX(-0.138372rad) !important;
}
.tile-square.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.138372rad) !important;
          transform: perspective(500px) rotateX(-0.138372rad) !important;
}
.tile-wide.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.069186rad) !important;
          transform: perspective(500px) rotateX(-0.069186rad) !important;
}
.tile-large.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.069186rad) !important;
          transform: perspective(500px) rotateX(-0.069186rad) !important;
}
.tile-big.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.046124rad) !important;
          transform: perspective(500px) rotateX(-0.046124rad) !important;
}
.tile-super.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.034593rad) !important;
          transform: perspective(500px) rotateX(-0.034593rad) !important;
}
.tile-small.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.276744rad) !important;
          transform: perspective(500px) rotateX(-0.276744rad) !important;
}
.tile-area-scheme-dark {
  background-color: #1d1d1d;
}
.tile-area-scheme-dark [class*=tile] {
  outline-color: #373737;
}
.tile-area-scheme-darkBrown {
  background-color: #63362f;
}
.tile-area-scheme-darkBrown [class*=tile] {
  outline-color: #86493f;
}
.tile-area-scheme-darkCrimson {
  background-color: #640024;
}
.tile-area-scheme-darkCrimson [class*=tile] {
  outline-color: #970036;
}
.tile-area-scheme-darkViolet {
  background-color: #57169a;
}
.tile-area-scheme-darkViolet [class*=tile] {
  outline-color: #701cc7;
}
.tile-area-scheme-darkMagenta {
  background-color: #81003c;
}
.tile-area-scheme-darkMagenta [class*=tile] {
  outline-color: #b40054;
}
.tile-area-scheme-darkCyan {
  background-color: #1b6eae;
}
.tile-area-scheme-darkCyan [class*=tile] {
  outline-color: #228ada;
}
.tile-area-scheme-darkCobalt {
  background-color: #00356a;
}
.tile-area-scheme-darkCobalt [class*=tile] {
  outline-color: #004e9d;
}
.tile-area-scheme-darkTeal {
  background-color: #004050;
}
.tile-area-scheme-darkTeal [class*=tile] {
  outline-color: #006983;
}
.tile-area-scheme-darkEmerald {
  background-color: #003e00;
}
.tile-area-scheme-darkEmerald [class*=tile] {
  outline-color: #007100;
}
.tile-area-scheme-darkGreen {
  background-color: #128023;
}
.tile-area-scheme-darkGreen [class*=tile] {
  outline-color: #18ad2f;
}
.tile-area-scheme-darkOrange {
  background-color: #bf5a15;
}
.tile-area-scheme-darkOrange [class*=tile] {
  outline-color: #e77120;
}
.tile-area-scheme-darkRed {
  background-color: #9a1616;
}
.tile-area-scheme-darkRed [class*=tile] {
  outline-color: #c71c1c;
}
.tile-area-scheme-darkPink {
  background-color: #9a165a;
}
.tile-area-scheme-darkPink [class*=tile] {
  outline-color: #c71c74;
}
.tile-area-scheme-darkIndigo {
  background-color: #4b0096;
}
.tile-area-scheme-darkIndigo [class*=tile] {
  outline-color: #6400c9;
}
.tile-area-scheme-darkBlue {
  background-color: #16499a;
}
.tile-area-scheme-darkBlue [class*=tile] {
  outline-color: #1c5ec7;
}
.tile-area-scheme-lightBlue {
  background-color: #4390df;
}
.tile-area-scheme-lightBlue [class*=tile] {
  outline-color: #6faae6;
}
.tile-area-scheme-lightTeal {
  background-color: #45fffd;
}
.tile-area-scheme-lightTeal [class*=tile] {
  outline-color: #78fffd;
}
.tile-area-scheme-lightOlive {
  background-color: #78aa1c;
}
.tile-area-scheme-lightOlive [class*=tile] {
  outline-color: #97d623;
}
.tile-area-scheme-lightOrange {
  background-color: #ffc194;
}
.tile-area-scheme-lightOrange [class*=tile] {
  outline-color: #ffdec7;
}
.tile-area-scheme-lightPink {
  background-color: #f472d0;
}
.tile-area-scheme-lightPink [class*=tile] {
  outline-color: #f8a1e0;
}
.tile-area-scheme-grayed {
  background-color: #585858;
}
.tile-area-scheme-grayed [class*=tile] {
  outline-color: #727272;
}
.treeview {
  margin: 0;
  padding: 0;
  display: block;
  font-size: .75rem;
}
.treeview ul {
  margin: 0;
  padding: 0;
  list-style: none;
  width: 100%;
  font-size: inherit;
}
.treeview li {
  font-size: inherit;
  padding: 2px 16px;
  cursor: pointer;
  position: relative;
  color: #555555;
  vertical-align: middle;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.treeview li.active > .leaf {
  font-weight: bold;
}
.treeview li.disabled {
  cursor: default;
  color: #999999;
}
.treeview li.disabled:hover > .leaf {
  color: #999999;
}
.treeview li .input-control {
  margin: 0 .3125rem 0 0;
  height: 1rem;
  line-height: .625rem;
  min-height: 0;
}
.treeview li .input-control .check {
  line-height: 1rem;
}
.treeview ul > li > .leaf:hover {
  color: #1d1d1d;
}
.treeview .leaf {
  vertical-align: middle;
  display: inline-block;
  color: inherit;
}
.treeview .leaf .icon {
  width: 1rem;
  height: 1rem;
  text-align: center;
}
.treeview .node-toggle {
  position: absolute;
  left: 0;
  top: 8px;
  width: 8px;
  height: 8px;
}
.treeview .node-toggle:before {
  position: absolute;
  display: block;
  left: 0;
  top: -3px;
  height: 0;
  content: '';
  width: 0;
  border-left: 7px solid transparent;
  border-top: 7px solid transparent;
  border-bottom: 7px #1ba1e2 solid;
}
.treeview li:hover > .node-toggle:before {
  border-bottom-color: #1b6eae;
}
.treeview .node.collapsed > .node-toggle:before {
  left: -4px;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  border-bottom-color: #999999;
}
.treeview .node.collapsed:hover > .node-toggle:before {
  border-bottom-color: #1b6eae;
}
.treeview .node.collapsed > ul {
  display: none;
}
.presenter {
  width: 100%;
  height: 200px;
  min-height: 200px;
  position: relative;
  display: block;
}
.scene {
  position: relative;
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  overflow: hidden;
  display: block;
}
.act {
  width: 100%;
  height: 100%;
  display: block;
  position: relative;
  padding: 10px ;
}
.act:before,
.act:after {
  display: table;
  content: "";
}
.act:after {
  clear: both;
}
.actor {
  position: absolute;
  margin-right: 10px;
}
.listview {
  display: block;
  width: 100%;
  height: auto;
}
.listview:before,
.listview:after {
  display: table;
  content: "";
}
.listview:after {
  clear: both;
}
.listview .list-group {
  display: block;
  width: 100%;
  height: auto;
  position: relative;
}
.listview .list-group:before,
.listview .list-group:after {
  display: table;
  content: "";
}
.listview .list-group:after {
  clear: both;
}
.listview .list-group .list-group-toggle {
  display: block;
  padding-left: 16px;
  cursor: pointer;
  position: relative;
  margin-top: 10px;
}
.listview .list-group .list-group-toggle:before {
  position: absolute;
  display: block;
  left: 0;
  top: -3px;
  height: 0;
  content: '';
  width: 0;
  border-left: 7px solid transparent;
  border-top: 7px solid transparent;
  border-bottom: 7px #1ba1e2 solid;
}
.listview .list-group .list-group-content {
  display: block;
  width: 100%;
  height: auto;
  margin-top: 1rem;
}
.listview .list-group .list-group-content:before,
.listview .list-group .list-group-content:after {
  display: table;
  content: "";
}
.listview .list-group .list-group-content:after {
  clear: both;
}
.listview .list-group.collapsed > .list-group-toggle:before {
  left: -4px;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  border-bottom-color: #999999;
}
.listview .list-group.collapsed:hover > .list-group-toggle:before {
  border-bottom-color: #1b6eae;
}
.listview .list {
  display: block;
  width: 100%;
  padding: 8px 8px 4px 48px;
  border: 1px transparent solid;
  cursor: pointer;
  height: 50px;
  border-bottom-color: #eeeeee;
  position: relative;
}
.listview .list:last-child {
  border-bottom-color: transparent;
}
.listview .list .list-icon {
  position: absolute;
  left: 0;
  top: 0;
  margin: 8px;
  width: 32px;
  height: 32px;
  font-size: 32px;
  text-align: center;
}
.listview .list .list-data {
  display: block;
  margin: 4px 0;
}
.listview.list-type-icons .list {
  display: block;
  float: left;
  padding: 0;
  width: 105px;
  height: 116px;
  border-color: transparent;
  margin: .625rem;
  text-align: center;
}
.listview.list-type-icons .list .list-title {
  position: absolute;
  left: 0;
  right: 0;
  bottom: 4px;
  height: auto;
  text-align: center;
}
.listview.list-type-icons .list .list-icon {
  width: 80px;
  height: 80px;
  font-size: 80px;
  text-align: center;
  left: 50%;
  margin-left: -40px;
}
.listview.list-type-icons .list .list-data {
  display: none;
}
.listview.list-type-tiles .list {
  display: block;
  float: left;
  padding: 8px 8px 4px 48px;
  width: 250px;
  height: 52px;
  border-color: transparent;
  margin: .625rem;
}
.listview.list-type-tiles .list .list-title {
  margin-top: 8px;
  display: block;
}
.listview.list-type-tiles .list .list-icon {
  width: 48px;
  height: 48px;
  font-size: 48px;
  text-align: center;
  top: 0;
  left: 0;
  margin: 2px;
}
.listview.list-type-tiles .list .list-data {
  display: none;
}
.listview.list-type-listing .list {
  display: block;
  float: left;
  padding: 4px 2px 4px 24px;
  width: auto;
  height: auto;
  border-color: transparent;
  margin: 1px;
}
.listview.list-type-listing .list .list-title {
  display: block;
}
.listview.list-type-listing .list .list-icon {
  width: 20px;
  height: 20px;
  font-size: 20px;
  text-align: center;
  top: 0;
  left: 0;
  margin: 1px;
}
.listview.list-type-listing .list .list-data {
  display: none;
}
.listview .list.active {
  background-color: #d1e8ff;
  border-color: #64b4db;
}
.listview .list:hover {
  background-color: #e5f3fb;
  border-color: #64b4db;
}
.listview-outlook {
  display: block;
  width: 100%;
  height: auto;
}
.listview-outlook:before,
.listview-outlook:after {
  display: table;
  content: "";
}
.listview-outlook:after {
  clear: both;
}
.listview-outlook .list {
  display: block;
  width: 100%;
  border: 0;
  border-bottom: 1px #eeeeee solid;
  padding: 2px 0;
  color: #555555;
  margin-bottom: 0;
  background-color: transparent;
}
.listview-outlook .list .list-content {
  margin: 2px 0;
  padding: 2px 20px;
  font-size: 1rem;
  color: inherit;
  border-left: 3px transparent solid;
}
.listview-outlook .list .list-content .list-title,
.listview-outlook .list .list-content .list-subtitle,
.listview-outlook .list .list-content .list-remark {
  width: 100%;
  display: block;
  color: inherit;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.listview-outlook .list .list-content .list-title {
  line-height: 1.3;
}
.listview-outlook .list .list-content .list-subtitle {
  font-size: .75rem;
  line-height: 1.2;
  font-weight: 500;
  color: #0067cb;
}
.listview-outlook .list .list-content .list-remark {
  font-weight: normal;
  line-height: 1.2;
  font-size: .625rem;
  color: #999999;
}
.listview-outlook .list:hover {
  background-color: #eeeeee;
  outline: none;
}
.listview-outlook .list:hover .list-content {
  border-left: 3px transparent solid;
}
.listview-outlook .list.marked .list-content {
  border-left: 3px #1b6eae solid;
}
.listview-outlook .list:active,
.listview-outlook .list:focus,
.listview-outlook .list.active {
  background-color: #cde6f7;
  outline: 1px #999999 dotted;
  color: #555555;
}
.listview-outlook .list-group {
  display: block;
  position: relative;
}
.listview-outlook .list-group .list-group-toggle {
  display: block;
  margin-bottom: 2px;
  background-color: #f0f0f0;
  padding: 4px 20px 4px 24px;
  font-size: .875rem;
  font-weight: 500;
  color: #333333;
  cursor: pointer;
}
.listview-outlook .list-group .list-group-toggle:before {
  position: absolute;
  display: block;
  left: 10px;
  top: 2px;
  content: '';
  width: 0;
  height: 0;
  border-left: 7px solid transparent;
  border-top: 7px solid transparent;
  border-bottom: 7px solid black;
}
.listview-outlook .list-group .list-group-content {
  display: block;
}
.listview-outlook .list-group.collapsed .list-group-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -4px;
}
.listview-outlook .list-group .list-group-toggle:hover:before {
  border-bottom-color: #0067cb;
}
.charm {
  display: block;
  position: fixed;
  z-index: 1060;
  background: #1d1d1d;
  color: #eeeeee;
  padding: .625rem;
}
.charm .charm-closer {
  position: absolute;
  height: 1rem;
  width: 1rem;
  text-align: center;
  vertical-align: middle;
  font-size: 1rem;
  font-weight: normal;
  padding: 0 0 .625rem 0;
  z-index: 3;
  outline: none;
  cursor: pointer;
  color: #777777;
  top: .25rem;
  right: .25rem;
}
.charm .charm-closer:after {
  content: '\D7';
  position: absolute;
  left: 50%;
  top: 50%;
  margin-top: -0.65rem;
  margin-left: -0.35rem;
}
.charm .charm-closer:hover {
  color: #ffffff;
}
.charm .charm-closer:active {
  color: #ffffff;
}
.charm.right-side {
  width: auto;
  right: 0;
  top: 0;
  left: auto;
  bottom: 0;
}
.charm.left-side {
  width: auto;
  left: 0;
  top: 0;
  bottom: 0;
}
.charm.top-side {
  height: auto;
  left: 0;
  right: 0;
  top: 0;
}
.charm.bottom-side {
  height: auto;
  left: 0;
  right: 0;
  top: auto;
  bottom: 0;
}
.notify-container {
  position: fixed;
  top: 0;
  right: 0;
  width: auto;
  z-index: 1061;
}
.notify-container:before,
.notify-container:after {
  display: table;
  content: "";
}
.notify-container:after {
  clear: both;
}
.notify-container.position-left {
  left: 0;
  right: auto;
}
.notify-container.position-top {
  left: 0;
  right: 0;
  top: 0;
  height: auto;
}
.notify-container.position-top .notify {
  float: left;
}
.notify-container.position-bottom {
  left: 0;
  right: 0;
  bottom: 0;
  top: auto;
  height: auto;
}
.notify-container.position-bottom .notify {
  float: left;
}
.notify {
  display: block;
  margin: .3125rem;
  padding: .625rem;
  min-width: 200px;
  cursor: default;
  max-width: 300px;
  position: relative;
}
.notify .notify-icon {
  width: 32px;
  height: 32px;
  font-size: 32px;
  text-align: center;
  position: absolute;
  margin: -16px 10px;
  top: 50%;
  left: 0;
}
.notify .notify-icon ~ .notify-title,
.notify .notify-icon ~ .notify-text {
  position: relative;
  margin-left: 42px;
}
.notify .notify-title,
.notify .notify-text {
  display: block;
  margin-right: 20px;
}
.notify .notify-title {
  font-weight: 500;
  font-size: 1rem;
}
.notify .notify-text {
  font-size: .875rem;
}
.notify .notify-closer {
  position: absolute;
  height: 1rem;
  width: 1rem;
  text-align: center;
  vertical-align: middle;
  font-size: 1rem;
  font-weight: normal;
  padding: 0 0 .625rem 0;
  z-index: 3;
  outline: none;
  cursor: pointer;
  background-color: #ffffff;
  color: #777777;
  top: .25rem;
  right: .25rem;
}
.notify .notify-closer:after {
  border-color: #777777;
  content: '\D7';
  position: absolute;
  left: 50%;
  top: 50%;
  margin-top: -0.65rem;
  margin-left: -0.35rem;
}
.notify .notify-closer:hover {
  background-color: #cde6f7;
  color: #ffffff;
}
.notify .notify-closer:active {
  background-color: #92c0e0;
  color: #ffffff;
}
.notify {
  background-color: #e5f3fb;
  color: #1d1d1d;
}
.notify.success {
  background-color: #60a917;
  color: #ffffff;
}
.notify.success .notify-closer {
  background-color: #60a917;
  color: #ffffff;
}
.notify.success .notify-closer:hover {
  background-color: #7ad61d;
}
.notify.success .notify-closer:active {
  background-color: #128023;
}
.notify.alert {
  background-color: #ce352c;
  color: #ffffff;
}
.notify.alert .notify-closer {
  background-color: #ce352c;
  color: #ffffff;
}
.notify.alert .notify-closer:hover {
  background-color: #da5a53;
}
.notify.alert .notify-closer:active {
  background-color: #9a1616;
}
.notify.warning {
  background-color: #fa6800;
  color: #ffffff;
}
.notify.warning .notify-closer {
  background-color: #fa6800;
  color: #ffffff;
}
.notify.warning .notify-closer:hover {
  background-color: #ffc194;
}
.notify.warning .notify-closer:active {
  background-color: #bf5a15;
}
.notify.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.notify.info .notify-closer {
  background-color: #1ba1e2;
  color: #ffffff;
}
.notify.info .notify-closer:hover {
  background-color: #59cde2;
}
.notify.info .notify-closer:active {
  background-color: #1b6eae;
}
p [data-hint] {
  border-bottom: 1px #373737 dotted;
  white-space: nowrap;
}
.hint {
  position: fixed;
  color: #1d1d1d;
  padding: 10px;
  font-size: 12px;
  width: auto;
  max-width: 220px;
  margin-top: 10px;
  z-index: 1030;
  display: none;
  border: 1px #eee solid;
}
.hint .hint-title,
.hint .hint-text {
  color: inherit;
  text-align: left;
}
.hint .hint-title {
  font-size: 1.2em;
  font-weight: bold;
}
.hint:before {
  content: '';
  position: absolute;
  background-color: inherit;
  width: 10px;
  height: 10px;
  border: 1px #eee solid;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.hint:before {
  z-index: 2;
}
.hint.bottom:before {
  top: 1px;
  left: 5px;
  margin: -7px 0;
  border-bottom: none;
  border-right: none;
}
.hint.top:before {
  top: 100%;
  margin-top: -5px;
  left: 5px;
  border-top: none;
  border-left: none;
}
.hint.left:before {
  top: 5px;
  left: 100%;
  margin-left: -5px;
  border-bottom: none;
  border-left: none;
}
.hint.right:before {
  top: 5px;
  left: -9px;
  margin: 1px 0 0 3px;
  border-top: none;
  border-right: none;
}
.hint2 {
  position: fixed;
  color: #1d1d1d;
  padding: 10px;
  font-size: 12px;
  width: auto;
  max-width: 220px;
  margin-top: 10px;
  z-index: 1030;
  display: none;
  border: 1px #eee solid;
}
.hint2 .hint-title,
.hint2 .hint-text {
  color: inherit;
  text-align: left;
}
.hint2 .hint-title {
  font-size: 1.2em;
  font-weight: bold;
}
.hint2:before {
  content: '';
  position: absolute;
  background-color: inherit;
  width: 10px;
  height: 10px;
  border: 1px #eee solid;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.hint2:before {
  z-index: 2;
}
.hint2.bottom:before {
  top: 1px;
  left: 5px;
  margin: -7px 0;
  border-bottom: none;
  border-right: none;
}
.hint2.top:before {
  top: 100%;
  margin-top: -5px;
  left: 5px;
  border-top: none;
  border-left: none;
}
.hint2.left:before {
  top: 5px;
  left: 100%;
  margin-left: -5px;
  border-bottom: none;
  border-left: none;
}
.hint2.right:before {
  top: 5px;
  left: -9px;
  margin: 1px 0 0 3px;
  border-top: none;
  border-right: none;
}
.hint2.no-border {
  border: none;
}
.hint2.no-border:before {
  border: none;
}
.hint2.no-border.right:before {
  left: -7px;
}
.hint2.bottom:before {
  top: 1px;
  left: 50%;
  margin: -7px 0 0 -5px;
  border-bottom: none;
  border-right: none;
}
.hint2.top:before {
  top: 100%;
  margin-top: -5px;
  left: 50%;
  margin-left: -5px;
  border-top: none;
  border-left: none;
}
.hint2.left:before {
  top: 50%;
  margin-top: -5px;
  left: 100%;
  margin-left: -5px;
  border-bottom: none;
  border-left: none;
}
.hint2.right:before {
  top: 50%;
  margin: -5px 0 0 3px;
  left: -9px;
  border-top: none;
  border-right: none;
}
.hint.no-border,
.hint2.no-border {
  border: none;
}
.hint.no-border:before,
.hint2.no-border:before {
  border: none;
}
.hint.no-border.right:before,
.hint2.no-border.right:before {
  left: -7px;
}
.hint2.line {
  padding: 2px 4px;
  border: none;
  display: block;
  max-width: 100%;
  margin: -5px 0 4px 0;
}
.hint2.line:before {
  display: none;
}
.preloader-ring {
  position: relative;
  padding-top: 0.22rem;
  width: 32px;
  height: 32px;
  margin: .625rem;
}
.preloader-ring > .wrap {
  position: absolute;
  width: 30px;
  height: 30px;
}
.preloader-ring > .wrap > .circle {
  opacity: 0;
  width: 30px;
  height: 30px;
  -webkit-transform: rotate(225deg);
          transform: rotate(225deg);
  -webkit-animation: orbit 4000ms infinite;
          animation: orbit 4000ms infinite;
}
.preloader-ring > .wrap > .circle:after {
  position: absolute;
  content: '';
  width: 4px;
  height: 4px;
  border-radius: 4px;
  background: #ffffff;
}
.preloader-ring > .wrap:nth-child(2) {
  -webkit-transform: rotate(-14deg);
          transform: rotate(-14deg);
}
.preloader-ring > .wrap:nth-child(2) > .circle {
  -webkit-animation-delay: 133.33333333ms;
          animation-delay: 133.33333333ms;
}
.preloader-ring > .wrap:nth-child(3) {
  -webkit-transform: rotate(-28deg);
          transform: rotate(-28deg);
}
.preloader-ring > .wrap:nth-child(3) > .circle {
  -webkit-animation-delay: 266.66666667ms;
          animation-delay: 266.66666667ms;
}
.preloader-ring > .wrap:nth-child(4) {
  -webkit-transform: rotate(-42deg);
          transform: rotate(-42deg);
}
.preloader-ring > .wrap:nth-child(4) > .circle {
  -webkit-animation-delay: 400ms;
          animation-delay: 400ms;
}
.preloader-ring > .wrap:nth-child(5) {
  -webkit-transform: rotate(-56deg);
          transform: rotate(-56deg);
}
.preloader-ring > .wrap:nth-child(5) > .circle {
  -webkit-animation-delay: 533.33333333ms;
          animation-delay: 533.33333333ms;
}
.preloader-ring.dark-style > .wrap > .circle:after {
  background-color: #555555;
}
.preloader-ring.color-style > .wrap > .circle:after {
  background-color: #1ba1e2;
}
.preloader-ring.color-style > .wrap:nth-child(2) > .circle:after {
  background-color: #fa6800;
}
.preloader-ring.color-style > .wrap:nth-child(3) > .circle:after {
  background-color: #60a917;
}
.preloader-ring.color-style > .wrap:nth-child(4) > .circle:after {
  background-color: #ce352c;
}
.preloader-ring.color-style > .wrap:nth-child(5) > .circle:after {
  background-color: #e3c800;
}
.preloader-metro {
  overflow: hidden;
  position: relative;
  width: 100%;
  height: 10px;
  background-color: transparent;
}
.preloader-metro > .circle {
  display: inline-block;
  position: absolute;
  width: 10px;
  height: 10px;
  background-color: #ffffff;
  opacity: 0;
  margin-left: 5px;
  -webkit-animation: metro-slide 3s cubic-bezier(0.1, 0.85, 0.9, 0.15) infinite, metro-opacity 2s ease-in-out infinite alternate;
          animation: metro-slide 3s cubic-bezier(0.1, 0.85, 0.9, 0.15) infinite, metro-opacity 2s ease-in-out infinite alternate;
}
.preloader-metro > .circle:nth-child(2) {
  -webkit-animation-delay: .8s;
          animation-delay: .8s;
}
.preloader-metro > .circle:nth-child(3) {
  -webkit-animation-delay: .7s;
          animation-delay: .7s;
}
.preloader-metro > .circle:nth-child(4) {
  -webkit-animation-delay: .6s;
          animation-delay: .6s;
}
.preloader-metro > .circle:nth-child(5) {
  -webkit-animation-delay: .5s;
          animation-delay: .5s;
}
.preloader-metro.dark-style > .circle {
  background-color: #555555;
}
.preloader-metro.color-style > .circle {
  background-color: #1ba1e2;
}
.preloader-metro.color-style > .circle:nth-child(2) {
  background-color: #fa6800;
}
.preloader-metro.color-style > .circle:nth-child(3) {
  background-color: #60a917;
}
.preloader-metro.color-style > .circle:nth-child(4) {
  background-color: #ce352c;
}
.preloader-metro.color-style > .circle:nth-child(5) {
  background-color: #e3c800;
}
.preloader-square {
  position: relative;
  width: 40px;
  height: 40px;
  overflow: hidden;
  -webkit-transform-origin: bottom left;
          transform-origin: bottom left;
  -webkit-animation: ani-shrink 1s linear infinite;
          animation: ani-shrink 1s linear infinite;
}
.preloader-square .square {
  position: absolute;
  width: 19px;
  height: 19px;
  background: #ffffff;
}
.preloader-square .square:nth-child(1) {
  left: 0;
  top: 21px;
}
.preloader-square .square:nth-child(2) {
  left: 21px;
  top: 21px;
  -webkit-animation: ani-drop 1s linear infinite;
          animation: ani-drop 1s linear infinite;
}
.preloader-square .square:nth-child(3) {
  left: 0;
  top: 0;
  -webkit-animation: ani-drop2 1s linear infinite;
          animation: ani-drop2 1s linear infinite;
}
.preloader-square .square:nth-child(4) {
  left: 21px;
  top: 0;
  -webkit-animation: ani-drop3 1s linear infinite;
          animation: ani-drop3 1s linear infinite;
}
.preloader-square.dark-style > .square {
  background-color: #555555;
}
.preloader-square.color-style > .square:nth-child(1) {
  background-color: #fa6800;
}
.preloader-square.color-style > .square:nth-child(2) {
  background-color: #60a917;
}
.preloader-square.color-style > .square:nth-child(3) {
  background-color: #1ba1e2;
}
.preloader-square.color-style > .square:nth-child(4) {
  background-color: #e3c800;
}
.preloader-cycle {
  width: 64px;
  height: 64px;
  position: relative;
  overflow: hidden;
}
.preloader-cycle .cycle {
  display: block;
  position: relative;
  left: 50%;
  top: 50%;
  width: 64px;
  height: 64px;
  margin: -32px 0 0 -32px;
  border-radius: 50%;
  border: 3px solid transparent;
  border-top-color: #ffffff;
  -webkit-animation: ani-pre-spin 1s linear infinite;
          animation: ani-pre-spin 1s linear infinite;
  z-index: 1001;
}
.preloader-cycle .cycle:before {
  content: "";
  position: absolute;
  top: 5px;
  left: 5px;
  right: 5px;
  bottom: 5px;
  border-radius: 50%;
  border: 3px solid transparent;
  border-top-color: #ffffff;
  -webkit-animation: ani-pre-spin 2s linear infinite;
          animation: ani-pre-spin 2s linear infinite;
}
.preloader-cycle .cycle:after {
  content: "";
  position: absolute;
  top: 15px;
  left: 15px;
  right: 15px;
  bottom: 15px;
  border-radius: 50%;
  border: 3px solid transparent;
  border-top-color: #ffffff;
  -webkit-animation: spin 1.5s linear infinite;
          animation: spin 1.5s linear infinite;
}
.preloader-cycle.dark-style .cycle {
  border-top-color: #1d1d1d;
}
.preloader-cycle.dark-style .cycle:before {
  border-top-color: #1d1d1d;
}
.preloader-cycle.dark-style .cycle:after {
  border-top-color: #1d1d1d;
}
.preloader-cycle.color-style .cycle {
  border-top-color: #3498db;
}
.preloader-cycle.color-style .cycle:before {
  border-top-color: #e74c3c;
}
.preloader-cycle.color-style .cycle:after {
  border-top-color: #f9c922;
}
.dialog-overlay {
  background-color: transparent;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  min-height: 100%;
  min-width: 100%;
  z-index: 1049;
}
.dialog {
  position: fixed;
  display: block;
  width: auto;
  height: auto;
  float: left;
  background-color: #ffffff;
  color: #1d1d1d;
  z-index: 1050;
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.dialog .dialog-close-button {
  position: absolute;
  height: 1.5rem;
  width: 1.5rem;
  min-height: 1.5rem;
  text-align: center;
  vertical-align: middle;
  font-size: 1rem;
  font-weight: normal;
  padding: .125rem 0 .625rem 0;
  z-index: 3;
  outline: none;
  cursor: pointer;
  background-color: #ffffff;
  color: #777777;
  top: .25rem;
  right: .25rem;
}
.dialog .dialog-close-button:hover {
  background-color: #cde6f7;
  color: #2a8dd4;
}
.dialog .dialog-close-button:hover:after {
  border-color: #2a8dd4;
}
.dialog .dialog-close-button:active {
  background-color: #92c0e0;
  color: #ffffff;
}
.dialog .dialog-close-button:after {
  border-color: #777777;
  content: '\D7';
  line-height: 1;
}
.dialog.success {
  background-color: #60a917;
  color: #ffffff;
}
.dialog.success .dialog-close-button {
  background-color: #7ad61d;
  color: #ffffff;
}
.dialog.success .dialog-close-button:active {
  background-color: #128023;
}
.dialog.warning {
  background-color: #fa6800;
  color: #ffffff;
}
.dialog.warning .dialog-close-button {
  background-color: #ffc194;
  color: #ffffff;
}
.dialog.warning .dialog-close-button:active {
  background-color: #bf5a15;
}
.dialog.alert {
  background-color: #ce352c;
  color: #ffffff;
}
.dialog.alert .dialog-close-button {
  background-color: #da5a53;
  color: #ffffff;
}
.dialog.alert .dialog-close-button:active {
  background-color: #9a1616;
}
.dialog.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.dialog.info .dialog-close-button {
  background-color: #59cde2;
  color: #ffffff;
}
.dialog.info .dialog-close-button:active {
  background-color: #1b6eae;
}
.streamer {
  position: relative;
  display: block;
  width: 100%;
  overflow: hidden;
}
.streamer .streamer-toolbar .toolbar-button {
  display: block;
  float: left;
  width: .625rem;
  height: 1.5rem;
}
.streamer .streamer-toolbar .toolbar-button.active {
  background-color: #555555;
  color: #ffffff;
}
.streamer .meter {
  height: 25px;
  width: auto;
  list-style: none;
  margin: 0;
  padding: 0;
  display: block;
  overflow: hidden;
}
.streamer .meter li {
  display: block;
  float: left;
  width: 213px;
  padding: 2px 3px;
  background: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANUAAAAUCAYAAAAa9HiSAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAHlJREFUeNrs2csJgDAQQMFE7Gj77yA9+UNswOwewgwI3hYTngrpY4yjAb9FRH9u7qguLfuqmFP1PKutm/2Zu36b9wvMJSoQFYgKRAWICkQFq9qrBn0HY4neM4pl5lSyP75U4PcPRAWICkQFogJEBaICUQGigjynAAMAqEOFksZmC3MAAAAASUVORK5CYII=') top left repeat-x;
}
.streamer .meter li em {
  font-size: 10px;
  font-style: normal;
}
.streamer .streams {
  width: 142px;
  padding-top: 25px;
  position: absolute;
  left: 0;
  top: 0;
  z-index: 2;
  background-color: #ffffff;
}
.streamer .streams .streams-title {
  position: absolute;
  top: 0;
}
.streamer .streams .stream {
  position: relative;
  display: block;
  width: 100%;
  height: 75px;
  margin: 0 2px 2px 0;
  padding: 5px;
  color: #ffffff;
  cursor: pointer;
}
.streamer .streams .stream .stream-title {
  font-size: .75rem;
  line-height: 1;
}
.streamer .streams .stream .stream-number {
  position: absolute;
  left: 5px;
  bottom: 5px;
  font-size: .6875rem;
  line-height: 1;
}
.streamer .events {
  padding-left: 143px;
  overflow: hidden;
  height: 100%;
  min-height: 100%;
  overflow-x: scroll;
}
.streamer .events .double {
  width: 424px;
}
.streamer .events .triple {
  width: 637px;
}
.streamer .events .quadro {
  width: 850px;
}
.streamer .events .events-area {
  height: 100%;
  min-height: 100%;
  overflow: hidden;
}
.streamer .events .events-area:before,
.streamer .events .events-area:after {
  display: table;
  content: "";
}
.streamer .events .events-area:after {
  clear: both;
}
.streamer .events .events-grid {
  height: 100%;
  min-height: 100%;
}
.streamer .events .events-grid:before,
.streamer .events .events-grid:after {
  display: table;
  content: "";
}
.streamer .events .events-grid:after {
  clear: both;
}
.streamer .events .event-group {
  height: 460px;
  min-width: 211px;
  margin: 0 2px 2px 0;
  float: left;
}
.streamer .events .event-super {
  height: 100%;
  min-height: 100%;
  border: 1px #d9d9d9 solid;
}
.streamer .events .event-super.medium-border {
  border-width: 8px;
}
.streamer .events .event-super.large-border {
  border-width: 16px;
}
.streamer .events .event-stream {
  height: 75px;
}
.streamer .events .event-stream .event {
  min-width: 211px;
  height: 75px;
  float: left;
  display: block;
  margin: 0 2px 2px 0;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  border: 1px #d9d9d9 solid;
}
.streamer .events .event-stream .event.medium-border {
  border-width: 8px;
}
.streamer .events .event-stream .event.large-border {
  border-width: 16px;
}
.streamer .events .event-stream .event:last-child {
  margin-right: 0;
}
.streamer .events .event-stream .event.event-disable {
  opacity: .2;
}
.streamer .events .event-stream .event .event-content {
  width: 100%;
  height: 100%;
  padding: 0;
  margin: 0;
  position: absolute;
  left: 0;
  top: 0;
  overflow: hidden;
  display: none;
}
.streamer .events .event-stream .event .event-content:first-child {
  display: block;
}
.streamer .events .event-stream .event .event-content-logo {
  display: block;
  float: left;
  margin-right: 5px;
  padding: 3px;
}
.streamer .events .event-stream .event .event-content-logo .icon {
  position: relative;
  width: 39px;
  height: 39px;
  margin-bottom: 1px;
}
.streamer .events .event-stream .event .event-content-logo .icon img {
  width: 100%;
  height: 100%;
}
.streamer .events .event-stream .event .event-content-logo .time {
  position: relative;
  width: 39px;
  padding: 8px 4px;
  font-size: .75rem;
  color: #ffffff;
  line-height: 1;
}
.streamer .events .event-stream .event .event-content-data {
  display: block;
  padding: 0;
  margin: 0;
  position: relative;
  margin-left: 50px;
}
.streamer .events .event-stream .event .event-content-data .title {
  position: relative;
  font-size: .875rem;
  line-height: 1;
  margin: 3px 0 0;
  padding: 0;
}
.streamer .events .event-stream .event .event-content-data .subtitle {
  position: relative;
  font-size: .625rem;
  line-height: 1;
  margin: 0;
  padding: 0;
  margin-bottom: 10px;
}
.streamer .events .event-stream .event .event-content-data .remark {
  position: absolute;
  display: block;
  top: 36px;
  margin-right: 4px;
  font-size: .6875rem;
  line-height: 1;
  color: #999999;
}
.streamer .events .event-stream .event:hover {
  border-color: #999999;
}
.streamer .events .event-stream .event.selected {
  border: 4px #4390df solid;
  border-width: 1px;
}
.streamer .events .event-stream .event.selected:after {
  position: absolute;
  display: block;
  border-top: 28px solid #4390df;
  border-left: 28px solid transparent;
  right: 0;
  content: "";
  top: 0;
  z-index: 101;
}
.streamer .events .event-stream .event.selected:before {
  position: absolute;
  display: block;
  content: "";
  background-color: transparent;
  border-color: #ffffff;
  border-left: 2px solid;
  border-bottom: 2px solid;
  height: .25rem;
  width: .5rem;
  right: 0;
  top: 0;
  z-index: 102;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.streamer .events .event-stream .event.selected:before {
  right: 3px;
  top: 3px;
  color: #ffffff;
}
.streamer .events .event-stream .event.margin-one {
  margin-left: 213px;
}
.streamer .events .event-stream .event.margin-double {
  margin-left: 426px;
}
.streamer .events .event-stream .event.margin-triple {
  margin-left: 639px;
}
.streamer .events .event-stream .event.margin-quadro {
  margin-left: 852px;
}
.keypad {
  position: relative;
  width: 106px;
  padding: 1px;
  border: 1px #eeeeee solid;
  vertical-align: middle;
  background-color: #ffffff;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.keypad:before,
.keypad:after {
  display: table;
  content: "";
}
.keypad:after {
  clear: both;
}
.keypad .key {
  width: 32px;
  height: 32px;
  display: block;
  float: left;
  margin: 1px;
  border: 1px #eeeeee solid;
  vertical-align: middle;
  text-align: center;
  cursor: pointer;
  font-size: .875rem;
  line-height: 32px;
}
.keypad .key:hover {
  background-color: #eeeeee;
}
.keypad .key:active {
  background-color: #555555;
  color: #ffffff;
}
.keypad.shadow {
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.fluent-menu .tabs-holder {
  list-style: none;
  position: relative;
  margin: 0;
  padding: 0;
  display: block;
  z-index: 2;
}
.fluent-menu .tabs-holder:before,
.fluent-menu .tabs-holder:after {
  display: table;
  content: "";
}
.fluent-menu .tabs-holder:after {
  clear: both;
}
.fluent-menu .tabs-holder li {
  display: block;
  float: left;
  margin-right: 5px;
  background-color: #ffffff;
}
.fluent-menu .tabs-holder li a {
  display: block;
  float: left;
  padding: .25rem 1rem;
  text-transform: uppercase;
  font-size: .8em;
  color: #444444;
}
.fluent-menu .tabs-holder li a:hover {
  color: #0072c6;
}
.fluent-menu .tabs-holder li:first-child {
  margin-left: 0;
}
.fluent-menu .tabs-holder li.active {
  border: 1px #d4d4d4 solid;
  border-bottom-color: #ffffff;
}
.fluent-menu .tabs-holder li.active a {
  color: #0072c6;
}
.fluent-menu .tabs-holder li.special {
  border: 1px #0072c6 solid;
  background-color: #0072c6;
}
.fluent-menu .tabs-holder li.special a {
  color: #ffffff;
}
.fluent-menu .tabs-holder li.special a:hover {
  color: #ffffff;
}
.fluent-menu .tabs-content {
  z-index: 1;
  position: relative;
  margin-top: -1px;
  border: 1px #d4d4d4 solid;
  background-color: #ffffff;
  height: 120px;
}
.fluent-menu .tabs-content .tab-panel {
  display: block;
  height: 100%;
  padding: 5px 0 2px;
}
.fluent-menu .tabs-content .tab-panel .tab-panel-group {
  height: 100%;
  position: relative;
  display: block;
  float: left;
  padding: 0 5px;
  border-right: 1px #d4d4d4 solid;
}
.fluent-menu .tabs-content .tab-panel .tab-panel-group:last-child {
  margin-right: 0;
}
.fluent-menu .tabs-content .tab-panel .tab-group-caption {
  font-size: 10px;
  margin: 2px 0 -2px;
  text-align: center;
  display: block;
  position: absolute;
  bottom: 0;
  right: 0;
  left: 0;
  white-space: nowrap;
  background: #eeeeee;
}
.fluent-menu .tabs-content .tab-panel .tab-content-segment {
  display: block;
  float: left;
  position: relative;
}
.fluent-menu .fluent-button,
.fluent-menu .fluent-big-button,
.fluent-menu .fluent-tool-button {
  background-color: #ffffff;
  padding: .3125rem;
  display: block;
  cursor: default;
  border: 0;
  outline: none;
  font-size: .8em;
  line-height: 1.2;
  vertical-align: middle;
}
.fluent-menu .fluent-button:hover,
.fluent-menu .fluent-big-button:hover,
.fluent-menu .fluent-tool-button:hover {
  background-color: #cde6f7;
}
.fluent-menu .fluent-button img,
.fluent-menu .fluent-big-button img,
.fluent-menu .fluent-tool-button img,
.fluent-menu .fluent-button .icon,
.fluent-menu .fluent-big-button .icon,
.fluent-menu .fluent-tool-button .icon,
.fluent-menu .fluent-button [class*=mif-],
.fluent-menu .fluent-big-button [class*=mif-],
.fluent-menu .fluent-tool-button [class*=mif-] {
  line-height: 1.2;
  display: block;
  float: left;
  margin-right: 5px;
  width: 16px;
  height: 16px;
  color: #444444;
  vertical-align: middle;
}
.fluent-menu .fluent-button .label,
.fluent-menu .fluent-big-button .label,
.fluent-menu .fluent-tool-button .label {
  display: inline-block;
  color: inherit;
  font: inherit;
}
.fluent-menu .fluent-button:active,
.fluent-menu .fluent-big-button:active,
.fluent-menu .fluent-tool-button:active {
  top: 0;
  left: 0;
  background-color: #75bae9;
}
.fluent-menu .fluent-button.dropdown-toggle:before,
.fluent-menu .fluent-big-button.dropdown-toggle:before,
.fluent-menu .fluent-tool-button.dropdown-toggle:before {
  margin-top: -0.3125rem;
}
.fluent-menu .fluent-big-button {
  padding: 7px 5px;
  text-align: center;
  white-space: normal;
  line-height: 12px;
  float: left;
  position: relative;
}
.fluent-menu .fluent-big-button img,
.fluent-menu .fluent-big-button .icon,
.fluent-menu .fluent-big-button [class*=mif-] {
  display: block;
  width: 40px;
  height: 40px;
  font-size: 40px;
  float: none;
  text-align: center;
  margin: 5px auto 5px;
}
.fluent-menu .fluent-big-button br {
  line-height: 4px;
  height: 4px;
  font-size: 4px;
}
.fluent-menu .fluent-tool-button {
  padding: 4px;
}
.fluent-menu .fluent-tool-button img,
.fluent-menu .fluent-tool-button [class*="icon-"] {
  display: block;
  width: 16px;
  height: 16px;
  font-size: 16px;
  float: none;
  text-align: center;
}
.fluent-menu .fluent-tool-button img {
  margin-right: 0;
}
.fluent-menu .dropdown-toggle {
  padding-right: 24px;
}
.fluent-menu .d-menu {
  position: absolute;
  top: 100%;
  z-index: 100;
}
.fluent-menu .d-menu a {
  padding: 4px 24px;
  font-size: .8em;
}
.fluent-menu .d-menu a:hover {
  background-color: #cde6f7;
  color: #444444;
}
.video-player:-webkit-full-screen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
  width: 100%;
  height: 100%;
}
.video-player:-webkit-full-screen video {
  width: 100%;
  height: 100%;
}
.video-player:-webkit-full-screen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
}
.video-player:-moz-full-screen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
}
.video-player:-ms-fullscreen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
}
.video-player:fullscreen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
}
.video-player:-webkit-full-screen video {
  width: 100%;
  height: 100%;
}
.video-player:-moz-full-screen video {
  width: 100%;
  height: 100%;
}
.video-player:-ms-fullscreen video {
  width: 100%;
  height: 100%;
}
.video-player:fullscreen video {
  width: 100%;
  height: 100%;
}
.video-player {
  display: block;
  background: #1d1d1d;
  position: relative;
  width: 100%;
  height: auto;
  z-index: 1;
}
.video-player .video-preloader {
  position: absolute;
  z-index: 2147483647;
  top: 50%;
  left: 50%;
  margin-top: -32px;
  margin-left: -32px;
}
.video-player .video-logo {
  position: absolute;
  z-index: 2147483647;
  right: 20px;
  top: 20px;
  height: 32px;
}
.video-player video {
  width: 100%;
  height: 100%;
  z-index: 1;
}
.video-player .controls {
  position: absolute;
  height: auto;
  padding: .625rem;
  z-index: 2147483647;
  background: rgba(34, 34, 34, 0.5);
}
.video-player .controls .info-box {
  float: left;
  background: inherit;
  margin: 0 2px;
  padding: .75rem 1rem;
  color: #ffffff;
  height: 2.125rem;
  text-align: center;
  font-size: .8em;
}
.video-player .controls .control-slider {
  height: 2.125rem;
  float: left;
  padding: 0 1rem 0;
  margin: 0 2px;
  background: inherit;
}
.video-player .controls .volume-slider-wrapper {
  width: 6rem;
}
.video-player .controls .stream-slider-wrapper {
  float: none;
  width: 100%;
}
.video-player .controls .control-button {
  float: left;
  background: inherit;
  border: 0;
  color: #b3b3b3;
  outline: none;
  position: relative;
  margin: 0 2px;
}
.video-player .controls .control-button:hover,
.video-player .controls .control-button:active {
  color: #ffffff;
}
.video-player .controls .control-button.loop.active {
  color: #60a917;
}
.video-player .controls .control-button.stop:disabled {
  color: #555555;
}
.video-player .controls .control-button.full {
  float: right;
}
.video-player .controls.position-bottom {
  bottom: 0;
  left: 0;
  right: 0;
}
.video-player.full-screen {
  position: fixed;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  width: auto !important;
  z-index: 2147483646;
}
video::-webkit-media-controls {
  display: none !important;
}
video::-webkit-media-controls-enclosure {
  display: none !important;
}
.audio-player {
  display: inline-block;
  position: relative;
  background: #1d1d1d;
  height: auto;
}
.audio-player .controls {
  position: relative;
  width: 100%;
  height: auto;
  padding: 4px;
  background: inherit;
}
.audio-player .controls:before,
.audio-player .controls:after {
  display: table;
  content: "";
}
.audio-player .controls:after {
  clear: both;
}
.audio-player .controls .control-element {
  height: 2.125rem;
  display: inline-block;
  border: none;
  background: rgba(34, 34, 34, 0.5);
  vertical-align: middle;
}
.audio-player .controls .stream-wrapper {
  padding: 0 .25rem;
}
.audio-player .controls .stream-slider {
  width: 200px;
}
.audio-player .controls .info-box {
  margin: 0 2px;
  padding: .75rem 1rem;
  color: #ffffff;
  height: 2.125rem;
  line-height: 1;
  text-align: center;
  font-size: .8em;
}
.audio-player .controls .volume-wrapper {
  width: 100px;
  padding: 0 .25rem 0;
}
.audio-player .controls .play,
.audio-player .controls .stop,
.audio-player .controls .loop,
.audio-player .controls .volume,
.audio-player .controls .next,
.audio-player .controls .prev,
.audio-player .controls .shuffle,
.audio-player .controls .random,
.audio-player .controls .plist {
  color: #b3b3b3;
}
.audio-player .controls .play:hover,
.audio-player .controls .stop:hover,
.audio-player .controls .loop:hover,
.audio-player .controls .volume:hover,
.audio-player .controls .next:hover,
.audio-player .controls .prev:hover,
.audio-player .controls .shuffle:hover,
.audio-player .controls .random:hover,
.audio-player .controls .plist:hover,
.audio-player .controls .play:active,
.audio-player .controls .stop:active,
.audio-player .controls .loop:active,
.audio-player .controls .volume:active,
.audio-player .controls .next:active,
.audio-player .controls .prev:active,
.audio-player .controls .shuffle:active,
.audio-player .controls .random:active,
.audio-player .controls .plist:active {
  color: #ffffff;
}
.audio-player .controls .loop.active {
  color: #7ad61d;
}
.audio-player .controls .control-element:disabled {
  color: #555555;
}
.audio-player .play-list-wrapper {
  display: block;
  position: relative;
  padding: .625rem;
  border-bottom: 1px solid #555555;
}
.audio-player .play-list-wrapper:before,
.audio-player .play-list-wrapper:after {
  display: table;
  content: "";
}
.audio-player .play-list-wrapper:after {
  clear: both;
}
.audio-player .play-list-wrapper.not-visible {
  display: none;
}
.audio-player .album-title {
  font-size: 2rem;
  color: #ffffff;
  font-weight: lighter;
  margin: 0 0 .625rem;
  padding-bottom: .625rem;
  border-bottom: 1px solid #555555;
}
.audio-player .poster {
  float: left;
  width: 10rem;
  height: 100%;
}
.audio-player .album-desc {
  padding: .625rem;
  color: #eeeeee;
  font-size: .6875rem;
}
.audio-player .play-list {
  list-style: none;
  padding: 10px;
  color: #ffffff;
  display: block;
  font-size: .8em;
  width: 100%;
}
.audio-player .play-list li {
  padding: .125rem 1rem;
  cursor: pointer;
  position: relative;
}
.audio-player .play-list li:hover {
  background: #555555;
}
.audio-player .play-list li.current {
  color: #1ba1e2;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.audio-player .play-list li.current:before {
  content: "\25B6";
  position: absolute;
  left: .25rem;
}
.audio-player .poster ~ .play-list {
  margin: 0 0 0 11rem;
  width: calc(100% - 11rem);
}
.audio-player.micro .plist,
.audio-player.micro .loop,
.audio-player.micro .next,
.audio-player.micro .prev,
.audio-player.micro .random,
.audio-player.micro .stop,
.audio-player.micro .stream-wrapper,
.audio-player.micro .info-box,
.audio-player.micro .volume-wrapper,
.audio-player.micro .volume {
  display: none;
}
.audio-player.small .plist,
.audio-player.small .stop,
.audio-player.small .stream-wrapper,
.audio-player.small .next,
.audio-player.small .prev,
.audio-player.small .random,
.audio-player.small .loop {
  display: none;
}
.audio-player.medium .plist,
.audio-player.medium .stop,
.audio-player.medium .next,
.audio-player.medium .prev,
.audio-player.medium .random,
.audio-player.medium .loop {
  display: none;
}
.select2-container {
  box-sizing: border-box;
  display: inline-block;
  margin: .3125rem 0;
  position: relative;
  vertical-align: middle;
  height: auto;
}
.select2-container .select2-selection--single {
  box-sizing: border-box;
  cursor: pointer;
  display: block;
  min-height: 2.125rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.select2-container .select2-selection--single .select2-selection__rendered {
  display: block;
  padding-left: 8px;
  padding-right: 20px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.select2-container .select2-selection--multiple {
  box-sizing: border-box;
  cursor: pointer;
  display: block;
  min-height: 2.125rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  z-index: 998;
}
.select2-container .select2-selection--multiple .select2-selection__rendered {
  display: inline-block;
  overflow: hidden;
  padding-left: 8px;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.select2-container .select2-container .select2-search--inline {
  float: left;
}
.select2-container .select2-container .select2-search--inline .select2-search__field {
  box-sizing: border-box;
  border: none;
  font-size: 100%;
  margin-top: 5px;
}
.select2-container .select2-container .select2-search--inline .select2-search__field::-webkit-search-cancel-button {
  -webkit-appearance: none;
}
.select2-dropdown {
  background-color: white;
  border: 1px solid #aaa;
  border-radius: 0;
  box-sizing: border-box;
  display: block;
  position: absolute;
  left: -100000px;
  width: 100%;
  z-index: 1051;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.select2-results {
  display: block;
}
.select2-results__options {
  list-style: none;
  margin: 0;
  padding: 0;
}
.select2-results__option {
  padding: 6px;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.select2-results__option[aria-selected] {
  cursor: pointer;
}
.select2-container--open .select2-dropdown {
  left: 0;
}
.select2-search--dropdown {
  display: block;
  padding: 4px;
}
.select2-search--dropdown .select2-search__field {
  padding: 4px;
  width: 100%;
  box-sizing: border-box;
}
.select2-search--dropdown .select2-search__field::-webkit-search-cancel-button {
  -webkit-appearance: none;
}
.select2-search--dropdown.select2-search--hide {
  display: none;
}
.select2-close-mask {
  border: 0;
  margin: 0;
  padding: 0;
  display: block;
  position: fixed;
  left: 0;
  top: 0;
  min-height: 100%;
  min-width: 100%;
  height: auto;
  width: auto;
  opacity: 0;
  z-index: 2;
  background-color: #fff;
  filter: alpha(opacity=0);
}
.select2-container--default .select2-selection--single {
  background-color: #fff;
  border: 1px solid #aaa;
}
.select2-container--default .select2-selection--single .select2-selection__rendered {
  color: #444;
  line-height: 28px;
}
.select2-container--default .select2-selection--single .select2-selection__clear {
  cursor: pointer;
  float: right;
  font-weight: bold;
}
.select2-container--default .select2-selection--single .select2-selection__placeholder {
  color: #999;
}
.select2-container--default .select2-selection--single .select2-selection__arrow {
  height: 26px;
  position: absolute;
  top: 1px;
  right: 1px;
  width: 20px;
}
.select2-container--default .select2-selection--single .select2-selection__arrow b {
  border-color: #888 transparent transparent transparent;
  border-style: solid;
  border-width: 5px 4px 0 4px;
  height: 0;
  left: 50%;
  margin-left: -4px;
  margin-top: -2px;
  position: absolute;
  top: 50%;
  width: 0;
}
.select2-container--default.select2-container--disabled .select2-selection--single {
  background-color: #eee;
  cursor: default;
}
.select2-container--default.select2-container--disabled .select2-selection--single .select2-selection__clear {
  display: none;
}
.select2-container--default.select2-container--open .select2-selection--single .select2-selection__arrow b {
  border-color: transparent transparent #888 transparent;
  border-width: 0 4px 5px 4px;
}
.select2-container--default .select2-selection--multiple {
  background-color: white;
  border: 1px solid #aaa;
  cursor: text;
}
.select2-container--default .select2-selection--multiple .select2-selection__rendered {
  box-sizing: border-box;
  list-style: none;
  margin: 0;
  padding: 0 5px;
  width: 100%;
}
.select2-container--default .select2-selection--multiple .select2-selection__placeholder {
  color: #999;
  margin-top: 5px;
  float: left;
}
.select2-container--default .select2-selection--multiple .select2-selection__clear {
  cursor: pointer;
  float: right;
  font-weight: bold;
  margin-top: 5px;
  margin-right: 10px;
}
.select2-container--default .select2-selection--multiple .select2-selection__choice {
  background-color: #eeeeee;
  border: 1px solid #999999;
  color: #1d1d1d;
  font-size: .875rem;
  cursor: default;
  float: left;
  margin-right: 5px;
  margin-top: 5px;
  padding: 0 5px;
  vertical-align: middle;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.select2-container--default .select2-selection--multiple .select2-selection__choice__remove {
  color: #999;
  cursor: pointer;
  display: inline-block;
  margin-right: 2px;
}
.select2-container--default .select2-selection--multiple .select2-selection__choice__remove:hover {
  color: #333;
}
.select2-container--default.select2-container--focus .select2-selection--multiple {
  border: solid black 1px;
  outline: 0;
}
.select2-container--default.select2-container--focus .select2-selection--single {
  border: solid black 1px;
  outline: 0;
}
.select2-container--default.select2-container--disabled .select2-selection--multiple {
  background-color: #eee;
  cursor: default;
}
.select2-container--default.select2-container--disabled .select2-selection__choice__remove {
  display: none;
}
.select2-container--default .select2-search--dropdown .select2-search__field {
  border: 1px solid #aaa;
}
.select2-container--default .select2-search--inline .select2-search__field {
  background: transparent;
  border: none;
  outline: 0;
}
.select2-container--default .select2-results > .select2-results__options {
  max-height: 200px;
  overflow-y: auto;
}
.select2-container--default .select2-results__option[role=group] {
  padding: 0;
}
.select2-container--default .select2-results__option[aria-disabled=true] {
  color: #999;
}
.select2-container--default .select2-results__option[aria-selected=true] {
  background-color: #ddd;
}
.select2-container--default .select2-results__option .select2-results__option {
  padding-left: 1em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__group {
  padding-left: 0;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -1em;
  padding-left: 2em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -2em;
  padding-left: 3em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -3em;
  padding-left: 4em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -4em;
  padding-left: 5em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -5em;
  padding-left: 6em;
}
.select2-container--default .select2-results__option--highlighted[aria-selected] {
  background-color: #5897fb;
  color: white;
}
.select2-container--default .select2-results__group {
  cursor: default;
  display: block;
  padding: 6px;
}
.select2-container input {
  outline: none;
}
.select2-container .select2-search.select2-search--inline input {
  margin-top: 7px;
  padding: 0;
}
.input-control .select2-container {
  margin: 0;
}
.input-control.required .select2-selection {
  border: 1px dashed #1ba1e2;
}
.input-control.error .select2-selection {
  border: 1px solid #ce352c;
}
.input-control.warning .select2-selection {
  border: 1px solid #e3c800;
}
.input-control.success .select2-selection {
  border: 1px solid #60a917;
}
.input-control.info .select2-selection {
  border: 1px solid #1ba1e2;
}
/*
* Third-party plugin DataTables
* Plugin home page: http://datatables.net/
*/
.dataTable {
  width: 100%;
  margin: .625rem 0;
  clear: both;
}
.dataTable th,
.dataTable td {
  padding: 0.625rem;
}
.dataTable thead {
  border-bottom: 4px solid #999999;
}
.dataTable thead th,
.dataTable thead td {
  cursor: default;
  color: #52677a;
  border-color: transparent;
  text-align: left;
  font-style: normal;
  font-weight: 700;
  line-height: 100%;
}
.dataTable tfoot {
  border-top: 4px solid #999999;
}
.dataTable tfoot th,
.dataTable tfoot td {
  cursor: default;
  color: #52677a;
  border-color: transparent;
  text-align: left;
  font-style: normal;
  font-weight: 700;
  line-height: 100%;
}
.dataTable tbody td {
  padding: 0.625rem 0.85rem;
}
.dataTable .sortable-column {
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.dataTable .sortable-column:after {
  position: absolute;
  content: "";
  width: 1rem;
  height: 1rem;
  left: 100%;
  margin-left: -20px;
  top: 50%;
  margin-top: -0.5rem;
  color: inherit;
  font-size: 1rem;
  line-height: 1;
}
.dataTable .sortable-column.sort-asc,
.dataTable .sortable-column.sort-desc {
  background-color: #eeeeee;
}
.dataTable .sortable-column.sort-asc:after,
.dataTable .sortable-column.sort-desc:after {
  color: #1d1d1d;
}
.dataTable .sortable-column.sort-asc:after {
  content: "\2191";
}
.dataTable .sortable-column.sort-desc:after {
  content: "\2193";
}
.dataTable.sortable-markers-on-left .sortable-column {
  padding-left: 30px;
}
.dataTable.sortable-markers-on-left .sortable-column:before,
.dataTable.sortable-markers-on-left .sortable-column:after {
  left: 0;
  margin-left: 10px;
}
.dataTable tr.selected td {
  background-color: rgba(28, 183, 236, 0.1);
}
.dataTable td.selected {
  background-color: rgba(28, 183, 236, 0.3);
}
.dataTable.striped tbody tr:nth-child(odd) {
  background: #eeeeee;
}
.dataTable.hovered tbody tr:hover {
  background-color: rgba(28, 183, 236, 0.1);
}
.dataTable.cell-hovered tbody td:hover {
  background-color: rgba(28, 183, 236, 0.3);
}
.dataTable.border {
  border: 1px #999999 solid;
}
.dataTable.bordered th,
.dataTable.bordered td {
  border: 1px #999999 solid;
}
.dataTable.bordered thead tr:first-child th,
.dataTable.bordered thead tr:first-child td {
  border-top: none;
}
.dataTable.bordered thead tr:first-child th:first-child,
.dataTable.bordered thead tr:first-child td:first-child {
  border-left: none;
}
.dataTable.bordered thead tr:first-child th:last-child,
.dataTable.bordered thead tr:first-child td:last-child {
  border-right: none;
}
.dataTable.bordered tbody tr:first-child td {
  border-top: none;
}
.dataTable.bordered tbody tr td:first-child {
  border-left: none;
}
.dataTable.bordered tbody tr td:last-child {
  border-right: none;
}
.dataTable.bordered tbody tr:last-child td {
  border-bottom: none;
}
.dataTable .condensed th,
.dataTable .condensed td {
  padding: .3125rem;
}
.dataTable .super-condensed th,
.dataTable .super-condensed td {
  padding: .125rem;
}
.dataTable tbody tr.error {
  background-color: #ce352c;
  color: #ffffff;
}
.dataTable tbody tr.error:hover {
  background-color: #da5a53;
}
.dataTable tbody tr.warning {
  background-color: #fa6800;
  color: #ffffff;
}
.dataTable tbody tr.warning:hover {
  background-color: #ffc194;
}
.dataTable tbody tr.success {
  background-color: #60a917;
  color: #ffffff;
}
.dataTable tbody tr.success:hover {
  background-color: #7ad61d;
}
.dataTable tbody tr.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.dataTable tbody tr.info:hover {
  background-color: #59cde2;
}
.dataTable .sorting {
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.dataTable .sorting:after {
  position: absolute;
  content: "";
  width: 1rem;
  height: 1rem;
  left: 100%;
  margin-left: -20px;
  top: 50%;
  margin-top: -0.5rem;
  color: inherit;
  font-size: 1rem;
  line-height: 1;
}
.dataTable .sorting.sort-asc,
.dataTable .sorting.sort-desc {
  background-color: #eeeeee;
}
.dataTable .sorting.sort-asc:after,
.dataTable .sorting.sort-desc:after {
  color: #1d1d1d;
}
.dataTable .sorting.sort-asc:after {
  content: "\2191";
}
.dataTable .sorting.sort-desc:after {
  content: "\2193";
}
.dataTable .sorting_asc,
.dataTable .sorting_desc {
  position: relative;
}
.dataTable .sorting_asc:after,
.dataTable .sorting_desc:after {
  position: absolute;
  content: "";
  width: 1rem;
  height: 1rem;
  left: 100%;
  margin-left: -20px;
  top: 50%;
  margin-top: -0.5rem;
  color: inherit;
  line-height: 1;
  font-size: 1.1rem;
}
.dataTable .sorting_asc {
  background-color: #eeeeee;
}
.dataTable .sorting_asc:after {
  color: #1d1d1d;
}
.dataTable .sorting_asc:after {
  content: "\2191";
}
.dataTable .sorting_desc {
  background-color: #eeeeee;
}
.dataTable .sorting_desc:after {
  color: #1d1d1d;
}
.dataTable .sorting_desc:after {
  content: "\2193";
}
.dataTables_paginate {
  display: block;
  margin: .625rem 0;
  float: left;
  width: 50%;
  margin: 0;
}
.dataTables_paginate:before,
.dataTables_paginate:after {
  display: table;
  content: "";
}
.dataTables_paginate:after {
  clear: both;
}
.dataTables_paginate > .item {
  display: block;
  float: left;
  margin-left: .0652rem;
  padding: 0.25rem .625rem;
  background-color: #ffffff;
  cursor: pointer;
  border: 1px #eeeeee solid;
  text-align: center;
  font-size: .875rem;
  color: #1d1d1d;
}
.dataTables_paginate > .item:first-child {
  margin-left: 0 ;
}
.dataTables_paginate > .item.current,
.dataTables_paginate > .item.active {
  background-color: #1ba1e2;
  border-color: #59cde2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.dataTables_paginate > .item:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.dataTables_paginate > .item:disabled,
.dataTables_paginate > .item.disabled {
  cursor: default;
  background-color: #eeeeee;
  border-color: #eeeeee;
  color: #999999;
}
.dataTables_paginate > .item.spaces {
  border: 0;
  cursor: default;
  color: #1d1d1d;
}
.dataTables_paginate > .item.spaces:hover {
  background-color: inherit ;
  color: #1d1d1d;
}
.dataTables_paginate.rounded > .item {
  border-radius: .3125rem;
}
.dataTables_paginate.cycle > .item {
  width: 28px;
  height: 28px;
  border-radius: 50%;
  font-size: .7rem;
  padding: .4375rem 0;
}
.dataTables_paginate.no-border > .item {
  border: 0;
}
.dataTables_paginate.no-border > .item:hover {
  color: #59cde2;
  background-color: transparent ;
}
.dataTables_paginate.no-border > .item:disabled,
.dataTables_paginate.no-border > .item.disabled {
  cursor: default;
  background-color: transparent;
  border-color: transparent;
  color: #999999;
}
.dataTables_paginate.no-border > .item.current:hover,
.dataTables_paginate.no-border > .item.active:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.dataTables_paginate .paginate_button {
  display: block;
  float: left;
  margin-left: .0652rem;
  padding: 0.25rem .625rem;
  background-color: #ffffff;
  cursor: pointer;
  border: 1px #eeeeee solid;
  text-align: center;
  font-size: .875rem;
  color: #1d1d1d;
}
.dataTables_paginate .paginate_button:first-child {
  margin-left: 0 ;
}
.dataTables_paginate .paginate_button.current,
.dataTables_paginate .paginate_button.active {
  background-color: #1ba1e2;
  border-color: #59cde2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.dataTables_paginate .paginate_button:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.dataTables_paginate .paginate_button:disabled,
.dataTables_paginate .paginate_button.disabled {
  cursor: default;
  background-color: #eeeeee;
  border-color: #eeeeee;
  color: #999999;
}
.dataTables_paginate .paginate_button.spaces {
  border: 0;
  cursor: default;
  color: #1d1d1d;
}
.dataTables_paginate .paginate_button.spaces:hover {
  background-color: inherit ;
  color: #1d1d1d;
}
.dataTables_paginate .ellipsis {
  display: block;
  float: left;
  padding: .25rem .625rem;
}
.dataTables_info {
  padding: 5px;
  background-color: #eeeeee;
  font-size: .875rem;
  float: right;
}
.dataTables_length {
  display: block;
  float: left;
  margin: .625rem 0;
}
.dataTables_length select {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  margin: 0 .125rem;
  padding: .3125rem;
  border: 1px #d9d9d9 solid;
}
.dataTables_length select:focus {
  outline: none;
  border-color: #1d1d1d;
}
.dataTables_filter {
  display: block;
  float: right;
  margin: .625rem 0;
}
.dataTables_filter label > input {
  margin: 0 0 0 .25rem;
}
.dataTables_filter input {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  padding: .3125rem;
  border: 1px #d9d9d9 solid;
}
.dataTables_filter input:focus {
  outline: none;
  border-color: #1d1d1d;
}
.flexbox {
  display: -webkit-flex;
  display: flex;
}
.flex-dir-row {
  -webkit-flex-direction: row;
          flex-direction: row;
}
.flex-dir-row-reverse {
  -webkit-flex-direction: row-reverse;
          flex-direction: row-reverse;
}
.flex-dir-column {
  -webkit-flex-direction: column;
          flex-direction: column;
}
.flex-dir-column-reverse {
  -webkit-flex-direction: column-reverse;
          flex-direction: column-reverse;
}
.flex-wrap {
  -webkit-flex-wrap: wrap;
          flex-wrap: wrap;
}
.flex-wrap-reverse {
  -webkit-flex-wrap: wrap-reverse;
          flex-wrap: wrap-reverse;
}
.flex-no-wrap {
  -webkit-flex-wrap: nowrap;
          flex-wrap: nowrap;
}
.flex-just-start {
  -webkit-justify-content: flex-start;
          justify-content: flex-start;
}
.flex-just-end {
  -webkit-justify-content: flex-end;
          justify-content: flex-end;
}
.flex-just-center {
  -webkit-justify-content: center;
          justify-content: center;
}
.flex-just-sa {
  -webkit-justify-content: space-around;
          justify-content: space-around;
}
.flex-just-sb {
  -webkit-justify-content: space-between;
          justify-content: space-between;
}
.flex-align-stretch {
  -webkit-align-items: stretch;
          align-items: stretch;
}
.flex-align-start {
  -webkit-align-items: flex-start;
          align-items: flex-start;
}
.flex-align-end {
  -webkit-align-items: flex-end;
          align-items: flex-end;
}
.flex-align-center {
  -webkit-align-items: center;
          align-items: center;
}
.flex-align-base {
  -webkit-align-items: baseline;
          align-items: baseline;
}
.flex-content-stretch {
  -webkit-align-content: stretch;
          align-content: stretch;
}
.flex-content-start {
  -webkit-align-content: flex-start;
          align-content: flex-start;
}
.flex-content-end {
  -webkit-align-content: flex-end;
          align-content: flex-end;
}
.flex-content-center {
  -webkit-align-content: center;
          align-content: center;
}
.flex-content-sb {
  -webkit-align-content: space-between;
          align-content: space-between;
}
.flex-content-sa {
  -webkit-align-content: space-around;
          align-content: space-around;
}
.flex-self-auto {
  -webkit-align-self: auto;
          align-self: auto;
}
.flex-self-start {
  -webkit-align-self: flex-start;
          align-self: flex-start;
}
.flex-self-end {
  -webkit-align-self: flex-end;
          align-self: flex-end;
}
.flex-self-center {
  -webkit-align-self: center;
          align-self: center;
}
.flex-self-base {
  -webkit-align-self: baseline;
          align-self: baseline;
}
.flex-self-stretch {
  -webkit-align-self: stretch;
          align-self: stretch;
}
.no-shrink {
  -webkit-flex-shrink: 0 !important;
          flex-shrink: 0 !important;
}
.no-grow {
  -webkit-flex-grow: 0 !important;
          flex-grow: 0 !important;
}
.flex-size-auto {
  -webkit-flex: 1 auto;
  flex: 1 auto;
}
.flex-size1 {
  -webkit-flex-grow: 1;
          flex-grow: 1;
}
.flex-size2 {
  -webkit-flex-grow: 2;
          flex-grow: 2;
}
.flex-size3 {
  -webkit-flex-grow: 3;
          flex-grow: 3;
}
.flex-size4 {
  -webkit-flex-grow: 4;
          flex-grow: 4;
}
.flex-size5 {
  -webkit-flex-grow: 5;
          flex-grow: 5;
}
.flex-size6 {
  -webkit-flex-grow: 6;
          flex-grow: 6;
}
.flex-size7 {
  -webkit-flex-grow: 7;
          flex-grow: 7;
}
.flex-size8 {
  -webkit-flex-grow: 8;
          flex-grow: 8;
}
.flex-size9 {
  -webkit-flex-grow: 9;
          flex-grow: 9;
}
.flex-size10 {
  -webkit-flex-grow: 10;
          flex-grow: 10;
}
.flex-size11 {
  -webkit-flex-grow: 11;
          flex-grow: 11;
}
.flex-size12 {
  -webkit-flex-grow: 12;
          flex-grow: 12;
}
.flex-size-p10 {
  -webkit-flex: 0 0 10%;
  flex: 0 0 10%;
}
.flex-size-p20 {
  -webkit-flex: 0 0 20%;
  flex: 0 0 20%;
}
.flex-size-p30 {
  -webkit-flex: 0 0 30%;
  flex: 0 0 30%;
}
.flex-size-p40 {
  -webkit-flex: 0 0 40%;
  flex: 0 0 40%;
}
.flex-size-p50 {
  -webkit-flex: 0 0 50%;
  flex: 0 0 50%;
}
.flex-size-p60 {
  -webkit-flex: 0 0 60%;
  flex: 0 0 60%;
}
.flex-size-p70 {
  -webkit-flex: 0 0 70%;
  flex: 0 0 70%;
}
.flex-size-p80 {
  -webkit-flex: 0 0 80%;
  flex: 0 0 80%;
}
.flex-size-p90 {
  -webkit-flex: 0 0 90%;
  flex: 0 0 90%;
}
.flex-size-p100 {
  -webkit-flex: 0 0 100%;
  flex: 0 0 100%;
}
.flex-size-x100 {
  -webkit-flex: 0 0 100px;
  flex: 0 0 100px;
}
.flex-size-x200 {
  -webkit-flex: 0 0 200px;
  flex: 0 0 200px;
}
.flex-size-x300 {
  -webkit-flex: 0 0 300px;
  flex: 0 0 300px;
}
.flex-size-x400 {
  -webkit-flex: 0 0 400px;
  flex: 0 0 400px;
}
.flex-size-x500 {
  -webkit-flex: 0 0 500px;
  flex: 0 0 500px;
}
.flex-size-x600 {
  -webkit-flex: 0 0 600px;
  flex: 0 0 600px;
}
.flex-size-x700 {
  -webkit-flex: 0 0 700px;
  flex: 0 0 700px;
}
.flex-size-x800 {
  -webkit-flex: 0 0 800px;
  flex: 0 0 800px;
}
.flex-size-x900 {
  -webkit-flex: 0 0 900px;
  flex: 0 0 900px;
}
.flex-size-x1000 {
  -webkit-flex: 0 0 1000px;
  flex: 0 0 1000px;
}
.op-default {
  background-color: rgba(27, 161, 226, 0.7);
}
.fg-black {
  color: #000000 !important;
}
.bg-black {
  background-color: #000000 !important;
}
.bd-black {
  border-color: #000000 !important;
}
.ol-black {
  outline-color: #000000 !important;
}
.op-black {
  background-color: rgba(0, 0, 0, 0.7);
}
.ribbed-black {
  background: #000000 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-black:before {
  background: #000000 !important;
}
.before-fg-black:before {
  color: #000000 !important;
}
.after-bg-black:after {
  background: #000000 !important;
}
.after-fg-black:after {
  color: #000000 !important;
}
.bg-hover-black:hover {
  background: #000000 !important;
}
.bg-active-black:active {
  background: #000000 !important;
}
.bg-focus-black:focus {
  background: #000000 !important;
}
.fg-hover-black:hover {
  color: #000000 !important;
}
.fg-active-black:active {
  color: #000000 !important;
}
.fg-focus-black:focus {
  color: #000000 !important;
}
.fg-white {
  color: #ffffff !important;
}
.bg-white {
  background-color: #ffffff !important;
}
.bd-white {
  border-color: #ffffff !important;
}
.ol-white {
  outline-color: #ffffff !important;
}
.op-white {
  background-color: rgba(255, 255, 255, 0.7);
}
.ribbed-white {
  background: #ffffff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-white:before {
  background: #ffffff !important;
}
.before-fg-white:before {
  color: #ffffff !important;
}
.after-bg-white:after {
  background: #ffffff !important;
}
.after-fg-white:after {
  color: #ffffff !important;
}
.bg-hover-white:hover {
  background: #ffffff !important;
}
.bg-active-white:active {
  background: #ffffff !important;
}
.bg-focus-white:focus {
  background: #ffffff !important;
}
.fg-hover-white:hover {
  color: #ffffff !important;
}
.fg-active-white:active {
  color: #ffffff !important;
}
.fg-focus-white:focus {
  color: #ffffff !important;
}
.fg-lime {
  color: #a4c400 !important;
}
.bg-lime {
  background-color: #a4c400 !important;
}
.bd-lime {
  border-color: #a4c400 !important;
}
.ol-lime {
  outline-color: #a4c400 !important;
}
.op-lime {
  background-color: rgba(164, 196, 0, 0.7);
}
.ribbed-lime {
  background: #a4c400 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lime:before {
  background: #a4c400 !important;
}
.before-fg-lime:before {
  color: #a4c400 !important;
}
.after-bg-lime:after {
  background: #a4c400 !important;
}
.after-fg-lime:after {
  color: #a4c400 !important;
}
.bg-hover-lime:hover {
  background: #a4c400 !important;
}
.bg-active-lime:active {
  background: #a4c400 !important;
}
.bg-focus-lime:focus {
  background: #a4c400 !important;
}
.fg-hover-lime:hover {
  color: #a4c400 !important;
}
.fg-active-lime:active {
  color: #a4c400 !important;
}
.fg-focus-lime:focus {
  color: #a4c400 !important;
}
.fg-green {
  color: #60a917 !important;
}
.bg-green {
  background-color: #60a917 !important;
}
.bd-green {
  border-color: #60a917 !important;
}
.ol-green {
  outline-color: #60a917 !important;
}
.op-green {
  background-color: rgba(96, 169, 23, 0.7);
}
.ribbed-green {
  background: #60a917 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-green:before {
  background: #60a917 !important;
}
.before-fg-green:before {
  color: #60a917 !important;
}
.after-bg-green:after {
  background: #60a917 !important;
}
.after-fg-green:after {
  color: #60a917 !important;
}
.bg-hover-green:hover {
  background: #60a917 !important;
}
.bg-active-green:active {
  background: #60a917 !important;
}
.bg-focus-green:focus {
  background: #60a917 !important;
}
.fg-hover-green:hover {
  color: #60a917 !important;
}
.fg-active-green:active {
  color: #60a917 !important;
}
.fg-focus-green:focus {
  color: #60a917 !important;
}
.fg-emerald {
  color: #008a00 !important;
}
.bg-emerald {
  background-color: #008a00 !important;
}
.bd-emerald {
  border-color: #008a00 !important;
}
.ol-emerald {
  outline-color: #008a00 !important;
}
.op-emerald {
  background-color: rgba(0, 138, 0, 0.7);
}
.ribbed-emerald {
  background: #008a00 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-emerald:before {
  background: #008a00 !important;
}
.before-fg-emerald:before {
  color: #008a00 !important;
}
.after-bg-emerald:after {
  background: #008a00 !important;
}
.after-fg-emerald:after {
  color: #008a00 !important;
}
.bg-hover-emerald:hover {
  background: #008a00 !important;
}
.bg-active-emerald:active {
  background: #008a00 !important;
}
.bg-focus-emerald:focus {
  background: #008a00 !important;
}
.fg-hover-emerald:hover {
  color: #008a00 !important;
}
.fg-active-emerald:active {
  color: #008a00 !important;
}
.fg-focus-emerald:focus {
  color: #008a00 !important;
}
.fg-blue {
  color: #00aff0 !important;
}
.bg-blue {
  background-color: #00aff0 !important;
}
.bd-blue {
  border-color: #00aff0 !important;
}
.ol-blue {
  outline-color: #00aff0 !important;
}
.op-blue {
  background-color: rgba(0, 175, 240, 0.7);
}
.ribbed-blue {
  background: #00aff0 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-blue:before {
  background: #00aff0 !important;
}
.before-fg-blue:before {
  color: #00aff0 !important;
}
.after-bg-blue:after {
  background: #00aff0 !important;
}
.after-fg-blue:after {
  color: #00aff0 !important;
}
.bg-hover-blue:hover {
  background: #00aff0 !important;
}
.bg-active-blue:active {
  background: #00aff0 !important;
}
.bg-focus-blue:focus {
  background: #00aff0 !important;
}
.fg-hover-blue:hover {
  color: #00aff0 !important;
}
.fg-active-blue:active {
  color: #00aff0 !important;
}
.fg-focus-blue:focus {
  color: #00aff0 !important;
}
.fg-teal {
  color: #00aba9 !important;
}
.bg-teal {
  background-color: #00aba9 !important;
}
.bd-teal {
  border-color: #00aba9 !important;
}
.ol-teal {
  outline-color: #00aba9 !important;
}
.op-teal {
  background-color: rgba(0, 171, 169, 0.7);
}
.ribbed-teal {
  background: #00aba9 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-teal:before {
  background: #00aba9 !important;
}
.before-fg-teal:before {
  color: #00aba9 !important;
}
.after-bg-teal:after {
  background: #00aba9 !important;
}
.after-fg-teal:after {
  color: #00aba9 !important;
}
.bg-hover-teal:hover {
  background: #00aba9 !important;
}
.bg-active-teal:active {
  background: #00aba9 !important;
}
.bg-focus-teal:focus {
  background: #00aba9 !important;
}
.fg-hover-teal:hover {
  color: #00aba9 !important;
}
.fg-active-teal:active {
  color: #00aba9 !important;
}
.fg-focus-teal:focus {
  color: #00aba9 !important;
}
.fg-cyan {
  color: #1ba1e2 !important;
}
.bg-cyan {
  background-color: #1ba1e2 !important;
}
.bd-cyan {
  border-color: #1ba1e2 !important;
}
.ol-cyan {
  outline-color: #1ba1e2 !important;
}
.op-cyan {
  background-color: rgba(27, 161, 226, 0.7);
}
.ribbed-cyan {
  background: #1ba1e2 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-cyan:before {
  background: #1ba1e2 !important;
}
.before-fg-cyan:before {
  color: #1ba1e2 !important;
}
.after-bg-cyan:after {
  background: #1ba1e2 !important;
}
.after-fg-cyan:after {
  color: #1ba1e2 !important;
}
.bg-hover-cyan:hover {
  background: #1ba1e2 !important;
}
.bg-active-cyan:active {
  background: #1ba1e2 !important;
}
.bg-focus-cyan:focus {
  background: #1ba1e2 !important;
}
.fg-hover-cyan:hover {
  color: #1ba1e2 !important;
}
.fg-active-cyan:active {
  color: #1ba1e2 !important;
}
.fg-focus-cyan:focus {
  color: #1ba1e2 !important;
}
.fg-cobalt {
  color: #0050ef !important;
}
.bg-cobalt {
  background-color: #0050ef !important;
}
.bd-cobalt {
  border-color: #0050ef !important;
}
.ol-cobalt {
  outline-color: #0050ef !important;
}
.op-cobalt {
  background-color: rgba(0, 80, 239, 0.7);
}
.ribbed-cobalt {
  background: #0050ef linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-cobalt:before {
  background: #0050ef !important;
}
.before-fg-cobalt:before {
  color: #0050ef !important;
}
.after-bg-cobalt:after {
  background: #0050ef !important;
}
.after-fg-cobalt:after {
  color: #0050ef !important;
}
.bg-hover-cobalt:hover {
  background: #0050ef !important;
}
.bg-active-cobalt:active {
  background: #0050ef !important;
}
.bg-focus-cobalt:focus {
  background: #0050ef !important;
}
.fg-hover-cobalt:hover {
  color: #0050ef !important;
}
.fg-active-cobalt:active {
  color: #0050ef !important;
}
.fg-focus-cobalt:focus {
  color: #0050ef !important;
}
.fg-indigo {
  color: #6a00ff !important;
}
.bg-indigo {
  background-color: #6a00ff !important;
}
.bd-indigo {
  border-color: #6a00ff !important;
}
.ol-indigo {
  outline-color: #6a00ff !important;
}
.op-indigo {
  background-color: rgba(106, 0, 255, 0.7);
}
.ribbed-indigo {
  background: #6a00ff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-indigo:before {
  background: #6a00ff !important;
}
.before-fg-indigo:before {
  color: #6a00ff !important;
}
.after-bg-indigo:after {
  background: #6a00ff !important;
}
.after-fg-indigo:after {
  color: #6a00ff !important;
}
.bg-hover-indigo:hover {
  background: #6a00ff !important;
}
.bg-active-indigo:active {
  background: #6a00ff !important;
}
.bg-focus-indigo:focus {
  background: #6a00ff !important;
}
.fg-hover-indigo:hover {
  color: #6a00ff !important;
}
.fg-active-indigo:active {
  color: #6a00ff !important;
}
.fg-focus-indigo:focus {
  color: #6a00ff !important;
}
.fg-violet {
  color: #aa00ff !important;
}
.bg-violet {
  background-color: #aa00ff !important;
}
.bd-violet {
  border-color: #aa00ff !important;
}
.ol-violet {
  outline-color: #aa00ff !important;
}
.op-violet {
  background-color: rgba(170, 0, 255, 0.7);
}
.ribbed-violet {
  background: #aa00ff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-violet:before {
  background: #aa00ff !important;
}
.before-fg-violet:before {
  color: #aa00ff !important;
}
.after-bg-violet:after {
  background: #aa00ff !important;
}
.after-fg-violet:after {
  color: #aa00ff !important;
}
.bg-hover-violet:hover {
  background: #aa00ff !important;
}
.bg-active-violet:active {
  background: #aa00ff !important;
}
.bg-focus-violet:focus {
  background: #aa00ff !important;
}
.fg-hover-violet:hover {
  color: #aa00ff !important;
}
.fg-active-violet:active {
  color: #aa00ff !important;
}
.fg-focus-violet:focus {
  color: #aa00ff !important;
}
.fg-pink {
  color: #dc4fad !important;
}
.bg-pink {
  background-color: #dc4fad !important;
}
.bd-pink {
  border-color: #dc4fad !important;
}
.ol-pink {
  outline-color: #dc4fad !important;
}
.op-pink {
  background-color: rgba(220, 79, 173, 0.7);
}
.ribbed-pink {
  background: #dc4fad linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-pink:before {
  background: #dc4fad !important;
}
.before-fg-pink:before {
  color: #dc4fad !important;
}
.after-bg-pink:after {
  background: #dc4fad !important;
}
.after-fg-pink:after {
  color: #dc4fad !important;
}
.bg-hover-pink:hover {
  background: #dc4fad !important;
}
.bg-active-pink:active {
  background: #dc4fad !important;
}
.bg-focus-pink:focus {
  background: #dc4fad !important;
}
.fg-hover-pink:hover {
  color: #dc4fad !important;
}
.fg-active-pink:active {
  color: #dc4fad !important;
}
.fg-focus-pink:focus {
  color: #dc4fad !important;
}
.fg-magenta {
  color: #d80073 !important;
}
.bg-magenta {
  background-color: #d80073 !important;
}
.bd-magenta {
  border-color: #d80073 !important;
}
.ol-magenta {
  outline-color: #d80073 !important;
}
.op-magenta {
  background-color: rgba(216, 0, 115, 0.7);
}
.ribbed-magenta {
  background: #d80073 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-magenta:before {
  background: #d80073 !important;
}
.before-fg-magenta:before {
  color: #d80073 !important;
}
.after-bg-magenta:after {
  background: #d80073 !important;
}
.after-fg-magenta:after {
  color: #d80073 !important;
}
.bg-hover-magenta:hover {
  background: #d80073 !important;
}
.bg-active-magenta:active {
  background: #d80073 !important;
}
.bg-focus-magenta:focus {
  background: #d80073 !important;
}
.fg-hover-magenta:hover {
  color: #d80073 !important;
}
.fg-active-magenta:active {
  color: #d80073 !important;
}
.fg-focus-magenta:focus {
  color: #d80073 !important;
}
.fg-crimson {
  color: #a20025 !important;
}
.bg-crimson {
  background-color: #a20025 !important;
}
.bd-crimson {
  border-color: #a20025 !important;
}
.ol-crimson {
  outline-color: #a20025 !important;
}
.op-crimson {
  background-color: rgba(162, 0, 37, 0.7);
}
.ribbed-crimson {
  background: #a20025 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-crimson:before {
  background: #a20025 !important;
}
.before-fg-crimson:before {
  color: #a20025 !important;
}
.after-bg-crimson:after {
  background: #a20025 !important;
}
.after-fg-crimson:after {
  color: #a20025 !important;
}
.bg-hover-crimson:hover {
  background: #a20025 !important;
}
.bg-active-crimson:active {
  background: #a20025 !important;
}
.bg-focus-crimson:focus {
  background: #a20025 !important;
}
.fg-hover-crimson:hover {
  color: #a20025 !important;
}
.fg-active-crimson:active {
  color: #a20025 !important;
}
.fg-focus-crimson:focus {
  color: #a20025 !important;
}
.fg-red {
  color: #ce352c !important;
}
.bg-red {
  background-color: #ce352c !important;
}
.bd-red {
  border-color: #ce352c !important;
}
.ol-red {
  outline-color: #ce352c !important;
}
.op-red {
  background-color: rgba(206, 53, 44, 0.7);
}
.ribbed-red {
  background: #ce352c linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-red:before {
  background: #ce352c !important;
}
.before-fg-red:before {
  color: #ce352c !important;
}
.after-bg-red:after {
  background: #ce352c !important;
}
.after-fg-red:after {
  color: #ce352c !important;
}
.bg-hover-red:hover {
  background: #ce352c !important;
}
.bg-active-red:active {
  background: #ce352c !important;
}
.bg-focus-red:focus {
  background: #ce352c !important;
}
.fg-hover-red:hover {
  color: #ce352c !important;
}
.fg-active-red:active {
  color: #ce352c !important;
}
.fg-focus-red:focus {
  color: #ce352c !important;
}
.fg-orange {
  color: #fa6800 !important;
}
.bg-orange {
  background-color: #fa6800 !important;
}
.bd-orange {
  border-color: #fa6800 !important;
}
.ol-orange {
  outline-color: #fa6800 !important;
}
.op-orange {
  background-color: rgba(250, 104, 0, 0.7);
}
.ribbed-orange {
  background: #fa6800 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-orange:before {
  background: #fa6800 !important;
}
.before-fg-orange:before {
  color: #fa6800 !important;
}
.after-bg-orange:after {
  background: #fa6800 !important;
}
.after-fg-orange:after {
  color: #fa6800 !important;
}
.bg-hover-orange:hover {
  background: #fa6800 !important;
}
.bg-active-orange:active {
  background: #fa6800 !important;
}
.bg-focus-orange:focus {
  background: #fa6800 !important;
}
.fg-hover-orange:hover {
  color: #fa6800 !important;
}
.fg-active-orange:active {
  color: #fa6800 !important;
}
.fg-focus-orange:focus {
  color: #fa6800 !important;
}
.fg-amber {
  color: #f0a30a !important;
}
.bg-amber {
  background-color: #f0a30a !important;
}
.bd-amber {
  border-color: #f0a30a !important;
}
.ol-amber {
  outline-color: #f0a30a !important;
}
.op-amber {
  background-color: rgba(240, 163, 10, 0.7);
}
.ribbed-amber {
  background: #f0a30a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-amber:before {
  background: #f0a30a !important;
}
.before-fg-amber:before {
  color: #f0a30a !important;
}
.after-bg-amber:after {
  background: #f0a30a !important;
}
.after-fg-amber:after {
  color: #f0a30a !important;
}
.bg-hover-amber:hover {
  background: #f0a30a !important;
}
.bg-active-amber:active {
  background: #f0a30a !important;
}
.bg-focus-amber:focus {
  background: #f0a30a !important;
}
.fg-hover-amber:hover {
  color: #f0a30a !important;
}
.fg-active-amber:active {
  color: #f0a30a !important;
}
.fg-focus-amber:focus {
  color: #f0a30a !important;
}
.fg-yellow {
  color: #e3c800 !important;
}
.bg-yellow {
  background-color: #e3c800 !important;
}
.bd-yellow {
  border-color: #e3c800 !important;
}
.ol-yellow {
  outline-color: #e3c800 !important;
}
.op-yellow {
  background-color: rgba(227, 200, 0, 0.7);
}
.ribbed-yellow {
  background: #e3c800 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-yellow:before {
  background: #e3c800 !important;
}
.before-fg-yellow:before {
  color: #e3c800 !important;
}
.after-bg-yellow:after {
  background: #e3c800 !important;
}
.after-fg-yellow:after {
  color: #e3c800 !important;
}
.bg-hover-yellow:hover {
  background: #e3c800 !important;
}
.bg-active-yellow:active {
  background: #e3c800 !important;
}
.bg-focus-yellow:focus {
  background: #e3c800 !important;
}
.fg-hover-yellow:hover {
  color: #e3c800 !important;
}
.fg-active-yellow:active {
  color: #e3c800 !important;
}
.fg-focus-yellow:focus {
  color: #e3c800 !important;
}
.fg-brown {
  color: #825a2c !important;
}
.bg-brown {
  background-color: #825a2c !important;
}
.bd-brown {
  border-color: #825a2c !important;
}
.ol-brown {
  outline-color: #825a2c !important;
}
.op-brown {
  background-color: rgba(130, 90, 44, 0.7);
}
.ribbed-brown {
  background: #825a2c linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-brown:before {
  background: #825a2c !important;
}
.before-fg-brown:before {
  color: #825a2c !important;
}
.after-bg-brown:after {
  background: #825a2c !important;
}
.after-fg-brown:after {
  color: #825a2c !important;
}
.bg-hover-brown:hover {
  background: #825a2c !important;
}
.bg-active-brown:active {
  background: #825a2c !important;
}
.bg-focus-brown:focus {
  background: #825a2c !important;
}
.fg-hover-brown:hover {
  color: #825a2c !important;
}
.fg-active-brown:active {
  color: #825a2c !important;
}
.fg-focus-brown:focus {
  color: #825a2c !important;
}
.fg-olive {
  color: #6d8764 !important;
}
.bg-olive {
  background-color: #6d8764 !important;
}
.bd-olive {
  border-color: #6d8764 !important;
}
.ol-olive {
  outline-color: #6d8764 !important;
}
.op-olive {
  background-color: rgba(109, 135, 100, 0.7);
}
.ribbed-olive {
  background: #6d8764 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-olive:before {
  background: #6d8764 !important;
}
.before-fg-olive:before {
  color: #6d8764 !important;
}
.after-bg-olive:after {
  background: #6d8764 !important;
}
.after-fg-olive:after {
  color: #6d8764 !important;
}
.bg-hover-olive:hover {
  background: #6d8764 !important;
}
.bg-active-olive:active {
  background: #6d8764 !important;
}
.bg-focus-olive:focus {
  background: #6d8764 !important;
}
.fg-hover-olive:hover {
  color: #6d8764 !important;
}
.fg-active-olive:active {
  color: #6d8764 !important;
}
.fg-focus-olive:focus {
  color: #6d8764 !important;
}
.fg-steel {
  color: #647687 !important;
}
.bg-steel {
  background-color: #647687 !important;
}
.bd-steel {
  border-color: #647687 !important;
}
.ol-steel {
  outline-color: #647687 !important;
}
.op-steel {
  background-color: rgba(100, 118, 135, 0.7);
}
.ribbed-steel {
  background: #647687 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-steel:before {
  background: #647687 !important;
}
.before-fg-steel:before {
  color: #647687 !important;
}
.after-bg-steel:after {
  background: #647687 !important;
}
.after-fg-steel:after {
  color: #647687 !important;
}
.bg-hover-steel:hover {
  background: #647687 !important;
}
.bg-active-steel:active {
  background: #647687 !important;
}
.bg-focus-steel:focus {
  background: #647687 !important;
}
.fg-hover-steel:hover {
  color: #647687 !important;
}
.fg-active-steel:active {
  color: #647687 !important;
}
.fg-focus-steel:focus {
  color: #647687 !important;
}
.fg-mauve {
  color: #76608a !important;
}
.bg-mauve {
  background-color: #76608a !important;
}
.bd-mauve {
  border-color: #76608a !important;
}
.ol-mauve {
  outline-color: #76608a !important;
}
.op-mauve {
  background-color: rgba(118, 96, 138, 0.7);
}
.ribbed-mauve {
  background: #76608a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-mauve:before {
  background: #76608a !important;
}
.before-fg-mauve:before {
  color: #76608a !important;
}
.after-bg-mauve:after {
  background: #76608a !important;
}
.after-fg-mauve:after {
  color: #76608a !important;
}
.bg-hover-mauve:hover {
  background: #76608a !important;
}
.bg-active-mauve:active {
  background: #76608a !important;
}
.bg-focus-mauve:focus {
  background: #76608a !important;
}
.fg-hover-mauve:hover {
  color: #76608a !important;
}
.fg-active-mauve:active {
  color: #76608a !important;
}
.fg-focus-mauve:focus {
  color: #76608a !important;
}
.fg-taupe {
  color: #87794e !important;
}
.bg-taupe {
  background-color: #87794e !important;
}
.bd-taupe {
  border-color: #87794e !important;
}
.ol-taupe {
  outline-color: #87794e !important;
}
.op-taupe {
  background-color: rgba(135, 121, 78, 0.7);
}
.ribbed-taupe {
  background: #87794e linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-taupe:before {
  background: #87794e !important;
}
.before-fg-taupe:before {
  color: #87794e !important;
}
.after-bg-taupe:after {
  background: #87794e !important;
}
.after-fg-taupe:after {
  color: #87794e !important;
}
.bg-hover-taupe:hover {
  background: #87794e !important;
}
.bg-active-taupe:active {
  background: #87794e !important;
}
.bg-focus-taupe:focus {
  background: #87794e !important;
}
.fg-hover-taupe:hover {
  color: #87794e !important;
}
.fg-active-taupe:active {
  color: #87794e !important;
}
.fg-focus-taupe:focus {
  color: #87794e !important;
}
.fg-dark {
  color: #1d1d1d !important;
}
.bg-dark {
  background-color: #1d1d1d !important;
}
.bd-dark {
  border-color: #1d1d1d !important;
}
.ol-dark {
  outline-color: #1d1d1d !important;
}
.op-dark {
  background-color: rgba(29, 29, 29, 0.7);
}
.ribbed-dark {
  background: #1d1d1d linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-dark:before {
  background: #1d1d1d !important;
}
.before-fg-dark:before {
  color: #1d1d1d !important;
}
.after-bg-dark:after {
  background: #1d1d1d !important;
}
.after-fg-dark:after {
  color: #1d1d1d !important;
}
.bg-hover-dark:hover {
  background: #1d1d1d !important;
}
.bg-active-dark:active {
  background: #1d1d1d !important;
}
.bg-focus-dark:focus {
  background: #1d1d1d !important;
}
.fg-hover-dark:hover {
  color: #1d1d1d !important;
}
.fg-active-dark:active {
  color: #1d1d1d !important;
}
.fg-focus-dark:focus {
  color: #1d1d1d !important;
}
.fg-darkBrown {
  color: #63362f !important;
}
.bg-darkBrown {
  background-color: #63362f !important;
}
.bd-darkBrown {
  border-color: #63362f !important;
}
.ol-darkBrown {
  outline-color: #63362f !important;
}
.op-darkBrown {
  background-color: rgba(99, 54, 47, 0.7);
}
.ribbed-darkBrown {
  background: #63362f linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkBrown:before {
  background: #63362f !important;
}
.before-fg-darkBrown:before {
  color: #63362f !important;
}
.after-bg-darkBrown:after {
  background: #63362f !important;
}
.after-fg-darkBrown:after {
  color: #63362f !important;
}
.bg-hover-darkBrown:hover {
  background: #63362f !important;
}
.bg-active-darkBrown:active {
  background: #63362f !important;
}
.bg-focus-darkBrown:focus {
  background: #63362f !important;
}
.fg-hover-darkBrown:hover {
  color: #63362f !important;
}
.fg-active-darkBrown:active {
  color: #63362f !important;
}
.fg-focus-darkBrown:focus {
  color: #63362f !important;
}
.fg-darkCrimson {
  color: #640024 !important;
}
.bg-darkCrimson {
  background-color: #640024 !important;
}
.bd-darkCrimson {
  border-color: #640024 !important;
}
.ol-darkCrimson {
  outline-color: #640024 !important;
}
.op-darkCrimson {
  background-color: rgba(100, 0, 36, 0.7);
}
.ribbed-darkCrimson {
  background: #640024 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkCrimson:before {
  background: #640024 !important;
}
.before-fg-darkCrimson:before {
  color: #640024 !important;
}
.after-bg-darkCrimson:after {
  background: #640024 !important;
}
.after-fg-darkCrimson:after {
  color: #640024 !important;
}
.bg-hover-darkCrimson:hover {
  background: #640024 !important;
}
.bg-active-darkCrimson:active {
  background: #640024 !important;
}
.bg-focus-darkCrimson:focus {
  background: #640024 !important;
}
.fg-hover-darkCrimson:hover {
  color: #640024 !important;
}
.fg-active-darkCrimson:active {
  color: #640024 !important;
}
.fg-focus-darkCrimson:focus {
  color: #640024 !important;
}
.fg-darkMagenta {
  color: #81003c !important;
}
.bg-darkMagenta {
  background-color: #81003c !important;
}
.bd-darkMagenta {
  border-color: #81003c !important;
}
.ol-darkMagenta {
  outline-color: #81003c !important;
}
.op-darkMagenta {
  background-color: rgba(129, 0, 60, 0.7);
}
.ribbed-darkMagenta {
  background: #81003c linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkMagenta:before {
  background: #81003c !important;
}
.before-fg-darkMagenta:before {
  color: #81003c !important;
}
.after-bg-darkMagenta:after {
  background: #81003c !important;
}
.after-fg-darkMagenta:after {
  color: #81003c !important;
}
.bg-hover-darkMagenta:hover {
  background: #81003c !important;
}
.bg-active-darkMagenta:active {
  background: #81003c !important;
}
.bg-focus-darkMagenta:focus {
  background: #81003c !important;
}
.fg-hover-darkMagenta:hover {
  color: #81003c !important;
}
.fg-active-darkMagenta:active {
  color: #81003c !important;
}
.fg-focus-darkMagenta:focus {
  color: #81003c !important;
}
.fg-darkIndigo {
  color: #4b0096 !important;
}
.bg-darkIndigo {
  background-color: #4b0096 !important;
}
.bd-darkIndigo {
  border-color: #4b0096 !important;
}
.ol-darkIndigo {
  outline-color: #4b0096 !important;
}
.op-darkIndigo {
  background-color: rgba(75, 0, 150, 0.7);
}
.ribbed-darkIndigo {
  background: #4b0096 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkIndigo:before {
  background: #4b0096 !important;
}
.before-fg-darkIndigo:before {
  color: #4b0096 !important;
}
.after-bg-darkIndigo:after {
  background: #4b0096 !important;
}
.after-fg-darkIndigo:after {
  color: #4b0096 !important;
}
.bg-hover-darkIndigo:hover {
  background: #4b0096 !important;
}
.bg-active-darkIndigo:active {
  background: #4b0096 !important;
}
.bg-focus-darkIndigo:focus {
  background: #4b0096 !important;
}
.fg-hover-darkIndigo:hover {
  color: #4b0096 !important;
}
.fg-active-darkIndigo:active {
  color: #4b0096 !important;
}
.fg-focus-darkIndigo:focus {
  color: #4b0096 !important;
}
.fg-darkCyan {
  color: #1b6eae !important;
}
.bg-darkCyan {
  background-color: #1b6eae !important;
}
.bd-darkCyan {
  border-color: #1b6eae !important;
}
.ol-darkCyan {
  outline-color: #1b6eae !important;
}
.op-darkCyan {
  background-color: rgba(27, 110, 174, 0.7);
}
.ribbed-darkCyan {
  background: #1b6eae linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkCyan:before {
  background: #1b6eae !important;
}
.before-fg-darkCyan:before {
  color: #1b6eae !important;
}
.after-bg-darkCyan:after {
  background: #1b6eae !important;
}
.after-fg-darkCyan:after {
  color: #1b6eae !important;
}
.bg-hover-darkCyan:hover {
  background: #1b6eae !important;
}
.bg-active-darkCyan:active {
  background: #1b6eae !important;
}
.bg-focus-darkCyan:focus {
  background: #1b6eae !important;
}
.fg-hover-darkCyan:hover {
  color: #1b6eae !important;
}
.fg-active-darkCyan:active {
  color: #1b6eae !important;
}
.fg-focus-darkCyan:focus {
  color: #1b6eae !important;
}
.fg-darkCobalt {
  color: #00356a !important;
}
.bg-darkCobalt {
  background-color: #00356a !important;
}
.bd-darkCobalt {
  border-color: #00356a !important;
}
.ol-darkCobalt {
  outline-color: #00356a !important;
}
.op-darkCobalt {
  background-color: rgba(0, 53, 106, 0.7);
}
.ribbed-darkCobalt {
  background: #00356a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkCobalt:before {
  background: #00356a !important;
}
.before-fg-darkCobalt:before {
  color: #00356a !important;
}
.after-bg-darkCobalt:after {
  background: #00356a !important;
}
.after-fg-darkCobalt:after {
  color: #00356a !important;
}
.bg-hover-darkCobalt:hover {
  background: #00356a !important;
}
.bg-active-darkCobalt:active {
  background: #00356a !important;
}
.bg-focus-darkCobalt:focus {
  background: #00356a !important;
}
.fg-hover-darkCobalt:hover {
  color: #00356a !important;
}
.fg-active-darkCobalt:active {
  color: #00356a !important;
}
.fg-focus-darkCobalt:focus {
  color: #00356a !important;
}
.fg-darkTeal {
  color: #004050 !important;
}
.bg-darkTeal {
  background-color: #004050 !important;
}
.bd-darkTeal {
  border-color: #004050 !important;
}
.ol-darkTeal {
  outline-color: #004050 !important;
}
.op-darkTeal {
  background-color: rgba(0, 64, 80, 0.7);
}
.ribbed-darkTeal {
  background: #004050 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkTeal:before {
  background: #004050 !important;
}
.before-fg-darkTeal:before {
  color: #004050 !important;
}
.after-bg-darkTeal:after {
  background: #004050 !important;
}
.after-fg-darkTeal:after {
  color: #004050 !important;
}
.bg-hover-darkTeal:hover {
  background: #004050 !important;
}
.bg-active-darkTeal:active {
  background: #004050 !important;
}
.bg-focus-darkTeal:focus {
  background: #004050 !important;
}
.fg-hover-darkTeal:hover {
  color: #004050 !important;
}
.fg-active-darkTeal:active {
  color: #004050 !important;
}
.fg-focus-darkTeal:focus {
  color: #004050 !important;
}
.fg-darkEmerald {
  color: #003e00 !important;
}
.bg-darkEmerald {
  background-color: #003e00 !important;
}
.bd-darkEmerald {
  border-color: #003e00 !important;
}
.ol-darkEmerald {
  outline-color: #003e00 !important;
}
.op-darkEmerald {
  background-color: rgba(0, 62, 0, 0.7);
}
.ribbed-darkEmerald {
  background: #003e00 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkEmerald:before {
  background: #003e00 !important;
}
.before-fg-darkEmerald:before {
  color: #003e00 !important;
}
.after-bg-darkEmerald:after {
  background: #003e00 !important;
}
.after-fg-darkEmerald:after {
  color: #003e00 !important;
}
.bg-hover-darkEmerald:hover {
  background: #003e00 !important;
}
.bg-active-darkEmerald:active {
  background: #003e00 !important;
}
.bg-focus-darkEmerald:focus {
  background: #003e00 !important;
}
.fg-hover-darkEmerald:hover {
  color: #003e00 !important;
}
.fg-active-darkEmerald:active {
  color: #003e00 !important;
}
.fg-focus-darkEmerald:focus {
  color: #003e00 !important;
}
.fg-darkGreen {
  color: #128023 !important;
}
.bg-darkGreen {
  background-color: #128023 !important;
}
.bd-darkGreen {
  border-color: #128023 !important;
}
.ol-darkGreen {
  outline-color: #128023 !important;
}
.op-darkGreen {
  background-color: rgba(18, 128, 35, 0.7);
}
.ribbed-darkGreen {
  background: #128023 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkGreen:before {
  background: #128023 !important;
}
.before-fg-darkGreen:before {
  color: #128023 !important;
}
.after-bg-darkGreen:after {
  background: #128023 !important;
}
.after-fg-darkGreen:after {
  color: #128023 !important;
}
.bg-hover-darkGreen:hover {
  background: #128023 !important;
}
.bg-active-darkGreen:active {
  background: #128023 !important;
}
.bg-focus-darkGreen:focus {
  background: #128023 !important;
}
.fg-hover-darkGreen:hover {
  color: #128023 !important;
}
.fg-active-darkGreen:active {
  color: #128023 !important;
}
.fg-focus-darkGreen:focus {
  color: #128023 !important;
}
.fg-darkOrange {
  color: #bf5a15 !important;
}
.bg-darkOrange {
  background-color: #bf5a15 !important;
}
.bd-darkOrange {
  border-color: #bf5a15 !important;
}
.ol-darkOrange {
  outline-color: #bf5a15 !important;
}
.op-darkOrange {
  background-color: rgba(191, 90, 21, 0.7);
}
.ribbed-darkOrange {
  background: #bf5a15 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkOrange:before {
  background: #bf5a15 !important;
}
.before-fg-darkOrange:before {
  color: #bf5a15 !important;
}
.after-bg-darkOrange:after {
  background: #bf5a15 !important;
}
.after-fg-darkOrange:after {
  color: #bf5a15 !important;
}
.bg-hover-darkOrange:hover {
  background: #bf5a15 !important;
}
.bg-active-darkOrange:active {
  background: #bf5a15 !important;
}
.bg-focus-darkOrange:focus {
  background: #bf5a15 !important;
}
.fg-hover-darkOrange:hover {
  color: #bf5a15 !important;
}
.fg-active-darkOrange:active {
  color: #bf5a15 !important;
}
.fg-focus-darkOrange:focus {
  color: #bf5a15 !important;
}
.fg-darkRed {
  color: #9a1616 !important;
}
.bg-darkRed {
  background-color: #9a1616 !important;
}
.bd-darkRed {
  border-color: #9a1616 !important;
}
.ol-darkRed {
  outline-color: #9a1616 !important;
}
.op-darkRed {
  background-color: rgba(154, 22, 22, 0.7);
}
.ribbed-darkRed {
  background: #9a1616 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkRed:before {
  background: #9a1616 !important;
}
.before-fg-darkRed:before {
  color: #9a1616 !important;
}
.after-bg-darkRed:after {
  background: #9a1616 !important;
}
.after-fg-darkRed:after {
  color: #9a1616 !important;
}
.bg-hover-darkRed:hover {
  background: #9a1616 !important;
}
.bg-active-darkRed:active {
  background: #9a1616 !important;
}
.bg-focus-darkRed:focus {
  background: #9a1616 !important;
}
.fg-hover-darkRed:hover {
  color: #9a1616 !important;
}
.fg-active-darkRed:active {
  color: #9a1616 !important;
}
.fg-focus-darkRed:focus {
  color: #9a1616 !important;
}
.fg-darkPink {
  color: #9a165a !important;
}
.bg-darkPink {
  background-color: #9a165a !important;
}
.bd-darkPink {
  border-color: #9a165a !important;
}
.ol-darkPink {
  outline-color: #9a165a !important;
}
.op-darkPink {
  background-color: rgba(154, 22, 90, 0.7);
}
.ribbed-darkPink {
  background: #9a165a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkPink:before {
  background: #9a165a !important;
}
.before-fg-darkPink:before {
  color: #9a165a !important;
}
.after-bg-darkPink:after {
  background: #9a165a !important;
}
.after-fg-darkPink:after {
  color: #9a165a !important;
}
.bg-hover-darkPink:hover {
  background: #9a165a !important;
}
.bg-active-darkPink:active {
  background: #9a165a !important;
}
.bg-focus-darkPink:focus {
  background: #9a165a !important;
}
.fg-hover-darkPink:hover {
  color: #9a165a !important;
}
.fg-active-darkPink:active {
  color: #9a165a !important;
}
.fg-focus-darkPink:focus {
  color: #9a165a !important;
}
.fg-darkViolet {
  color: #57169a !important;
}
.bg-darkViolet {
  background-color: #57169a !important;
}
.bd-darkViolet {
  border-color: #57169a !important;
}
.ol-darkViolet {
  outline-color: #57169a !important;
}
.op-darkViolet {
  background-color: rgba(87, 22, 154, 0.7);
}
.ribbed-darkViolet {
  background: #57169a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkViolet:before {
  background: #57169a !important;
}
.before-fg-darkViolet:before {
  color: #57169a !important;
}
.after-bg-darkViolet:after {
  background: #57169a !important;
}
.after-fg-darkViolet:after {
  color: #57169a !important;
}
.bg-hover-darkViolet:hover {
  background: #57169a !important;
}
.bg-active-darkViolet:active {
  background: #57169a !important;
}
.bg-focus-darkViolet:focus {
  background: #57169a !important;
}
.fg-hover-darkViolet:hover {
  color: #57169a !important;
}
.fg-active-darkViolet:active {
  color: #57169a !important;
}
.fg-focus-darkViolet:focus {
  color: #57169a !important;
}
.fg-darkBlue {
  color: #16499a !important;
}
.bg-darkBlue {
  background-color: #16499a !important;
}
.bd-darkBlue {
  border-color: #16499a !important;
}
.ol-darkBlue {
  outline-color: #16499a !important;
}
.op-darkBlue {
  background-color: rgba(22, 73, 154, 0.7);
}
.ribbed-darkBlue {
  background: #16499a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkBlue:before {
  background: #16499a !important;
}
.before-fg-darkBlue:before {
  color: #16499a !important;
}
.after-bg-darkBlue:after {
  background: #16499a !important;
}
.after-fg-darkBlue:after {
  color: #16499a !important;
}
.bg-hover-darkBlue:hover {
  background: #16499a !important;
}
.bg-active-darkBlue:active {
  background: #16499a !important;
}
.bg-focus-darkBlue:focus {
  background: #16499a !important;
}
.fg-hover-darkBlue:hover {
  color: #16499a !important;
}
.fg-active-darkBlue:active {
  color: #16499a !important;
}
.fg-focus-darkBlue:focus {
  color: #16499a !important;
}
.fg-lightBlue {
  color: #4390df !important;
}
.bg-lightBlue {
  background-color: #4390df !important;
}
.bd-lightBlue {
  border-color: #4390df !important;
}
.ol-lightBlue {
  outline-color: #4390df !important;
}
.op-lightBlue {
  background-color: rgba(67, 144, 223, 0.7);
}
.ribbed-lightBlue {
  background: #4390df linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightBlue:before {
  background: #4390df !important;
}
.before-fg-lightBlue:before {
  color: #4390df !important;
}
.after-bg-lightBlue:after {
  background: #4390df !important;
}
.after-fg-lightBlue:after {
  color: #4390df !important;
}
.bg-hover-lightBlue:hover {
  background: #4390df !important;
}
.bg-active-lightBlue:active {
  background: #4390df !important;
}
.bg-focus-lightBlue:focus {
  background: #4390df !important;
}
.fg-hover-lightBlue:hover {
  color: #4390df !important;
}
.fg-active-lightBlue:active {
  color: #4390df !important;
}
.fg-focus-lightBlue:focus {
  color: #4390df !important;
}
.fg-lighterBlue {
  color: #00ccff !important;
}
.bg-lighterBlue {
  background-color: #00ccff !important;
}
.bd-lighterBlue {
  border-color: #00ccff !important;
}
.ol-lighterBlue {
  outline-color: #00ccff !important;
}
.op-lighterBlue {
  background-color: rgba(0, 204, 255, 0.7);
}
.ribbed-lighterBlue {
  background: #00ccff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lighterBlue:before {
  background: #00ccff !important;
}
.before-fg-lighterBlue:before {
  color: #00ccff !important;
}
.after-bg-lighterBlue:after {
  background: #00ccff !important;
}
.after-fg-lighterBlue:after {
  color: #00ccff !important;
}
.bg-hover-lighterBlue:hover {
  background: #00ccff !important;
}
.bg-active-lighterBlue:active {
  background: #00ccff !important;
}
.bg-focus-lighterBlue:focus {
  background: #00ccff !important;
}
.fg-hover-lighterBlue:hover {
  color: #00ccff !important;
}
.fg-active-lighterBlue:active {
  color: #00ccff !important;
}
.fg-focus-lighterBlue:focus {
  color: #00ccff !important;
}
.fg-lightTeal {
  color: #45fffd !important;
}
.bg-lightTeal {
  background-color: #45fffd !important;
}
.bd-lightTeal {
  border-color: #45fffd !important;
}
.ol-lightTeal {
  outline-color: #45fffd !important;
}
.op-lightTeal {
  background-color: rgba(69, 255, 253, 0.7);
}
.ribbed-lightTeal {
  background: #45fffd linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightTeal:before {
  background: #45fffd !important;
}
.before-fg-lightTeal:before {
  color: #45fffd !important;
}
.after-bg-lightTeal:after {
  background: #45fffd !important;
}
.after-fg-lightTeal:after {
  color: #45fffd !important;
}
.bg-hover-lightTeal:hover {
  background: #45fffd !important;
}
.bg-active-lightTeal:active {
  background: #45fffd !important;
}
.bg-focus-lightTeal:focus {
  background: #45fffd !important;
}
.fg-hover-lightTeal:hover {
  color: #45fffd !important;
}
.fg-active-lightTeal:active {
  color: #45fffd !important;
}
.fg-focus-lightTeal:focus {
  color: #45fffd !important;
}
.fg-lightOlive {
  color: #78aa1c !important;
}
.bg-lightOlive {
  background-color: #78aa1c !important;
}
.bd-lightOlive {
  border-color: #78aa1c !important;
}
.ol-lightOlive {
  outline-color: #78aa1c !important;
}
.op-lightOlive {
  background-color: rgba(120, 170, 28, 0.7);
}
.ribbed-lightOlive {
  background: #78aa1c linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightOlive:before {
  background: #78aa1c !important;
}
.before-fg-lightOlive:before {
  color: #78aa1c !important;
}
.after-bg-lightOlive:after {
  background: #78aa1c !important;
}
.after-fg-lightOlive:after {
  color: #78aa1c !important;
}
.bg-hover-lightOlive:hover {
  background: #78aa1c !important;
}
.bg-active-lightOlive:active {
  background: #78aa1c !important;
}
.bg-focus-lightOlive:focus {
  background: #78aa1c !important;
}
.fg-hover-lightOlive:hover {
  color: #78aa1c !important;
}
.fg-active-lightOlive:active {
  color: #78aa1c !important;
}
.fg-focus-lightOlive:focus {
  color: #78aa1c !important;
}
.fg-lightOrange {
  color: #ffc194 !important;
}
.bg-lightOrange {
  background-color: #ffc194 !important;
}
.bd-lightOrange {
  border-color: #ffc194 !important;
}
.ol-lightOrange {
  outline-color: #ffc194 !important;
}
.op-lightOrange {
  background-color: rgba(255, 193, 148, 0.7);
}
.ribbed-lightOrange {
  background: #ffc194 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightOrange:before {
  background: #ffc194 !important;
}
.before-fg-lightOrange:before {
  color: #ffc194 !important;
}
.after-bg-lightOrange:after {
  background: #ffc194 !important;
}
.after-fg-lightOrange:after {
  color: #ffc194 !important;
}
.bg-hover-lightOrange:hover {
  background: #ffc194 !important;
}
.bg-active-lightOrange:active {
  background: #ffc194 !important;
}
.bg-focus-lightOrange:focus {
  background: #ffc194 !important;
}
.fg-hover-lightOrange:hover {
  color: #ffc194 !important;
}
.fg-active-lightOrange:active {
  color: #ffc194 !important;
}
.fg-focus-lightOrange:focus {
  color: #ffc194 !important;
}
.fg-lightPink {
  color: #f472d0 !important;
}
.bg-lightPink {
  background-color: #f472d0 !important;
}
.bd-lightPink {
  border-color: #f472d0 !important;
}
.ol-lightPink {
  outline-color: #f472d0 !important;
}
.op-lightPink {
  background-color: rgba(244, 114, 208, 0.7);
}
.ribbed-lightPink {
  background: #f472d0 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightPink:before {
  background: #f472d0 !important;
}
.before-fg-lightPink:before {
  color: #f472d0 !important;
}
.after-bg-lightPink:after {
  background: #f472d0 !important;
}
.after-fg-lightPink:after {
  color: #f472d0 !important;
}
.bg-hover-lightPink:hover {
  background: #f472d0 !important;
}
.bg-active-lightPink:active {
  background: #f472d0 !important;
}
.bg-focus-lightPink:focus {
  background: #f472d0 !important;
}
.fg-hover-lightPink:hover {
  color: #f472d0 !important;
}
.fg-active-lightPink:active {
  color: #f472d0 !important;
}
.fg-focus-lightPink:focus {
  color: #f472d0 !important;
}
.fg-lightRed {
  color: #da5a53 !important;
}
.bg-lightRed {
  background-color: #da5a53 !important;
}
.bd-lightRed {
  border-color: #da5a53 !important;
}
.ol-lightRed {
  outline-color: #da5a53 !important;
}
.op-lightRed {
  background-color: rgba(218, 90, 83, 0.7);
}
.ribbed-lightRed {
  background: #da5a53 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightRed:before {
  background: #da5a53 !important;
}
.before-fg-lightRed:before {
  color: #da5a53 !important;
}
.after-bg-lightRed:after {
  background: #da5a53 !important;
}
.after-fg-lightRed:after {
  color: #da5a53 !important;
}
.bg-hover-lightRed:hover {
  background: #da5a53 !important;
}
.bg-active-lightRed:active {
  background: #da5a53 !important;
}
.bg-focus-lightRed:focus {
  background: #da5a53 !important;
}
.fg-hover-lightRed:hover {
  color: #da5a53 !important;
}
.fg-active-lightRed:active {
  color: #da5a53 !important;
}
.fg-focus-lightRed:focus {
  color: #da5a53 !important;
}
.fg-lightGreen {
  color: #7ad61d !important;
}
.bg-lightGreen {
  background-color: #7ad61d !important;
}
.bd-lightGreen {
  border-color: #7ad61d !important;
}
.ol-lightGreen {
  outline-color: #7ad61d !important;
}
.op-lightGreen {
  background-color: rgba(122, 214, 29, 0.7);
}
.ribbed-lightGreen {
  background: #7ad61d linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightGreen:before {
  background: #7ad61d !important;
}
.before-fg-lightGreen:before {
  color: #7ad61d !important;
}
.after-bg-lightGreen:after {
  background: #7ad61d !important;
}
.after-fg-lightGreen:after {
  color: #7ad61d !important;
}
.bg-hover-lightGreen:hover {
  background: #7ad61d !important;
}
.bg-active-lightGreen:active {
  background: #7ad61d !important;
}
.bg-focus-lightGreen:focus {
  background: #7ad61d !important;
}
.fg-hover-lightGreen:hover {
  color: #7ad61d !important;
}
.fg-active-lightGreen:active {
  color: #7ad61d !important;
}
.fg-focus-lightGreen:focus {
  color: #7ad61d !important;
}
.fg-lightCyan {
  color: #59cde2 !important;
}
.bg-lightCyan {
  background-color: #59cde2 !important;
}
.bd-lightCyan {
  border-color: #59cde2 !important;
}
.ol-lightCyan {
  outline-color: #59cde2 !important;
}
.op-lightCyan {
  background-color: rgba(89, 205, 226, 0.7);
}
.ribbed-lightCyan {
  background: #59cde2 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightCyan:before {
  background: #59cde2 !important;
}
.before-fg-lightCyan:before {
  color: #59cde2 !important;
}
.after-bg-lightCyan:after {
  background: #59cde2 !important;
}
.after-fg-lightCyan:after {
  color: #59cde2 !important;
}
.bg-hover-lightCyan:hover {
  background: #59cde2 !important;
}
.bg-active-lightCyan:active {
  background: #59cde2 !important;
}
.bg-focus-lightCyan:focus {
  background: #59cde2 !important;
}
.fg-hover-lightCyan:hover {
  color: #59cde2 !important;
}
.fg-active-lightCyan:active {
  color: #59cde2 !important;
}
.fg-focus-lightCyan:focus {
  color: #59cde2 !important;
}
.fg-grayed {
  color: #585858 !important;
}
.bg-grayed {
  background-color: #585858 !important;
}
.bd-grayed {
  border-color: #585858 !important;
}
.ol-grayed {
  outline-color: #585858 !important;
}
.op-grayed {
  background-color: rgba(88, 88, 88, 0.7);
}
.ribbed-grayed {
  background: #585858 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayed:before {
  background: #585858 !important;
}
.before-fg-grayed:before {
  color: #585858 !important;
}
.after-bg-grayed:after {
  background: #585858 !important;
}
.after-fg-grayed:after {
  color: #585858 !important;
}
.bg-hover-grayed:hover {
  background: #585858 !important;
}
.bg-active-grayed:active {
  background: #585858 !important;
}
.bg-focus-grayed:focus {
  background: #585858 !important;
}
.fg-hover-grayed:hover {
  color: #585858 !important;
}
.fg-active-grayed:active {
  color: #585858 !important;
}
.fg-focus-grayed:focus {
  color: #585858 !important;
}
.fg-grayDarker {
  color: #222222 !important;
}
.bg-grayDarker {
  background-color: #222222 !important;
}
.bd-grayDarker {
  border-color: #222222 !important;
}
.ol-grayDarker {
  outline-color: #222222 !important;
}
.op-grayDarker {
  background-color: rgba(34, 34, 34, 0.7);
}
.ribbed-grayDarker {
  background: #222222 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayDarker:before {
  background: #222222 !important;
}
.before-fg-grayDarker:before {
  color: #222222 !important;
}
.after-bg-grayDarker:after {
  background: #222222 !important;
}
.after-fg-grayDarker:after {
  color: #222222 !important;
}
.bg-hover-grayDarker:hover {
  background: #222222 !important;
}
.bg-active-grayDarker:active {
  background: #222222 !important;
}
.bg-focus-grayDarker:focus {
  background: #222222 !important;
}
.fg-hover-grayDarker:hover {
  color: #222222 !important;
}
.fg-active-grayDarker:active {
  color: #222222 !important;
}
.fg-focus-grayDarker:focus {
  color: #222222 !important;
}
.fg-grayDark {
  color: #333333 !important;
}
.bg-grayDark {
  background-color: #333333 !important;
}
.bd-grayDark {
  border-color: #333333 !important;
}
.ol-grayDark {
  outline-color: #333333 !important;
}
.op-grayDark {
  background-color: rgba(51, 51, 51, 0.7);
}
.ribbed-grayDark {
  background: #333333 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayDark:before {
  background: #333333 !important;
}
.before-fg-grayDark:before {
  color: #333333 !important;
}
.after-bg-grayDark:after {
  background: #333333 !important;
}
.after-fg-grayDark:after {
  color: #333333 !important;
}
.bg-hover-grayDark:hover {
  background: #333333 !important;
}
.bg-active-grayDark:active {
  background: #333333 !important;
}
.bg-focus-grayDark:focus {
  background: #333333 !important;
}
.fg-hover-grayDark:hover {
  color: #333333 !important;
}
.fg-active-grayDark:active {
  color: #333333 !important;
}
.fg-focus-grayDark:focus {
  color: #333333 !important;
}
.fg-gray {
  color: #555555 !important;
}
.bg-gray {
  background-color: #555555 !important;
}
.bd-gray {
  border-color: #555555 !important;
}
.ol-gray {
  outline-color: #555555 !important;
}
.op-gray {
  background-color: rgba(85, 85, 85, 0.7);
}
.ribbed-gray {
  background: #555555 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-gray:before {
  background: #555555 !important;
}
.before-fg-gray:before {
  color: #555555 !important;
}
.after-bg-gray:after {
  background: #555555 !important;
}
.after-fg-gray:after {
  color: #555555 !important;
}
.bg-hover-gray:hover {
  background: #555555 !important;
}
.bg-active-gray:active {
  background: #555555 !important;
}
.bg-focus-gray:focus {
  background: #555555 !important;
}
.fg-hover-gray:hover {
  color: #555555 !important;
}
.fg-active-gray:active {
  color: #555555 !important;
}
.fg-focus-gray:focus {
  color: #555555 !important;
}
.fg-grayLight {
  color: #999999 !important;
}
.bg-grayLight {
  background-color: #999999 !important;
}
.bd-grayLight {
  border-color: #999999 !important;
}
.ol-grayLight {
  outline-color: #999999 !important;
}
.op-grayLight {
  background-color: rgba(153, 153, 153, 0.7);
}
.ribbed-grayLight {
  background: #999999 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayLight:before {
  background: #999999 !important;
}
.before-fg-grayLight:before {
  color: #999999 !important;
}
.after-bg-grayLight:after {
  background: #999999 !important;
}
.after-fg-grayLight:after {
  color: #999999 !important;
}
.bg-hover-grayLight:hover {
  background: #999999 !important;
}
.bg-active-grayLight:active {
  background: #999999 !important;
}
.bg-focus-grayLight:focus {
  background: #999999 !important;
}
.fg-hover-grayLight:hover {
  color: #999999 !important;
}
.fg-active-grayLight:active {
  color: #999999 !important;
}
.fg-focus-grayLight:focus {
  color: #999999 !important;
}
.fg-grayLighter {
  color: #eeeeee !important;
}
.bg-grayLighter {
  background-color: #eeeeee !important;
}
.bd-grayLighter {
  border-color: #eeeeee !important;
}
.ol-grayLighter {
  outline-color: #eeeeee !important;
}
.op-grayLighter {
  background-color: rgba(238, 238, 238, 0.7);
}
.ribbed-grayLighter {
  background: #eeeeee linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayLighter:before {
  background: #eeeeee !important;
}
.before-fg-grayLighter:before {
  color: #eeeeee !important;
}
.after-bg-grayLighter:after {
  background: #eeeeee !important;
}
.after-fg-grayLighter:after {
  color: #eeeeee !important;
}
.bg-hover-grayLighter:hover {
  background: #eeeeee !important;
}
.bg-active-grayLighter:active {
  background: #eeeeee !important;
}
.bg-focus-grayLighter:focus {
  background: #eeeeee !important;
}
.fg-hover-grayLighter:hover {
  color: #eeeeee !important;
}
.fg-active-grayLighter:active {
  color: #eeeeee !important;
}
.fg-focus-grayLighter:focus {
  color: #eeeeee !important;
}
.fg-lightGray {
  color: #999999 !important;
}
.bg-lightGray {
  background-color: #999999 !important;
}
.bd-lightGray {
  border-color: #999999 !important;
}
.ol-lightGray {
  outline-color: #999999 !important;
}
.op-lightGray {
  background-color: rgba(153, 153, 153, 0.7);
}
.ribbed-lightGray {
  background: #999999 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightGray:before {
  background: #999999 !important;
}
.before-fg-lightGray:before {
  color: #999999 !important;
}
.after-bg-lightGray:after {
  background: #999999 !important;
}
.after-fg-lightGray:after {
  color: #999999 !important;
}
.bg-hover-lightGray:hover {
  background: #999999 !important;
}
.bg-active-lightGray:active {
  background: #999999 !important;
}
.bg-focus-lightGray:focus {
  background: #999999 !important;
}
.fg-hover-lightGray:hover {
  color: #999999 !important;
}
.fg-active-lightGray:active {
  color: #999999 !important;
}
.fg-focus-lightGray:focus {
  color: #999999 !important;
}
.fg-lighterGray {
  color: #eeeeee !important;
}
.bg-lighterGray {
  background-color: #eeeeee !important;
}
.bd-lighterGray {
  border-color: #eeeeee !important;
}
.ol-lighterGray {
  outline-color: #eeeeee !important;
}
.op-lighterGray {
  background-color: rgba(238, 238, 238, 0.7);
}
.ribbed-lighterGray {
  background: #eeeeee linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lighterGray:before {
  background: #eeeeee !important;
}
.before-fg-lighterGray:before {
  color: #eeeeee !important;
}
.after-bg-lighterGray:after {
  background: #eeeeee !important;
}
.after-fg-lighterGray:after {
  color: #eeeeee !important;
}
.bg-hover-lighterGray:hover {
  background: #eeeeee !important;
}
.bg-active-lighterGray:active {
  background: #eeeeee !important;
}
.bg-focus-lighterGray:focus {
  background: #eeeeee !important;
}
.fg-hover-lighterGray:hover {
  color: #eeeeee !important;
}
.fg-active-lighterGray:active {
  color: #eeeeee !important;
}
.fg-focus-lighterGray:focus {
  color: #eeeeee !important;
}
.fg-darkGray {
  color: #333333 !important;
}
.bg-darkGray {
  background-color: #333333 !important;
}
.bd-darkGray {
  border-color: #333333 !important;
}
.ol-darkGray {
  outline-color: #333333 !important;
}
.op-darkGray {
  background-color: rgba(51, 51, 51, 0.7);
}
.ribbed-darkGray {
  background: #333333 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkGray:before {
  background: #333333 !important;
}
.before-fg-darkGray:before {
  color: #333333 !important;
}
.after-bg-darkGray:after {
  background: #333333 !important;
}
.after-fg-darkGray:after {
  color: #333333 !important;
}
.bg-hover-darkGray:hover {
  background: #333333 !important;
}
.bg-active-darkGray:active {
  background: #333333 !important;
}
.bg-focus-darkGray:focus {
  background: #333333 !important;
}
.fg-hover-darkGray:hover {
  color: #333333 !important;
}
.fg-active-darkGray:active {
  color: #333333 !important;
}
.fg-focus-darkGray:focus {
  color: #333333 !important;
}
.fg-darkerGray {
  color: #222222 !important;
}
.bg-darkerGray {
  background-color: #222222 !important;
}
.bd-darkerGray {
  border-color: #222222 !important;
}
.ol-darkerGray {
  outline-color: #222222 !important;
}
.op-darkerGray {
  background-color: rgba(34, 34, 34, 0.7);
}
.ribbed-darkerGray {
  background: #222222 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkerGray:before {
  background: #222222 !important;
}
.before-fg-darkerGray:before {
  color: #222222 !important;
}
.after-bg-darkerGray:after {
  background: #222222 !important;
}
.after-fg-darkerGray:after {
  color: #222222 !important;
}
.bg-hover-darkerGray:hover {
  background: #222222 !important;
}
.bg-active-darkerGray:active {
  background: #222222 !important;
}
.bg-focus-darkerGray:focus {
  background: #222222 !important;
}
.fg-hover-darkerGray:hover {
  color: #222222 !important;
}
.fg-active-darkerGray:active {
  color: #222222 !important;
}
.fg-focus-darkerGray:focus {
  color: #222222 !important;
}
.fg-darker {
  color: #222222 !important;
}
.bg-darker {
  background-color: #222222 !important;
}
.bd-darker {
  border-color: #222222 !important;
}
.ol-darker {
  outline-color: #222222 !important;
}
.op-darker {
  background-color: rgba(34, 34, 34, 0.7);
}
.ribbed-darker {
  background: #222222 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darker:before {
  background: #222222 !important;
}
.before-fg-darker:before {
  color: #222222 !important;
}
.after-bg-darker:after {
  background: #222222 !important;
}
.after-fg-darker:after {
  color: #222222 !important;
}
.bg-hover-darker:hover {
  background: #222222 !important;
}
.bg-active-darker:active {
  background: #222222 !important;
}
.bg-focus-darker:focus {
  background: #222222 !important;
}
.fg-hover-darker:hover {
  color: #222222 !important;
}
.fg-active-darker:active {
  color: #222222 !important;
}
.fg-focus-darker:focus {
  color: #222222 !important;
}
/* transform functions */
.rotate45 {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.rotate90 {
  -webkit-transform: rotate(90deg);
          transform: rotate(90deg);
}
.rotate135 {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.rotate180 {
  -webkit-transform: rotate(180deg);
          transform: rotate(180deg);
}
.rotate225 {
  -webkit-transform: rotate(225deg);
          transform: rotate(225deg);
}
.rotate270 {
  -webkit-transform: rotate(270deg);
          transform: rotate(270deg);
}
.rotate360 {
  -webkit-transform: rotate(360deg);
          transform: rotate(360deg);
}
.rotate-45 {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.rotate-90 {
  -webkit-transform: rotate(-90deg);
          transform: rotate(-90deg);
}
.rotate-135 {
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
}
.rotate-180 {
  -webkit-transform: rotate(-180deg);
          transform: rotate(-180deg);
}
.rotate-225 {
  -webkit-transform: rotate(-225deg);
          transform: rotate(-225deg);
}
.rotate-270 {
  -webkit-transform: rotate(-270deg);
          transform: rotate(-270deg);
}
.rotate-360 {
  -webkit-transform: rotate(-360deg);
          transform: rotate(-360deg);
}
.rotateX45 {
  -webkit-transform: rotateX(45deg);
          transform: rotateX(45deg);
}
.rotateX90 {
  -webkit-transform: rotateX(90deg);
          transform: rotateX(90deg);
}
.rotateX135 {
  -webkit-transform: rotateX(135deg);
          transform: rotateX(135deg);
}
.rotateX180 {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.rotateX225 {
  -webkit-transform: rotateX(225deg);
          transform: rotateX(225deg);
}
.rotateX270 {
  -webkit-transform: rotateX(270deg);
          transform: rotateX(270deg);
}
.rotateX360 {
  -webkit-transform: rotateX(360deg);
          transform: rotateX(360deg);
}
.rotateX-45 {
  -webkit-transform: rotateX(-45deg);
          transform: rotateX(-45deg);
}
.rotateX-90 {
  -webkit-transform: rotateX(-90deg);
          transform: rotateX(-90deg);
}
.rotateX-135 {
  -webkit-transform: rotateX(-135deg);
          transform: rotateX(-135deg);
}
.rotateX-180 {
  -webkit-transform: rotateX(-180deg);
          transform: rotateX(-180deg);
}
.rotateX-225 {
  -webkit-transform: rotateX(-225deg);
          transform: rotateX(-225deg);
}
.rotateX-270 {
  -webkit-transform: rotateX(-270deg);
          transform: rotateX(-270deg);
}
.rotateX-360 {
  -webkit-transform: rotateX(-360deg);
          transform: rotateX(-360deg);
}
.rotateY45 {
  -webkit-transform: rotateY(45deg);
          transform: rotateY(45deg);
}
.rotateY90 {
  -webkit-transform: rotateY(90deg);
          transform: rotateY(90deg);
}
.rotateY135 {
  -webkit-transform: rotateY(135deg);
          transform: rotateY(135deg);
}
.rotateY180 {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.rotateY225 {
  -webkit-transform: rotateY(225deg);
          transform: rotateY(225deg);
}
.rotateY270 {
  -webkit-transform: rotateY(270deg);
          transform: rotateY(270deg);
}
.rotateY360 {
  -webkit-transform: rotateY(360deg);
          transform: rotateY(360deg);
}
.rotateY-45 {
  -webkit-transform: rotateY(-45deg);
          transform: rotateY(-45deg);
}
.rotateY-90 {
  -webkit-transform: rotateY(-90deg);
          transform: rotateY(-90deg);
}
.rotateY-135 {
  -webkit-transform: rotateY(-135deg);
          transform: rotateY(-135deg);
}
.rotateY-180 {
  -webkit-transform: rotateY(-180deg);
          transform: rotateY(-180deg);
}
.rotateY-225 {
  -webkit-transform: rotateY(-225deg);
          transform: rotateY(-225deg);
}
.rotateY-270 {
  -webkit-transform: rotateY(-270deg);
          transform: rotateY(-270deg);
}
.rotateY-360 {
  -webkit-transform: rotateY(-360deg);
          transform: rotateY(-360deg);
}
html,
body {
  padding: 0;
  margin: 0;
  height: 100%;
}
html,
body,
* {
  box-sizing: border-box;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
nav,
section {
  display: block;
}
audio,
canvas,
video {
  display: inline-block;
}
audio:not([controls]) {
  display: none;
}
a:hover,
a:active,
.tile:active {
  outline: 0;
}
sub,
sup {
  position: relative;
  font-size: 75%;
  line-height: 0;
  vertical-align: baseline;
}
sup {
  top: -0.5em;
}
sub {
  bottom: -0.25em;
}
img {
  max-width: 100%;
  height: auto;
  vertical-align: middle;
  border: 0;
}
#map_canvas img,
.google-maps img {
  max-width: none;
}
button,
input,
select,
textarea {
  margin: 0;
  font-size: 100%;
  vertical-align: middle;
}
button,
input {
  line-height: normal;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
label,
select,
button,
input[type="button"],
input[type="reset"],
input[type="submit"],
input[type="radio"],
input[type="checkbox"] {
  cursor: pointer;
}
input[type="search"] {
  box-sizing: content-box;
  appearance: textfield;
}
input[type="search"]::-webkit-search-decoration,
input[type="search"]::-webkit-search-cancel-button {
  -webkit-appearance: none;
}
textarea {
  overflow: auto;
  vertical-align: top;
}
input[type=text]::-ms-clear,
input[type=email]::-ms-clear,
input[type=url]::-ms-clear,
input[type=tel]::-ms-clear,
input[type=number]::-ms-clear,
input[type=time]::-ms-clear {
  display: none;
}
input[type=password]::-ms-reveal {
  display: none;
}
* {
  border-collapse: collapse;
}
a {
  text-decoration: none;
}
@media print {
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  .ir a:after,
  a[href^="javascript:"]:after,
  a[href^="#"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100%;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
}
@font-face {
  font-family: "PT Serif Caption";
  font-style: normal;
  font-weight: 400;
  src: local("Cambria"), local("PT Serif Caption"), local("PTSerif-Caption"), url(https://themes.googleusercontent.com/static/fonts/ptserifcaption/v6/7xkFOeTxxO1GMC1suOUYWWhBabBbEjGd1iRmpyoZukE.woff) format('woff');
}
@font-face {
  font-family: "Open Sans Light";
  font-style: normal;
  font-weight: 300;
  src: local("Segoe UI Light"), local("Open Sans Light"), local("OpenSans-Light"), url(https://themes.googleusercontent.com/static/fonts/opensans/v8/DXI1ORHCpsQm3Vp6mXoaTZ1r3JsPcQLi8jytr04NNhU.woff) format('woff');
}
@font-face {
  font-family: "Open Sans";
  font-style: normal;
  font-weight: 400;
  src: local("Segoe UI"), local("Open Sans"), local("OpenSans"), url(https://themes.googleusercontent.com/static/fonts/opensans/v8/K88pR3goAWT7BTt32Z01mz8E0i7KZn-EPnyo3HZu7kw.woff) format('woff');
}
@font-face {
  font-family: "Open Sans Bold";
  font-style: normal;
  font-weight: 700;
  src: local("Segoe UI Bold"), local("Open Sans Bold"), local("OpenSans-Bold"), url(https://themes.googleusercontent.com/static/fonts/opensans/v8/k3k702ZOKiLJc3WVjuplzJ1r3JsPcQLi8jytr04NNhU.woff) format('woff');
}
html {
  font-size: 100%;
}
body {
  font-family: "Segoe UI", "Open Sans", sans-serif, serif;
  font-size: 0.875rem;
  line-height: 1.1;
  font-weight: 400;
  font-style: normal;
}
#font .light {
  font-weight: 300;
  font-style: normal;
}
#font .normal {
  font-weight: 400;
  font-style: normal;
}
#font .bold {
  font-style: normal;
  font-weight: 700;
}
#font .italic {
  font-style: italic;
}
.leader {
  font: 400 2.25rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.sub-leader {
  font: 500 1.875rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.header {
  font: 500 1.5rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.sub-header {
  font: 500 1.125rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.alt-header {
  font: 500 1rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.sub-alt-header {
  font: 500 0.875rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
.minor-header {
  font: 500 0.75rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h1 {
  font: 400 2.25rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h2 {
  font: 500 1.875rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h3 {
  font: 500 1.5rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h4 {
  font: 500 1.125rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h5 {
  font: 500 0.875rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h6 {
  font: 500 0.75rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
}
h1,
h2,
h3,
h4,
h5,
h6 {
  margin: .625rem 0;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small {
  font-weight: 400;
  font-size: .7em;
  line-height: 1;
  color: #777;
}
.text-light {
  font-weight: 300;
  font-style: normal;
}
.text-normal {
  font-weight: 400;
  font-style: normal;
}
.text-bold {
  font-style: normal;
  font-weight: 700;
}
.text-italic {
  font-style: italic;
}
.uppercase {
  text-transform: uppercase;
}
.lowercase {
  text-transform: lowercase;
}
.capital {
  text-transform: capitalize;
}
.align-left {
  text-align: left;
}
.align-right {
  text-align: right;
}
.align-center {
  text-align: center;
}
.align-justify {
  text-align: justify;
}
.v-align-top {
  vertical-align: top;
}
.v-align-bottom {
  vertical-align: bottom;
}
.v-align-baseline {
  vertical-align: baseline;
}
.v-align-middle {
  vertical-align: middle;
}
.v-align-sub {
  vertical-align: sub;
}
.v-align-super {
  vertical-align: super;
}
.v-align-top-text {
  vertical-align: text-top;
}
.v-align-bottom-text {
  vertical-align: text-bottom;
}
.text-dashed {
  border: 0;
  border-bottom: 1px gray dashed;
  display: inline;
}
.indent-paragraph:first-letter {
  margin-left: 2.5rem;
}
.text-secondary {
  font-size: 0.75rem;
}
.text-accent,
.text-enlarged {
  font-size: 1.1rem;
}
.text-default {
  font-size: 0.875rem;
}
.text-small {
  font-size: 0.625rem;
}
.text-light {
  font-weight: 300;
}
.text-ellipsis {
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
abbr {
  text-decoration: none;
  border-bottom: 1px #999999 dotted;
  cursor: help;
  display: inline;
}
address {
  font-weight: 400;
  font-style: normal;
  margin: .625rem 0;
}
blockquote {
  margin: .625rem 0;
  padding: 0 0 0 .625rem;
  border-left: 0.25rem #999999 solid;
}
blockquote small {
  color: #999999;
}
blockquote small:before {
  content: "\2014 \00A0";
}
blockquote.place-right {
  border: 0;
  border-right: 4px #999999 solid;
  padding-right: .625rem;
  text-align: right;
}
blockquote.place-right small:before {
  content: "";
}
blockquote.place-right small:after {
  content: " \00A0 \2014";
}
.unstyled-list {
  padding-left: 0;
  list-style: none;
}
.unstyled-list li ul,
.unstyled-list li ol {
  list-style: none;
  padding-left: 1.5625rem;
}
.inline-list {
  list-style: none;
  padding-left: 0;
}
.inline-list li {
  display: inline-block;
  margin-right: .625rem;
}
.inline-list li:last-child {
  margin-right: 0;
}
ul,
ol {
  margin-left: .3125rem;
}
ul li,
ol li {
  line-height: 1.25rem;
}
ul li ul,
ol li ul,
ul li ol,
ol li ol {
  padding-left: 1.5625rem;
}
dl dt,
dl dd {
  line-height: 1.25rem;
}
dl dt {
  font-style: normal;
  font-weight: 700;
}
dl dd {
  margin-left: .9375rem;
}
dl.horizontal dt {
  float: left;
  width: 10rem;
  overflow: hidden;
  clear: left;
  text-align: right;
  text-overflow: ellipsis;
  white-space: nowrap;
}
dl.horizontal dd {
  margin-left: 11.25rem;
}
a {
  color: #2086bf;
}
a:visited {
  color: #2086bf;
}
hr {
  border: 0;
  height: 2px;
  background-color: #88b9e3;
}
hr.thin {
  height: 1px;
}
hr.fat {
  height: 3px;
}
.tag {
  display: inline-block;
  line-height: 1.1;
  font-size: 80%;
  padding: 1px 4px 2px;
  background-color: #eeeeee;
  border-radius: 2px;
  color: #1d1d1d;
  vertical-align: middle;
}
.tag.success {
  background-color: #60a917;
  color: #ffffff;
}
.tag.alert {
  background-color: #ce352c;
  color: #ffffff;
}
.tag.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.tag.warning {
  background-color: #fa6800;
  color: #ffffff;
}
a.tag {
  text-decoration: underline;
  cursor: pointer;
}
.container {
  width: 960px;
  margin: 0 auto;
}
.fixed-top,
.fixed-bottom {
  position: fixed;
  left: 0;
  right: 0;
  z-index: 1030;
}
.fixed-top {
  top: 0;
  bottom: auto;
}
.fixed-bottom {
  top: auto;
  bottom: 0;
}
.pos-abs {
  position: absolute !important;
}
.pos-rel {
  position: relative !important;
}
.pos-fix {
  position: fixed !important;
}
.dropdown-toggle {
  position: relative;
  cursor: pointer;
}
.dropdown-toggle:before {
  display: block;
  position: absolute;
  vertical-align: middle;
  color: transparent;
  font-size: 0;
  content: "";
  height: 5px;
  width: 5px;
  background-color: transparent;
  border-left: 1px solid;
  border-bottom: 1px solid;
  border-color: #1d1d1d;
  top: 50%;
  left: 100%;
  margin-left: -1rem;
  margin-top: -0.1625rem;
  z-index: 2;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.dropdown-toggle.drop-marker-light:before {
  border-color: #ffffff;
}
*.dropdown-toggle {
  padding-right: 1.625rem;
}
.flush-list {
  padding: 0;
  margin: 0;
  list-style: none inside none;
}
.shadow {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.before-shadow:before {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.after-shadow:after {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.block-shadow {
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.block-shadow-success {
  box-shadow: 0 0 25px 0 rgba(0, 128, 0, 0.7);
}
.block-shadow-error {
  box-shadow: 0 0 25px 0 rgba(128, 0, 0, 0.7);
}
.block-shadow-danger {
  box-shadow: 0 0 25px 0 rgba(128, 0, 0, 0.7);
}
.block-shadow-warning {
  box-shadow: 0 0 25px 0 rgba(255, 165, 0, 0.7);
}
.block-shadow-info {
  box-shadow: 0 0 25px 0 rgba(89, 205, 226, 0.7);
}
.block-shadow-impact {
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.bottom-shadow {
  box-shadow: -1px 6px 6px -6px rgba(0, 0, 0, 0.35);
}
.text-shadow {
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.before-text-shadow:before {
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.after-text-shadow:after {
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.no-shadow {
  box-shadow: none !important;
}
.full-size {
  width: 100% !important;
}
.block {
  display: block !important;
}
.inline-block {
  display: inline-block !important;
}
.no-display {
  display: none !important;
}
.no-margin {
  margin: 0 !important;
}
.no-margin-right {
  margin-right: 0 !important;
}
.no-margin-left {
  margin-left: 0 !important;
}
.no-margin-top {
  margin-top: 0 !important;
}
.no-margin-bottom {
  margin-bottom: 0 !important;
}
.no-padding {
  padding: 0 !important;
}
.no-padding-left {
  padding-left: 0 !important;
}
.no-padding-right {
  padding-right: 0 !important;
}
.no-padding-top {
  padding-top: 0 !important;
}
.no-padding-bottom {
  padding-bottom: 0 !important;
}
.no-float {
  float: none !important;
}
.no-visible {
  visibility: hidden !important;
}
.no-border {
  border: 0 !important;
}
.no-overflow {
  overflow: hidden !important;
}
.no-scroll {
  overflow: hidden !important;
}
.no-scroll-x {
  overflow-x: hidden !important;
}
.no-scroll-y {
  overflow-y: hidden !important;
}
.no-wrap {
  white-space: nowrap !important;
}
.no-border-left {
  border-left: none !important;
}
.no-border-right {
  border-right: none !important;
}
.no-border-top {
  border-top: none !important;
}
.no-border-bottom {
  border-bottom: none !important;
}
.transparent-border {
  border-color: transparent !important;
}
.place-right {
  float: right !important;
}
.place-left {
  float: left !important;
}
.clear-float:before,
.clear-float:after {
  display: table;
  content: "";
}
.clear-float:after {
  clear: both;
}
.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
}
.clearfix:after {
  clear: both;
}
.no-user-select {
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.no-appearance {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
}
.debug {
  border: 1px dashed red;
}
.example {
  padding: .625rem 1.825rem .625rem 2.5rem;
  border: 1px #ccc dashed;
  position: relative;
  margin: 0 0 .625rem 0;
  background-color: #ffffff;
}
.example:before,
.example:after {
  display: table;
  content: "";
}
.example:after {
  clear: both;
}
.example:before {
  position: absolute;
  content: attr(data-text);
  text-transform: lowercase;
  left: 1.5rem;
  top: 11.875rem;
  color: gray;
  display: block;
  font-size: 1rem;
  line-height: 1rem;
  height: 1rem;
  text-align: right;
  white-space: nowrap;
  direction: ltr;
  width: 12.5rem;
  -webkit-transform: rotate(-90deg);
          transform: rotate(-90deg);
  -webkit-transform-origin: 0 100%;
          transform-origin: 0 100%;
}
.video-container {
  position: relative;
  padding-bottom: 56.25%;
  padding-top: 30px;
  height: 0;
  overflow: hidden;
}
.video-container iframe,
.video-container object,
.video-container embed {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
.padding10 {
  padding: 0.625rem;
}
.padding20 {
  padding: 1.25rem;
}
.padding30 {
  padding: 1.875rem;
}
.padding40 {
  padding: 2.5rem;
}
.padding50 {
  padding: 3.125rem;
}
.padding60 {
  padding: 3.75rem;
}
.padding70 {
  padding: 4.375rem;
}
.padding80 {
  padding: 5rem;
}
.padding90 {
  padding: 5.625rem;
}
.padding100 {
  padding: 6.25rem;
}
.padding5 {
  padding: 5px;
}
.margin5 {
  margin: 5px;
}
.margin10 {
  margin: 0.625rem;
}
.margin20 {
  margin: 1.25rem;
}
.margin30 {
  margin: 1.875rem;
}
.margin40 {
  margin: 2.5rem;
}
.margin50 {
  margin: 3.125rem;
}
.margin60 {
  margin: 3.75rem;
}
.margin70 {
  margin: 4.375rem;
}
.margin80 {
  margin: 5rem;
}
.margin90 {
  margin: 5.625rem;
}
.margin100 {
  margin: 6.25rem;
}
.opacity {
  opacity: .9;
}
.half-opacity {
  opacity: .5;
}
.hi-opacity {
  opacity: .2;
}
.element-selected {
  border: 4px #4390df solid;
}
.element-selected:after {
  position: absolute;
  display: block;
  border-top: 28px solid #4390df;
  border-left: 28px solid transparent;
  right: 0;
  content: "";
  top: 0;
  z-index: 101;
}
.element-selected:before {
  position: absolute;
  display: block;
  content: "";
  background-color: transparent;
  border-color: #ffffff;
  border-left: 2px solid;
  border-bottom: 2px solid;
  height: .25rem;
  width: .5rem;
  right: 0;
  top: 0;
  z-index: 102;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
/* Block function */
.set-border {
  border: 1px #d9d9d9 solid;
}
.set-border.medium-border {
  border-width: 8px;
}
.set-border.large-border {
  border-width: 16px;
}
.grid {
  display: block;
  position: relative;
  margin: .625rem 0;
}
.grid:before,
.grid:after {
  display: table;
  content: "";
}
.grid:after {
  clear: both;
}
.grid .row {
  width: 100%;
  display: block;
  margin: 0 0 2.12765% 0;
}
.grid .row:before,
.grid .row:after {
  display: table;
  content: "";
}
.grid .row:after {
  clear: both;
}
.grid .row:last-child {
  margin-bottom: 0;
}
.grid .row > .cell {
  display: block;
  float: left;
  width: 100%;
  min-height: 10px;
  margin: 0 0 0 2.12765%;
}
.grid .row > .cell:first-child {
  margin-left: 0;
}
.grid .row.cells2 > .cell {
  width: 48.936175%;
}
.grid .row.cells2 > .cell.colspan2 {
  width: 100%;
}
.grid .row.cells2 > .cell.offset1 {
  margin-left: 51.063825%;
}
.grid .row.cells2 > .cell.offset2 {
  margin-left: 102.12765%;
}
.grid .row.cells3 > .cell {
  width: 31.9149%;
}
.grid .row.cells3 > .cell.colspan2 {
  width: 65.95745%;
}
.grid .row.cells3 > .cell.colspan3 {
  width: 100%;
}
.grid .row.cells3 > .cell.offset1 {
  margin-left: 34.04255%;
}
.grid .row.cells3 > .cell.offset2 {
  margin-left: 68.0851%;
}
.grid .row.cells3 > .cell.offset3 {
  margin-left: 102.12765%;
}
.grid .row.cells4 > .cell {
  width: 23.4042625%;
}
.grid .row.cells4 > .cell.colspan2 {
  width: 48.936175%;
}
.grid .row.cells4 > .cell.colspan3 {
  width: 74.4680875%;
}
.grid .row.cells4 > .cell.colspan4 {
  width: 100%;
}
.grid .row.cells4 > .cell.offset1 {
  margin-left: 25.5319125%;
}
.grid .row.cells4 > .cell.offset2 {
  margin-left: 51.063825%;
}
.grid .row.cells4 > .cell.offset3 {
  margin-left: 76.5957375%;
}
.grid .row.cells4 > .cell.offset4 {
  margin-left: 102.12765%;
}
.grid .row.cells5 > .cell {
  width: 18.29788%;
}
.grid .row.cells5 > .cell.colspan2 {
  width: 38.72341%;
}
.grid .row.cells5 > .cell.colspan3 {
  width: 59.14894%;
}
.grid .row.cells5 > .cell.colspan4 {
  width: 79.57447%;
}
.grid .row.cells5 > .cell.colspan5 {
  width: 100%;
}
.grid .row.cells5 > .cell.offset1 {
  margin-left: 20.42553%;
}
.grid .row.cells5 > .cell.offset2 {
  margin-left: 40.85106%;
}
.grid .row.cells5 > .cell.offset3 {
  margin-left: 61.27659%;
}
.grid .row.cells5 > .cell.offset4 {
  margin-left: 81.70212%;
}
.grid .row.cells5 > .cell.offset5 {
  margin-left: 102.12765%;
}
.grid .row.cells6 > .cell {
  width: 14.893625%;
}
.grid .row.cells6 > .cell.colspan2 {
  width: 31.9149%;
}
.grid .row.cells6 > .cell.colspan3 {
  width: 48.936175%;
}
.grid .row.cells6 > .cell.colspan4 {
  width: 65.95745%;
}
.grid .row.cells6 > .cell.colspan5 {
  width: 82.978725%;
}
.grid .row.cells6 > .cell.colspan6 {
  width: 100%;
}
.grid .row.cells6 > .cell.offset1 {
  margin-left: 17.021275%;
}
.grid .row.cells6 > .cell.offset2 {
  margin-left: 34.04255%;
}
.grid .row.cells6 > .cell.offset3 {
  margin-left: 51.063825%;
}
.grid .row.cells6 > .cell.offset4 {
  margin-left: 68.0851%;
}
.grid .row.cells6 > .cell.offset5 {
  margin-left: 85.106375%;
}
.grid .row.cells6 > .cell.offset6 {
  margin-left: 102.12765%;
}
.grid .row.cells7 > .cell {
  width: 12.46201429%;
}
.grid .row.cells7 > .cell.colspan2 {
  width: 27.05167857%;
}
.grid .row.cells7 > .cell.colspan3 {
  width: 41.64134286%;
}
.grid .row.cells7 > .cell.colspan4 {
  width: 56.23100714%;
}
.grid .row.cells7 > .cell.colspan5 {
  width: 70.82067143%;
}
.grid .row.cells7 > .cell.colspan6 {
  width: 85.41033571%;
}
.grid .row.cells7 > .cell.colspan7 {
  width: 100%;
}
.grid .row.cells7 > .cell.offset1 {
  margin-left: 14.58966429%;
}
.grid .row.cells7 > .cell.offset2 {
  margin-left: 29.17932857%;
}
.grid .row.cells7 > .cell.offset3 {
  margin-left: 43.76899286%;
}
.grid .row.cells7 > .cell.offset4 {
  margin-left: 58.35865714%;
}
.grid .row.cells7 > .cell.offset5 {
  margin-left: 72.94832143%;
}
.grid .row.cells7 > .cell.offset6 {
  margin-left: 87.53798571%;
}
.grid .row.cells7 > .cell.offset7 {
  margin-left: 102.12765%;
}
.grid .row.cells8 > .cell {
  width: 10.63830625%;
}
.grid .row.cells8 > .cell.colspan2 {
  width: 23.4042625%;
}
.grid .row.cells8 > .cell.colspan3 {
  width: 36.17021875%;
}
.grid .row.cells8 > .cell.colspan4 {
  width: 48.936175%;
}
.grid .row.cells8 > .cell.colspan5 {
  width: 61.70213125%;
}
.grid .row.cells8 > .cell.colspan6 {
  width: 74.4680875%;
}
.grid .row.cells8 > .cell.colspan7 {
  width: 87.23404375%;
}
.grid .row.cells8 > .cell.colspan8 {
  width: 100%;
}
.grid .row.cells8 > .cell.offset1 {
  margin-left: 12.76595625%;
}
.grid .row.cells8 > .cell.offset2 {
  margin-left: 25.5319125%;
}
.grid .row.cells8 > .cell.offset3 {
  margin-left: 38.29786875%;
}
.grid .row.cells8 > .cell.offset4 {
  margin-left: 51.063825%;
}
.grid .row.cells8 > .cell.offset5 {
  margin-left: 63.82978125%;
}
.grid .row.cells8 > .cell.offset6 {
  margin-left: 76.5957375%;
}
.grid .row.cells8 > .cell.offset7 {
  margin-left: 89.36169375%;
}
.grid .row.cells8 > .cell.offset8 {
  margin-left: 102.12765%;
}
.grid .row.cells9 > .cell {
  width: 9.21986667%;
}
.grid .row.cells9 > .cell.colspan2 {
  width: 20.56738333%;
}
.grid .row.cells9 > .cell.colspan3 {
  width: 31.9149%;
}
.grid .row.cells9 > .cell.colspan4 {
  width: 43.26241667%;
}
.grid .row.cells9 > .cell.colspan5 {
  width: 54.60993333%;
}
.grid .row.cells9 > .cell.colspan6 {
  width: 65.95745%;
}
.grid .row.cells9 > .cell.colspan7 {
  width: 77.30496667%;
}
.grid .row.cells9 > .cell.colspan8 {
  width: 88.65248333%;
}
.grid .row.cells9 > .cell.colspan9 {
  width: 100%;
}
.grid .row.cells9 > .cell.offset1 {
  margin-left: 11.34751667%;
}
.grid .row.cells9 > .cell.offset2 {
  margin-left: 22.69503333%;
}
.grid .row.cells9 > .cell.offset3 {
  margin-left: 34.04255%;
}
.grid .row.cells9 > .cell.offset4 {
  margin-left: 45.39006667%;
}
.grid .row.cells9 > .cell.offset5 {
  margin-left: 56.73758333%;
}
.grid .row.cells9 > .cell.offset6 {
  margin-left: 68.0851%;
}
.grid .row.cells9 > .cell.offset7 {
  margin-left: 79.43261667%;
}
.grid .row.cells9 > .cell.offset8 {
  margin-left: 90.78013333%;
}
.grid .row.cells9 > .cell.offset9 {
  margin-left: 102.12765%;
}
.grid .row.cells10 > .cell {
  width: 8.085115%;
}
.grid .row.cells10 > .cell.colspan2 {
  width: 18.29788%;
}
.grid .row.cells10 > .cell.colspan3 {
  width: 28.510645%;
}
.grid .row.cells10 > .cell.colspan4 {
  width: 38.72341%;
}
.grid .row.cells10 > .cell.colspan5 {
  width: 48.936175%;
}
.grid .row.cells10 > .cell.colspan6 {
  width: 59.14894%;
}
.grid .row.cells10 > .cell.colspan7 {
  width: 69.361705%;
}
.grid .row.cells10 > .cell.colspan8 {
  width: 79.57447%;
}
.grid .row.cells10 > .cell.colspan9 {
  width: 89.787235%;
}
.grid .row.cells10 > .cell.colspan10 {
  width: 100%;
}
.grid .row.cells10 > .cell.offset1 {
  margin-left: 10.212765%;
}
.grid .row.cells10 > .cell.offset2 {
  margin-left: 20.42553%;
}
.grid .row.cells10 > .cell.offset3 {
  margin-left: 30.638295%;
}
.grid .row.cells10 > .cell.offset4 {
  margin-left: 40.85106%;
}
.grid .row.cells10 > .cell.offset5 {
  margin-left: 51.063825%;
}
.grid .row.cells10 > .cell.offset6 {
  margin-left: 61.27659%;
}
.grid .row.cells10 > .cell.offset7 {
  margin-left: 71.489355%;
}
.grid .row.cells10 > .cell.offset8 {
  margin-left: 81.70212%;
}
.grid .row.cells10 > .cell.offset9 {
  margin-left: 91.914885%;
}
.grid .row.cells10 > .cell.offset10 {
  margin-left: 102.12765%;
}
.grid .row.cells11 > .cell {
  width: 7.15668182%;
}
.grid .row.cells11 > .cell.colspan2 {
  width: 16.44101364%;
}
.grid .row.cells11 > .cell.colspan3 {
  width: 25.72534545%;
}
.grid .row.cells11 > .cell.colspan4 {
  width: 35.00967727%;
}
.grid .row.cells11 > .cell.colspan5 {
  width: 44.29400909%;
}
.grid .row.cells11 > .cell.colspan6 {
  width: 53.57834091%;
}
.grid .row.cells11 > .cell.colspan7 {
  width: 62.86267273%;
}
.grid .row.cells11 > .cell.colspan8 {
  width: 72.14700455%;
}
.grid .row.cells11 > .cell.colspan9 {
  width: 81.43133636%;
}
.grid .row.cells11 > .cell.colspan10 {
  width: 90.71566818%;
}
.grid .row.cells11 > .cell.colspan11 {
  width: 100%;
}
.grid .row.cells11 > .cell.offset1 {
  margin-left: 9.28433182%;
}
.grid .row.cells11 > .cell.offset2 {
  margin-left: 18.56866364%;
}
.grid .row.cells11 > .cell.offset3 {
  margin-left: 27.85299545%;
}
.grid .row.cells11 > .cell.offset4 {
  margin-left: 37.13732727%;
}
.grid .row.cells11 > .cell.offset5 {
  margin-left: 46.42165909%;
}
.grid .row.cells11 > .cell.offset6 {
  margin-left: 55.70599091%;
}
.grid .row.cells11 > .cell.offset7 {
  margin-left: 64.99032273%;
}
.grid .row.cells11 > .cell.offset8 {
  margin-left: 74.27465455%;
}
.grid .row.cells11 > .cell.offset9 {
  margin-left: 83.55898636%;
}
.grid .row.cells11 > .cell.offset10 {
  margin-left: 92.84331818%;
}
.grid .row.cells11 > .cell.offset11 {
  margin-left: 102.12765%;
}
.grid .row.cells12 > .cell {
  width: 6.3829875%;
}
.grid .row.cells12 > .cell.colspan2 {
  width: 14.893625%;
}
.grid .row.cells12 > .cell.colspan3 {
  width: 23.4042625%;
}
.grid .row.cells12 > .cell.colspan4 {
  width: 31.9149%;
}
.grid .row.cells12 > .cell.colspan5 {
  width: 40.4255375%;
}
.grid .row.cells12 > .cell.colspan6 {
  width: 48.936175%;
}
.grid .row.cells12 > .cell.colspan7 {
  width: 57.4468125%;
}
.grid .row.cells12 > .cell.colspan8 {
  width: 65.95745%;
}
.grid .row.cells12 > .cell.colspan9 {
  width: 74.4680875%;
}
.grid .row.cells12 > .cell.colspan10 {
  width: 82.978725%;
}
.grid .row.cells12 > .cell.colspan11 {
  width: 91.4893625%;
}
.grid .row.cells12 > .cell.colspan12 {
  width: 100%;
}
.grid .row.cells12 > .cell.offset1 {
  margin-left: 8.5106375%;
}
.grid .row.cells12 > .cell.offset2 {
  margin-left: 17.021275%;
}
.grid .row.cells12 > .cell.offset3 {
  margin-left: 25.5319125%;
}
.grid .row.cells12 > .cell.offset4 {
  margin-left: 34.04255%;
}
.grid .row.cells12 > .cell.offset5 {
  margin-left: 42.5531875%;
}
.grid .row.cells12 > .cell.offset6 {
  margin-left: 51.063825%;
}
.grid .row.cells12 > .cell.offset7 {
  margin-left: 59.5744625%;
}
.grid .row.cells12 > .cell.offset8 {
  margin-left: 68.0851%;
}
.grid .row.cells12 > .cell.offset9 {
  margin-left: 76.5957375%;
}
.grid .row.cells12 > .cell.offset10 {
  margin-left: 85.106375%;
}
.grid .row.cells12 > .cell.offset11 {
  margin-left: 93.6170125%;
}
.grid .row.cells12 > .cell.offset12 {
  margin-left: 102.12765%;
}
.grid .row:empty {
  display: none;
}
.grid.condensed {
  display: block;
  position: relative;
  margin: .625rem 0;
}
.grid.condensed:before,
.grid.condensed:after {
  display: table;
  content: "";
}
.grid.condensed:after {
  clear: both;
}
.grid.condensed .row {
  width: 100%;
  display: block;
  margin: 0 0 0 0;
}
.grid.condensed .row:before,
.grid.condensed .row:after {
  display: table;
  content: "";
}
.grid.condensed .row:after {
  clear: both;
}
.grid.condensed .row:last-child {
  margin-bottom: 0;
}
.grid.condensed .row > .cell {
  display: block;
  float: left;
  width: 100%;
  min-height: 10px;
  margin: 0 0 0 0;
}
.grid.condensed .row > .cell:first-child {
  margin-left: 0;
}
.grid.condensed .row.cells2 > .cell {
  width: 50%;
}
.grid.condensed .row.cells2 > .cell.colspan2 {
  width: 100%;
}
.grid.condensed .row.cells2 > .cell.offset1 {
  margin-left: 50%;
}
.grid.condensed .row.cells2 > .cell.offset2 {
  margin-left: 100%;
}
.grid.condensed .row.cells3 > .cell {
  width: 33.33333333%;
}
.grid.condensed .row.cells3 > .cell.colspan2 {
  width: 66.66666667%;
}
.grid.condensed .row.cells3 > .cell.colspan3 {
  width: 100%;
}
.grid.condensed .row.cells3 > .cell.offset1 {
  margin-left: 33.33333333%;
}
.grid.condensed .row.cells3 > .cell.offset2 {
  margin-left: 66.66666667%;
}
.grid.condensed .row.cells3 > .cell.offset3 {
  margin-left: 100%;
}
.grid.condensed .row.cells4 > .cell {
  width: 25%;
}
.grid.condensed .row.cells4 > .cell.colspan2 {
  width: 50%;
}
.grid.condensed .row.cells4 > .cell.colspan3 {
  width: 75%;
}
.grid.condensed .row.cells4 > .cell.colspan4 {
  width: 100%;
}
.grid.condensed .row.cells4 > .cell.offset1 {
  margin-left: 25%;
}
.grid.condensed .row.cells4 > .cell.offset2 {
  margin-left: 50%;
}
.grid.condensed .row.cells4 > .cell.offset3 {
  margin-left: 75%;
}
.grid.condensed .row.cells4 > .cell.offset4 {
  margin-left: 100%;
}
.grid.condensed .row.cells5 > .cell {
  width: 20%;
}
.grid.condensed .row.cells5 > .cell.colspan2 {
  width: 40%;
}
.grid.condensed .row.cells5 > .cell.colspan3 {
  width: 60%;
}
.grid.condensed .row.cells5 > .cell.colspan4 {
  width: 80%;
}
.grid.condensed .row.cells5 > .cell.colspan5 {
  width: 100%;
}
.grid.condensed .row.cells5 > .cell.offset1 {
  margin-left: 20%;
}
.grid.condensed .row.cells5 > .cell.offset2 {
  margin-left: 40%;
}
.grid.condensed .row.cells5 > .cell.offset3 {
  margin-left: 60%;
}
.grid.condensed .row.cells5 > .cell.offset4 {
  margin-left: 80%;
}
.grid.condensed .row.cells5 > .cell.offset5 {
  margin-left: 100%;
}
.grid.condensed .row.cells6 > .cell {
  width: 16.66666667%;
}
.grid.condensed .row.cells6 > .cell.colspan2 {
  width: 33.33333333%;
}
.grid.condensed .row.cells6 > .cell.colspan3 {
  width: 50%;
}
.grid.condensed .row.cells6 > .cell.colspan4 {
  width: 66.66666667%;
}
.grid.condensed .row.cells6 > .cell.colspan5 {
  width: 83.33333333%;
}
.grid.condensed .row.cells6 > .cell.colspan6 {
  width: 100%;
}
.grid.condensed .row.cells6 > .cell.offset1 {
  margin-left: 16.66666667%;
}
.grid.condensed .row.cells6 > .cell.offset2 {
  margin-left: 33.33333333%;
}
.grid.condensed .row.cells6 > .cell.offset3 {
  margin-left: 50%;
}
.grid.condensed .row.cells6 > .cell.offset4 {
  margin-left: 66.66666667%;
}
.grid.condensed .row.cells6 > .cell.offset5 {
  margin-left: 83.33333333%;
}
.grid.condensed .row.cells6 > .cell.offset6 {
  margin-left: 100%;
}
.grid.condensed .row.cells7 > .cell {
  width: 14.28571429%;
}
.grid.condensed .row.cells7 > .cell.colspan2 {
  width: 28.57142857%;
}
.grid.condensed .row.cells7 > .cell.colspan3 {
  width: 42.85714286%;
}
.grid.condensed .row.cells7 > .cell.colspan4 {
  width: 57.14285714%;
}
.grid.condensed .row.cells7 > .cell.colspan5 {
  width: 71.42857143%;
}
.grid.condensed .row.cells7 > .cell.colspan6 {
  width: 85.71428571%;
}
.grid.condensed .row.cells7 > .cell.colspan7 {
  width: 100%;
}
.grid.condensed .row.cells7 > .cell.offset1 {
  margin-left: 14.28571429%;
}
.grid.condensed .row.cells7 > .cell.offset2 {
  margin-left: 28.57142857%;
}
.grid.condensed .row.cells7 > .cell.offset3 {
  margin-left: 42.85714286%;
}
.grid.condensed .row.cells7 > .cell.offset4 {
  margin-left: 57.14285714%;
}
.grid.condensed .row.cells7 > .cell.offset5 {
  margin-left: 71.42857143%;
}
.grid.condensed .row.cells7 > .cell.offset6 {
  margin-left: 85.71428571%;
}
.grid.condensed .row.cells7 > .cell.offset7 {
  margin-left: 100%;
}
.grid.condensed .row.cells8 > .cell {
  width: 12.5%;
}
.grid.condensed .row.cells8 > .cell.colspan2 {
  width: 25%;
}
.grid.condensed .row.cells8 > .cell.colspan3 {
  width: 37.5%;
}
.grid.condensed .row.cells8 > .cell.colspan4 {
  width: 50%;
}
.grid.condensed .row.cells8 > .cell.colspan5 {
  width: 62.5%;
}
.grid.condensed .row.cells8 > .cell.colspan6 {
  width: 75%;
}
.grid.condensed .row.cells8 > .cell.colspan7 {
  width: 87.5%;
}
.grid.condensed .row.cells8 > .cell.colspan8 {
  width: 100%;
}
.grid.condensed .row.cells8 > .cell.offset1 {
  margin-left: 12.5%;
}
.grid.condensed .row.cells8 > .cell.offset2 {
  margin-left: 25%;
}
.grid.condensed .row.cells8 > .cell.offset3 {
  margin-left: 37.5%;
}
.grid.condensed .row.cells8 > .cell.offset4 {
  margin-left: 50%;
}
.grid.condensed .row.cells8 > .cell.offset5 {
  margin-left: 62.5%;
}
.grid.condensed .row.cells8 > .cell.offset6 {
  margin-left: 75%;
}
.grid.condensed .row.cells8 > .cell.offset7 {
  margin-left: 87.5%;
}
.grid.condensed .row.cells8 > .cell.offset8 {
  margin-left: 100%;
}
.grid.condensed .row.cells9 > .cell {
  width: 11.11111111%;
}
.grid.condensed .row.cells9 > .cell.colspan2 {
  width: 22.22222222%;
}
.grid.condensed .row.cells9 > .cell.colspan3 {
  width: 33.33333333%;
}
.grid.condensed .row.cells9 > .cell.colspan4 {
  width: 44.44444444%;
}
.grid.condensed .row.cells9 > .cell.colspan5 {
  width: 55.55555556%;
}
.grid.condensed .row.cells9 > .cell.colspan6 {
  width: 66.66666667%;
}
.grid.condensed .row.cells9 > .cell.colspan7 {
  width: 77.77777778%;
}
.grid.condensed .row.cells9 > .cell.colspan8 {
  width: 88.88888889%;
}
.grid.condensed .row.cells9 > .cell.colspan9 {
  width: 100%;
}
.grid.condensed .row.cells9 > .cell.offset1 {
  margin-left: 11.11111111%;
}
.grid.condensed .row.cells9 > .cell.offset2 {
  margin-left: 22.22222222%;
}
.grid.condensed .row.cells9 > .cell.offset3 {
  margin-left: 33.33333333%;
}
.grid.condensed .row.cells9 > .cell.offset4 {
  margin-left: 44.44444444%;
}
.grid.condensed .row.cells9 > .cell.offset5 {
  margin-left: 55.55555556%;
}
.grid.condensed .row.cells9 > .cell.offset6 {
  margin-left: 66.66666667%;
}
.grid.condensed .row.cells9 > .cell.offset7 {
  margin-left: 77.77777778%;
}
.grid.condensed .row.cells9 > .cell.offset8 {
  margin-left: 88.88888889%;
}
.grid.condensed .row.cells9 > .cell.offset9 {
  margin-left: 100%;
}
.grid.condensed .row.cells10 > .cell {
  width: 10%;
}
.grid.condensed .row.cells10 > .cell.colspan2 {
  width: 20%;
}
.grid.condensed .row.cells10 > .cell.colspan3 {
  width: 30%;
}
.grid.condensed .row.cells10 > .cell.colspan4 {
  width: 40%;
}
.grid.condensed .row.cells10 > .cell.colspan5 {
  width: 50%;
}
.grid.condensed .row.cells10 > .cell.colspan6 {
  width: 60%;
}
.grid.condensed .row.cells10 > .cell.colspan7 {
  width: 70%;
}
.grid.condensed .row.cells10 > .cell.colspan8 {
  width: 80%;
}
.grid.condensed .row.cells10 > .cell.colspan9 {
  width: 90%;
}
.grid.condensed .row.cells10 > .cell.colspan10 {
  width: 100%;
}
.grid.condensed .row.cells10 > .cell.offset1 {
  margin-left: 10%;
}
.grid.condensed .row.cells10 > .cell.offset2 {
  margin-left: 20%;
}
.grid.condensed .row.cells10 > .cell.offset3 {
  margin-left: 30%;
}
.grid.condensed .row.cells10 > .cell.offset4 {
  margin-left: 40%;
}
.grid.condensed .row.cells10 > .cell.offset5 {
  margin-left: 50%;
}
.grid.condensed .row.cells10 > .cell.offset6 {
  margin-left: 60%;
}
.grid.condensed .row.cells10 > .cell.offset7 {
  margin-left: 70%;
}
.grid.condensed .row.cells10 > .cell.offset8 {
  margin-left: 80%;
}
.grid.condensed .row.cells10 > .cell.offset9 {
  margin-left: 90%;
}
.grid.condensed .row.cells10 > .cell.offset10 {
  margin-left: 100%;
}
.grid.condensed .row.cells11 > .cell {
  width: 9.09090909%;
}
.grid.condensed .row.cells11 > .cell.colspan2 {
  width: 18.18181818%;
}
.grid.condensed .row.cells11 > .cell.colspan3 {
  width: 27.27272727%;
}
.grid.condensed .row.cells11 > .cell.colspan4 {
  width: 36.36363636%;
}
.grid.condensed .row.cells11 > .cell.colspan5 {
  width: 45.45454545%;
}
.grid.condensed .row.cells11 > .cell.colspan6 {
  width: 54.54545455%;
}
.grid.condensed .row.cells11 > .cell.colspan7 {
  width: 63.63636364%;
}
.grid.condensed .row.cells11 > .cell.colspan8 {
  width: 72.72727273%;
}
.grid.condensed .row.cells11 > .cell.colspan9 {
  width: 81.81818182%;
}
.grid.condensed .row.cells11 > .cell.colspan10 {
  width: 90.90909091%;
}
.grid.condensed .row.cells11 > .cell.colspan11 {
  width: 100%;
}
.grid.condensed .row.cells11 > .cell.offset1 {
  margin-left: 9.09090909%;
}
.grid.condensed .row.cells11 > .cell.offset2 {
  margin-left: 18.18181818%;
}
.grid.condensed .row.cells11 > .cell.offset3 {
  margin-left: 27.27272727%;
}
.grid.condensed .row.cells11 > .cell.offset4 {
  margin-left: 36.36363636%;
}
.grid.condensed .row.cells11 > .cell.offset5 {
  margin-left: 45.45454545%;
}
.grid.condensed .row.cells11 > .cell.offset6 {
  margin-left: 54.54545455%;
}
.grid.condensed .row.cells11 > .cell.offset7 {
  margin-left: 63.63636364%;
}
.grid.condensed .row.cells11 > .cell.offset8 {
  margin-left: 72.72727273%;
}
.grid.condensed .row.cells11 > .cell.offset9 {
  margin-left: 81.81818182%;
}
.grid.condensed .row.cells11 > .cell.offset10 {
  margin-left: 90.90909091%;
}
.grid.condensed .row.cells11 > .cell.offset11 {
  margin-left: 100%;
}
.grid.condensed .row.cells12 > .cell {
  width: 8.33333333%;
}
.grid.condensed .row.cells12 > .cell.colspan2 {
  width: 16.66666667%;
}
.grid.condensed .row.cells12 > .cell.colspan3 {
  width: 25%;
}
.grid.condensed .row.cells12 > .cell.colspan4 {
  width: 33.33333333%;
}
.grid.condensed .row.cells12 > .cell.colspan5 {
  width: 41.66666667%;
}
.grid.condensed .row.cells12 > .cell.colspan6 {
  width: 50%;
}
.grid.condensed .row.cells12 > .cell.colspan7 {
  width: 58.33333333%;
}
.grid.condensed .row.cells12 > .cell.colspan8 {
  width: 66.66666667%;
}
.grid.condensed .row.cells12 > .cell.colspan9 {
  width: 75%;
}
.grid.condensed .row.cells12 > .cell.colspan10 {
  width: 83.33333333%;
}
.grid.condensed .row.cells12 > .cell.colspan11 {
  width: 91.66666667%;
}
.grid.condensed .row.cells12 > .cell.colspan12 {
  width: 100%;
}
.grid.condensed .row.cells12 > .cell.offset1 {
  margin-left: 8.33333333%;
}
.grid.condensed .row.cells12 > .cell.offset2 {
  margin-left: 16.66666667%;
}
.grid.condensed .row.cells12 > .cell.offset3 {
  margin-left: 25%;
}
.grid.condensed .row.cells12 > .cell.offset4 {
  margin-left: 33.33333333%;
}
.grid.condensed .row.cells12 > .cell.offset5 {
  margin-left: 41.66666667%;
}
.grid.condensed .row.cells12 > .cell.offset6 {
  margin-left: 50%;
}
.grid.condensed .row.cells12 > .cell.offset7 {
  margin-left: 58.33333333%;
}
.grid.condensed .row.cells12 > .cell.offset8 {
  margin-left: 66.66666667%;
}
.grid.condensed .row.cells12 > .cell.offset9 {
  margin-left: 75%;
}
.grid.condensed .row.cells12 > .cell.offset10 {
  margin-left: 83.33333333%;
}
.grid.condensed .row.cells12 > .cell.offset11 {
  margin-left: 91.66666667%;
}
.grid.condensed .row.cells12 > .cell.offset12 {
  margin-left: 100%;
}
.flex-grid {
  display: block;
  width: 100%;
}
.flex-grid .row {
  display: -webkit-flex;
  display: flex;
}
.flex-grid .row .cell {
  -webkit-flex: 0 0 8.33333333%;
  flex: 0 0 8.33333333%;
}
.flex-grid .row.cell-auto-size .cell {
  -webkit-flex: 1 1 auto;
  flex: 1 1 auto;
}
.flex-grid .row .cell.colspan2 {
  -webkit-flex: 0 0 16.66666666%;
  flex: 0 0 16.66666666%;
}
.flex-grid .row .cell.colspan3 {
  -webkit-flex: 0 0 24.99999999%;
  flex: 0 0 24.99999999%;
}
.flex-grid .row .cell.colspan4 {
  -webkit-flex: 0 0 33.33333332%;
  flex: 0 0 33.33333332%;
}
.flex-grid .row .cell.colspan5 {
  -webkit-flex: 0 0 41.66666665%;
  flex: 0 0 41.66666665%;
}
.flex-grid .row .cell.colspan6 {
  -webkit-flex: 0 0 49.99999998%;
  flex: 0 0 49.99999998%;
}
.flex-grid .row .cell.colspan7 {
  -webkit-flex: 0 0 58.33333331%;
  flex: 0 0 58.33333331%;
}
.flex-grid .row .cell.colspan8 {
  -webkit-flex: 0 0 66.66666664%;
  flex: 0 0 66.66666664%;
}
.flex-grid .row .cell.colspan9 {
  -webkit-flex: 0 0 74.99999997%;
  flex: 0 0 74.99999997%;
}
.flex-grid .row .cell.colspan10 {
  -webkit-flex: 0 0 83.3333333%;
  flex: 0 0 83.3333333%;
}
.flex-grid .row .cell.colspan11 {
  -webkit-flex: 0 0 91.66666663%;
  flex: 0 0 91.66666663%;
}
.flex-grid .row .cell.colspan12 {
  -webkit-flex: 0 0 99.99999996%;
  flex: 0 0 99.99999996%;
}
.flex-grid .row .cell.size1 {
  -webkit-flex: 0 0 8.33333333%;
  flex: 0 0 8.33333333%;
}
.flex-grid .row .cell.size2 {
  -webkit-flex: 0 0 16.66666666%;
  flex: 0 0 16.66666666%;
}
.flex-grid .row .cell.size3 {
  -webkit-flex: 0 0 24.99999999%;
  flex: 0 0 24.99999999%;
}
.flex-grid .row .cell.size4 {
  -webkit-flex: 0 0 33.33333332%;
  flex: 0 0 33.33333332%;
}
.flex-grid .row .cell.size5 {
  -webkit-flex: 0 0 41.66666665%;
  flex: 0 0 41.66666665%;
}
.flex-grid .row .cell.size6 {
  -webkit-flex: 0 0 49.99999998%;
  flex: 0 0 49.99999998%;
}
.flex-grid .row .cell.size7 {
  -webkit-flex: 0 0 58.33333331%;
  flex: 0 0 58.33333331%;
}
.flex-grid .row .cell.size8 {
  -webkit-flex: 0 0 66.66666664%;
  flex: 0 0 66.66666664%;
}
.flex-grid .row .cell.size9 {
  -webkit-flex: 0 0 74.99999997%;
  flex: 0 0 74.99999997%;
}
.flex-grid .row .cell.size10 {
  -webkit-flex: 0 0 83.3333333%;
  flex: 0 0 83.3333333%;
}
.flex-grid .row .cell.size11 {
  -webkit-flex: 0 0 91.66666663%;
  flex: 0 0 91.66666663%;
}
.flex-grid .row .cell.size12 {
  -webkit-flex: 0 0 99.99999996%;
  flex: 0 0 99.99999996%;
}
.flex-grid .row .cell.size-p10 {
  -webkit-flex: 0 0 10%;
  flex: 0 0 10%;
}
.flex-grid .row .cell.size-p20 {
  -webkit-flex: 0 0 20%;
  flex: 0 0 20%;
}
.flex-grid .row .cell.size-p30 {
  -webkit-flex: 0 0 30%;
  flex: 0 0 30%;
}
.flex-grid .row .cell.size-p40 {
  -webkit-flex: 0 0 40%;
  flex: 0 0 40%;
}
.flex-grid .row .cell.size-p50 {
  -webkit-flex: 0 0 50%;
  flex: 0 0 50%;
}
.flex-grid .row .cell.size-p60 {
  -webkit-flex: 0 0 60%;
  flex: 0 0 60%;
}
.flex-grid .row .cell.size-p70 {
  -webkit-flex: 0 0 70%;
  flex: 0 0 70%;
}
.flex-grid .row .cell.size-p80 {
  -webkit-flex: 0 0 80%;
  flex: 0 0 80%;
}
.flex-grid .row .cell.size-p90 {
  -webkit-flex: 0 0 90%;
  flex: 0 0 90%;
}
.flex-grid .row .cell.size-p100 {
  -webkit-flex: 0 0 100%;
  flex: 0 0 100%;
}
.flex-grid .row .cell.size-x100 {
  -webkit-flex: 0 0 100px;
  flex: 0 0 100px;
}
.flex-grid .row .cell.size-x200 {
  -webkit-flex: 0 0 200px;
  flex: 0 0 200px;
}
.flex-grid .row .cell.size-x300 {
  -webkit-flex: 0 0 300px;
  flex: 0 0 300px;
}
.flex-grid .row .cell.size-x400 {
  -webkit-flex: 0 0 400px;
  flex: 0 0 400px;
}
.flex-grid .row .cell.size-x500 {
  -webkit-flex: 0 0 500px;
  flex: 0 0 500px;
}
.flex-grid .row .cell.size-x600 {
  -webkit-flex: 0 0 600px;
  flex: 0 0 600px;
}
.flex-grid .row .cell.size-x700 {
  -webkit-flex: 0 0 700px;
  flex: 0 0 700px;
}
.flex-grid .row .cell.size-x800 {
  -webkit-flex: 0 0 800px;
  flex: 0 0 800px;
}
.flex-grid .row .cell.size-x900 {
  -webkit-flex: 0 0 900px;
  flex: 0 0 900px;
}
.flex-grid .row .cell.size-x1000 {
  -webkit-flex: 0 0 1000px;
  flex: 0 0 1000px;
}
.flex-grid .row .cell.auto-size {
  -webkit-flex: 1 auto;
  flex: 1 auto;
}
.table {
  width: 100%;
  margin: .625rem 0;
}
.table th,
.table td {
  padding: 0.625rem;
}
.table thead {
  border-bottom: 4px solid #999999;
}
.table thead th,
.table thead td {
  cursor: default;
  color: #52677a;
  border-color: transparent;
  text-align: left;
  font-style: normal;
  font-weight: 700;
  line-height: 100%;
}
.table tfoot {
  border-top: 4px solid #999999;
}
.table tfoot th,
.table tfoot td {
  cursor: default;
  color: #52677a;
  border-color: transparent;
  text-align: left;
  font-style: normal;
  font-weight: 700;
  line-height: 100%;
}
.table tbody td {
  padding: 0.625rem 0.85rem;
}
.table .sortable-column {
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.table .sortable-column:after {
  position: absolute;
  content: "";
  width: 1rem;
  height: 1rem;
  left: 100%;
  margin-left: -20px;
  top: 50%;
  margin-top: -0.5rem;
  color: inherit;
  font-size: 1rem;
  line-height: 1;
}
.table .sortable-column.sort-asc,
.table .sortable-column.sort-desc {
  background-color: #eeeeee;
}
.table .sortable-column.sort-asc:after,
.table .sortable-column.sort-desc:after {
  color: #1d1d1d;
}
.table .sortable-column.sort-asc:after {
  content: "\2191";
}
.table .sortable-column.sort-desc:after {
  content: "\2193";
}
.table.sortable-markers-on-left .sortable-column {
  padding-left: 30px;
}
.table.sortable-markers-on-left .sortable-column:before,
.table.sortable-markers-on-left .sortable-column:after {
  left: 0;
  margin-left: 10px;
}
.table tr.selected td {
  background-color: rgba(28, 183, 236, 0.1);
}
.table td.selected {
  background-color: rgba(28, 183, 236, 0.3);
}
.table.striped tbody tr:nth-child(odd) {
  background: #eeeeee;
}
.table.hovered tbody tr:hover {
  background-color: rgba(28, 183, 236, 0.1);
}
.table.cell-hovered tbody td:hover {
  background-color: rgba(28, 183, 236, 0.3);
}
.table.border {
  border: 1px #999999 solid;
}
.table.bordered th,
.table.bordered td {
  border: 1px #999999 solid;
}
.table.bordered thead tr:first-child th,
.table.bordered thead tr:first-child td {
  border-top: none;
}
.table.bordered thead tr:first-child th:first-child,
.table.bordered thead tr:first-child td:first-child {
  border-left: none;
}
.table.bordered thead tr:first-child th:last-child,
.table.bordered thead tr:first-child td:last-child {
  border-right: none;
}
.table.bordered tbody tr:first-child td {
  border-top: none;
}
.table.bordered tbody tr td:first-child {
  border-left: none;
}
.table.bordered tbody tr td:last-child {
  border-right: none;
}
.table.bordered tbody tr:last-child td {
  border-bottom: none;
}
.table .condensed th,
.table .condensed td {
  padding: .3125rem;
}
.table .super-condensed th,
.table .super-condensed td {
  padding: .125rem;
}
.table tbody tr.error {
  background-color: #ce352c;
  color: #ffffff;
}
.table tbody tr.error:hover {
  background-color: #da5a53;
}
.table tbody tr.warning {
  background-color: #fa6800;
  color: #ffffff;
}
.table tbody tr.warning:hover {
  background-color: #ffc194;
}
.table tbody tr.success {
  background-color: #60a917;
  color: #ffffff;
}
.table tbody tr.success:hover {
  background-color: #7ad61d;
}
.table tbody tr.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.table tbody tr.info:hover {
  background-color: #59cde2;
}
.app-bar {
  display: block;
  width: 100%;
  position: relative;
  background-color: #0072c6;
  color: #ffffff;
  height: 3.125rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.app-bar:before,
.app-bar:after {
  display: table;
  content: "";
}
.app-bar:after {
  clear: both;
}
.app-bar .app-bar-element {
  line-height: 3.125rem;
  padding: 0 .625rem;
  font-size: 1rem;
  cursor: pointer;
  color: inherit;
  display: block;
  float: left;
  position: relative;
  vertical-align: middle;
  height: 3.125rem;
}
.app-bar .app-bar-element:hover,
.app-bar .app-bar-element:active {
  background-color: #005696;
}
.app-bar .app-bar-element.branding {
  padding-left: 1rem;
  padding-right: 1rem;
}
.app-bar .app-bar-element .d-menu {
  top: 100%;
  border: 2px solid #005696;
}
.app-bar .app-bar-element .d-menu li:not(.disabled):hover {
  background-color: #eee;
}
.app-bar .app-bar-element .d-menu li:not(.disabled):hover > a {
  color: #1d1d1d;
}
.app-bar .app-bar-element .d-menu .d-menu {
  top: -0.625rem;
  left: 100%;
}
.app-bar .app-bar-element .d-menu .dropdown-toggle:before {
  border-color: #1d1d1d;
}
.app-bar .app-bar-divider {
  display: block;
  float: left;
  line-height: 3.125rem;
  height: 3.125rem;
  width: 1px;
  background-color: #4c9cd7;
  padding: 0;
}
.app-bar .dropdown-toggle:before {
  border-color: #ffffff;
}
.app-bar .app-bar-menu {
  display: block;
  float: left;
  margin: 0;
  padding: 0;
}
.app-bar .app-bar-menu > li,
.app-bar .app-bar-menu > li > a {
  line-height: 3.125rem;
  padding: 0 .625rem;
  font-size: 1rem;
  cursor: pointer;
  color: inherit;
  display: block;
  float: left;
  position: relative;
  vertical-align: middle;
  height: 3.125rem;
}
.app-bar .app-bar-menu > li:hover,
.app-bar .app-bar-menu > li > a:hover,
.app-bar .app-bar-menu > li:active,
.app-bar .app-bar-menu > li > a:active {
  background-color: #005696;
}
.app-bar .app-bar-menu > li.branding,
.app-bar .app-bar-menu > li > a.branding {
  padding-left: 1rem;
  padding-right: 1rem;
}
.app-bar .app-bar-menu > li .d-menu,
.app-bar .app-bar-menu > li > a .d-menu {
  top: 100%;
  border: 2px solid #005696;
}
.app-bar .app-bar-menu > li .d-menu li:not(.disabled):hover,
.app-bar .app-bar-menu > li > a .d-menu li:not(.disabled):hover {
  background-color: #eee;
}
.app-bar .app-bar-menu > li .d-menu li:not(.disabled):hover > a,
.app-bar .app-bar-menu > li > a .d-menu li:not(.disabled):hover > a {
  color: #1d1d1d;
}
.app-bar .app-bar-menu > li .d-menu .d-menu,
.app-bar .app-bar-menu > li > a .d-menu .d-menu {
  top: -0.625rem;
  left: 100%;
}
.app-bar .app-bar-menu > li .d-menu .dropdown-toggle:before,
.app-bar .app-bar-menu > li > a .d-menu .dropdown-toggle:before {
  border-color: #1d1d1d;
}
.app-bar .app-bar-menu > li:before,
.app-bar .app-bar-menu > li > a:before,
.app-bar .app-bar-menu > li:after,
.app-bar .app-bar-menu > li > a:after {
  display: table;
  content: "";
}
.app-bar .app-bar-menu > li:after,
.app-bar .app-bar-menu > li > a:after {
  clear: both;
}
.app-bar .app-bar-menu > li > .input-control.text,
.app-bar .app-bar-menu > li > a > .input-control.text,
.app-bar .app-bar-menu > li > .input-control.password,
.app-bar .app-bar-menu > li > a > .input-control.password {
  margin-top: .55rem;
  font-size: .875rem;
  line-height: 1.8rem;
  display: block;
}
.app-bar .app-bar-menu > li > .input-control.text input,
.app-bar .app-bar-menu > li > a > .input-control.text input,
.app-bar .app-bar-menu > li > .input-control.password input,
.app-bar .app-bar-menu > li > a > .input-control.password input {
  border-color: transparent;
}
.app-bar .app-bar-menu > li > .button,
.app-bar .app-bar-menu > li > a > .button {
  margin-top: -0.15rem;
}
.app-bar .app-bar-menu > li > .image-button,
.app-bar .app-bar-menu > li > a > .image-button {
  margin: 0;
  background-color: transparent;
  color: #ffffff;
  font-size: inherit;
}
.app-bar .app-bar-menu > li > .image-button img.icon,
.app-bar .app-bar-menu > li > a > .image-button img.icon {
  padding: 0;
}
.app-bar .app-bar-menu > li .dropdown-toggle:before,
.app-bar .app-bar-menu > li > a .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.app-bar .app-bar-menu > li .dropdown-toggle.active-toggle:before,
.app-bar .app-bar-menu > li > a .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.app-bar .app-bar-menu > li .d-menu .dropdown-toggle.active-toggle:before,
.app-bar .app-bar-menu > li > a .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.app-bar .app-bar-menu > li.dropdown-toggle,
.app-bar .app-bar-menu > li > a.dropdown-toggle {
  padding-right: 1.5rem;
}
.app-bar .app-bar-menu > li.dropdown-toggle:before,
.app-bar .app-bar-menu > li > a.dropdown-toggle:before {
  border-color: #ffffff;
  display: block;
}
.app-bar .app-bar-menu > li {
  padding: 0;
}
.app-bar .app-bar-menu > li .d-menu {
  top: 100%;
  border: 2px solid #005696;
}
.app-bar .app-bar-menu > li .d-menu li:not(.disabled):hover {
  background-color: #eee;
}
.app-bar .app-bar-menu > li .d-menu li:not(.disabled):hover > a {
  color: #1d1d1d;
}
.app-bar .app-bar-menu > li .d-menu .d-menu {
  top: -0.625rem;
  left: 100%;
}
.app-bar .app-bar-menu > li .d-menu .dropdown-toggle:before {
  border-color: #1d1d1d;
}
.app-bar .app-bar-menu.small-dropdown .d-menu li > a {
  font-size: .8em;
  padding: .325rem 1.2rem .325rem 1.8rem;
}
.app-bar .app-bar-pullbutton {
  float: right;
}
.app-bar .app-bar-pullbutton.automatic {
  display: none;
  float: right;
  color: #fff;
  cursor: pointer;
  font: 2rem sans-serif;
  height: 3.125rem;
  width: 3.125rem;
  line-height: 1.25rem;
  vertical-align: middle;
  text-align: center;
  margin: 0;
}
.app-bar .app-bar-pullbutton.automatic:before {
  content: "\2261";
  position: absolute;
  top: .875rem;
  left: .875rem;
}
.app-bar .app-bar-drop-container {
  position: absolute;
  top: 100%;
  left: 0;
  margin-top: 10px;
  border: 2px solid #005696;
  background: #ffffff;
}
.app-bar .app-bar-drop-container:before {
  content: '';
  position: absolute;
  background-color: #ffffff;
  width: 10px;
  height: 10px;
  border: 2px #005696 solid;
  top: 1px;
  left: 1rem;
  margin: -8px 0;
  border-bottom: none;
  border-right: none;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.app-bar .app-bar-drop-container:before {
  z-index: 0;
}
.app-bar .app-bar-drop-container.place-right {
  right: 0;
  left: auto;
}
.app-bar .app-bar-drop-container.place-right:before {
  left: auto;
  right: 1rem;
}
.app-bar .app-bar-element:before,
.app-bar .app-bar-element:after {
  display: table;
  content: "";
}
.app-bar .app-bar-element:after {
  clear: both;
}
.app-bar .app-bar-element > .input-control.text,
.app-bar .app-bar-element > .input-control.password {
  margin-top: .55rem;
  font-size: .875rem;
  line-height: 1.8rem;
  display: block;
}
.app-bar .app-bar-element > .input-control.text input,
.app-bar .app-bar-element > .input-control.password input {
  border-color: transparent;
}
.app-bar .app-bar-element > .button {
  margin-top: -0.15rem;
}
.app-bar .app-bar-element > .image-button {
  margin: 0;
  background-color: transparent;
  color: #ffffff;
  font-size: inherit;
}
.app-bar .app-bar-element > .image-button img.icon {
  padding: 0;
}
.app-bar.drop-up .app-bar-drop-container {
  top: auto;
  bottom: 3.75rem;
}
.app-bar.drop-up .app-bar-drop-container:before {
  top: auto;
  bottom: 1px;
  -webkit-transform: rotate(225deg);
          transform: rotate(225deg);
}
.app-bar.drop-up .app-bar-menu > li > .d-menu {
  top: auto;
  bottom: 3.125rem;
}
.app-bar.drop-up .app-bar-element > .d-menu {
  top: auto;
  bottom: 3.125rem;
}
.app-bar.drop-up .app-bar-menu li .d-menu .d-menu,
.app-bar.drop-up .app-bar-element .d-menu .d-menu {
  top: auto ;
  bottom: 0;
}
.app-bar .app-bar-element .dropdown-toggle:before,
.app-bar .app-bar-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.app-bar .app-bar-element .dropdown-toggle.active-toggle:before,
.app-bar .app-bar-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.app-bar .app-bar-element .d-menu .dropdown-toggle.active-toggle:before,
.app-bar .app-bar-menu .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.app-bar.fixed-top,
.app-bar.fixed-bottom {
  z-index: 1030;
  position: fixed;
}
.app-bar.fixed-top {
  top: 0;
}
.app-bar.fixed-bottom {
  bottom: 0;
}
.app-bar {
  overflow: visible;
  height: auto;
}
.app-bar .app-bar-pullbutton {
  line-height: 3.125rem;
  padding: 0 .625rem;
  font-size: 1rem;
  cursor: pointer;
  color: inherit;
  display: block;
  float: left;
  position: relative;
  vertical-align: middle;
  height: 3.125rem;
  float: right;
}
.app-bar .app-bar-pullbutton:hover,
.app-bar .app-bar-pullbutton:active {
  background-color: #005696;
}
.app-bar .app-bar-pullbutton.branding {
  padding-left: 1rem;
  padding-right: 1rem;
}
.app-bar .app-bar-pullbutton .d-menu {
  top: 100%;
  border: 2px solid #005696;
}
.app-bar .app-bar-pullbutton .d-menu li:not(.disabled):hover {
  background-color: #eee;
}
.app-bar .app-bar-pullbutton .d-menu li:not(.disabled):hover > a {
  color: #1d1d1d;
}
.app-bar .app-bar-pullbutton .d-menu .d-menu {
  top: -0.625rem;
  left: 100%;
}
.app-bar .app-bar-pullbutton .d-menu .dropdown-toggle:before {
  border-color: #1d1d1d;
}
.app-bar .app-bar-pullbutton:before,
.app-bar .app-bar-pullbutton:after {
  display: table;
  content: "";
}
.app-bar .app-bar-pullbutton:after {
  clear: both;
}
.app-bar .app-bar-pullbutton > .input-control.text,
.app-bar .app-bar-pullbutton > .input-control.password {
  margin-top: .55rem;
  font-size: .875rem;
  line-height: 1.8rem;
  display: block;
}
.app-bar .app-bar-pullbutton > .input-control.text input,
.app-bar .app-bar-pullbutton > .input-control.password input {
  border-color: transparent;
}
.app-bar .app-bar-pullbutton > .button {
  margin-top: -0.15rem;
}
.app-bar .app-bar-pullbutton > .image-button {
  margin: 0;
  background-color: transparent;
  color: #ffffff;
  font-size: inherit;
}
.app-bar .app-bar-pullbutton > .image-button img.icon {
  padding: 0;
}
.app-bar .app-bar-pullbutton .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.app-bar .app-bar-pullbutton .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.app-bar .app-bar-pullbutton .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.app-bar .app-bar-pullbutton {
  display: none;
}
.app-bar .app-bar-pullmenu {
  display: none;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 {
  position: absolute;
  right: 0;
  z-index: 1000;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .app-bar-pullmenubar {
  float: right;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .dropdown-toggle:before {
  border-color: #323232;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li:hover {
  background-color: #0072c6;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li .input-control {
  text-align: center;
  display: block;
  margin: 0.325rem;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li:hover a {
  background-color: #0072c6;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li li:not(:hover) {
  color: #1d1d1d;
}
.app-bar .app-bar-pullmenu.flexstyle-sidebar2 .sidebar2 li li:not(:hover) a {
  background-color: #ffffff;
}
.app-bar .app-bar-pullmenu .app-bar-menu {
  width: 100%;
  border-top: 1px solid #4c9cd7;
  position: relative;
  float: none;
  display: none;
  z-index: 1000 1;
  background-color: #005696;
  clear: both;
}
.app-bar .app-bar-pullmenu .app-bar-menu > li,
.app-bar .app-bar-pullmenu .app-bar-menu > li > a {
  float: none;
}
.app-bar .app-bar-pullmenu .app-bar-menu > li {
  height: auto;
}
.app-bar .app-bar-pullmenu .app-bar-menu li:hover {
  background-color: #0072c6;
}
.app-bar .app-bar-pullmenu .app-bar-menu li:hover a {
  background-color: #0072c6;
  color: #ffffff;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu {
  border: 0;
  border-top: 1px solid #4c9cd7;
  clear: both;
  float: none;
  width: 100%;
  position: relative;
  left: 0;
  box-shadow: none;
  max-width: 100%;
  background-color: #005696;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu li {
  width: 100%;
  background-color: inherit;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu li a {
  padding-left: 20px;
  padding-right: 0;
  background-color: inherit;
  width: 100%;
  color: #ffffff;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu .dropdown-toggle:before {
  border-color: #ffffff;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu .divider {
  background-color: #4c9cd7;
}
.app-bar .app-bar-pullmenu .app-bar-menu .d-menu .d-menu {
  top: 0;
  left: 0;
}
.app-bar > .container {
  padding: 0 !important;
}
.h-menu li:hover > .dropdown-toggle:before,
.v-menu li:hover > .dropdown-toggle:before,
.d-menu li:hover > .dropdown-toggle:before,
.m-menu li:hover > .dropdown-toggle:before {
  border-color: #ffffff;
}
.h-menu {
  text-align: left;
  display: block;
  height: auto;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  background-color: #ffffff;
  border-collapse: separate;
}
.h-menu:before,
.h-menu:after {
  display: table;
  content: "";
}
.h-menu:after {
  clear: both;
}
.h-menu > li {
  display: block;
  float: left;
  position: relative;
}
.h-menu > li:hover {
  background-color: #59cde2;
  color: #ffffff;
}
.h-menu > li:hover > a {
  color: #ffffff;
}
.h-menu > li.no-hovered {
  background-color: inherit;
  color: inherit;
}
.h-menu > li:first-child {
  margin-left: 0;
}
.h-menu > li > a {
  display: block;
  float: left;
  position: relative;
  font-weight: normal;
  color: #727272;
  font-size: .875rem;
  outline: none;
  text-decoration: none;
  padding: 1.125rem 1.625rem;
  border: none;
}
.h-menu > li > a:hover {
  background-color: #59cde2;
  color: #ffffff;
}
.h-menu > li .input-control,
.h-menu > li .button {
  margin-top: 10px;
}
.h-menu > li.active a {
  background-color: #59cde2;
  color: #ffffff;
}
.h-menu > li > .d-menu {
  left: 0;
  top: 100%;
}
.h-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.h-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.f-menu {
  text-align: left;
  display: block;
  height: auto;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  background-color: #ffffff;
  border-collapse: separate;
  display: -webkit-flex;
  display: flex;
}
.f-menu li:hover > .dropdown-toggle:before {
  border-color: #ffffff;
}
.f-menu:before,
.f-menu:after {
  display: table;
  content: "";
}
.f-menu:after {
  clear: both;
}
.f-menu > li {
  display: block;
  float: left;
  position: relative;
}
.f-menu > li:hover {
  background-color: #59cde2;
  color: #ffffff;
}
.f-menu > li:hover > a {
  color: #ffffff;
}
.f-menu > li.no-hovered {
  background-color: inherit;
  color: inherit;
}
.f-menu > li:first-child {
  margin-left: 0;
}
.f-menu > li > a {
  display: block;
  float: left;
  position: relative;
  font-weight: normal;
  color: #727272;
  font-size: .875rem;
  outline: none;
  text-decoration: none;
  padding: 1.125rem 1.625rem;
  border: none;
}
.f-menu > li > a:hover {
  background-color: #59cde2;
  color: #ffffff;
}
.f-menu > li .input-control,
.f-menu > li .button {
  margin-top: 10px;
}
.f-menu > li.active a {
  background-color: #59cde2;
  color: #ffffff;
}
.f-menu > li > .d-menu {
  left: 0;
  top: 100%;
}
.f-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.f-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.f-menu > li > .d-menu {
  left: auto;
}
.f-menu > li {
  text-align: center;
  -webkit-flex: 1 auto;
  flex: 1 auto;
}
.f-menu > li a {
  text-align: center;
  width: 100%;
}
.f-menu > li .d-menu {
  width: 100%;
  max-width: none;
}
.f-menu > li .d-menu li {
  width: 100%;
}
.f-menu > li .d-menu li a {
  width: 100%;
  min-width: 0;
  padding: .75rem 0;
}
.f-menu .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.f-menu.default-dropdown > li .d-menu {
  width: auto;
  min-width: 12.5rem;
}
.f-menu.default-dropdown > li .d-menu a {
  text-align: left;
  padding: .75rem 2rem .75rem 2.5rem;
}
.v-menu {
  text-align: left;
  background: #ffffff;
  max-width: 15.625rem;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
}
.v-menu li {
  display: block;
  float: none;
  position: relative;
}
.v-menu li:before,
.v-menu li:after {
  display: table;
  content: "";
}
.v-menu li:after {
  clear: both;
}
.v-menu li a {
  color: #727272;
  font-size: .875rem;
  display: block;
  float: none;
  padding: .75rem 2rem .75rem 2.5rem;
  text-decoration: none;
  vertical-align: middle;
  position: relative;
  white-space: nowrap;
  min-width: 12.5rem;
  border: none;
}
.v-menu li a img,
.v-menu li a .icon {
  position: absolute;
  left: .875rem;
  top: 50%;
  margin-top: -0.5625rem;
  color: #262626;
  max-height: 1.125rem;
  font-size: 1.125rem;
  display: inline-block;
  margin-right: .3125rem;
  vertical-align: middle;
  text-align: center;
}
.v-menu li.active {
  border-left: 2px solid;
  border-color: #1ba1e2;
}
.v-menu li.active > a {
  background-color: #59cde2;
  color: #ffffff;
  font-weight: bold;
}
.v-menu li:hover {
  text-decoration: none;
  background: #59cde2;
}
.v-menu li:hover > a,
.v-menu li:hover .icon {
  color: #ffffff;
}
.v-menu li a[data-hotkey] {
  padding-right: 3.2rem;
}
.v-menu li a[data-hotkey]:after {
  content: attr(data-hotkey);
  position: absolute;
  right: 1.2rem;
  width: auto;
  font-size: .8em;
}
.v-menu .divider {
  padding: 0;
  height: 1px;
  margin: 0 1px;
  overflow: hidden;
  background-color: #f2f2f2;
}
.v-menu .divider:hover {
  background-color: #f2f2f2;
}
.v-menu.subdown .d-menu {
  min-width: 0;
  position: relative;
  width: 100%;
  left: 0 ;
  right: 0 ;
  top: 100%;
  box-shadow: none;
}
.v-menu .item-block {
  display: block;
  padding: .625rem;
  background-color: #eeeeee;
}
.v-menu .d-menu {
  left: 100%;
  top: -10%;
}
.v-menu .menu-title {
  background-color: #f6f7f8;
  font-size: 12px;
  line-height: 14px;
  padding: 4px 8px;
  border: 0;
  color: #646464;
}
.v-menu .menu-title:first-child {
  margin: 0;
  border-top-width: 0;
}
.v-menu .menu-title:first-child:hover {
  border-top-width: 0;
}
.v-menu .menu-title:hover {
  background-color: #f6f7f8;
  cursor: default;
  border: 0;
}
.v-menu .dropdown-toggle:before {
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
  margin-top: -2px;
}
.v-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.v-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  transition: all 0.3s ease;
}
.v-menu.subdown .dropdown-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -1.25rem;
}
.v-menu.subdown .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.v-menu li.disabled a {
  color: #eeeeee;
}
.v-menu li.disabled:hover {
  background-color: inherit;
  cursor: default;
  border: 0;
}
.v-menu li.disabled:hover a {
  cursor: inherit;
}
.d-menu {
  text-align: left;
  background: #ffffff;
  max-width: 15.625rem;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
  border-collapse: separate;
  position: absolute;
  display: none;
  z-index: 1000;
  left: 0;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.d-menu li:hover > .dropdown-toggle:before {
  border-color: #ffffff;
}
.d-menu li {
  display: block;
  float: none;
  position: relative;
}
.d-menu li:before,
.d-menu li:after {
  display: table;
  content: "";
}
.d-menu li:after {
  clear: both;
}
.d-menu li a {
  color: #727272;
  font-size: .875rem;
  display: block;
  float: none;
  padding: .75rem 2rem .75rem 2.5rem;
  text-decoration: none;
  vertical-align: middle;
  position: relative;
  white-space: nowrap;
  min-width: 12.5rem;
  border: none;
}
.d-menu li a img,
.d-menu li a .icon {
  position: absolute;
  left: .875rem;
  top: 50%;
  margin-top: -0.5625rem;
  color: #262626;
  max-height: 1.125rem;
  font-size: 1.125rem;
  display: inline-block;
  margin-right: .3125rem;
  vertical-align: middle;
  text-align: center;
}
.d-menu li.active {
  border-left: 2px solid;
  border-color: #1ba1e2;
}
.d-menu li.active > a {
  background-color: #59cde2;
  color: #ffffff;
  font-weight: bold;
}
.d-menu li:hover {
  text-decoration: none;
  background: #59cde2;
}
.d-menu li:hover > a,
.d-menu li:hover .icon {
  color: #ffffff;
}
.d-menu li a[data-hotkey] {
  padding-right: 3.2rem;
}
.d-menu li a[data-hotkey]:after {
  content: attr(data-hotkey);
  position: absolute;
  right: 1.2rem;
  width: auto;
  font-size: .8em;
}
.d-menu .divider {
  padding: 0;
  height: 1px;
  margin: 0 1px;
  overflow: hidden;
  background-color: #f2f2f2;
}
.d-menu .divider:hover {
  background-color: #f2f2f2;
}
.d-menu.subdown .d-menu {
  min-width: 0;
  position: relative;
  width: 100%;
  left: 0 ;
  right: 0 ;
  top: 100%;
  box-shadow: none;
}
.d-menu .item-block {
  display: block;
  padding: .625rem;
  background-color: #eeeeee;
}
.d-menu .d-menu {
  left: 100%;
  top: -10%;
}
.d-menu .menu-title {
  background-color: #f6f7f8;
  font-size: 12px;
  line-height: 14px;
  padding: 4px 8px;
  border: 0;
  color: #646464;
}
.d-menu .menu-title:first-child {
  margin: 0;
  border-top-width: 0;
}
.d-menu .menu-title:first-child:hover {
  border-top-width: 0;
}
.d-menu .menu-title:hover {
  background-color: #f6f7f8;
  cursor: default;
  border: 0;
}
.d-menu .dropdown-toggle:before {
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
  margin-top: -2px;
}
.d-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  transition: all 0.3s ease;
}
.d-menu.subdown .dropdown-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -1.25rem;
}
.d-menu.subdown .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.d-menu li.disabled a {
  color: #eeeeee;
}
.d-menu li.disabled:hover {
  background-color: inherit;
  cursor: default;
  border: 0;
}
.d-menu li.disabled:hover a {
  cursor: inherit;
}
.d-menu.context li a {
  font-size: .75rem;
  padding: .3125rem 2rem .3125rem 2.5rem;
}
.d-menu.context li a .icon {
  margin-top: -0.4375rem;
  font-size: .825rem;
  color: inherit;
}
.d-menu.no-min-size li a {
  min-width: 0;
}
.d-menu.full-size li a {
  min-width: 0;
  width: 100%;
}
.d-menu .d-menu {
  left: 100%;
  top: -10%;
}
.d-menu.open {
  display: block ;
}
.d-menu.drop-left {
  left: -100%;
}
.d-menu.drop-up {
  top: auto;
  bottom: 0;
}
.d-menu.context li a {
  font-size: .75rem;
  padding: .3125rem 2rem .3125rem 2.5rem;
}
.d-menu.context li a .icon {
  margin-top: -0.4375rem;
}
.d-menu.place-right {
  left: auto ;
  right: 0;
  width: auto;
}
.h-menu,
.v-menu,
.d-menu {
  border-collapse: separate;
}
.m-menu {
  border-collapse: separate;
  text-align: left;
  display: block;
  height: auto ;
  position: relative;
  background-color: #ffffff;
  color: #1d1d1d;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
  list-style: none inside none;
  margin: 0;
  padding: 0;
}
.m-menu:before,
.m-menu:after {
  display: table;
  content: "";
}
.m-menu:after {
  clear: both;
}
.m-menu > li,
.m-menu .m-menu-item {
  display: block;
  float: left;
  background-color: #ffffff;
}
.m-menu > li:hover,
.m-menu .m-menu-item:hover {
  background-color: #59cde2;
}
.m-menu > li:hover > a,
.m-menu .m-menu-item:hover > a {
  color: #ffffff;
}
.m-menu > li.no-hovered,
.m-menu .m-menu-item.no-hovered {
  background-color: inherit;
  color: inherit;
}
.m-menu > li:first-child,
.m-menu .m-menu-item:first-child {
  margin-left: 0;
}
.m-menu > li > a,
.m-menu .m-menu-item > a {
  display: block;
  float: left;
  position: relative;
  font-weight: normal;
  color: inherit;
  font-size: .875rem;
  outline: none;
  text-decoration: none;
  padding: 1rem 1.625rem;
  border: none;
}
.m-menu > li > a:hover,
.m-menu .m-menu-item > a:hover {
  background-color: inherit;
}
.m-menu > li > a.dropdown-toggle,
.m-menu .m-menu-item > a.dropdown-toggle {
  padding: 1rem 1.625rem 1rem 1.125rem;
}
.m-menu > li.active-container,
.m-menu .m-menu-item.active-container {
  background-color: #59cde2;
}
.m-menu > li.active-container a,
.m-menu .m-menu-item.active-container a {
  color: #ffffff;
}
.m-menu > li.active-container a.dropdown-toggle:before,
.m-menu .m-menu-item.active-container a.dropdown-toggle:before {
  border-color: #ffffff;
}
.m-menu > li .d-menu,
.m-menu .m-menu-item .d-menu {
  left: 0;
  top: 100%;
}
.m-menu .m-menu-container {
  position: absolute;
  left: 0;
  right: 0;
  top: 100%;
  padding: .3125rem;
  font-size: .75rem;
  z-index: 1000;
  background-color: inherit;
}
.m-menu .m-menu-container li,
.m-menu .m-menu-container a {
  color: #ffffff;
}
.m-menu .m-menu-container a {
  text-decoration: underline;
}
.m-menu .m-menu-container li:hover > a,
.m-menu .m-menu-container li.active > a {
  text-decoration: none;
}
.m-menu .m-menu-container {
  display: none;
}
.m-menu .m-menu-container.open {
  display: block;
}
.m-menu > li .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.m-menu > li .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.v-menu.context li a,
.d-menu.context li a {
  font-size: .75rem;
  padding: .3125rem 2rem .3125rem 2.5rem;
}
.v-menu.context li a .icon,
.d-menu.context li a .icon {
  margin-top: -0.4375rem;
  font-size: .825rem;
  color: inherit;
}
.v-menu.no-min-size li a,
.d-menu.no-min-size li a {
  min-width: 0;
}
.v-menu.full-size li a,
.d-menu.full-size li a {
  min-width: 0;
  width: 100%;
}
.horizontal-menu {
  display: block;
  width: 100%;
  color: #1d1d1d;
  position: relative;
  padding: 0;
  margin: 0;
  list-style: none inside none;
}
.horizontal-menu:before,
.horizontal-menu:after {
  display: table;
  content: "";
}
.horizontal-menu:after {
  clear: both;
}
.horizontal-menu > li {
  display: block;
  float: left;
  color: inherit;
  background-color: inherit;
  position: relative;
}
.horizontal-menu > li > a {
  position: relative;
  display: block;
  float: left;
  font-size: 1.4rem;
  color: inherit;
  background-color: inherit;
  padding: .625rem 1.625rem;
  line-height: 1.4rem;
}
.horizontal-menu > li > .d-menu {
  left: 0;
  top: 100%;
}
.horizontal-menu.compact > li > a {
  font-size: .9rem;
  line-height: .9rem;
}
.horizontal-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.horizontal-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.horizontal-menu .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.vertical-menu {
  display: block;
  width: 100%;
  color: #1d1d1d;
  padding: 0;
  margin: 0;
  list-style: none inside none;
  position: relative;
  width: auto;
  float: left;
}
.vertical-menu:before,
.vertical-menu:after {
  display: table;
  content: "";
}
.vertical-menu:after {
  clear: both;
}
.vertical-menu > li {
  display: block;
  float: left;
  color: inherit;
  background-color: inherit;
  position: relative;
}
.vertical-menu > li > a {
  position: relative;
  display: block;
  float: left;
  font-size: 1.4rem;
  color: inherit;
  background-color: inherit;
  padding: .625rem 1.625rem;
  line-height: 1.4rem;
}
.vertical-menu > li > .d-menu {
  left: 0;
  top: 100%;
}
.vertical-menu.compact > li > a {
  font-size: .9rem;
  line-height: .9rem;
}
.vertical-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.vertical-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.vertical-menu .d-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.vertical-menu > li > .d-menu {
  left: auto;
}
.vertical-menu > li {
  float: none;
}
.vertical-menu > li > a {
  float: none;
}
.vertical-menu > li > .d-menu {
  left: 100%;
  top: 0;
}
.vertical-menu.compact > li > a {
  padding-top: .325rem;
  padding-bottom: .325rem;
}
.vertical-menu .dropdown-toggle:before {
  margin-top: -2px;
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
}
.vertical-menu .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.vertical-menu .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  transition: all 0.3s ease;
}
.t-menu {
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
  background-color: #ffffff;
  border-collapse: separate;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.t-menu > li {
  position: relative;
}
.t-menu > li > a {
  display: block;
  padding: 1rem 1.2rem;
  border-bottom: 1px #eeeeee solid;
  position: relative;
}
.t-menu > li > a .icon {
  width: 1.5rem;
  height: 1.5rem;
  font-size: 1.5rem;
}
.t-menu > li:hover > a {
  background-color: #1ba1e2;
  color: #ffffff;
}
.t-menu > li:last-child a {
  border-bottom: 0;
}
.t-menu.compact > li > a {
  padding: .5rem .7rem;
}
.t-menu.compact > li > a .icon {
  width: 1rem;
  height: 1rem;
  font-size: 1rem;
}
.t-menu li .t-menu {
  position: absolute;
  left: 100%;
  margin-left: .3125rem ;
  top: 0;
  float: none;
}
.t-menu li .t-menu > li {
  float: left;
  display: block;
}
.t-menu li .t-menu > li > a {
  float: left;
  display: block;
}
.t-menu .t-menu.horizontal .t-menu {
  left: 0 ;
  top: 100% ;
  margin-top: .3125rem ;
  margin-left: 0 ;
}
.t-menu .dropdown-toggle:after {
  content: "";
  background-color: transparent;
  position: absolute;
  left: auto;
  top: auto;
  bottom: 0;
  right: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 0 0 8px 8px;
  border-color: transparent transparent #1ba1e2 transparent;
  -webkit-transform: rotate(0);
          transform: rotate(0);
}
.t-menu .dropdown-toggle:before {
  display: none;
}
.t-menu > li:hover > .dropdown-toggle:after {
  border-color: transparent transparent #1b6eae transparent;
}
.t-menu.horizontal {
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
  background-color: #ffffff;
  border-collapse: separate;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.t-menu.horizontal > li {
  position: relative;
}
.t-menu.horizontal > li > a {
  display: block;
  padding: 1rem 1.2rem;
  border-bottom: 1px #eeeeee solid;
  position: relative;
}
.t-menu.horizontal > li > a .icon {
  width: 1.5rem;
  height: 1.5rem;
  font-size: 1.5rem;
}
.t-menu.horizontal > li:hover > a {
  background-color: #1ba1e2;
  color: #ffffff;
}
.t-menu.horizontal > li:last-child a {
  border-bottom: 0;
}
.t-menu.horizontal.compact > li > a {
  padding: .5rem .7rem;
}
.t-menu.horizontal.compact > li > a .icon {
  width: 1rem;
  height: 1rem;
  font-size: 1rem;
}
.t-menu.horizontal li .t-menu {
  position: absolute;
  left: 100%;
  margin-left: .3125rem ;
  top: 0;
  float: none;
}
.t-menu.horizontal li .t-menu > li {
  float: left;
  display: block;
}
.t-menu.horizontal li .t-menu > li > a {
  float: left;
  display: block;
}
.t-menu.horizontal .t-menu.horizontal .t-menu {
  left: 0 ;
  top: 100% ;
  margin-top: .3125rem ;
  margin-left: 0 ;
}
.t-menu.horizontal .dropdown-toggle:after {
  content: "";
  background-color: transparent;
  position: absolute;
  left: auto;
  top: auto;
  bottom: 0;
  right: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 0 0 8px 8px;
  border-color: transparent transparent #1ba1e2 transparent;
  -webkit-transform: rotate(0);
          transform: rotate(0);
}
.t-menu.horizontal .dropdown-toggle:before {
  display: none;
}
.t-menu.horizontal > li:hover > .dropdown-toggle:after {
  border-color: transparent transparent #1b6eae transparent;
}
.t-menu.horizontal > li {
  display: block;
  float: left;
}
.t-menu.horizontal > li > a {
  display: block;
  float: left;
  border-right: 1px #eeeeee solid;
  border-bottom: 0;
}
.t-menu.horizontal > li:last-child > a {
  border-right: 0;
}
.t-menu.horizontal .t-menu:not(.horizontal) {
  left: 0;
  top: 100% ;
  margin-top: .3125rem ;
  margin-left: 0 ;
}
.t-menu.horizontal .t-menu:not(.horizontal) .t-menu.horizontal {
  left: 100% ;
  margin-left: .3125rem ;
  top: 0 ;
  float: left;
}
.horizontal-menu > li > .d-menu,
.h-menu > li > .d-menu,
.m-menu > li > .d-menu {
  left: auto;
}
[data-role="dropdown"]:not(.open),
[data-role="dropdown"]:not(.keep-open) {
  display: none;
  position: absolute;
  z-index: 1000;
}
.button {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
}
.button.default {
  background-color: #008287;
  color: #fff;
}
.button:hover {
  border-color: #787878;
}
.button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.button:focus {
  outline: 0;
}
.button:disabled,
.button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.button * {
  color: inherit;
}
.button *:hover {
  color: inherit;
}
.button.rounded {
  border-radius: .325rem;
}
.button > [class*=mif-] {
  vertical-align: middle;
}
.button.button-shadow {
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.3);
}
.button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.round-button,
.cycle-button,
.square-button {
  padding: 0 1rem;
  height: 2.125rem;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  width: 2.125rem;
  min-width: 2.125rem;
  padding: 0 ;
  border-radius: 50%;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
}
.round-button.default,
.cycle-button.default,
.square-button.default {
  background-color: #008287;
  color: #fff;
}
.round-button:hover,
.cycle-button:hover,
.square-button:hover {
  border-color: #787878;
}
.round-button:active,
.cycle-button:active,
.square-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.round-button:focus,
.cycle-button:focus,
.square-button:focus {
  outline: 0;
}
.round-button:disabled,
.cycle-button:disabled,
.square-button:disabled,
.round-button.disabled,
.cycle-button.disabled,
.square-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.round-button *,
.cycle-button *,
.square-button * {
  color: inherit;
}
.round-button *:hover,
.cycle-button *:hover,
.square-button *:hover {
  color: inherit;
}
.round-button.rounded,
.cycle-button.rounded,
.square-button.rounded {
  border-radius: .325rem;
}
.round-button > [class*=mif-],
.cycle-button > [class*=mif-],
.square-button > [class*=mif-] {
  vertical-align: middle;
}
.round-button img,
.cycle-button img,
.square-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.round-button.loading-pulse,
.cycle-button.loading-pulse,
.square-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.round-button.loading-pulse:before,
.cycle-button.loading-pulse:before,
.square-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.round-button.loading-pulse.lighten:before,
.cycle-button.loading-pulse.lighten:before,
.square-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.round-button.loading-cube,
.cycle-button.loading-cube,
.square-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.round-button.loading-cube:before,
.cycle-button.loading-cube:before,
.square-button.loading-cube:before,
.round-button.loading-cube:after,
.cycle-button.loading-cube:after,
.square-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.round-button.loading-cube:after,
.cycle-button.loading-cube:after,
.square-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.round-button.loading-cube.lighten:before,
.cycle-button.loading-cube.lighten:before,
.square-button.loading-cube.lighten:before,
.round-button.loading-cube.lighten:after,
.cycle-button.loading-cube.lighten:after,
.square-button.loading-cube.lighten:after {
  background-color: #fff;
}
.round-button.dropdown-toggle,
.cycle-button.dropdown-toggle,
.square-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.round-button.dropdown-toggle.drop-marker-light:before,
.cycle-button.dropdown-toggle.drop-marker-light:before,
.square-button.dropdown-toggle.drop-marker-light:before,
.round-button.dropdown-toggle.drop-marker-light:after,
.cycle-button.dropdown-toggle.drop-marker-light:after,
.square-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.round-button.primary,
.cycle-button.primary,
.square-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.round-button.primary:active,
.cycle-button.primary:active,
.square-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.round-button.success,
.cycle-button.success,
.square-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.round-button.success:active,
.cycle-button.success:active,
.square-button.success:active {
  background: #128023;
  color: #ffffff;
}
.round-button.danger,
.cycle-button.danger,
.square-button.danger,
.round-button.alert,
.cycle-button.alert,
.square-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.round-button.danger:active,
.cycle-button.danger:active,
.square-button.danger:active,
.round-button.alert:active,
.cycle-button.alert:active,
.square-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.round-button.info,
.cycle-button.info,
.square-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.round-button.info:active,
.cycle-button.info:active,
.square-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.round-button.warning,
.cycle-button.warning,
.square-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.round-button.warning:active,
.cycle-button.warning:active,
.square-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.round-button.link,
.cycle-button.link,
.square-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.round-button.link:hover,
.cycle-button.link:hover,
.square-button.link:hover,
.round-button.link:active,
.cycle-button.link:active,
.square-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.square-button {
  border-radius: 0;
}
a.button,
a.round-button,
a.square-button {
  color: inherit;
}
a.button:hover,
a.round-button:hover,
a.square-button:hover {
  text-decoration: none;
}
.button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.button.loading-pulse.lighten:before {
  background-color: #fff;
}
.button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.button.loading-cube:before,
.button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.button.loading-cube.lighten:before,
.button.loading-cube.lighten:after {
  background-color: #fff;
}
.command-button {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  height: auto;
  text-align: left;
  font-size: 1.325rem;
  padding-left: 4rem;
  padding-top: 8px;
  padding-bottom: 4px;
}
.command-button.default {
  background-color: #008287;
  color: #fff;
}
.command-button:hover {
  border-color: #787878;
}
.command-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.command-button:focus {
  outline: 0;
}
.command-button:disabled,
.command-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.command-button * {
  color: inherit;
}
.command-button *:hover {
  color: inherit;
}
.command-button.rounded {
  border-radius: .325rem;
}
.command-button > [class*=mif-] {
  vertical-align: middle;
}
.command-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.command-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.command-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.command-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.command-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.command-button.loading-cube:before,
.command-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.command-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.command-button.loading-cube.lighten:before,
.command-button.loading-cube.lighten:after {
  background-color: #fff;
}
.command-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.command-button.dropdown-toggle.drop-marker-light:before,
.command-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.command-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.command-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.command-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.command-button.success:active {
  background: #128023;
  color: #ffffff;
}
.command-button.danger,
.command-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.command-button.danger:active,
.command-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.command-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.command-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.command-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.command-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.command-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.command-button.link:hover,
.command-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.command-button small {
  display: block;
  font-size: .8rem;
  line-height: 1.625rem;
  margin-top: -0.3125rem;
}
.command-button .icon {
  left: 1rem;
  top: 50%;
  margin-top: -1rem;
  position: absolute;
  font-size: 2rem;
  height: 2rem;
  width: 2rem;
  margin-right: .625rem;
}
.command-button.icon-right {
  padding-left: 1rem;
  padding-right: 4rem;
}
.command-button.icon-right .icon {
  left: auto;
  right: 0;
}
.image-button {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  border: 0;
  padding-left: 2.75rem;
  background-color: #eeeeee;
}
.image-button.default {
  background-color: #008287;
  color: #fff;
}
.image-button:hover {
  border-color: #787878;
}
.image-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.image-button:focus {
  outline: 0;
}
.image-button:disabled,
.image-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.image-button * {
  color: inherit;
}
.image-button *:hover {
  color: inherit;
}
.image-button.rounded {
  border-radius: .325rem;
}
.image-button > [class*=mif-] {
  vertical-align: middle;
}
.image-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.image-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.image-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.image-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.image-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.image-button.loading-cube:before,
.image-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.image-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.image-button.loading-cube.lighten:before,
.image-button.loading-cube.lighten:after {
  background-color: #fff;
}
.image-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.image-button.dropdown-toggle.drop-marker-light:before,
.image-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.image-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.image-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.image-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.image-button.success:active {
  background: #128023;
  color: #ffffff;
}
.image-button.danger,
.image-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.image-button.danger:active,
.image-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.image-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.image-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.image-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.image-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.image-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.image-button.link:hover,
.image-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.image-button:active {
  background-color: #e1e1e1;
}
.image-button .icon {
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 2.125rem;
  padding: .525rem;
  font-size: 1rem;
  background-color: #999999;
  text-align: center;
  vertical-align: middle;
}
.image-button img.icon {
  padding-top: .525rem;
}
.image-button.icon-right {
  padding-left: 1rem;
  padding-right: 2.75rem;
}
.image-button.icon-right .icon {
  right: 0;
  left: auto;
}
a.image-button {
  padding-top: .525rem;
}
.image-button {
  line-height: 100%;
}
.image-button.small-button {
  padding-left: 2rem;
  padding-right: 1rem;
}
.image-button.small-button .icon {
  width: 1.625rem;
  font-size: .875rem;
  height: 100%;
  padding: .4rem;
}
.image-button.small-button.icon-right {
  padding-left: .625rem;
  padding-right: 2rem;
}
.shortcut-button {
  padding: 0 1rem;
  height: 2.125rem;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  width: 5.75rem;
  height: 5.75rem;
  text-align: center;
  font-size: .75rem;
}
.shortcut-button.default {
  background-color: #008287;
  color: #fff;
}
.shortcut-button:hover {
  border-color: #787878;
}
.shortcut-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.shortcut-button:focus {
  outline: 0;
}
.shortcut-button:disabled,
.shortcut-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.shortcut-button * {
  color: inherit;
}
.shortcut-button *:hover {
  color: inherit;
}
.shortcut-button.rounded {
  border-radius: .325rem;
}
.shortcut-button > [class*=mif-] {
  vertical-align: middle;
}
.shortcut-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.shortcut-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.shortcut-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.shortcut-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.shortcut-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.shortcut-button.loading-cube:before,
.shortcut-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.shortcut-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.shortcut-button.loading-cube.lighten:before,
.shortcut-button.loading-cube.lighten:after {
  background-color: #fff;
}
.shortcut-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.shortcut-button.dropdown-toggle.drop-marker-light:before,
.shortcut-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.shortcut-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.shortcut-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.shortcut-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.shortcut-button.success:active {
  background: #128023;
  color: #ffffff;
}
.shortcut-button.danger,
.shortcut-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.shortcut-button.danger:active,
.shortcut-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.shortcut-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.shortcut-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.shortcut-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.shortcut-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.shortcut-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.shortcut-button.link:hover,
.shortcut-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.shortcut-button .icon,
.shortcut-button .title {
  display: block;
  color: inherit;
}
.shortcut-button .icon {
  font-size: 1.7rem;
  height: 1.7rem;
  width: 1.7rem;
  margin: .875rem auto;
}
.shortcut-button .badge {
  color: inherit;
  position: absolute;
  top: 0;
  right: 0;
  font-size: .7rem;
  line-height: 1rem;
  padding: 0 .225rem;
}
a.shortcut-button {
  padding-top: 10px;
}
.button.dropdown-toggle {
  padding-right: 1.625rem;
}
.button.dropdown-toggle.drop-marker-light:before,
.button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.nav-button {
  width: 2rem;
  height: 2rem;
  background-size: 1rem 1rem;
  background: center center no-repeat;
  text-indent: -9999px;
  border: 0;
  display: inline-block;
  cursor: pointer;
  z-index: 2;
  position: relative;
}
.nav-button span {
  position: absolute;
  top: 1.2rem;
  left: .5rem;
  width: 1.2rem;
  height: 2px;
  margin: 0 0 0;
  background: #1d1d1d;
  -webkit-transform: rotate(0);
          transform: rotate(0);
  transition: all 0.3s linear;
}
.nav-button span:before,
.nav-button span:after {
  content: '';
  position: absolute;
  top: -0.5rem;
  right: 0;
  width: 1.2rem;
  height: 2px;
  background: #1d1d1d;
  -webkit-transform: rotate(0);
          transform: rotate(0);
  transition: all 0.3s linear;
}
.nav-button span:after {
  top: .5rem;
}
.nav-button.transform span {
  -webkit-transform: rotate(180deg);
          transform: rotate(180deg);
  background: #1d1d1d;
}
.nav-button.transform span:before,
.nav-button.transform span:after {
  content: '';
  top: -5px;
  right: 0;
  width: .75rem;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.nav-button.transform span:after {
  top: 5px;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.nav-button.light span {
  background-color: #ffffff;
}
.nav-button.light span:before,
.nav-button.light span:after {
  background-color: #ffffff;
}
.group-of-buttons .button.active,
.group-of-buttons .toolbar-button.active {
  background-color: #00ccff;
  color: #ffffff;
}
.group-of-buttons .button:active,
.group-of-buttons .toolbar-button:active {
  background-color: #1ba1e2;
  color: #ffffff;
}
.split-button,
.dropdown-button {
  display: inline-block;
  position: relative;
  vertical-align: middle;
}
.split-button:before,
.dropdown-button:before,
.split-button:after,
.dropdown-button:after {
  display: table;
  content: "";
}
.split-button:after,
.dropdown-button:after {
  clear: both;
}
.split-button .button,
.dropdown-button .button,
.split-button .split,
.dropdown-button .split {
  display: block;
  float: left;
}
.split-button .split,
.dropdown-button .split {
  padding: 0 1rem 0 .625rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle ;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  outline: none;
  font-size: .875rem;
  position: relative;
  margin: .15625rem 0;
}
.split-button .split:hover,
.dropdown-button .split:hover {
  background-color: #eeeeee;
  border-color: #787878;
}
.split-button .split.dropdown-toggle:before,
.dropdown-button .split.dropdown-toggle:before {
  transition: all 0.3s ease;
}
.split-button .split.dropdown-toggle.active-toggle:before,
.dropdown-button .split.dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.split-button .split-content,
.dropdown-button .split-content {
  position: absolute;
  top: 100%;
}
.split.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.split.primary:active {
  background: #1b6eae;
}
.split.primary:hover {
  background: #59cde2;
  border-color: #59cde2;
}
.split.primary.dropdown-toggle:before {
  border-color: #ffffff;
}
.split.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.split.success:active {
  background: #128023;
}
.split.success:hover {
  background: #7ad61d;
  border-color: #7ad61d;
}
.split.success.dropdown-toggle:before {
  border-color: #ffffff;
}
.split.danger {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.split.danger:active {
  background: #9a1616;
}
.split.danger:hover {
  background: #da5a53;
  border-color: #da5a53;
}
.split.danger.dropdown-toggle:before {
  border-color: #ffffff;
}
.split.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.split.info:active {
  background: #1ba1e2;
}
.split.info:hover {
  background: #4390df;
  border-color: #4390df;
}
.split.info.dropdown-toggle:before {
  border-color: #ffffff;
}
.split.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.split.warning:active {
  background: #bf5a15;
}
.split.warning:hover {
  background: #ffc194;
  border-color: #ffc194;
}
.split.warning.dropdown-toggle:before {
  border-color: #ffffff;
}
.mini-button,
.small-button,
.large-button,
.big-button {
  line-height: 100%;
}
.mini-button {
  font-size: .6rem;
  padding: .2rem .625rem;
  height: 1.4rem;
}
.small-button {
  font-size: .7rem;
  padding: 0 .625rem;
  height: 1.7rem;
}
.large-button {
  height: 2.55rem;
  font-size: 1.05rem;
}
.big-button {
  height: 3.125rem;
  font-size: 1.2rem;
}
.round-button.mini-button,
.cycle-button.mini-button,
.square-button.mini-button {
  width: 1.4rem;
  height: 1.4rem;
  font-size: .6rem;
  line-height: 1;
  padding: 0;
  min-width: 0;
}
.round-button.small-button,
.cycle-button.small-button,
.square-button.small-button {
  width: 1.7rem;
  height: 1.7rem;
  font-size: .7rem;
  line-height: 1.68rem;
  padding: 0;
  min-width: 0;
}
.round-button.large-button,
.cycle-button.large-button,
.square-button.large-button {
  font-size: 1.05rem;
  line-height: 1;
  width: 2.55rem;
  height: 2.55rem;
}
.round-button.big-button,
.cycle-button.big-button,
.square-button.big-button {
  font-size: 1.2rem;
  line-height: 1;
  width: 3.125rem;
  height: 3.125rem;
}
.button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.button.success:active {
  background: #128023;
  color: #ffffff;
}
.button.danger,
.button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.button.danger:active,
.button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.button.link:hover,
.button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
a.button,
span.button,
div.button,
a.round-button,
span.round-button,
div.round-button,
a.cycle-button,
span.cycle-button,
div.cycle-button,
a.square-button,
span.square-button,
div.square-button {
  padding-top: .53125rem;
}
a.button.big-button,
span.button.big-button,
div.button.big-button,
a.round-button.big-button,
span.round-button.big-button,
div.round-button.big-button,
a.cycle-button.big-button,
span.cycle-button.big-button,
div.cycle-button.big-button,
a.square-button.big-button,
span.square-button.big-button,
div.square-button.big-button {
  padding-top: .78125rem;
}
.dropdown-button button.dropdown-toggle:before {
  transition: all 0.3s ease;
}
.dropdown-button button.dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.shortcut-button[data-hotkey]::after {
  position: absolute;
  content: attr(data-hotkey);
  font-size: .625rem;
  bottom: 0;
  right: 0;
  color: #999999;
}
.shortcut-button[data-hotkey].no-hotkey-display::after {
  display: none;
}
.toolbar {
  position: relative;
}
.toolbar:before,
.toolbar:after {
  display: table;
  content: "";
}
.toolbar:after {
  clear: both;
}
.toolbar-section {
  position: relative;
  padding-left: .5725rem;
  margin: .125rem;
  float: left;
  width: auto;
}
.toolbar-section.no-divider:before {
  display: none;
}
.toolbar-section:before {
  position: absolute;
  content: "";
  width: .325rem;
  height: 100%;
  left: 0;
  background-color: #eeeeee;
  cursor: move;
}
.toolbar .toolbar-button {
  padding: 0 1rem;
  height: 2.125rem;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  width: 2.125rem;
  min-width: 2.125rem;
  padding: 0 ;
  border-radius: 50%;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
  border-radius: 0;
  margin: 0;
}
.toolbar .toolbar-button.default {
  background-color: #008287;
  color: #fff;
}
.toolbar .toolbar-button:hover {
  border-color: #787878;
}
.toolbar .toolbar-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.toolbar .toolbar-button:focus {
  outline: 0;
}
.toolbar .toolbar-button:disabled,
.toolbar .toolbar-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.toolbar .toolbar-button * {
  color: inherit;
}
.toolbar .toolbar-button *:hover {
  color: inherit;
}
.toolbar .toolbar-button.rounded {
  border-radius: .325rem;
}
.toolbar .toolbar-button > [class*=mif-] {
  vertical-align: middle;
}
.toolbar .toolbar-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.toolbar .toolbar-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.toolbar .toolbar-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.toolbar .toolbar-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.toolbar .toolbar-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.toolbar .toolbar-button.loading-cube:before,
.toolbar .toolbar-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.toolbar .toolbar-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.toolbar .toolbar-button.loading-cube.lighten:before,
.toolbar .toolbar-button.loading-cube.lighten:after {
  background-color: #fff;
}
.toolbar .toolbar-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.toolbar .toolbar-button.dropdown-toggle.drop-marker-light:before,
.toolbar .toolbar-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.toolbar .toolbar-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.toolbar .toolbar-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.toolbar .toolbar-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.toolbar .toolbar-button.success:active {
  background: #128023;
  color: #ffffff;
}
.toolbar .toolbar-button.danger,
.toolbar .toolbar-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.toolbar .toolbar-button.danger:active,
.toolbar .toolbar-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.toolbar .toolbar-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.toolbar .toolbar-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.toolbar .toolbar-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.toolbar .toolbar-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.toolbar .toolbar-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.toolbar .toolbar-button.link:hover,
.toolbar .toolbar-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.toolbar .toolbar-button.mini-button {
  width: 1.4rem;
  height: 1.4rem;
  font-size: .6rem;
  line-height: 1;
  padding: 0;
  min-width: 0;
}
.toolbar .toolbar-button.small-button {
  width: 1.7rem;
  height: 1.7rem;
  font-size: .7rem;
  line-height: 1.68rem;
  padding: 0;
  min-width: 0;
}
.toolbar .toolbar-button.large-button {
  font-size: 1.05rem;
  line-height: 1;
  width: 2.55rem;
  height: 2.55rem;
}
.toolbar .toolbar-button.big-button {
  font-size: 1.2rem;
  line-height: 1;
  width: 3.125rem;
  height: 3.125rem;
}
.toolbar-group,
.toolbar-section {
  display: inline-block;
}
.toolbar-group.condensed:before,
.toolbar-section.condensed:before,
.toolbar-group.condensed:after,
.toolbar-section.condensed:after {
  display: table;
  content: "";
}
.toolbar-group.condensed:after,
.toolbar-section.condensed:after {
  clear: both;
}
.toolbar-group.condensed .button,
.toolbar-section.condensed .button,
.toolbar-group.condensed .toolbar-button,
.toolbar-section.condensed .toolbar-button {
  display: block;
  float: left;
}
.toolbar-group-check .toolbar-button.checked {
  background-color: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.toolbar-group-radio .toolbar-button.checked {
  background-color: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.toolbar.rounded > .toolbar-button,
.toolbar.rounded > .toolbar-section .toolbar-button {
  border-radius: .3125rem;
}
.toolbar.rounded .toolbar-section:before {
  border-radius: .3125rem;
}
.v-toolbar {
  position: relative;
  float: left;
}
.v-toolbar:before,
.v-toolbar:after {
  display: table;
  content: "";
}
.v-toolbar:after {
  clear: both;
}
.v-toolbar .toolbar-button {
  padding: 0 1rem;
  height: 2.125rem;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  width: 2.125rem;
  min-width: 2.125rem;
  padding: 0 ;
  border-radius: 50%;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
  border-radius: 0;
  margin: 0;
}
.v-toolbar .toolbar-button.default {
  background-color: #008287;
  color: #fff;
}
.v-toolbar .toolbar-button:hover {
  border-color: #787878;
}
.v-toolbar .toolbar-button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.v-toolbar .toolbar-button:focus {
  outline: 0;
}
.v-toolbar .toolbar-button:disabled,
.v-toolbar .toolbar-button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.v-toolbar .toolbar-button * {
  color: inherit;
}
.v-toolbar .toolbar-button *:hover {
  color: inherit;
}
.v-toolbar .toolbar-button.rounded {
  border-radius: .325rem;
}
.v-toolbar .toolbar-button > [class*=mif-] {
  vertical-align: middle;
}
.v-toolbar .toolbar-button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.v-toolbar .toolbar-button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.v-toolbar .toolbar-button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.v-toolbar .toolbar-button.loading-pulse.lighten:before {
  background-color: #fff;
}
.v-toolbar .toolbar-button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.v-toolbar .toolbar-button.loading-cube:before,
.v-toolbar .toolbar-button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.v-toolbar .toolbar-button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.v-toolbar .toolbar-button.loading-cube.lighten:before,
.v-toolbar .toolbar-button.loading-cube.lighten:after {
  background-color: #fff;
}
.v-toolbar .toolbar-button.dropdown-toggle {
  padding-right: 1.625rem;
}
.v-toolbar .toolbar-button.dropdown-toggle.drop-marker-light:before,
.v-toolbar .toolbar-button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.v-toolbar .toolbar-button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.v-toolbar .toolbar-button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.v-toolbar .toolbar-button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.v-toolbar .toolbar-button.success:active {
  background: #128023;
  color: #ffffff;
}
.v-toolbar .toolbar-button.danger,
.v-toolbar .toolbar-button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.v-toolbar .toolbar-button.danger:active,
.v-toolbar .toolbar-button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.v-toolbar .toolbar-button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.v-toolbar .toolbar-button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.v-toolbar .toolbar-button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.v-toolbar .toolbar-button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.v-toolbar .toolbar-button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.v-toolbar .toolbar-button.link:hover,
.v-toolbar .toolbar-button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.v-toolbar .toolbar-button.mini-button {
  width: 1.4rem;
  height: 1.4rem;
  font-size: .6rem;
  line-height: 1;
  padding: 0;
  min-width: 0;
}
.v-toolbar .toolbar-button.small-button {
  width: 1.7rem;
  height: 1.7rem;
  font-size: .7rem;
  line-height: 1.68rem;
  padding: 0;
  min-width: 0;
}
.v-toolbar .toolbar-button.large-button {
  font-size: 1.05rem;
  line-height: 1;
  width: 2.55rem;
  height: 2.55rem;
}
.v-toolbar .toolbar-button.big-button {
  font-size: 1.2rem;
  line-height: 1;
  width: 3.125rem;
  height: 3.125rem;
}
.v-toolbar.rounded > .toolbar-button,
.v-toolbar.rounded > .toolbar-section .toolbar-button {
  border-radius: .3125rem;
}
.v-toolbar.rounded .toolbar-section:before {
  border-radius: .3125rem;
}
.v-toolbar .toolbar-section {
  padding-left: 0;
  padding-top: .5725rem;
}
.v-toolbar .toolbar-section:before {
  width: 100%;
  top: 0;
  height: .325rem;
}
.v-toolbar .toolbar-button {
  display: block;
  margin-bottom: .25rem;
}
.v-toolbar.no-divider .toolbar-section:before {
  display: none;
}
.pagination {
  display: block;
  margin: .625rem 0;
}
.pagination:before,
.pagination:after {
  display: table;
  content: "";
}
.pagination:after {
  clear: both;
}
.pagination > .item {
  display: block;
  float: left;
  margin-left: .0652rem;
  padding: 0.25rem .625rem;
  background-color: #ffffff;
  cursor: pointer;
  border: 1px #eeeeee solid;
  text-align: center;
  font-size: .875rem;
  color: #1d1d1d;
}
.pagination > .item:first-child {
  margin-left: 0 ;
}
.pagination > .item.current,
.pagination > .item.active {
  background-color: #1ba1e2;
  border-color: #59cde2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.pagination > .item:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.pagination > .item:disabled,
.pagination > .item.disabled {
  cursor: default;
  background-color: #eeeeee;
  border-color: #eeeeee;
  color: #999999;
}
.pagination > .item.spaces {
  border: 0;
  cursor: default;
  color: #1d1d1d;
}
.pagination > .item.spaces:hover {
  background-color: inherit ;
  color: #1d1d1d;
}
.pagination.rounded > .item {
  border-radius: .3125rem;
}
.pagination.cycle > .item {
  width: 28px;
  height: 28px;
  border-radius: 50%;
  font-size: .7rem;
  padding: .4375rem 0;
}
.pagination.no-border > .item {
  border: 0;
}
.pagination.no-border > .item:hover {
  color: #59cde2;
  background-color: transparent ;
}
.pagination.no-border > .item:disabled,
.pagination.no-border > .item.disabled {
  cursor: default;
  background-color: transparent;
  border-color: transparent;
  color: #999999;
}
.pagination.no-border > .item.current:hover,
.pagination.no-border > .item.active:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.breadcrumbs {
  padding: 0;
  margin: 0;
  list-style: none inside none;
  background-color: #ffffff;
  color: #999;
  padding: 1rem;
}
.breadcrumbs > li {
  display: inline-block;
  color: inherit;
  margin: 0 1rem 0 0;
  position: relative;
  vertical-align: middle;
}
.breadcrumbs > li:before,
.breadcrumbs > li:after {
  display: block;
  position: absolute;
  vertical-align: middle;
  color: transparent;
  font-size: 0;
  content: "";
  height: 1px;
  width: .375rem;
  background-color: #1d1d1d;
  top: 50%;
  left: 100%;
  margin-left: .5rem;
}
.breadcrumbs > li:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  margin-top: -0.125rem;
}
.breadcrumbs > li:after {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-top: .125rem;
}
.breadcrumbs > li > a {
  color: inherit;
  display: inline-block;
  line-height: 1;
}
.breadcrumbs > li:last-child {
  color: #1d1d1d;
  font-weight: bolder;
}
.breadcrumbs > li:last-child a {
  cursor: default;
}
.breadcrumbs > li:last-child:before,
.breadcrumbs > li:last-child:after {
  background-color: transparent;
}
.breadcrumbs > li:hover {
  color: #1d1d1d;
}
.breadcrumbs img,
.breadcrumbs .icon {
  display: inline-block;
  line-height: .8;
  height: 1rem;
  width: 1rem;
  font-size: 1rem;
  vertical-align: -15%;
}
.breadcrumbs.dark {
  background-color: #393832;
}
.breadcrumbs.dark > li:hover,
.breadcrumbs.dark > li:last-child {
  color: #ffffff;
}
.breadcrumbs.dark > li:before,
.breadcrumbs.dark > li:after {
  background-color: #ffffff;
}
.breadcrumbs2 {
  margin: 0.625rem 0;
  padding: 0;
  list-style: none;
  overflow: hidden;
  width: 100%;
}
.breadcrumbs2 li {
  float: left;
  margin: 0 .2em 0 1em;
}
.breadcrumbs2 a {
  background: #d9d9d9;
  padding: .3em 1em;
  float: left;
  text-decoration: none;
  color: #2086bf;
  position: relative;
}
.breadcrumbs2 a:hover {
  background: #1ba1e2;
  color: #ffffff;
}
.breadcrumbs2 a:hover:before {
  border-color: #1ba1e2 #1ba1e2 #1ba1e2 transparent;
}
.breadcrumbs2 a:hover:after {
  border-left-color: #1ba1e2;
}
.breadcrumbs2 a:before {
  content: "";
  position: absolute;
  top: 50%;
  margin-top: -1.5em;
  border-width: 1.5em 0 1.5em 1em;
  border-style: solid;
  border-color: #d9d9d9 #d9d9d9 #d9d9d9 transparent;
  left: -1em;
  margin-left: 1px;
}
.breadcrumbs2 a:after {
  content: "";
  position: absolute;
  top: 50%;
  margin-top: -1.5em;
  border-top: 1.5em solid transparent;
  border-bottom: 1.5em solid transparent;
  border-left: 1em solid #d9d9d9;
  right: -1em;
  margin-right: 1px;
}
.breadcrumbs2 > li:first-child {
  margin-left: 0;
}
.breadcrumbs2 > li:first-child a:before {
  content: normal;
}
.breadcrumbs2 > li:last-child {
  background: none;
}
.breadcrumbs2 > li:last-child a {
  color: #1d1d1d;
}
.breadcrumbs2 > li:last-child:after,
.breadcrumbs2 > li:last-child:before {
  content: normal;
}
.breadcrumbs2 > li:last-child:hover a {
  color: #ffffff;
}
.breadcrumbs2 .active,
.breadcrumbs2 .active:hover {
  background: none;
}
.breadcrumbs2 .active a,
.breadcrumbs2 .active:hover a {
  color: #1d1d1d;
}
.breadcrumbs2 .active:hover a {
  color: #ffffff;
}
.breadcrumbs2 .active:after,
.breadcrumbs2 .active:before {
  content: normal;
}
.breadcrumbs2.small a {
  padding: .2em 1em;
  font-size: 11.9px;
}
.breadcrumbs2.mini a {
  padding: .1em 1em;
  font-size: 10.5px;
}
.breadcrumbs2 > li > a > [class*=mif] {
  vertical-align: -10%;
}
.input-control {
  display: inline-block;
  min-height: 2.125rem;
  height: 2.125rem;
  position: relative;
  vertical-align: middle;
  margin: .325rem 0;
  line-height: 1;
}
.input-control[data-role=select] {
  height: auto;
}
.input-control.text,
.input-control.select,
.input-control.file,
.input-control.password,
.input-control.number,
.input-control.email,
.input-control.tel {
  width: 10.875rem;
}
.input-control.text .button,
.input-control.select .button,
.input-control.file .button,
.input-control.password .button,
.input-control.number .button,
.input-control.email .button,
.input-control.tel .button {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  margin: 0;
}
.input-control.text > label,
.input-control.select > label,
.input-control.file > label,
.input-control.password > label,
.input-control.number > label,
.input-control.email > label,
.input-control.tel > label,
.input-control.text > .label,
.input-control.select > .label,
.input-control.file > .label,
.input-control.password > .label,
.input-control.number > .label,
.input-control.email > .label,
.input-control.tel > .label {
  position: absolute;
  left: 0;
  top: -1rem;
  font-size: .875rem;
}
.input-control.text > input:disabled + .button,
.input-control.select > input:disabled + .button,
.input-control.file > input:disabled + .button,
.input-control.password > input:disabled + .button,
.input-control.number > input:disabled + .button,
.input-control.email > input:disabled + .button,
.input-control.tel > input:disabled + .button {
  display: none;
}
.input-control.text .prepend-icon,
.input-control.select .prepend-icon,
.input-control.file .prepend-icon,
.input-control.password .prepend-icon,
.input-control.number .prepend-icon,
.input-control.email .prepend-icon,
.input-control.tel .prepend-icon {
  width: 24px;
  height: 24px;
  font-size: 24px;
  line-height: 1;
  position: absolute;
  top: 50%;
  margin-top: -12px;
  left: 4px;
  z-index: 2;
  color: #999999;
}
.input-control.text .prepend-icon ~ input,
.input-control.select .prepend-icon ~ input,
.input-control.file .prepend-icon ~ input,
.input-control.password .prepend-icon ~ input,
.input-control.number .prepend-icon ~ input,
.input-control.email .prepend-icon ~ input,
.input-control.tel .prepend-icon ~ input {
  padding-left: 30px;
}
.input-control input,
.input-control textarea,
.input-control select {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  position: relative;
  border: 1px #d9d9d9 solid;
  width: 100%;
  height: 100%;
  padding: .3125rem;
  z-index: 0;
}
.input-control input:focus,
.input-control textarea:focus,
.input-control select:focus {
  outline: none;
}
.input-control input:disabled,
.input-control textarea:disabled,
.input-control select:disabled {
  background-color: #EBEBE4;
}
.input-control input:focus,
.input-control textarea:focus,
.input-control select:focus,
.input-control input:hover,
.input-control textarea:hover,
.input-control select:hover {
  border-color: #787878;
}
.input-control textarea {
  position: relative;
  min-height: 6.25rem;
  font-family: "Segoe UI", "Open Sans", sans-serif, serif;
}
.input-control.textarea {
  height: auto;
}
.input-control.select {
  position: relative;
}
.input-control.select select {
  padding-right: 20px;
}
.input-control.rounded input,
.input-control.rounded textarea,
.input-control.rounded select {
  border-radius: 0.3125rem;
}
.input-control.big-input {
  height: 4.125rem;
}
.input-control.big-input input {
  font-size: 1.875rem;
  padding-left: 1.25rem ;
}
.input-control.big-input .button {
  height: 3.25rem;
  top: 50%;
  margin-top: -1.625rem;
  right: 0.3125rem;
  font-size: 1.125rem;
  font-weight: bold;
  padding-left: 1.875rem;
  padding-right: 1.875rem;
}
.input-control [class*=input-state-] {
  position: absolute;
  display: none;
  top: 50%;
  right: 8px;
  z-index: 3;
  font-size: 1rem;
  margin-top: -0.5rem;
}
.input-control.required input,
.input-control.required textarea,
.input-control.required select {
  border: 1px dashed #1ba1e2;
}
.input-control.required.neon input,
.input-control.required.neon textarea,
.input-control.required.neon select {
  box-shadow: 0 0 25px 0 rgba(89, 205, 226, 0.7);
}
.input-control.required .input-state-required {
  display: block;
  color: #1ba1e2;
}
.input-control.error input,
.input-control.error textarea,
.input-control.error select {
  border: 1px solid #ce352c;
}
.input-control.error.neon input,
.input-control.error.neon textarea,
.input-control.error.neon select {
  box-shadow: 0 0 25px 0 rgba(128, 0, 0, 0.7);
}
.input-control.error .input-state-error {
  display: block;
  color: #ce352c;
}
.input-control.warning input,
.input-control.warning textarea,
.input-control.warning select {
  border: 1px solid #e3c800;
}
.input-control.warning.neon input,
.input-control.warning.neon textarea,
.input-control.warning.neon select {
  box-shadow: 0 0 25px 0 rgba(255, 165, 0, 0.7);
}
.input-control.warning .input-state-warning {
  display: block;
  color: #e3c800;
}
.input-control.success input,
.input-control.success textarea,
.input-control.success select {
  border: 1px solid #60a917;
}
.input-control.success.neon input,
.input-control.success.neon textarea,
.input-control.success.neon select {
  box-shadow: 0 0 25px 0 rgba(0, 128, 0, 0.7);
}
.input-control.success .input-state-success {
  display: block;
  color: #60a917;
}
.input-control.info input,
.input-control.info textarea,
.input-control.info select {
  border: 1px solid #1ba1e2;
}
.input-control.info.neon input,
.input-control.info.neon textarea,
.input-control.info.neon select {
  box-shadow: 0 0 25px 0 rgba(89, 205, 226, 0.7);
}
.input-control.info .input-state-success {
  display: block;
  color: #1ba1e2;
}
input.error,
select.error,
textarea.error {
  border: 1px solid #ce352c;
}
input.warning,
select.warning,
textarea.warning {
  border: 1px solid #e3c800;
}
input.info,
select.info,
textarea.info {
  border: 1px solid #1ba1e2;
}
input.success,
select.success,
textarea.success {
  border: 1px solid #60a917;
}
input.required,
select.required,
textarea.required {
  border: 1px dashed #1ba1e2;
}
.input-control.file input[type=file] {
  position: absolute;
  opacity: 0;
  width: 0.0625rem;
  height: 0.0625rem;
}
.input-control.file input[type=file]:disabled ~ input[type=text],
.input-control.file input[type=file]:disabled ~ .button {
  background-color: #EBEBE4;
}
.input-control.file:hover input[type=text],
.input-control.file:hover button {
  border-color: #787878;
}
.input-control .button-group {
  position: absolute;
  right: 0;
  top: 0;
  margin: 0;
  padding: 0;
  z-index: 2;
}
.input-control .button-group:before,
.input-control .button-group:after {
  display: table;
  content: "";
}
.input-control .button-group:after {
  clear: both;
}
.input-control .button-group .button {
  position: relative;
  float: left;
  margin: 0;
}
.input-control > .helper-button,
.input-control > .button-group > .helper-button {
  visibility: hidden;
  margin: 0;
  border: 0;
  height: 1.875rem;
  padding: 0 .6rem;
  z-index: 100;
  font-size: .75rem;
}
.input-control > .button.helper-button {
  margin: 2px 2px 0;
}
.input-control > .button-group > .button.helper-button {
  margin: 2px 0 ;
}
.input-control > .button-group > .button.helper-button:last-child {
  margin-right: 2px ;
}
.input-control input:focus ~ .helper-button,
.input-control input:focus ~ .button-group > .helper-button {
  visibility: visible;
}
.input-control input ~ .helper-button:active,
.input-control input ~ .button-group > .helper-button:active {
  visibility: visible;
}
.input-control input:disabled ~ .helper-button,
.input-control input:disabled ~ .button-group > .helper-button {
  display: none ;
}
.input-control.modern {
  position: relative;
  width: 12.25rem;
  height: 3rem;
  display: inline-block;
  margin: .625rem 0;
}
.input-control.modern input {
  position: absolute;
  top: 1rem;
  left: 0;
  right: 0;
  bottom: .5rem;
  border: 0;
  border-bottom: 2px #DDDDDD solid;
  background-color: transparent;
  outline: none;
  font-size: 1rem;
  padding-bottom: .5rem;
  padding-left: 0;
  width: 100%;
  z-index: 2;
  height: 1.75rem;
}
.input-control.modern input:focus {
  border-bottom-color: #1d1d1d;
}
.input-control.modern .label,
.input-control.modern .informer {
  position: absolute;
  display: block;
  z-index: 1;
  color: #1d1d1d;
}
.input-control.modern .label {
  opacity: 0;
  top: 16px;
  left: 0;
  transition: all 0.3s linear;
}
.input-control.modern .informer {
  opacity: 0;
  bottom: .75rem;
  color: #C8C8C8;
  font-size: .8rem;
  transition: all 0.3s linear;
}
.input-control.modern .placeholder {
  font-size: 1rem;
  color: #C8C8C8;
  position: absolute;
  top: 1.2rem;
  left: 0;
  z-index: 1;
  opacity: 1;
  transition: all 0.3s linear;
}
.input-control.modern .helper-button {
  top: 8px;
}
.input-control.modern.iconic {
  margin-left: 32px;
}
.input-control.modern.iconic .icon {
  width: 24px;
  height: 24px;
  font-size: 24px;
  line-height: 1;
  position: absolute;
  left: -28px;
  top: 50%;
  margin-top: -8px;
  display: block;
  opacity: .2;
  transition: all 0.3s linear;
}
.input-control.modern.iconic .icon img {
  width: 100%;
  max-width: 100%;
  height: 100%;
  max-height: 100%;
}
.input-control.modern.iconic.full-size {
  width: calc(100% - 32px) !important;
}
.input-control.modern input:focus ~ .label {
  opacity: 1;
  -webkit-transform: translateY(-18px);
          transform: translateY(-18px);
  transition: all 0.3s linear;
}
.input-control.modern input:focus ~ .placeholder {
  opacity: 0;
  -webkit-transform: translateX(200px);
          transform: translateX(200px);
  transition: all 0.3s linear;
}
.input-control.modern input:focus ~ .informer {
  opacity: 1;
  color: #1d1d1d;
  bottom: -0.75rem;
  transition: all 0.3s linear;
}
.input-control.modern input:focus ~ .icon {
  opacity: 1;
  transition: all 0.3s linear;
}
.input-control.modern.error input {
  border-bottom-color: #ce352c;
}
.input-control.modern.error .informer,
.input-control.modern.error .label {
  color: #ce352c;
}
.input-control.modern.success input {
  border-bottom-color: #60a917;
}
.input-control.modern.success .informer,
.input-control.modern.success .label {
  color: #60a917;
}
.input-control.modern.warning input {
  border-bottom-color: #e3c800;
}
.input-control.modern.warning .informer,
.input-control.modern.warning .label {
  color: #e3c800;
}
.input-control.modern.info input {
  border-bottom-color: #1ba1e2;
}
.input-control.modern.info .informer,
.input-control.modern.info .label {
  color: #1ba1e2;
}
.input-control.modern input:disabled {
  border-bottom-style: dotted;
  color: #BCBCBC;
}
.input-control.checkbox,
.input-control.radio {
  line-height: 1.875rem;
  min-width: 1rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.input-control.checkbox input[type="checkbox"],
.input-control.radio input[type="checkbox"],
.input-control.checkbox input[type="radio"],
.input-control.radio input[type="radio"] {
  position: absolute;
  opacity: 0;
  width: 0.0625rem;
  height: 0.0625rem;
}
.input-control.checkbox .caption,
.input-control.radio .caption {
  margin: 0 .125rem;
  vertical-align: middle;
}
.input-control.checkbox .check,
.input-control.radio .check {
  width: 1.625rem;
  height: 1.625rem;
  background-color: #ffffff;
  border: 1px #999999 solid;
  padding: 0;
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.input-control.checkbox.text-left .check,
.input-control.radio.text-left .check {
  margin: 0 0 0 .3125rem;
}
.input-control.checkbox .check:focus,
.input-control.radio .check:focus {
  border-color: #bcd9e2;
}
.input-control.checkbox .check:before,
.input-control.radio .check:before {
  position: absolute;
  vertical-align: middle;
  color: transparent;
  font-size: 0;
  content: "";
  height: .3125rem;
  width: .565rem;
  background-color: transparent;
  border-left: .1875rem solid;
  border-bottom: .1875rem solid;
  border-color: transparent;
  left: 50%;
  top: 50%;
  margin-left: -0.325rem;
  margin-top: -0.365rem;
  display: block;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  transition: all 0.2s linear;
}
.input-control.checkbox input[type=radio] ~ .check:before,
.input-control.radio input[type=radio] ~ .check:before {
  border-color: transparent;
}
.input-control.checkbox input[type="checkbox"]:checked ~ .check:before,
.input-control.radio input[type="checkbox"]:checked ~ .check:before,
.input-control.checkbox input[type="radio"]:checked ~ .check:before,
.input-control.radio input[type="radio"]:checked ~ .check:before {
  border-color: #555555;
  transition: all 0.2s linear;
}
.input-control.checkbox input[type="checkbox"]:disabled ~ .caption,
.input-control.radio input[type="checkbox"]:disabled ~ .caption,
.input-control.checkbox input[type="radio"]:disabled ~ .caption,
.input-control.radio input[type="radio"]:disabled ~ .caption {
  color: #cacaca;
  cursor: default;
}
.input-control.checkbox input[type="checkbox"]:disabled ~ .check,
.input-control.radio input[type="checkbox"]:disabled ~ .check,
.input-control.checkbox input[type="radio"]:disabled ~ .check,
.input-control.radio input[type="radio"]:disabled ~ .check {
  border-color: #cacaca;
  cursor: default;
}
.input-control.checkbox input[type="checkbox"]:disabled:checked ~ .check:before,
.input-control.radio input[type="checkbox"]:disabled:checked ~ .check:before {
  border-color: #cacaca;
}
.input-control.checkbox input[type="radio"]:disabled:checked ~ .check:before,
.input-control.radio input[type="radio"]:disabled:checked ~ .check:before {
  background-color: #cacaca;
}
.input-control.checkbox input[data-show="indeterminate"] ~ .check:before,
.input-control.radio input[data-show="indeterminate"] ~ .check:before,
.input-control.checkbox input[data-show="indeterminate"]:checked ~ .check:before,
.input-control.radio input[data-show="indeterminate"]:checked ~ .check:before,
.input-control.checkbox input.indeterminate:checked ~ .check:before,
.input-control.radio input.indeterminate:checked ~ .check:before,
.input-control.checkbox input[type="checkbox"]:indeterminate ~ .check:before,
.input-control.radio input[type="checkbox"]:indeterminate ~ .check:before {
  display: none;
}
.input-control.checkbox input[data-show="indeterminate"] ~ .check:after,
.input-control.radio input[data-show="indeterminate"] ~ .check:after,
.input-control.checkbox input[data-show="indeterminate"]:checked ~ .check:after,
.input-control.radio input[data-show="indeterminate"]:checked ~ .check:after,
.input-control.checkbox input.indeterminate:checked ~ .check:after,
.input-control.radio input.indeterminate:checked ~ .check:after,
.input-control.checkbox input[type="checkbox"]:indeterminate ~ .check:after,
.input-control.radio input[type="checkbox"]:indeterminate ~ .check:after {
  position: absolute;
  display: block;
  content: "";
  background-color: #1d1d1d;
  height: .875rem;
  width: .875rem;
  left: 50%;
  top: 50%;
  margin-left: -0.4375rem;
  margin-top: -0.4375rem;
}
.input-control.checkbox input[data-show="indeterminate"]:not(:checked) ~ .check:after,
.input-control.radio input[data-show="indeterminate"]:not(:checked) ~ .check:after {
  background-color: transparent;
}
.input-control.checkbox input[data-show="indeterminate"]:disabled ~ .check:after,
.input-control.radio input[data-show="indeterminate"]:disabled ~ .check:after {
  background-color: #cacaca;
}
.input-control.radio .check {
  border: 1px #999999 solid;
  border-radius: 50%;
}
.input-control.radio .check:before {
  position: absolute;
  display: block;
  content: "";
  background-color: #1d1d1d;
  height: .5624rem;
  width: .5624rem;
  left: 50%;
  top: 50%;
  margin-left: -0.375rem;
  margin-top: -0.375rem;
  -webkit-transform: rotate(0deg);
          transform: rotate(0deg);
  border-radius: 50%;
}
.input-control.radio input[type="radio"]:checked ~ .check:before {
  border-color: transparent;
}
.input-control.radio input[type="radio"]:not(:checked) ~ .check:before {
  background-color: transparent;
}
.input-control.radio input[type="radio"]:disabled ~ .check:before {
  border-color: transparent;
}
.input-control.small-check .check {
  width: 1rem;
  height: 1rem;
}
.input-control.small-check .check:before {
  width: 6px;
  height: 3px;
  margin-left: -4px;
  margin-top: -4px;
  border-width: 2px;
}
.input-control.small-check.radio .check:before {
  height: .375rem;
  width: .375rem;
  left: 50%;
  top: 50%;
  margin-left: -0.25rem;
  margin-top: -0.25rem;
}
.input-control.small-check input[data-show="indeterminate"] ~ .check:after,
.input-control.small-check input[data-show="indeterminate"]:checked ~ .check:after,
.input-control.small-check input.indeterminate:checked ~ .check:after,
.input-control.small-check input[type="checkbox"]:indeterminate ~ .check:after {
  height: .375rem;
  width: .375rem;
  left: 50%;
  top: 50%;
  margin-left: -0.1875rem;
  margin-top: -0.1875rem;
}
input[type="button"],
input[type="reset"],
input[type="submit"] {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  vertical-align: middle;
}
input[type="button"].default,
input[type="reset"].default,
input[type="submit"].default {
  background-color: #008287;
  color: #fff;
}
input[type="button"]:hover,
input[type="reset"]:hover,
input[type="submit"]:hover {
  border-color: #787878;
}
input[type="button"]:active,
input[type="reset"]:active,
input[type="submit"]:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
input[type="button"]:focus,
input[type="reset"]:focus,
input[type="submit"]:focus {
  outline: 0;
}
input[type="button"]:disabled,
input[type="reset"]:disabled,
input[type="submit"]:disabled,
input[type="button"].disabled,
input[type="reset"].disabled,
input[type="submit"].disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
input[type="button"] *,
input[type="reset"] *,
input[type="submit"] * {
  color: inherit;
}
input[type="button"] *:hover,
input[type="reset"] *:hover,
input[type="submit"] *:hover {
  color: inherit;
}
input[type="button"].rounded,
input[type="reset"].rounded,
input[type="submit"].rounded {
  border-radius: .325rem;
}
input[type="button"] > [class*=mif-],
input[type="reset"] > [class*=mif-],
input[type="submit"] > [class*=mif-] {
  vertical-align: middle;
}
input[type="button"] img,
input[type="reset"] img,
input[type="submit"] img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
input[type="button"].loading-pulse,
input[type="reset"].loading-pulse,
input[type="submit"].loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
input[type="button"].loading-pulse:before,
input[type="reset"].loading-pulse:before,
input[type="submit"].loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
input[type="button"].loading-pulse.lighten:before,
input[type="reset"].loading-pulse.lighten:before,
input[type="submit"].loading-pulse.lighten:before {
  background-color: #fff;
}
input[type="button"].loading-cube,
input[type="reset"].loading-cube,
input[type="submit"].loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
input[type="button"].loading-cube:before,
input[type="reset"].loading-cube:before,
input[type="submit"].loading-cube:before,
input[type="button"].loading-cube:after,
input[type="reset"].loading-cube:after,
input[type="submit"].loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
input[type="button"].loading-cube:after,
input[type="reset"].loading-cube:after,
input[type="submit"].loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
input[type="button"].loading-cube.lighten:before,
input[type="reset"].loading-cube.lighten:before,
input[type="submit"].loading-cube.lighten:before,
input[type="button"].loading-cube.lighten:after,
input[type="reset"].loading-cube.lighten:after,
input[type="submit"].loading-cube.lighten:after {
  background-color: #fff;
}
input[type="button"].dropdown-toggle,
input[type="reset"].dropdown-toggle,
input[type="submit"].dropdown-toggle {
  padding-right: 1.625rem;
}
input[type="button"].dropdown-toggle.drop-marker-light:before,
input[type="reset"].dropdown-toggle.drop-marker-light:before,
input[type="submit"].dropdown-toggle.drop-marker-light:before,
input[type="button"].dropdown-toggle.drop-marker-light:after,
input[type="reset"].dropdown-toggle.drop-marker-light:after,
input[type="submit"].dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
input[type="button"].primary,
input[type="reset"].primary,
input[type="submit"].primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
input[type="button"].primary:active,
input[type="reset"].primary:active,
input[type="submit"].primary:active {
  background: #1b6eae;
  color: #ffffff;
}
input[type="button"].success,
input[type="reset"].success,
input[type="submit"].success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
input[type="button"].success:active,
input[type="reset"].success:active,
input[type="submit"].success:active {
  background: #128023;
  color: #ffffff;
}
input[type="button"].danger,
input[type="reset"].danger,
input[type="submit"].danger,
input[type="button"].alert,
input[type="reset"].alert,
input[type="submit"].alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
input[type="button"].danger:active,
input[type="reset"].danger:active,
input[type="submit"].danger:active,
input[type="button"].alert:active,
input[type="reset"].alert:active,
input[type="submit"].alert:active {
  background: #9a1616;
  color: #ffffff;
}
input[type="button"].info,
input[type="reset"].info,
input[type="submit"].info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
input[type="button"].info:active,
input[type="reset"].info:active,
input[type="submit"].info:active {
  background: #1ba1e2;
  color: #ffffff;
}
input[type="button"].warning,
input[type="reset"].warning,
input[type="submit"].warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
input[type="button"].warning:active,
input[type="reset"].warning:active,
input[type="submit"].warning:active {
  background: #bf5a15;
  color: #ffffff;
}
input[type="button"].link,
input[type="reset"].link,
input[type="submit"].link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
input[type="button"].link:hover,
input[type="reset"].link:hover,
input[type="submit"].link:hover,
input[type="button"].link:active,
input[type="reset"].link:active,
input[type="submit"].link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.switch,
.switch-original {
  display: inline-block;
  margin: 0 .625rem 0 0;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.switch input,
.switch-original input {
  position: absolute;
  opacity: 0;
  width: 0.0625rem;
  height: 0.0625rem;
}
.switch .check,
.switch-original .check,
.switch .caption,
.switch-original .caption {
  display: inline-block;
  vertical-align: middle;
  line-height: 18px;
}
.switch .check {
  width: 36px;
  height: 16px;
  background-color: #929292;
  border-radius: 8px;
  overflow: visible;
  position: relative;
}
.switch .check:before {
  position: absolute;
  display: block;
  content: "";
  width: 22px;
  height: 22px;
  z-index: 2;
  margin-top: -4px;
  margin-left: -3px;
  border-radius: 50%;
  background-color: #ffffff;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.switch input:checked ~ .check {
  background-color: #008287;
}
.switch input:not(:checked) ~ .check:before {
  background-color: #ffffff;
  transition: all 0.2s linear;
}
.switch input:checked ~ .check {
  background-color: #008287;
}
.switch input:checked ~ .check:before {
  -webkit-transform: translateX(22px);
          transform: translateX(22px);
  transition: all 0.2s linear;
}
.switch input:disabled ~ .check {
  background-color: #D5D5D5;
}
.switch input:disabled ~ .check:before {
  background-color: #BDBDBD;
}
.switch-original .caption {
  margin: 0 5px;
}
.switch-original .check {
  position: relative;
  height: 1.125rem;
  width: 2.8125rem;
  outline: 2px #a6a6a6 solid;
  border: 1px #fff solid;
  cursor: pointer;
  background: #A6A6A6;
  z-index: 1;
  display: inline-block;
  vertical-align: middle;
}
.switch-original .check:after {
  position: absolute;
  left: -1px;
  top: -1px;
  display: block;
  content: "";
  height: 1rem;
  width: .5625rem;
  outline: 2px #333 solid;
  border: 1px #333 solid;
  cursor: pointer;
  background: #333;
  z-index: 2;
  transition: all 0.2s linear;
}
.switch-original input[type="checkbox"]:focus ~ .check {
  outline: 1px #999999 dotted;
}
.switch-original input[type="checkbox"]:checked ~ .check {
  background: #008287;
}
.switch-original input[type="checkbox"]:checked ~ .check:after {
  left: auto;
  -webkit-transform: translateX(2rem);
          transform: translateX(2rem);
  transition: all 0.2s linear;
}
.switch-original input[type="checkbox"]:disabled ~ .check {
  background-color: #e6e6e6;
  border-color: #ffffff;
}
.switch-original input[type="checkbox"]:disabled ~ .check:after {
  background-color: #8a8a8a;
  outline-color: #8a8a8a;
  border-color: #8a8a8a;
}
.input-control.range input[type=range] {
  border: 0;
  box-sizing: border-box;
  line-height: 1;
  background-color: transparent;
  cursor: pointer;
  -webkit-appearance: none;
  width: 100%;
}
.input-control.range input[type=range]::-webkit-slider-thumb {
  -webkit-appearance: none;
}
.input-control.range input[type=range]:focus {
  outline: none;
}
.input-control.range input[type=range]::-ms-track {
  width: 100%;
  cursor: pointer;
  background: transparent;
  border-color: transparent;
  color: transparent;
}
.input-control.range input[type=range]::-webkit-slider-thumb {
  -webkit-appearance: none;
  width: 1em;
  height: 1em;
  margin-top: 0;
  background-color: #555555;
  border: 2px solid #555555;
  cursor: pointer;
}
.input-control.range input[type=range]::-moz-range-thumb {
  width: 1em;
  height: 1em;
  margin-top: 0;
  background-color: #555555;
  border: 2px solid #555555;
  cursor: pointer;
  border-radius: 0;
  margin: 0;
}
.input-control.range input[type=range]::-ms-thumb {
  width: 1em;
  height: 1em;
  margin-top: 0;
  background-color: #555555;
  border: 2px solid #555555;
  cursor: pointer;
}
.input-control.range input[type=range]:hover::-webkit-slider-thumb {
  border-color: #373737;
  background-color: #1d1d1d;
}
.input-control.range input[type=range]:hover::-moz-range-thumb {
  border-color: #373737;
  background-color: #1d1d1d;
}
.input-control.range input[type=range]:hover::-ms-thumb {
  border-color: #373737;
  background-color: #1d1d1d;
}
.input-control.range input[type=range]:active::-webkit-slider-thumb {
  border-color: #373737;
}
.input-control.range input[type=range]:active::-moz-range-thumb {
  border-color: #373737;
}
.input-control.range input[type=range]:active::-ms-thumb {
  border-color: #373737;
}
.input-control.range input[type=range]::-webkit-slider-runnable-track {
  width: 100%;
  cursor: pointer;
  height: 100%;
  background-color: #00aba9;
  transition: background .3s ease;
}
.input-control.range input[type=range]::-moz-range-track {
  width: 100%;
  cursor: pointer;
  height: 100%;
  background-color: #00aba9;
  transition: background .3s ease;
}
.input-control.range input[type=range]::-ms-track {
  background: #00aba9;
  border-color: transparent;
  color: transparent;
  height: 1.25em;
}
.input-control.range input[type=range]::-ms-fill-lower {
  background: #00aba9;
}
.input-control.range input[type=range]::-ms-fill-upper {
  display: none;
}
.input-control.range input[type=range]::-moz-range-track {
  height: 1.25em;
}
.input-control.range.big-input {
  height: 2.125rem;
}
.input-control.range.big-input input[type=range] {
  padding: 0;
}
.input-control.range.big-input input[type=range]::-moz-range-track {
  height: 1.2em;
}
.progress,
.progress-bar {
  display: block;
  position: relative;
  width: 100%;
  height: auto;
  margin: .625rem 0;
  background: #eeeeee;
  overflow: hidden;
}
.progress:before,
.progress-bar:before,
.progress:after,
.progress-bar:after {
  display: table;
  content: "";
}
.progress:after,
.progress-bar:after {
  clear: both;
}
.progress .bar,
.progress-bar .bar {
  position: relative;
  display: block;
  float: left;
  width: 0;
  background-color: #1ba1e2;
  z-index: 1;
  text-align: center;
  height: .625rem;
  line-height: .625rem;
  color: #ffffff;
}
.progress.small > .bar,
.progress-bar.small > .bar {
  height: .3125rem;
}
.progress.large > .bar,
.progress-bar.large > .bar {
  height: 1rem;
}
.progress.gradient-bar .bar,
.progress-bar.gradient-bar .bar {
  background: linear-gradient(to right, #4cd964, #5ac8fa, #007aff, #34aadc, #5856d6, #ff2d55);
}
.progress.ani .bar,
.progress-bar.ani .bar {
  -webkit-animation: ani-bg-stripes 2s linear infinite;
          animation: ani-bg-stripes 2s linear infinite;
}
.popover {
  display: block;
  min-width: 12.5rem;
  height: auto;
  position: relative;
  background-color: #eeeeee;
  padding: 1.25rem;
}
.popover * {
  color: inherit;
}
.popover.popover-shadow {
  box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.4);
}
.popover:before {
  content: "";
  width: .625rem;
  height: .625rem;
  display: block;
  position: absolute;
  background-color: inherit;
  left: -0.3125rem;
  top: 50%;
  margin-top: -0.3125rem;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.popover.marker-on-top:before {
  top: 0;
  left: 50%;
  margin-left: -0.3125rem;
}
.popover.marker-on-right:before {
  top: 50%;
  margin-top: -0.3125rem;
  left: 100%;
  margin-left: -0.3125rem;
}
.popover.marker-on-bottom:before {
  top: 100%;
  margin-left: -0.3125rem;
  left: 50%;
  margin-top: -0.3125rem;
}
.overlay {
  position: fixed;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(255, 255, 255, 0.5);
  z-index: 1049;
}
.overlay.transparent {
  background-color: rgba(255, 255, 255, 0);
}
.window {
  display: block;
  position: relative;
  height: auto;
  width: 100%;
  background-color: #ffffff;
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.window-caption {
  position: relative;
  background-color: #ffffff;
  padding: .4375rem .3125rem;
  border-bottom: 1px #e9e9e9 solid;
  border-top: 0;
  cursor: default;
}
.window-caption .window-caption-title {
  font-size: .875rem;
  font-style: normal;
  font-weight: 700;
}
.window-caption .window-caption-icon {
  margin-left: .3125rem;
}
.window-caption .window-caption-icon * {
  height: 1rem;
  width: 1rem;
}
.window-caption .window-caption-icon ~ .window-caption-title {
  padding-left: .3125rem;
}
.window-caption .btn-close,
.window-caption .btn-min,
.window-caption .btn-max {
  position: absolute;
  height: 1.5rem;
  width: 1.5rem;
  min-height: 1.5rem;
  text-align: center;
  vertical-align: middle;
  font-size: 1rem;
  font-weight: normal;
  padding: 0 0 .625rem 0;
  z-index: 3;
  outline: none;
  cursor: pointer;
  display: block;
  background-color: #ffffff;
  color: #777777;
  top: .25rem;
  right: .25rem;
}
.window-caption .btn-close:hover,
.window-caption .btn-min:hover,
.window-caption .btn-max:hover {
  background-color: #cde6f7;
  color: #2a8dd4;
}
.window-caption .btn-close:hover:after,
.window-caption .btn-min:hover:after,
.window-caption .btn-max:hover:after {
  border-color: #2a8dd4;
}
.window-caption .btn-close:active,
.window-caption .btn-min:active,
.window-caption .btn-max:active {
  background-color: #92c0e0;
  color: #ffffff;
}
.window-caption .btn-close:after,
.window-caption .btn-min:after,
.window-caption .btn-max:after {
  border-color: #777777;
  content: '\D7';
  position: absolute;
  left: 50%;
  top: -2px;
  margin-left: -0.25em;
}
.window-caption .btn-min:after,
.window-caption .btn-max:after {
  display: block;
  position: absolute;
  width: .625rem;
  height: .625rem;
  border: 0 #000 solid;
  border-bottom-width: 2px;
  content: ' ';
  bottom: .375rem;
  left: 50%;
  margin-left: -0.375rem;
  top: auto;
}
.window-caption .btn-max:after {
  height: .375rem;
  border: 1px #000 solid;
  border-top-width: 2px;
}
.window-caption .btn-max {
  right: 1.8125rem;
}
.window-caption .btn-min {
  right: 3.375rem;
}
.window-caption .btn-close:after {
  margin-top: .1875rem;
  margin-left: -0.3125rem;
}
.window-content {
  position: relative;
  width: 100%;
  height: auto;
  display: block;
  padding: .25rem;
}
.window.success {
  box-shadow: 0 0 25px 0 rgba(0, 128, 0, 0.7);
}
.window.success .window-caption {
  background-color: #60a917;
  color: #ffffff;
}
.window.error {
  box-shadow: 0 0 25px 0 rgba(128, 0, 0, 0.7);
}
.window.error .window-caption {
  background-color: #ce352c;
  color: #ffffff;
}
.window.warning {
  box-shadow: 0 0 25px 0 rgba(255, 165, 0, 0.7);
}
.window.warning .window-caption {
  background-color: #fa6800;
  color: #ffffff;
}
.simple-list,
.numeric-list {
  list-style: none;
  counter-reset: li;
  padding-left: 0;
  margin-left: .625rem;
  color: #262626;
}
.simple-list li ul,
.numeric-list li ul,
.simple-list li ol,
.numeric-list li ol {
  list-style: none;
  padding-left: 1.5625rem;
}
.simple-list li,
.numeric-list li {
  position: relative;
  padding: 4px 12px;
  list-style: none;
  color: inherit;
}
.simple-list li:before,
.numeric-list li:before {
  position: absolute;
  top: 50%;
  margin-top: -0.8rem;
  left: -0.625rem;
  color: #59cde2;
  font-size: 2rem;
  vertical-align: middle;
  width: 1.25rem;
  height: 1.25rem;
  line-height: 1.25rem;
}
.simple-list ul,
.numeric-list ul {
  margin: 4px .5em 0;
}
.simple-list > li:before {
  content: "\2022";
}
.simple-list ul li:before {
  content: "\00B7";
}
.numeric-list > li {
  padding: 4px 12px 4px 18px;
}
.numeric-list > li:before {
  content: counter(li);
  counter-increment: li;
  font-size: .8rem ;
  color: #ffffff;
  background-color: #59cde2;
  border-radius: 50%;
  text-align: center;
  margin-top: -0.65rem;
}
.numeric-list.square-marker > li:before,
.numeric-list.square-bullet > li:before {
  border-radius: 0;
}
.simple-list.large-bullet li,
.numeric-list.large-bullet li {
  margin: 6px 0;
  padding-left: 2rem;
}
.simple-list.large-bullet li:before,
.numeric-list.large-bullet li:before {
  line-height: 2rem;
  width: 2rem;
  height: 2rem;
  margin-top: -1rem;
}
.simple-list.large-bullet li {
  padding-left: 1rem;
}
.simple-list.large-bullet li:before {
  margin-top: -1.3rem;
  font-size: 3rem;
}
.simple-list.dark-bullet li:before {
  color: #1d1d1d;
}
.simple-list.alert-bullet li:before {
  color: #ce352c;
}
.simple-list.info-bullet li:before {
  color: #1ba1e2;
}
.simple-list.success-bullet li:before {
  color: #60a917;
}
.simple-list.warning-bullet li:before {
  color: #e3c800;
}
.simple-list.red-bullet li:before {
  color: #ce352c;
}
.simple-list.blue-bullet li:before {
  color: #1ba1e2;
}
.simple-list.green-bullet li:before {
  color: #60a917;
}
.simple-list.yellow-bullet li:before {
  color: #e3c800;
}
.numeric-list.dark-bullet li:before {
  background-color: #1d1d1d;
}
.numeric-list.alert-bullet li:before {
  background-color: #ce352c;
}
.numeric-list.info-bullet li:before {
  background-color: #1ba1e2;
}
.numeric-list.success-bullet li:before {
  background-color: #60a917;
}
.numeric-list.warning-bullet li:before {
  background-color: #e3c800;
}
.numeric-list.red-bullet li:before {
  background-color: #ce352c;
}
.numeric-list.blue-bullet li:before {
  background-color: #1ba1e2;
}
.numeric-list.green-bullet li:before {
  background-color: #60a917;
}
.numeric-list.yellow-bullet li:before {
  background-color: #e3c800;
}
.step-list {
  margin: 0 0 0 2rem;
  padding: 0;
  list-style-type: none;
  counter-reset: li;
}
.step-list > li {
  border-left: 1px #ccc solid;
  position: relative;
  padding: 0 .625rem;
  margin: .625rem;
  vertical-align: top;
}
.step-list > li:before {
  position: absolute;
  content: counter(li);
  counter-increment: li;
  font-size: 2rem;
  color: #999999;
  left: 0;
  top: .3125rem;
  margin-left: -1.5rem;
}
.image-container {
  display: inline-block;
  position: relative;
  vertical-align: middle;
  max-width: 100%;
  background-color: transparent;
}
.image-container .frame {
  background-color: #ffffff;
  position: relative;
  width: 100%;
  height: 100%;
}
.image-container img {
  display: block;
  width: 100%;
  height: 100%;
}
.image-container .image-overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  opacity: 0;
  overflow: hidden;
  font-size: .875rem;
  line-height: 1rem;
  padding: 1em 1.5em;
  background-color: rgba(27, 161, 226, 0.7);
  color: #ffffff;
  text-align: center;
  border-radius: inherit;
  transition: all 0.65s ease;
}
.image-container .image-overlay:hover {
  opacity: 1;
}
.image-container .image-overlay:hover:before,
.image-container .image-overlay:hover:after {
  opacity: 1;
  -webkit-transform: scale(1);
          transform: scale(1);
}
.image-container .image-overlay:before,
.image-container .image-overlay:after {
  display: block;
  position: absolute;
  content: "";
  border: 1px solid rgba(255, 255, 255, 0.7);
  top: 1em;
  bottom: 1em;
  left: 1em;
  right: 1em;
  opacity: 0;
  border-radius: inherit;
  -webkit-transform: scale(1.5);
          transform: scale(1.5);
  transition: all 0.65s ease;
}
.image-container .image-overlay:after {
  border-left: none;
  border-right: none;
  bottom: 1em;
  top: 1em;
}
.image-container .image-overlay:before {
  border-top: none;
  border-bottom: none;
  bottom: 1em;
  top: 1em;
}
.image-container.diamond {
  overflow: hidden;
}
.image-container.diamond .frame {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  overflow: hidden;
}
.image-container.diamond .frame img,
.image-container.diamond .frame .image-replacer {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.image-container.rounded img {
  border-radius: 0.3125rem;
}
.image-container.bordered .frame {
  border: 1px #eeeeee solid;
  padding: .5rem;
}
.image-container.polaroid .frame {
  border: 1px #eeeeee solid;
  padding: .5rem .5rem 2rem;
}
.image-container.handing {
  margin-top: 20px;
}
.image-container.handing .frame {
  border: 1px #eeeeee solid;
  position: relative;
  padding: .5rem;
}
.image-container.handing .frame:after {
  content: "";
  position: absolute;
  width: .625rem;
  height: .625rem;
  background-color: #647687;
  border-radius: 50%;
  top: -20%;
  left: 50%;
  margin-left: -0.3125rem;
  z-index: 3;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.image-container.handing.image-format-hd .frame:after {
  top: -25%;
}
.image-container.handing.image-format-square .frame:after {
  top: -15%;
}
.image-container.handing:after {
  position: absolute;
  content: "";
  background-color: transparent;
  border-top: 1px solid #eeeeee;
  -webkit-transform: rotate(-16deg);
          transform: rotate(-16deg);
  z-index: 2;
  top: 0;
  left: 0;
  width: 50%;
  height: 50%;
  -webkit-transform-origin: top left;
          transform-origin: top left;
}
.image-container.handing:before {
  position: absolute;
  content: "";
  background-color: transparent;
  border-top: 1px solid #eeeeee;
  -webkit-transform: rotate(16deg);
          transform: rotate(16deg);
  z-index: 2;
  top: 0;
  right: 0;
  width: 50%;
  height: 50%;
  -webkit-transform-origin: top right;
          transform-origin: top right;
}
.image-container.handing.ani {
  -webkit-transform-origin: 50% -25px;
          transform-origin: 50% -25px;
  -webkit-animation: swinging 10s ease-in-out 0s infinite;
          animation: swinging 10s ease-in-out 0s infinite;
}
.image-container.handing.ani-hover:hover {
  -webkit-transform-origin: 50% -25px;
          transform-origin: 50% -25px;
  -webkit-animation: swinging 5s ease-in-out 0s;
          animation: swinging 5s ease-in-out 0s;
}
.ani-spin,
.ani-hover-spin:hover {
  -webkit-animation: ani-spin 1.5s linear infinite;
          animation: ani-spin 1.5s linear infinite;
}
.ani-spin.ani-fast,
.ani-hover-spin.ani-fast:hover {
  -webkit-animation: ani-spin 0.7s linear infinite;
          animation: ani-spin 0.7s linear infinite;
}
.ani-spin.ani-slow,
.ani-hover-spin.ani-slow:hover {
  -webkit-animation: ani-spin 2.2s linear infinite;
          animation: ani-spin 2.2s linear infinite;
}
.ani-pulse,
.ani-hover-pulse:hover {
  -webkit-animation: ani-pulse 1.7s infinite;
          animation: ani-pulse 1.7s infinite;
}
.ani-pulse.ani-fast,
.ani-hover-pulse.ani-fast:hover {
  -webkit-animation: ani-pulse 1s infinite;
          animation: ani-pulse 1s infinite;
}
.ani-pulse.ani-slow,
.ani-hover-pulse.ani-slow:hover {
  -webkit-animation: ani-pulse 3s infinite;
          animation: ani-pulse 3s infinite;
}
.ani-spanner,
.ani-hover-spanner:hover {
  transform-origin-x: 90%;
  transform-origin-y: 35%;
  transform-origin-z: initial;
  -webkit-animation: ani-wrench 2.5s ease infinite;
          animation: ani-wrench 2.5s ease infinite;
}
.ani-spanner.ani-fast,
.ani-hover-spanner.ani-fast:hover {
  -webkit-animation: ani-wrench 1.2s ease infinite;
          animation: ani-wrench 1.2s ease infinite;
}
.ani-spanner.ani-slow,
.ani-hover-spanner.ani-slow:hover {
  -webkit-animation: ani-wrench 3.7s ease infinite;
          animation: ani-wrench 3.7s ease infinite;
}
.ani-ring,
.ani-hover-ring:hover {
  transform-origin-x: 50%;
  transform-origin-y: 0px;
  transform-origin-z: initial;
  -webkit-animation: ani-ring 2s ease infinite;
          animation: ani-ring 2s ease infinite;
}
.ani-ring.ani-fast,
.ani-hover-ring.ani-fast:hover {
  -webkit-animation: ani-ring 1s ease infinite;
          animation: ani-ring 1s ease infinite;
}
.ani-ring.ani-slow,
.ani-hover-ring.ani-slow:hover {
  -webkit-animation: ani-ring 3s ease infinite;
          animation: ani-ring 3s ease infinite;
}
.ani-vertical,
.ani-hover-vertical:hover {
  -webkit-animation: ani-vertical 2s ease infinite;
          animation: ani-vertical 2s ease infinite;
}
.ani-vertical.ani-fast,
.ani-vertical.ani-fast:hover {
  -webkit-animation: ani-vertical 1s ease infinite;
          animation: ani-vertical 1s ease infinite;
}
.ani-vertical.ani-slow,
.ani-hover-vertical.ani-slow:hover {
  -webkit-animation: ani-vertical 4s ease infinite;
          animation: ani-vertical 4s ease infinite;
}
.ani-horizontal,
.ani-hover-horizontal:hover {
  -webkit-animation: ani-horizontal 2s ease infinite;
          animation: ani-horizontal 2s ease infinite;
}
.ani-horizontal.ani-fast,
.ani-horizontal.ani-fast:hover {
  -webkit-animation: ani-horizontal 1s ease infinite;
          animation: ani-horizontal 1s ease infinite;
}
.ani-horizontal.ani-slow,
.ani-horizontal.ani-slow:hover {
  -webkit-animation: ani-horizontal 3s ease infinite;
          animation: ani-horizontal 3s ease infinite;
}
.ani-flash,
.ani-hover-flash:hover {
  -webkit-animation: ani-flash 2s ease infinite;
          animation: ani-flash 2s ease infinite;
}
.ani-flash.ani-fast,
.ani-hover-flash.ani-fast:hover {
  -webkit-animation: ani-flash 1s ease infinite;
          animation: ani-flash 1s ease infinite;
}
.ani-flash.ani-slow,
.ani-hover-flash.ani-slow:hover {
  -webkit-animation: ani-flash 3s ease infinite;
          animation: ani-flash 3s ease infinite;
}
.ani-bounce,
.ani-hover-bounce:hover {
  -webkit-animation: ani-bounce 2s ease infinite;
          animation: ani-bounce 2s ease infinite;
}
.ani-bounce.ani-fast,
.ani-hover-bounce.ani-fast:hover {
  -webkit-animation: ani-bounce 1s ease infinite;
          animation: ani-bounce 1s ease infinite;
}
.ani-bounce.ani-slow,
.ani-hover-bounce.ani-slow:hover {
  -webkit-animation: ani-bounce 3s ease infinite;
          animation: ani-bounce 3s ease infinite;
}
.ani-float,
.ani-hover-float:hover {
  -webkit-animation: ani-float 2s linear infinite;
          animation: ani-float 2s linear infinite;
}
.ani-float.ani-fast,
.ani-hover-float.ani-fast:hover {
  -webkit-animation: ani-float 1s linear infinite;
          animation: ani-float 1s linear infinite;
}
.ani-float.ani-slow,
.ani-hover-float.ani-slow:hover {
  -webkit-animation: ani-float 3s linear infinite;
          animation: ani-float 3s linear infinite;
}
.ani-heartbeat,
.ani-hover-heartbeat:hover {
  -webkit-animation: ani-heartbeat 2s linear infinite;
          animation: ani-heartbeat 2s linear infinite;
}
.ani-heartbeat.ani-fast,
.ani-hover-heartbeat.ani-fast:hover {
  -webkit-animation: ani-heartbeat 1s linear infinite;
          animation: ani-heartbeat 1s linear infinite;
}
.ani-heartbeat.ani-slow,
.ani-hover-heartbeat.ani-slow:hover {
  -webkit-animation: ani-heartbeat 3s linear infinite;
          animation: ani-heartbeat 3s linear infinite;
}
.ani-shake,
.ani-hover-shake:hover {
  -webkit-animation: ani-wrench 2.5s ease infinite;
          animation: ani-wrench 2.5s ease infinite;
}
.ani-shake.ani-fast,
.ani-hover-shake.ani-fast:hover {
  -webkit-animation: ani-wrench 1.2s ease infinite;
          animation: ani-wrench 1.2s ease infinite;
}
.ani-shake.ani-slow,
.ani-hover-shake.ani-slow:hover {
  -webkit-animation: ani-wrench 3.7s ease infinite;
          animation: ani-wrench 3.7s ease infinite;
}
.ani-shuttle,
.ani-hover-shuttle:hover {
  -webkit-animation: ani-shuttle 2s linear infinite;
          animation: ani-shuttle 2s linear infinite;
}
.ani-shuttle.ani-fast,
.ani-hover-shuttle.ani-fast:hover {
  -webkit-animation: ani-shuttle 1s linear infinite;
          animation: ani-shuttle 1s linear infinite;
}
.ani-shuttle.ani-slow,
.ani-hover-shuttle.ani-slow:hover {
  -webkit-animation: ani-shuttle 3s linear infinite;
          animation: ani-shuttle 3s linear infinite;
}
.ani-pass,
.ani-hover-pass:hover {
  -webkit-animation: ani-pass 2s linear infinite;
          animation: ani-pass 2s linear infinite;
}
.ani-pass.ani-fast,
.ani-hover-pass.ani-fast:hover {
  -webkit-animation: ani-pass 1s linear infinite;
          animation: ani-pass 1s linear infinite;
}
.ani-pass.ani-slow,
.ani-hover-pass.ani-slow:hover {
  -webkit-animation: ani-pass 3s linear infinite;
          animation: ani-pass 3s linear infinite;
}
.ani-ripple,
.ani-hover-ripple:hover {
  -webkit-animation: ani-ripple 2s infinite linear;
          animation: ani-ripple 2s infinite linear;
}
.ani-ripple.ani-fast,
.ani-hover-ripple.ani-fast:hover {
  -webkit-animation: ani-ripple 1s infinite linear;
          animation: ani-ripple 1s infinite linear;
}
.ani-ripple.ani-slow,
.ani-hover-ripple.ani-slow:hover {
  -webkit-animation: ani-ripple 3s infinite linear;
          animation: ani-ripple 3s infinite linear;
}
@-webkit-keyframes swinging {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  5% {
    -webkit-transform: rotate(10deg);
            transform: rotate(10deg);
  }
  10% {
    -webkit-transform: rotate(-9deg);
            transform: rotate(-9deg);
  }
  15% {
    -webkit-transform: rotate(8deg);
            transform: rotate(8deg);
  }
  20% {
    -webkit-transform: rotate(-7deg);
            transform: rotate(-7deg);
  }
  25% {
    -webkit-transform: rotate(6deg);
            transform: rotate(6deg);
  }
  30% {
    -webkit-transform: rotate(-5deg);
            transform: rotate(-5deg);
  }
  35% {
    -webkit-transform: rotate(4deg);
            transform: rotate(4deg);
  }
  40% {
    -webkit-transform: rotate(-3deg);
            transform: rotate(-3deg);
  }
  45% {
    -webkit-transform: rotate(2deg);
            transform: rotate(2deg);
  }
  50% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@keyframes swinging {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  5% {
    -webkit-transform: rotate(10deg);
            transform: rotate(10deg);
  }
  10% {
    -webkit-transform: rotate(-9deg);
            transform: rotate(-9deg);
  }
  15% {
    -webkit-transform: rotate(8deg);
            transform: rotate(8deg);
  }
  20% {
    -webkit-transform: rotate(-7deg);
            transform: rotate(-7deg);
  }
  25% {
    -webkit-transform: rotate(6deg);
            transform: rotate(6deg);
  }
  30% {
    -webkit-transform: rotate(-5deg);
            transform: rotate(-5deg);
  }
  35% {
    -webkit-transform: rotate(4deg);
            transform: rotate(4deg);
  }
  40% {
    -webkit-transform: rotate(-3deg);
            transform: rotate(-3deg);
  }
  45% {
    -webkit-transform: rotate(2deg);
            transform: rotate(2deg);
  }
  50% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@-webkit-keyframes scaleout {
  0% {
    -webkit-transform: scale(0);
            transform: scale(0);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
    opacity: 0;
  }
}
@keyframes scaleout {
  0% {
    -webkit-transform: scale(0);
            transform: scale(0);
  }
  100% {
    -webkit-transform: scale(1);
            transform: scale(1);
    opacity: 0;
  }
}
@-webkit-keyframes cubemove {
  25% {
    -webkit-transform: translateX(10px) rotate(-90deg);
            transform: translateX(10px) rotate(-90deg);
  }
  50% {
    -webkit-transform: translateX(10px) translateY(10px) rotate(-179deg);
            transform: translateX(10px) translateY(10px) rotate(-179deg);
  }
  50.1% {
    -webkit-transform: translateX(10px) translateY(10px) rotate(-180deg);
            transform: translateX(10px) translateY(10px) rotate(-180deg);
  }
  75% {
    -webkit-transform: translateX(0px) translateY(10px) rotate(-270deg);
            transform: translateX(0px) translateY(10px) rotate(-270deg);
  }
  100% {
    -webkit-transform: rotate(-360deg);
            transform: rotate(-360deg);
  }
}
@keyframes cubemove {
  25% {
    -webkit-transform: translateX(10px) rotate(-90deg);
            transform: translateX(10px) rotate(-90deg);
  }
  50% {
    -webkit-transform: translateX(10px) translateY(10px) rotate(-179deg);
            transform: translateX(10px) translateY(10px) rotate(-179deg);
  }
  50.1% {
    -webkit-transform: translateX(10px) translateY(10px) rotate(-180deg);
            transform: translateX(10px) translateY(10px) rotate(-180deg);
  }
  75% {
    -webkit-transform: translateX(0px) translateY(10px) rotate(-270deg);
            transform: translateX(0px) translateY(10px) rotate(-270deg);
  }
  100% {
    -webkit-transform: rotate(-360deg);
            transform: rotate(-360deg);
  }
}
@-webkit-keyframes orbit {
  0% {
    opacity: 1;
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
    -webkit-transform: rotate(225deg);
            transform: rotate(225deg);
  }
  7% {
    -webkit-transform: rotate(345deg);
            transform: rotate(345deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  35% {
    -webkit-transform: rotate(495deg);
            transform: rotate(495deg);
    -webkit-animation-timing-function: ease-in-out;
            animation-timing-function: ease-in-out;
  }
  42% {
    -webkit-transform: rotate(690deg);
            transform: rotate(690deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  70% {
    opacity: 1;
    -webkit-transform: rotate(835deg);
            transform: rotate(835deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  76% {
    opacity: 1;
  }
  77% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  78% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    opacity: 0;
  }
  100% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    opacity: 0;
  }
}
@keyframes orbit {
  0% {
    opacity: 1;
    -webkit-animation-timing-function: ease-out;
            animation-timing-function: ease-out;
    -webkit-transform: rotate(225deg);
            transform: rotate(225deg);
  }
  7% {
    -webkit-transform: rotate(345deg);
            transform: rotate(345deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  35% {
    -webkit-transform: rotate(495deg);
            transform: rotate(495deg);
    -webkit-animation-timing-function: ease-in-out;
            animation-timing-function: ease-in-out;
  }
  42% {
    -webkit-transform: rotate(690deg);
            transform: rotate(690deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  70% {
    opacity: 1;
    -webkit-transform: rotate(835deg);
            transform: rotate(835deg);
    -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
  }
  76% {
    opacity: 1;
  }
  77% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    -webkit-animation-timing-function: ease-in;
            animation-timing-function: ease-in;
  }
  78% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    opacity: 0;
  }
  100% {
    -webkit-transform: rotate(955deg);
            transform: rotate(955deg);
    opacity: 0;
  }
}
@-webkit-keyframes metro-slide {
  0% {
    left: -50%;
  }
  100% {
    left: 150%;
  }
}
@keyframes metro-slide {
  0% {
    left: -50%;
  }
  100% {
    left: 150%;
  }
}
@-webkit-keyframes metro-opacity {
  0% {
    opacity: 0;
  }
  50% {
    opacity: .5;
  }
  100% {
    opacity: 1;
  }
}
@keyframes metro-opacity {
  0% {
    opacity: 0;
  }
  50% {
    opacity: .5;
  }
  100% {
    opacity: 1;
  }
}
@-webkit-keyframes ani-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
            transform: rotate(359deg);
  }
}
@keyframes ani-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
            transform: rotate(359deg);
  }
}
@-webkit-keyframes ani-pulse {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
            transform: rotate(359deg);
  }
}
@keyframes ani-pulse {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
            transform: rotate(359deg);
  }
}
@-webkit-keyframes ani-wrench {
  0% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  8% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  10% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  18% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  20% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  28% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  30% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  38% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  40% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  48% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  50% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  58% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  60% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  68% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  75% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@keyframes ani-wrench {
  0% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  8% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  10% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  18% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  20% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  28% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  30% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  38% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  40% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  48% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  50% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  58% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  60% {
    -webkit-transform: rotate(-24deg);
            transform: rotate(-24deg);
  }
  68% {
    -webkit-transform: rotate(24deg);
            transform: rotate(24deg);
  }
  75% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@-webkit-keyframes ani-ring {
  0% {
    -webkit-transform: rotate(-15deg);
            transform: rotate(-15deg);
  }
  2% {
    -webkit-transform: rotate(15deg);
            transform: rotate(15deg);
  }
  4% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  6% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  8% {
    -webkit-transform: rotate(-22deg);
            transform: rotate(-22deg);
  }
  10% {
    -webkit-transform: rotate(22deg);
            transform: rotate(22deg);
  }
  12% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  14% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  16% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  18% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  20% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@keyframes ani-ring {
  0% {
    -webkit-transform: rotate(-15deg);
            transform: rotate(-15deg);
  }
  2% {
    -webkit-transform: rotate(15deg);
            transform: rotate(15deg);
  }
  4% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  6% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  8% {
    -webkit-transform: rotate(-22deg);
            transform: rotate(-22deg);
  }
  10% {
    -webkit-transform: rotate(22deg);
            transform: rotate(22deg);
  }
  12% {
    -webkit-transform: rotate(-18deg);
            transform: rotate(-18deg);
  }
  14% {
    -webkit-transform: rotate(18deg);
            transform: rotate(18deg);
  }
  16% {
    -webkit-transform: rotate(-12deg);
            transform: rotate(-12deg);
  }
  18% {
    -webkit-transform: rotate(12deg);
            transform: rotate(12deg);
  }
  20% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
}
@-webkit-keyframes ani-vertical {
  0% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  4% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  8% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  12% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  16% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  20% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  22% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
}
@keyframes ani-vertical {
  0% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  4% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  8% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  12% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  16% {
    -webkit-transform: translate(0, -3px);
            transform: translate(0, -3px);
  }
  20% {
    -webkit-transform: translate(0, 3px);
            transform: translate(0, 3px);
  }
  22% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
}
@-webkit-keyframes ani-horizontal {
  0% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  6% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  12% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  18% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  24% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  30% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  36% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
}
@keyframes ani-horizontal {
  0% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  6% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  12% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  18% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  24% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
  30% {
    -webkit-transform: translate(5px, 0);
            transform: translate(5px, 0);
  }
  36% {
    -webkit-transform: translate(0, 0);
            transform: translate(0, 0);
  }
}
@-webkit-keyframes ani-flash {
  0%,
  100%,
  50% {
    opacity: 1;
  }
  25%,
  75% {
    opacity: 0;
  }
}
@keyframes ani-flash {
  0%,
  100%,
  50% {
    opacity: 1;
  }
  25%,
  75% {
    opacity: 0;
  }
}
@-webkit-keyframes ani-bounce {
  0%,
  10%,
  20%,
  50%,
  80% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  40% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
  60% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
}
@keyframes ani-bounce {
  0%,
  10%,
  20%,
  50%,
  80% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  40% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
  60% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
}
@-webkit-keyframes ani-float {
  0% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  50% {
    -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
  }
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}
@keyframes ani-float {
  0% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  50% {
    -webkit-transform: translateY(-6px);
            transform: translateY(-6px);
  }
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}
@-webkit-keyframes ani-heartbeat {
  0% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  50% {
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
  100% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
}
@keyframes ani-heartbeat {
  0% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  50% {
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
  100% {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
}
@-webkit-keyframes ani-shuttle {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  10%,
  20% {
    -webkit-transform: scale(0.9) rotate(-8deg);
            transform: scale(0.9) rotate(-8deg);
  }
  30%,
  50%,
  70% {
    -webkit-transform: scale(1.3) rotate(8deg);
            transform: scale(1.3) rotate(8deg);
  }
  40%,
  60% {
    -webkit-transform: scale(1.3) rotate(-8deg);
            transform: scale(1.3) rotate(-8deg);
  }
  80% {
    -webkit-transform: scale(1) rotate(0);
            transform: scale(1) rotate(0);
  }
}
@keyframes ani-shuttle {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  10%,
  20% {
    -webkit-transform: scale(0.9) rotate(-8deg);
            transform: scale(0.9) rotate(-8deg);
  }
  30%,
  50%,
  70% {
    -webkit-transform: scale(1.3) rotate(8deg);
            transform: scale(1.3) rotate(8deg);
  }
  40%,
  60% {
    -webkit-transform: scale(1.3) rotate(-8deg);
            transform: scale(1.3) rotate(-8deg);
  }
  80% {
    -webkit-transform: scale(1) rotate(0);
            transform: scale(1) rotate(0);
  }
}
@-webkit-keyframes ani-pass {
  0% {
    -webkit-transform: translateX(-50%);
            transform: translateX(-50%);
    opacity: 0;
  }
  50% {
    -webkit-transform: translateX(0%);
            transform: translateX(0%);
    opacity: 1;
  }
  100% {
    -webkit-transform: translateX(50%);
            transform: translateX(50%);
    opacity: 0;
  }
}
@keyframes ani-pass {
  0% {
    -webkit-transform: translateX(-50%);
            transform: translateX(-50%);
    opacity: 0;
  }
  50% {
    -webkit-transform: translateX(0%);
            transform: translateX(0%);
    opacity: 1;
  }
  100% {
    -webkit-transform: translateX(50%);
            transform: translateX(50%);
    opacity: 0;
  }
}
@-webkit-keyframes ani-ripple {
  0% {
    opacity: .6;
  }
  50% {
    -webkit-transform: scale(1.8);
            transform: scale(1.8);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes ani-ripple {
  0% {
    opacity: .6;
  }
  50% {
    -webkit-transform: scale(1.8);
            transform: scale(1.8);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes ani-shrink {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  90% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  100% {
    -webkit-transform: scale(0.5);
            transform: scale(0.5);
  }
}
@keyframes ani-shrink {
  0% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  90% {
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  100% {
    -webkit-transform: scale(0.5);
            transform: scale(0.5);
  }
}
@-webkit-keyframes ani-drop {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  25% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@keyframes ani-drop {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  25% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@-webkit-keyframes ani-drop2 {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  50% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@keyframes ani-drop2 {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  50% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@-webkit-keyframes ani-drop3 {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  75% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@keyframes ani-drop3 {
  0% {
    -webkit-transform: translateY(-50px);
            transform: translateY(-50px);
  }
  75% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
  100% {
    -webkit-transform: translate(0);
            transform: translate(0);
  }
}
@-webkit-keyframes ani-pre-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@keyframes ani-pre-spin {
  0% {
    -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@-webkit-keyframes ani-bg-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes ani-bg-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.calendar {
  min-width: 13.75rem;
  border: 1px #eeeeee solid;
  font-size: .75rem;
  padding: .3125rem;
  background-color: #ffffff;
}
.calendar .calendar-grid {
  margin: 0;
  padding: 0;
}
.calendar .calendar-row {
  margin: 0 0 .3125rem;
  width: 100%;
}
.calendar .calendar-row:before,
.calendar .calendar-row:after {
  display: table;
  content: "";
}
.calendar .calendar-row:after {
  clear: both;
}
.calendar .calendar-row:last-child {
  margin-bottom: 0;
}
.calendar .calendar-cell {
  width: 12.46201429%;
  margin: 0 0 0 2.12765%;
  display: block;
  float: left;
}
.calendar .calendar-cell:first-child {
  margin-left: 0;
}
.calendar .calendar-cell.sel-month {
  width: 41.64134286%;
}
.calendar .calendar-cell.sel-year {
  width: 48.936175%;
}
.calendar .calendar-cell.sel-plus,
.calendar .calendar-cell.sel-minus {
  width: 23.4042625%;
}
.calendar .calendar-cell.month-cell,
.calendar .calendar-cell.year-cell {
  width: 23.4042625%;
}
.calendar .calendar-actions .button {
  margin: .15625rem;
}
.calendar .day-of-week {
  padding: .3125rem;
  cursor: default;
}
.calendar a {
  display: block;
  padding: .3125rem 0;
}
.calendar a:hover {
  background-color: #75c7ee;
  color: #ffffff;
  border-radius: inherit;
}
.calendar .calendar-header {
  background-color: #59cde2;
  color: #ffffff;
}
.calendar .calendar-header a {
  color: #ffffff;
  padding: .325rem;
}
.calendar .calendar-header a:hover {
  background-color: #47b4e9;
  color: #ffffff;
}
.calendar .calendar-actions:before,
.calendar .calendar-actions:after {
  display: table;
  content: "";
}
.calendar .calendar-actions:after {
  clear: both;
}
.calendar .today a {
  background-color: #60a917;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.calendar .day {
  border: 1px #bcd9e2 solid;
  text-align: center;
}
.calendar .day a {
  display: block;
  position: relative;
  text-align: center;
}
.calendar .month,
.calendar .year {
  border: 1px #bcd9e2 solid;
}
.calendar .month a,
.calendar .year a {
  padding-top: 1.3125rem;
  padding-bottom: 1.3125rem;
}
.calendar .empty {
  cursor: default;
}
.calendar .other-day {
  display: block;
  text-align: center;
  color: #999999;
  padding: .325rem;
  background-color: #eeeeee;
  border: 1px #bcd9e2 solid;
}
.calendar .exclude {
  background-color: #ce352c;
}
.calendar .exclude a {
  cursor: not-allowed;
  background-color: #ce352c;
  color: #ffffff;
}
.calendar .stored {
  background-color: #f472d0;
}
.calendar .stored a {
  cursor: pointer;
  background-color: #f472d0;
  color: #ffffff;
}
.calendar .selected {
  background-color: #59cde2;
}
.calendar .selected a {
  background-color: #59cde2;
  color: #ffffff;
}
.calendar.rounded button {
  border-radius: 0.3125rem;
}
.calendar.rounded .day,
.calendar.rounded .month,
.calendar.rounded .year,
.calendar.rounded .other-day,
.calendar.rounded .today,
.calendar.rounded .calendar-header,
.calendar.rounded .selected {
  border-radius: 0.3125rem;
}
.calendar.rounded .today a,
.calendar.rounded .selected a,
.calendar.rounded .exclude a {
  border-radius: 0.3125rem;
}
.calendar.rounded .calendar-header a:hover {
  border-radius: 0.3125rem;
}
.calendar.no-border .day,
.calendar.no-border .month,
.calendar.no-border .year,
.calendar.no-border .other-day,
.calendar.no-border .today,
.calendar.no-border .calendar-header {
  border: 0;
}
.calendar.no-border .today a {
  border: 0;
}
.calendar-dropdown {
  border: 0;
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.stepper {
  margin: 10px 0;
  width: 100%;
}
.stepper:before,
.stepper:after {
  display: table;
  content: "";
}
.stepper:after {
  clear: both;
}
.stepper > ul {
  counter-reset: li;
  border-top: 1px #1d1d1d dotted;
  position: relative;
  padding: 0;
  margin: 30px 0;
  width: 100%;
  display: block;
}
.stepper > ul li {
  list-style: none;
  float: left;
  width: 2em;
  height: 2em;
  margin-top: -1em;
  position: absolute;
  left: 0;
  background: #666;
  cursor: pointer;
  font-size: .875rem;
}
.stepper > ul li:before {
  content: counter(li);
  counter-increment: li;
  position: absolute;
  box-sizing: border-box;
  padding: .3em 10px;
  color: #fff;
  font-weight: bold;
  font-family: "Helvetica Neue", Arial, sans-serif;
  font-size: .9em;
  text-align: center;
}
.stepper > ul li:hover {
  background-color: #999999;
}
.stepper > ul li.current,
.stepper > ul li.complete {
  transition: all 0.2s ease;
}
.stepper > ul li.current {
  background-color: #1ba1e2;
}
.stepper > ul li.current:hover {
  background-color: #00ccff;
}
.stepper > ul li.complete {
  background-color: #60a917;
}
.stepper > ul li.complete:hover {
  background-color: #7ad61d;
}
.stepper.cycle li {
  border-radius: 50%;
}
.stepper.diamond li {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.stepper.diamond li:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.wizard {
  position: relative;
}
.wizard .steps {
  margin: 10px 0;
  padding: 20px;
  border: 1px #eeeeee solid;
  position: relative;
}
.wizard .steps .step {
  position: relative;
  width: 100%;
  height: 100%;
  display: none;
}
.wizard .steps .step:first-child {
  display: block;
}
.wizard .actions .group-right {
  float: right;
}
.wizard .actions .group-left {
  float: left;
}
.wizard .actions button {
  padding: 0 1rem;
  height: 2.125rem;
  text-align: center;
  vertical-align: middle;
  background-color: #ffffff;
  border: 1px #d9d9d9 solid;
  color: #262626;
  cursor: pointer;
  display: inline-block;
  outline: none;
  font-size: .875rem;
  line-height: 100%;
  margin: .15625rem 0;
  position: relative;
  margin-right: 2px;
}
.wizard .actions button.default {
  background-color: #008287;
  color: #fff;
}
.wizard .actions button:hover {
  border-color: #787878;
}
.wizard .actions button:active {
  background: #eeeeee;
  color: #262626;
  box-shadow: none;
}
.wizard .actions button:focus {
  outline: 0;
}
.wizard .actions button:disabled,
.wizard .actions button.disabled {
  background-color: #eaeaea;
  color: #bebebe;
  cursor: default;
  border-color: transparent;
}
.wizard .actions button * {
  color: inherit;
}
.wizard .actions button *:hover {
  color: inherit;
}
.wizard .actions button.rounded {
  border-radius: .325rem;
}
.wizard .actions button > [class*=mif-] {
  vertical-align: middle;
}
.wizard .actions button img {
  height: .875rem;
  vertical-align: middle;
  margin: 0;
}
.wizard .actions button.loading-pulse {
  position: relative;
  padding: 0 1.325rem;
}
.wizard .actions button.loading-pulse:before {
  position: absolute;
  content: "";
  left: 0;
  top: 50%;
  margin-top: -10px;
  width: 20px;
  height: 20px;
  background-color: #333;
  border-radius: 100%;
  -webkit-animation: scaleout 1s infinite ease-in-out;
          animation: scaleout 1s infinite ease-in-out;
}
.wizard .actions button.loading-pulse.lighten:before {
  background-color: #fff;
}
.wizard .actions button.loading-cube {
  position: relative;
  padding: 0 1.325rem;
}
.wizard .actions button.loading-cube:before,
.wizard .actions button.loading-cube:after {
  content: "";
  background-color: #333;
  width: 5px;
  height: 5px;
  position: absolute;
  top: 50%;
  left: 3px;
  margin-top: -8px;
  -webkit-animation: cubemove 1.8s infinite ease-in-out;
          animation: cubemove 1.8s infinite ease-in-out;
}
.wizard .actions button.loading-cube:after {
  -webkit-animation-delay: -0.9s;
          animation-delay: -0.9s;
}
.wizard .actions button.loading-cube.lighten:before,
.wizard .actions button.loading-cube.lighten:after {
  background-color: #fff;
}
.wizard .actions button.dropdown-toggle {
  padding-right: 1.625rem;
}
.wizard .actions button.dropdown-toggle.drop-marker-light:before,
.wizard .actions button.dropdown-toggle.drop-marker-light:after {
  background-color: #ffffff;
}
.wizard .actions button.primary {
  background: #2086bf;
  color: #ffffff;
  border-color: #2086bf;
}
.wizard .actions button.primary:active {
  background: #1b6eae;
  color: #ffffff;
}
.wizard .actions button.success {
  background: #60a917;
  color: #ffffff;
  border-color: #60a917;
}
.wizard .actions button.success:active {
  background: #128023;
  color: #ffffff;
}
.wizard .actions button.danger,
.wizard .actions button.alert {
  background: #ce352c;
  color: #ffffff;
  border-color: #ce352c;
}
.wizard .actions button.danger:active,
.wizard .actions button.alert:active {
  background: #9a1616;
  color: #ffffff;
}
.wizard .actions button.info {
  background: #59cde2;
  color: #ffffff;
  border-color: #59cde2;
}
.wizard .actions button.info:active {
  background: #1ba1e2;
  color: #ffffff;
}
.wizard .actions button.warning {
  background: #fa6800;
  color: #ffffff;
  border-color: #fa6800;
}
.wizard .actions button.warning:active {
  background: #bf5a15;
  color: #ffffff;
}
.wizard .actions button.link {
  background: transparent;
  color: #2086bf;
  border-color: transparent;
  text-decoration: underline;
}
.wizard .actions button.link:hover,
.wizard .actions button.link:active {
  background: transparent;
  color: #114968;
  border-color: transparent;
}
.wizard .actions button:last-child {
  margin-right: 0;
}
.wizard .actions button.btn-finish {
  background-color: #60a917;
  color: #ffffff;
}
.wizard .actions button:disabled {
  background-color: #6f6f6f;
}
.wizard2 {
  counter-reset: div;
  position: relative;
  width: 100%;
}
.wizard2:before,
.wizard2:after {
  display: table;
  content: "";
}
.wizard2:after {
  clear: both;
}
.wizard2 .step {
  width: auto;
  display: block;
  float: left;
  position: relative;
  z-index: 1;
  padding: 0 0 3rem;
}
.wizard2 .step:before {
  content: counter(div);
  counter-increment: div;
  position: absolute;
  font-size: .8rem;
  bottom: 20px;
  width: 24px;
  text-align: center;
}
.wizard2 .step.active {
  border: 0;
}
.wizard2 .step.active:before {
  visibility: hidden;
}
.wizard2 .step.prev {
  border-left: 24px solid #eeeeee;
  border-right: 1px solid #e6e6e6;
  width: 0 ;
}
.wizard2 .step.prev:before {
  left: 0 ;
  margin-left: -24px;
  color: #1d1d1d;
}
.wizard2 .step.next {
  border-left: 1px solid #e6e6e6;
  border-right: 24px solid #1ba1e2;
  width: 0;
}
.wizard2 .step.next:before {
  left: 100%;
  color: #ffffff;
}
.wizard2 .step.next + .next {
  border-color: #1891cb;
}
.wizard2 .step.next + .next + .next {
  border-color: #1681b4;
}
.wizard2 .step.next + .next + .next + .next {
  border-color: #13709e;
}
.wizard2 .step.next + .next + .next + .next + .next {
  border-color: #106087;
}
.wizard2 .step.next + .next + .next + .next + .next + .next {
  border-color: #0b4059;
}
.wizard2 .step.next + .next + .next + .next + .next + .next + .next {
  border-color: #082f43;
}
.wizard2 .step.next + .next + .next + .next + .next + .next + .next + .next {
  border-color: #051f2c;
}
.wizard2 .step.next + .next + .next + .next + .next + .next + .next + .next + .next {
  border-color: #030f15;
}
.wizard2 .step-content {
  width: auto;
  overflow: hidden;
  padding: .625rem;
}
.wizard2 .step.prev .step-content,
.wizard2 .step.next .step-content {
  width: 0 ;
  padding: 0 ;
}
.wizard2 .action-bar {
  padding: 0 .625rem;
  position: absolute;
  bottom: 10px;
  text-align: right;
  z-index: 2;
}
.wizard2 .action-bar:before,
.wizard2 .action-bar:after {
  display: table;
  content: "";
}
.wizard2 .action-bar:after {
  clear: both;
}
.wizard2 .action-bar .button {
  margin: 0 .125rem;
  opacity: .6;
}
.wizard2 .action-bar .button:hover {
  opacity: 1;
}
.countdown {
  display: inline-block;
  font-weight: 700;
  font-size: 1rem;
  margin: .1em 0 1.2em;
}
.countdown .part {
  display: inline-block;
  position: relative;
}
.countdown .part.days:after,
.countdown .part.hours:after,
.countdown .part.minutes:after,
.countdown .part.seconds:after {
  position: absolute;
  content: attr(data-day-text);
  text-align: center;
  top: 100%;
  left: 0;
  width: 100%;
  font-size: .6em;
  color: inherit;
}
.countdown .part.disabled .digit {
  opacity: .3;
  box-shadow: none;
}
.countdown .digit,
.countdown .divider {
  display: inline-block;
  padding: .3125em .625em;
  background-color: #1ba1e2;
  color: #ffffff;
  cursor: default;
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
  transition: all 0.5s ease;
}
.countdown .digit,
.countdown .divider {
  margin-left: 4px;
}
.countdown .divider {
  padding: .125em .25em;
  color: #1d1d1d;
  background-color: transparent;
  box-shadow: none;
}
.countdown.tick .divider {
  opacity: 0;
}
.countdown.labels-top {
  margin: 1.2em 0 .1em;
}
.countdown.labels-top .part.days:after,
.countdown.labels-top .part.hours:after,
.countdown.labels-top .part.minutes:after,
.countdown.labels-top .part.seconds:after {
  top: 0;
  left: 0;
  margin-top: -1.5em;
}
.countdown.rounded .part .digit {
  border-radius: .5em;
}
.countdown .digit.scaleIn {
  transition: all 0.5s ease;
  -webkit-transform: scale(1.1);
          transform: scale(1.1);
}
.sidebar-container {
  background-color: #71b1d1;
  color: #ffffff;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  overflow-x: hidden;
  overflow-y: scroll;
}
.sidebar {
  background-color: #71b1d1;
  color: #ffffff;
  position: relative;
  width: 100%;
  padding: 0;
  margin: 0;
  list-style: none inside none;
}
.sidebar li {
  display: block;
  background-color: inherit;
  color: inherit;
  position: relative;
  height: 52px;
}
.sidebar li a {
  display: block;
  background-color: inherit;
  color: inherit;
  padding: .625rem 1rem .625rem 3.75rem;
  position: relative;
  width: 100%;
  height: 100%;
  line-height: .875rem;
}
.sidebar li a .icon {
  width: 28px;
  height: 28px;
  font-size: 28px;
  line-height: 28px;
  vertical-align: middle;
  text-align: center;
  position: absolute;
  left: .625rem;
  top: .625rem;
}
.sidebar li a .title,
.sidebar li a .counter {
  display: block;
  margin: 0;
  white-space: nowrap;
}
.sidebar li a .title {
  font-size: .6875rem;
  font-weight: bold;
  text-transform: uppercase;
}
.sidebar li a .counter {
  font-size: .7rem;
  font-weight: normal;
}
.sidebar li:hover {
  background-color: #7cc1de;
}
.sidebar li.active {
  background-color: #ffffff;
  color: #323232;
}
.sidebar {
  transition: all 0.2s ease;
}
.sidebar.compact {
  width: 52px;
  transition: all 0.2s ease;
}
.sidebar.compact a {
  padding-right: 0;
  padding-left: 0;
  width: 52px;
}
.sidebar.compact .title {
  display: none ;
}
.sidebar.compact .counter {
  position: absolute;
  top: 0;
  right: 4px;
}
.sidebar2 {
  text-align: left;
  background: #ffffff;
  max-width: 15.625rem;
  list-style: none inside none;
  margin: 0;
  padding: 0;
  position: relative;
  width: auto;
  float: left;
  border-collapse: separate;
  border: 1px #eeeeee solid;
  width: 100%;
}
.sidebar2 li:hover > .dropdown-toggle:before {
  border-color: #ffffff;
}
.sidebar2 li {
  display: block;
  float: none;
  position: relative;
}
.sidebar2 li:before,
.sidebar2 li:after {
  display: table;
  content: "";
}
.sidebar2 li:after {
  clear: both;
}
.sidebar2 li a {
  color: #727272;
  font-size: .875rem;
  display: block;
  float: none;
  padding: .75rem 2rem .75rem 2.5rem;
  text-decoration: none;
  vertical-align: middle;
  position: relative;
  white-space: nowrap;
  min-width: 12.5rem;
  border: none;
}
.sidebar2 li a img,
.sidebar2 li a .icon {
  position: absolute;
  left: .875rem;
  top: 50%;
  margin-top: -0.5625rem;
  color: #262626;
  max-height: 1.125rem;
  font-size: 1.125rem;
  display: inline-block;
  margin-right: .3125rem;
  vertical-align: middle;
  text-align: center;
}
.sidebar2 li.active {
  border-left: 2px solid;
  border-color: #1ba1e2;
}
.sidebar2 li.active > a {
  background-color: #59cde2;
  color: #ffffff;
  font-weight: bold;
}
.sidebar2 li:hover {
  text-decoration: none;
  background: #59cde2;
}
.sidebar2 li:hover > a,
.sidebar2 li:hover .icon {
  color: #ffffff;
}
.sidebar2 li a[data-hotkey] {
  padding-right: 3.2rem;
}
.sidebar2 li a[data-hotkey]:after {
  content: attr(data-hotkey);
  position: absolute;
  right: 1.2rem;
  width: auto;
  font-size: .8em;
}
.sidebar2 .divider {
  padding: 0;
  height: 1px;
  margin: 0 1px;
  overflow: hidden;
  background-color: #f2f2f2;
}
.sidebar2 .divider:hover {
  background-color: #f2f2f2;
}
.sidebar2.subdown .d-menu {
  min-width: 0;
  position: relative;
  width: 100%;
  left: 0 ;
  right: 0 ;
  top: 100%;
  box-shadow: none;
}
.sidebar2 .item-block {
  display: block;
  padding: .625rem;
  background-color: #eeeeee;
}
.sidebar2 .d-menu {
  left: 100%;
  top: -10%;
}
.sidebar2 .menu-title {
  background-color: #f6f7f8;
  font-size: 12px;
  line-height: 14px;
  padding: 4px 8px;
  border: 0;
  color: #646464;
}
.sidebar2 .menu-title:first-child {
  margin: 0;
  border-top-width: 0;
}
.sidebar2 .menu-title:first-child:hover {
  border-top-width: 0;
}
.sidebar2 .menu-title:hover {
  background-color: #f6f7f8;
  cursor: default;
  border: 0;
}
.sidebar2 .dropdown-toggle:before {
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
  margin-top: -2px;
}
.sidebar2 .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.sidebar2 .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  transition: all 0.3s ease;
}
.sidebar2.subdown .dropdown-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -1.25rem;
}
.sidebar2.subdown .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.sidebar2 li.disabled a {
  color: #eeeeee;
}
.sidebar2 li.disabled:hover {
  background-color: inherit;
  cursor: default;
  border: 0;
}
.sidebar2 li.disabled:hover a {
  cursor: inherit;
}
.sidebar2.context li a {
  font-size: .75rem;
  padding: .3125rem 2rem .3125rem 2.5rem;
}
.sidebar2.context li a .icon {
  margin-top: -0.4375rem;
  font-size: .825rem;
  color: inherit;
}
.sidebar2.no-min-size li a {
  min-width: 0;
}
.sidebar2.full-size li a {
  min-width: 0;
  width: 100%;
}
.sidebar2 .d-menu {
  min-width: 0;
  position: relative;
  width: 100%;
  left: 0 ;
  right: 0 ;
  top: 100%;
  box-shadow: none;
}
.sidebar2 .dropdown-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -1.25rem;
}
.sidebar2 .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.sidebar2 li {
  border-top: 1px #eeeeee solid;
  cursor: default;
}
.sidebar2 li.stick {
  position: relative;
}
.sidebar2 li.stick:before {
  content: "";
  position: absolute;
  width: 7px;
  height: 44px;
  left: -7px;
  text-indent: -9999px;
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
  background-color: inherit;
}
.sidebar2 li.disabled {
  background-color: inherit;
}
.sidebar2 li.disabled:hover {
  border-top: 1px #eeeeee solid;
}
.sidebar2 li a {
  background-color: #ffffff;
  color: #323232;
  white-space: normal;
  min-width: 0;
}
.sidebar2 li a .icon {
  color: inherit ;
}
.sidebar2 li.title {
  padding: 20px 20px 10px 20px;
  font-size: 24px;
  border: 0;
}
.sidebar2 li.title:hover {
  background-color: inherit;
}
.sidebar2 li:not(.title) + li.title {
  border-top: 1px #eeeeee solid;
}
.sidebar2 li.active {
  background-color: #71b1d1;
  border: none;
}
.sidebar2 li.active a {
  background-color: #71b1d1;
  color: #ffffff;
}
.sidebar2 li.active a .icon {
  color: inherit;
}
.sidebar2 li:hover a {
  background-color: #7cc1de;
}
.sidebar2 li.disabled:hover a {
  background-color: inherit;
}
.sidebar2 li li:not(:hover) {
  color: #1d1d1d;
}
.sidebar2 li li:not(:hover) a {
  background-color: #ffffff;
}
.sidebar2 .dropdown-toggle:before {
  transition: all 0.3s ease;
}
.sidebar2 .dropdown-toggle.active-toggle:before {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  transition: all 0.3s ease;
}
.sidebar2.dark li {
  border-top: 1px #5c5c5c solid;
}
.sidebar2.dark li.title {
  background-color: #3D3D3D;
  color: #ffffff;
}
.sidebar2.dark li a {
  background-color: #3D3D3D;
  color: #ffffff;
}
.sidebar2.dark li a:hover {
  background-color: #262626;
  color: #ffffff;
}
.sidebar2.dark li:not(.title) + li.title,
.sidebar2.dark li.disabled {
  border-top-color: #5c5c5c;
}
.sidebar2.dark li.disabled:hover {
  border-top-color: #5c5c5c ;
}
.sidebar2.dark li.disabled:hover a {
  background-color: #3D3D3D;
}
.sidebar2.dark li.disabled a {
  color: #999999;
}
.sidebar2.dark li.active a {
  background-color: #ce352c;
}
.sidebar2.dark .dropdown-toggle:before {
  border-color: #ffffff;
}
.sidebar2.dark .d-menu li a {
  background-color: #3D3D3D;
  color: #ffffff;
}
.sidebar2.dark .d-menu li a:hover {
  background-color: #262626;
  color: #ffffff;
}
.tabcontrol {
  position: relative;
  width: 100%;
}
.tabcontrol .tabs {
  width: 100%;
  margin: 0;
  padding: 0;
  list-style: none inside;
  border-bottom: 2px #1ba1e2 solid;
  white-space: nowrap;
  overflow: visible;
}
.tabcontrol .tabs:before,
.tabcontrol .tabs:after {
  display: table;
  content: "";
}
.tabcontrol .tabs:after {
  clear: both;
}
.tabcontrol .tabs li {
  display: block;
  float: left;
  position: relative;
  white-space: nowrap;
}
.tabcontrol .tabs li a {
  display: block;
  float: left;
  padding: 8px 24px;
  color: #1d1d1d;
  font-size: .6875rem;
  font-weight: bold;
  text-transform: uppercase;
  position: relative;
  white-space: nowrap;
}
.tabcontrol .tabs li:hover a {
  background-color: #eeeeee;
}
.tabcontrol .tabs li.active a {
  background-color: #1ba1e2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.tabcontrol .tabs li.disabled a {
  background: #eeeeee linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
  color: #999999;
  cursor: default;
}
.tabcontrol .tabs li.non-visible-tabs {
  display: block;
  float: right;
}
.tabcontrol .tabs li.non-visible-tabs:empty {
  display: none;
}
.tabcontrol .tabs li.non-visible-tabs.dropdown-toggle {
  height: 100% ;
}
.tabcontrol.tabs-bottom .tabs {
  border-bottom: none;
  border-top: 2px #1ba1e2 solid;
}
.tabcontrol.tabs-bottom .tabs li.disabled {
  top: 0;
}
.tabcontrol.tabs-bottom .tabs li:hover {
  top: 0;
}
.tabcontrol .frames {
  width: 100%;
  position: relative;
}
.tabcontrol .frames .frame {
  display: block;
  position: relative;
  width: 100%;
  padding: 20px;
  background-color: #999999;
}
.tabcontrol2 {
  position: relative;
  width: 100%;
}
.tabcontrol2 .tabs {
  width: 100%;
  margin: 0;
  padding: 0;
  list-style: none inside;
  border-bottom: 2px #1ba1e2 solid;
  white-space: nowrap;
  overflow: visible;
}
.tabcontrol2 .tabs:before,
.tabcontrol2 .tabs:after {
  display: table;
  content: "";
}
.tabcontrol2 .tabs:after {
  clear: both;
}
.tabcontrol2 .tabs li {
  display: block;
  float: left;
  position: relative;
  white-space: nowrap;
}
.tabcontrol2 .tabs li a {
  display: block;
  float: left;
  padding: 8px 24px;
  color: #1d1d1d;
  font-size: .6875rem;
  font-weight: bold;
  text-transform: uppercase;
  position: relative;
  white-space: nowrap;
}
.tabcontrol2 .tabs li:hover a {
  background-color: #eeeeee;
}
.tabcontrol2 .tabs li.active a {
  background-color: #1ba1e2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.tabcontrol2 .tabs li.disabled a {
  background: #eeeeee linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
  color: #999999;
  cursor: default;
}
.tabcontrol2 .tabs li.non-visible-tabs {
  display: block;
  float: right;
}
.tabcontrol2 .tabs li.non-visible-tabs:empty {
  display: none;
}
.tabcontrol2 .tabs li.non-visible-tabs.dropdown-toggle {
  height: 100% ;
}
.tabcontrol2.tabs-bottom .tabs {
  border-bottom: none;
  border-top: 2px #1ba1e2 solid;
}
.tabcontrol2.tabs-bottom .tabs li.disabled {
  top: 0;
}
.tabcontrol2.tabs-bottom .tabs li:hover {
  top: 0;
}
.tabcontrol2 .frames {
  width: 100%;
  position: relative;
}
.tabcontrol2 .frames .frame {
  display: block;
  position: relative;
  width: 100%;
  padding: 20px;
  background-color: #999999;
}
.tabcontrol2 .tabs {
  border-bottom: 0;
  vertical-align: bottom;
  z-index: 2;
}
.tabcontrol2 .tabs li {
  padding-top: 2px;
  overflow: visible;
  margin: 0 2px;
}
.tabcontrol2 .tabs li:after {
  content: "";
  position: absolute;
  left: 0;
  top: 100%;
  width: 100%;
  background-color: #ffffff;
  height: 2px;
  z-index: 3;
}
.tabcontrol2 .tabs li:not(.active):after {
  background-color: #eeeeee;
  height: 1px;
}
.tabcontrol2 .tabs li:first-child {
  margin-left: 10px;
}
.tabcontrol2 .tabs li a {
  background-color: #eeeeee;
  padding-top: .3125rem;
  text-shadow: none ;
}
.tabcontrol2 .tabs li.active {
  padding-top: 0;
  padding-bottom: 0;
}
.tabcontrol2 .tabs li.active a {
  background-color: #ffffff;
  border: 1px #eeeeee solid;
  border-top: 2px #ce352c solid;
  border-bottom: 0;
  color: #1ba1e2;
}
.tabcontrol2 .tabs li.active:hover a {
  background-color: inherit;
}
.tabcontrol2 .tabs li:hover a {
  background-color: #e1e1e1;
}
.tabcontrol2.tabs-bottom .tabs {
  border-top: 0;
}
.tabcontrol2.tabs-bottom .tabs li {
  padding: 0;
}
.tabcontrol2.tabs-bottom .tabs li:after {
  top: -1px;
  background-color: #ffffff;
}
.tabcontrol2.tabs-bottom .tabs li.active {
  padding-bottom: 0;
}
.tabcontrol2.tabs-bottom .tabs li.active a {
  border: 1px #eeeeee solid;
  border-bottom: 2px #ce352c solid;
  border-top: 0;
}
.tabcontrol2.tabs-bottom .tabs li:not(.active) {
  margin-bottom: 0;
}
.tabcontrol2.tabs-bottom .tabs li:not(.active):after {
  background-color: #eeeeee;
}
.tabcontrol2 .frames {
  z-index: 1;
  border: 1px #eeeeee solid;
}
.tabcontrol2 .frames .frame {
  background-color: #ffffff;
}
.accordion > .frame {
  margin-top: 1px;
}
.accordion > .frame:first-child {
  margin-top: 0;
}
.accordion > .frame > .heading {
  display: block;
  padding: 8px 16px 8px 20px;
  background-color: #f6f6f6;
  cursor: pointer;
  font-size: .6875rem;
  text-transform: uppercase;
  font-weight: bold;
  position: relative;
  border: 1px #eeeeee solid;
  overflow: hidden;
  z-index: 2;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  transition: all 0.3s ease;
}
.accordion > .frame > .heading:before {
  position: absolute;
  display: block;
  left: 4px;
  top: 6px;
  content: '';
  width: 0;
  height: 0;
  border-left: 6px solid transparent;
  border-top: 6px solid transparent;
  border-bottom: 6px solid black;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  transition: all 0.3s ease;
}
.accordion > .frame > .heading:hover {
  background-color: #eeeeee;
}
.accordion > .frame > .heading .icon {
  position: absolute;
  right: 0;
  top: 0;
  font-size: 3rem;
  width: 3rem;
  max-height: 3rem;
  opacity: .6;
  color: #999999;
}
.accordion > .frame.active > .heading {
  background-color: #1ba1e2;
  border-color: #1ba1e2;
  color: #ffffff;
  box-shadow: -1px 6px 6px -6px rgba(0, 0, 0, 0.35);
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
  transition: all 0.3s ease;
}
.accordion > .frame.active > .heading .icon {
  color: #ffffff;
}
.accordion > .frame.active > .heading:before {
  left: 8px;
  border-bottom-color: #ffffff;
  transition: all 0.3s ease;
  -webkit-transform: rotate(0deg);
          transform: rotate(0deg);
  -webkit-transform-origin: 50% 50%;
          transform-origin: 50% 50%;
}
.accordion > .frame.active > .content {
  display: block;
}
.accordion > .frame > .content {
  padding: .625rem;
  display: none;
  background-color: #ffffff;
  z-index: 1;
}
.accordion > .frame.disabled > .heading {
  cursor: default;
  background: #ffffff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
}
.accordion.large-heading > .frame > .heading {
  font-size: 2rem;
  line-height: 1.1;
  font-weight: 300;
  padding-left: 32px;
  text-shadow: none;
}
.accordion.large-heading > .frame > .heading:before {
  top: 10px;
  border-left: 12px solid transparent;
  border-top: 12px solid transparent;
  border-bottom: 12px solid black;
}
.accordion.large-heading > .frame.active > .heading:before {
  border-bottom-color: #ffffff;
}
.carousel {
  display: block;
  width: 100%;
  position: relative;
  min-height: 100px;
  overflow: hidden;
}
.carousel .slide {
  top: 0;
  left: 0;
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  min-height: 100%;
}
.carousel .slide:before,
.carousel .slide:after {
  display: table;
  content: "";
}
.carousel .slide:after {
  clear: both;
}
.carousel [class*="carousel-switch"],
.carousel .carousel-bullets {
  position: absolute;
  display: block;
  z-index: 999;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.carousel .carousel-bullets {
  left: 0;
  right: 0;
  bottom: .625rem;
  text-align: center;
}
.carousel .carousel-bullets .carousel-bullet {
  display: inline-block;
  float: none;
  width: .625rem;
  height: .625rem;
  background-color: #ababab;
  box-shadow: none;
  border-radius: 50%;
  margin-right: .625rem;
  cursor: pointer;
  border: 1px #ffffff solid;
}
.carousel .carousel-bullets .carousel-bullet:last-child {
  margin-right: 0;
}
.carousel .carousel-bullets .carousel-bullet.bullet-on {
  background-color: #59cde2;
}
.carousel.square-bullets .carousel-bullet {
  border-radius: 0 ;
}
.carousel .carousel-switch-next,
.carousel .carousel-switch-prev {
  width: auto;
  line-height: 4rem;
  height: 4rem;
  text-decoration: none;
  margin-top: -2rem;
  top: 50%;
  font-size: 4rem;
  font-weight: 300;
  color: #eeeeee;
  cursor: pointer;
  vertical-align: middle;
  padding: 0;
}
.carousel .carousel-switch-next:hover,
.carousel .carousel-switch-prev:hover {
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.carousel .carousel-switch-next img,
.carousel .carousel-switch-prev img {
  max-width: 64px;
  max-height: 64px;
}
.carousel .carousel-switch-next {
  right: 0;
  left: auto;
}
.carousel .carousel-switch-prev {
  left: 0;
  right: auto;
}
.panel {
  display: block;
  position: relative;
  background-color: #ffffff;
}
.panel > .heading,
.panel > .content {
  display: block;
  position: relative;
  color: #1d1d1d;
}
.panel > .heading {
  padding: .625rem 0 ;
  color: #ffffff;
  background-color: #1ba1e2;
  cursor: default;
  vertical-align: middle;
  z-index: 2;
  height: 2.625rem;
  box-shadow: -1px 6px 6px -6px rgba(0, 0, 0, 0.35);
  font: 500 1.125rem/1.1 "Segoe UI", "Open Sans", sans-serif, serif;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.panel > .heading > .title {
  margin-left: .625rem;
}
.panel > .heading > .icon + .title {
  margin-left: 3.625rem;
}
.panel > .heading > .icon {
  position: absolute;
  background-color: #1b6eae;
  top: 0;
  left: 0;
  bottom: 0;
  vertical-align: middle;
  height: 2.625rem;
  width: 2.625rem;
  text-align: center;
  padding: .625rem;
}
.panel > .content {
  background-color: #e8f1f4;
  z-index: 1;
  font-size: 0.875rem;
}
.panel.collapsible > .heading {
  cursor: pointer;
}
.panel.collapsible > .heading:before {
  content: "\2212";
  display: block;
  position: absolute;
  top: 50%;
  margin-top: -1.3rem;
  right: .625rem;
  color: inherit;
  vertical-align: middle;
  font-size: 2rem;
}
.panel.collapsed > .heading:before {
  content: "\002b";
}
.panel.collapsed > .content {
  display: none;
}
.panel.alert > .heading,
.panel.error > .heading,
.panel.danger > .heading {
  background-color: #ce352c;
}
.panel.warning > .heading {
  background-color: #fa6800;
}
.panel.success > .heading {
  background-color: #60a917;
}
.rating {
  cursor: pointer;
  display: inline-block;
}
.rating:before,
.rating:after {
  display: table;
  content: "";
}
.rating:after {
  clear: both;
}
.rating .star {
  cursor: pointer;
  display: block;
  float: left;
  color: #555555;
  font-size: 20px;
  z-index: 1;
  position: relative;
  width: 20px;
  height: 24px;
  vertical-align: middle;
  line-height: 22px;
}
.rating .star:before,
.rating .star:after {
  position: absolute;
  content: '\2605';
  display: block;
  z-index: 2;
  top: 0 ;
  left: 0;
  vertical-align: middle;
}
.rating .star.on {
  color: gold;
}
.rating .star.on.half {
  color: #555555;
}
.rating .star.on.half:after {
  color: gold;
}
.rating .star.half:after {
  z-index: 3;
  width: 8px;
  overflow: hidden;
}
.rating.poor .star.on {
  color: #ce352c;
}
.rating.poor .star.on.half {
  color: #555555;
}
.rating.poor .star.on.half:after {
  color: #ce352c;
}
.rating.regular .star.on {
  color: gold;
}
.rating.regular .star.on.half {
  color: #555555;
}
.rating.regular .star.on.half:after {
  color: gold;
}
.rating.good .star.on {
  color: #60a917;
}
.rating.good .star.on.half {
  color: #555555;
}
.rating.good .star.on.half:after {
  color: #60a917;
}
.rating:not(.static) .star:hover {
  color: gold ;
}
.rating:not(.static) .star:hover.half,
.rating:not(.static) .star:hover.on.half {
  color: gold;
}
.rating:not(.static) .star:hover.half:after,
.rating:not(.static) .star:hover.on.half:after {
  color: gold;
}
.rating:not(.static):hover > .star,
.rating:not(.static):hover > .star:after {
  color: gold ;
}
.rating:not(.static):hover > .star.half,
.rating:not(.static):hover > .star:after.half,
.rating:not(.static):hover > .star.on.half,
.rating:not(.static):hover > .star:after.on.half {
  color: gold;
}
.rating:not(.static):hover > .star.half:after,
.rating:not(.static):hover > .star:after.half:after,
.rating:not(.static):hover > .star.on.half:after,
.rating:not(.static):hover > .star:after.on.half:after {
  color: gold;
}
.rating:not(.static) .star:hover ~ .star,
.rating:not(.static) .star:hover ~ .star:after {
  color: gray ;
}
.rating:not(.static) .star:hover ~ .star.half,
.rating:not(.static) .star:hover ~ .star:after.half,
.rating:not(.static) .star:hover ~ .star.on.half,
.rating:not(.static) .star:hover ~ .star:after.on.half {
  color: gray;
}
.rating:not(.static) .star:hover ~ .star.half:after,
.rating:not(.static) .star:hover ~ .star:after.half:after,
.rating:not(.static) .star:hover ~ .star.on.half:after,
.rating:not(.static) .star:hover ~ .star:after.on.half:after {
  color: gray;
}
.rating.small .star {
  width: 14px;
  height: 16px;
  font-size: 14px;
  line-height: 14px;
}
.rating.small .star.half:after {
  width: 6px;
}
.rating.large .star {
  width: 28px;
  height: 30px;
  font-size: 32px;
  line-height: 24px;
}
.rating.large .star.half:after {
  width: 13px;
}
.rating .score {
  display: block;
  font-size: .8rem;
}
.rating.small .score {
  font-size: .6rem;
}
.rating.large .score {
  font-size: 1rem;
}
.slider {
  height: 2.125rem;
  line-height: 1;
  width: auto;
  position: relative;
}
.slider .marker {
  height: 1rem;
  width: 1rem;
  cursor: pointer;
  position: absolute;
  top: 50%;
  margin-top: -0.5rem;
  left: 0;
  background-color: #1d1d1d;
  z-index: 2;
}
.slider .marker:focus,
.slider .marker:active,
.slider .markerhover {
  border: 2px #ce352c solid;
}
.slider .slider-backside,
.slider .complete {
  height: .5rem;
  background: #999999;
  width: 100%;
  line-height: 2.125rem;
  top: 50%;
  margin-top: -0.25rem;
  position: absolute;
}
.slider .complete {
  width: auto;
  background-color: #00aba9;
  z-index: 2;
  transition: background .3s ease;
  left: 0;
}
.slider .buffer {
  height: 4px;
  width: auto;
  background-color: #ffffff;
  z-index: 1;
  transition: background .3s ease;
  position: absolute;
  top: 50%;
  margin-top: -2px;
  left: 0;
}
.slider .slider-hint {
  min-width: 1.8rem;
  width: auto;
  height: auto;
  position: absolute;
  z-index: 3;
  border: 1px #ccc solid;
  padding: .25rem;
  top: -1.2rem;
  text-align: center;
  font-size: .625rem;
  display: none;
  background: #fffcc0;
}
.slider .slider-hint:before {
  border: 1px #ccc solid;
  border-left: 0;
  border-top: 0;
  content: "";
  width: .25rem;
  height: .25rem;
  display: block;
  position: absolute;
  background-color: inherit;
  margin-top: -0.125rem;
  margin-left: -0.15625rem;
  top: 100%;
  left: 50%;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.slider.hint-bottom .slider-hint {
  top: 100%;
  margin-top: -0.125rem;
}
.slider.hint-bottom .slider-hint:before {
  top: -0.0625rem;
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
}
.slider.permanent-hint > .slider-hint {
  display: block;
}
.slider:hover .complete {
  background-color: #45fffd;
}
.slider:active .complete,
.slider:active + .marker:active .complete {
  background-color: #45fffd;
}
.slider.place-left {
  margin-right: 20px;
}
.slider.place-right {
  margin-left: 20px;
}
.slider.ani .complete {
  -webkit-animation: ani-bg-stripes 2s linear infinite;
          animation: ani-bg-stripes 2s linear infinite;
}
.slider.vertical {
  min-height: 100px;
  width: 2.125rem;
  display: inline-block;
}
.slider.vertical .slider-backside,
.slider.vertical .complete {
  position: absolute;
  height: 100%;
  width: .5rem;
  bottom: 0;
  left: 50%;
  margin-left: -0.25rem;
  top: auto;
}
.slider.vertical .marker {
  left: 50%;
  top: auto;
  margin-left: -0.5rem;
}
.slider.vertical .buffer {
  position: absolute;
  height: auto;
  width: 6px ;
  bottom: 0;
  left: 50%;
  margin-left: -3px;
  top: auto;
}
.slider.vertical .slider-hint {
  left: 100%;
  margin-top: 0;
}
.slider.vertical .slider-hint:before {
  height: .25rem;
  width: .25rem;
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
  left: -1px;
  top: 50%;
  margin-top: -0.125rem;
  margin-left: -0.135rem;
}
.slider.vertical.hint-left .slider-hint {
  left: -100%;
  margin-left: .25rem;
}
.slider.vertical.hint-left .slider-hint:before {
  left: 100%;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.slider.cycle-marker .marker {
  border-radius: 50%;
}
.tile-area {
  min-width: 100%;
  height: 100%;
  position: relative;
  padding: 120px 80px 0 0;
  overflow: hidden;
}
.tile-area:before,
.tile-area:after {
  display: table;
  content: "";
}
.tile-area:after {
  clear: both;
}
.tile-area .tile-area-title {
  position: fixed;
  top: 20px;
  left: 80px;
  font-weight: 300;
  font-size: 42px;
  line-height: 1.1;
}
.tile-group {
  margin-left: 80px;
  min-width: 80px;
  width: auto;
  float: left;
  display: block;
  padding-top: 40px;
  position: relative;
}
.tile-group.one {
  width: 160px;
}
.tile-group.two,
.tile-group.double {
  width: 320px;
}
.tile-group.three,
.tile-group.triple {
  width: 480px;
}
.tile-group.four,
.tile-group.quadro {
  width: 640px;
}
.tile-group.five {
  width: 800px;
}
.tile-group.six {
  width: 960px;
}
.tile-group.seven {
  width: 1120px;
}
.tile-group .tile-group-title {
  color: #ffffff;
  font-size: 18px;
  line-height: 20px;
  position: absolute;
  top: 10px;
  left: 0;
}
.tile-container {
  width: 100%;
  height: auto;
  display: block;
  margin: 0;
  padding: 0;
}
.tile-container:before,
.tile-container:after {
  display: table;
  content: "";
}
.tile-container:after {
  clear: both;
}
.tile {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.tile:hover {
  outline: #999999 solid 3px;
}
.tile:active {
  outline: 0;
}
.tile.no-outline {
  outline-color: transparent;
}
.tile.small-tile {
  width: 70px;
  height: 70px;
}
.tile.wide-tile {
  width: 310px;
  height: 150px;
}
.tile.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile.large-tile {
  width: 310px;
  height: 310px;
}
.tile.big-tile {
  width: 470px;
  height: 470px;
}
.tile.super-tile {
  width: 630px;
  height: 630px;
}
.tile-square {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
}
.tile-square:hover {
  outline: #999999 solid 3px;
}
.tile-square:active {
  outline: 0;
}
.tile-square.no-outline {
  outline-color: transparent;
}
.tile-square.small-tile {
  width: 70px;
  height: 70px;
}
.tile-square.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-square.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-square.large-tile {
  width: 310px;
  height: 310px;
}
.tile-square.big-tile {
  width: 470px;
  height: 470px;
}
.tile-square.super-tile {
  width: 630px;
  height: 630px;
}
.tile-square .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-square:hover .tile-content.flipVertical,
.tile-square.hover .tile-content.flipVertical,
.tile-square.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-square .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-square .tile-content.flipVertical .slide,
.tile-square .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-square .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-square .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-square .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-square:hover .tile-content.flipHorizontal,
.tile-square.hover .tile-content.flipHorizontal,
.tile-square.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-square .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-square .tile-content.flipHorizontal .slide,
.tile-square .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-square .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-square .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-square .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-square .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-small {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 70px;
  height: 70px;
}
.tile-small:hover {
  outline: #999999 solid 3px;
}
.tile-small:active {
  outline: 0;
}
.tile-small.no-outline {
  outline-color: transparent;
}
.tile-small.small-tile {
  width: 70px;
  height: 70px;
}
.tile-small.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-small.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-small.large-tile {
  width: 310px;
  height: 310px;
}
.tile-small.big-tile {
  width: 470px;
  height: 470px;
}
.tile-small.super-tile {
  width: 630px;
  height: 630px;
}
.tile-small .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-small:hover .tile-content.flipVertical,
.tile-small.hover .tile-content.flipVertical,
.tile-small.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-small .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-small .tile-content.flipVertical .slide,
.tile-small .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-small .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-small .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-small .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-small:hover .tile-content.flipHorizontal,
.tile-small.hover .tile-content.flipHorizontal,
.tile-small.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-small .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-small .tile-content.flipHorizontal .slide,
.tile-small .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-small .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-small .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-small .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-small .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-wide {
  width: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 310px;
  height: 150px;
}
.tile-wide:hover {
  outline: #999999 solid 3px;
}
.tile-wide:active {
  outline: 0;
}
.tile-wide.no-outline {
  outline-color: transparent;
}
.tile-wide.small-tile {
  width: 70px;
  height: 70px;
}
.tile-wide.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-wide.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-wide.large-tile {
  width: 310px;
  height: 310px;
}
.tile-wide.big-tile {
  width: 470px;
  height: 470px;
}
.tile-wide.super-tile {
  width: 630px;
  height: 630px;
}
.tile-wide .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-wide:hover .tile-content.flipVertical,
.tile-wide.hover .tile-content.flipVertical,
.tile-wide.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-wide .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-wide .tile-content.flipVertical .slide,
.tile-wide .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-wide .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-wide .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-wide .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-wide:hover .tile-content.flipHorizontal,
.tile-wide.hover .tile-content.flipHorizontal,
.tile-wide.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-wide .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-wide .tile-content.flipHorizontal .slide,
.tile-wide .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-wide .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-wide .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-wide .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-wide .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-large {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 310px;
  height: 310px;
}
.tile-large:hover {
  outline: #999999 solid 3px;
}
.tile-large:active {
  outline: 0;
}
.tile-large.no-outline {
  outline-color: transparent;
}
.tile-large.small-tile {
  width: 70px;
  height: 70px;
}
.tile-large.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-large.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-large.large-tile {
  width: 310px;
  height: 310px;
}
.tile-large.big-tile {
  width: 470px;
  height: 470px;
}
.tile-large.super-tile {
  width: 630px;
  height: 630px;
}
.tile-large .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-large:hover .tile-content.flipVertical,
.tile-large.hover .tile-content.flipVertical,
.tile-large.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-large .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-large .tile-content.flipVertical .slide,
.tile-large .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-large .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-large .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-large .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-large:hover .tile-content.flipHorizontal,
.tile-large.hover .tile-content.flipHorizontal,
.tile-large.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-large .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-large .tile-content.flipHorizontal .slide,
.tile-large .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-large .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-large .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-large .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-large .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-big {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 470px;
  height: 470px;
}
.tile-big:hover {
  outline: #999999 solid 3px;
}
.tile-big:active {
  outline: 0;
}
.tile-big.no-outline {
  outline-color: transparent;
}
.tile-big.small-tile {
  width: 70px;
  height: 70px;
}
.tile-big.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-big.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-big.large-tile {
  width: 310px;
  height: 310px;
}
.tile-big.big-tile {
  width: 470px;
  height: 470px;
}
.tile-big.super-tile {
  width: 630px;
  height: 630px;
}
.tile-big .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-big:hover .tile-content.flipVertical,
.tile-big.hover .tile-content.flipVertical,
.tile-big.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-big .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-big .tile-content.flipVertical .slide,
.tile-big .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-big .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-big .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-big .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-big:hover .tile-content.flipHorizontal,
.tile-big.hover .tile-content.flipHorizontal,
.tile-big.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-big .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-big .tile-content.flipHorizontal .slide,
.tile-big .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-big .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-big .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-big .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-big .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-super {
  width: 150px;
  height: 150px;
  display: block;
  float: left;
  margin: 5px;
  background-color: #eeeeee;
  box-shadow: inset 0 0 1px #FFFFCC;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  overflow: visible;
  width: 630px;
  height: 630px;
}
.tile-super:hover {
  outline: #999999 solid 3px;
}
.tile-super:active {
  outline: 0;
}
.tile-super.no-outline {
  outline-color: transparent;
}
.tile-super.small-tile {
  width: 70px;
  height: 70px;
}
.tile-super.wide-tile {
  width: 310px;
  height: 150px;
}
.tile-super.wide-tile-v {
  height: 310px;
  width: 150px;
}
.tile-super.large-tile {
  width: 310px;
  height: 310px;
}
.tile-super.big-tile {
  width: 470px;
  height: 470px;
}
.tile-super.super-tile {
  width: 630px;
  height: 630px;
}
.tile-super .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-super:hover .tile-content.flipVertical,
.tile-super.hover .tile-content.flipVertical,
.tile-super.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-super .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-super .tile-content.flipVertical .slide,
.tile-super .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-super .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-super .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-super .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-super:hover .tile-content.flipHorizontal,
.tile-super.hover .tile-content.flipHorizontal,
.tile-super.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-super .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-super .tile-content.flipHorizontal .slide,
.tile-super .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-super .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-super .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-super .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile-super .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-small-x {
  width: 70px;
}
.tile-square-x {
  width: 150px;
}
.tile-wide-x {
  width: 310px;
}
.tile-large-x {
  width: 310px;
}
.tile-big-x {
  width: 470px;
}
.tile-super-x {
  width: 630px;
}
.tile-small-y {
  height: 70px;
}
.tile-square-y {
  height: 150px;
}
.tile-wide-y {
  height: 310px;
}
.tile-large-y {
  height: 310px;
}
.tile-big-y {
  height: 470px;
}
.tile-super-y {
  height: 630px;
}
.tile-content {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: inherit;
  overflow: hidden;
  display: none;
}
.tile-content:first-child {
  display: block;
}
.tile-content .live-slide {
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  display: none;
  overflow: hidden;
}
.tile-content .live-slide:nth-child(1) {
  display: block;
}
.tile-content.iconic .icon {
  position: absolute;
  width: 64px;
  height: 64px;
  font-size: 64px;
  top: 50%;
  margin-top: -40px;
  left: 50%;
  margin-left: -32px;
  text-align: center;
}
.tile-small .tile-content.iconic .icon {
  width: 32px;
  height: 32px;
  font-size: 32px;
  margin-left: -16px;
  margin-top: -16px;
}
.tile-content.image-set > img,
.tile-content.image-set > .image-container {
  margin: 0;
  padding: 0;
  width: 25% ;
  height: 50% ;
  float: left;
  border: 1px #1e1e1e solid;
}
.tile-content.image-set > img:first-child,
.tile-content.image-set > .image-container:first-child {
  width: 50% ;
  float: left;
  height: 100% ;
}
.tile-content.slide-up > .slide,
.tile-content.slide-down > .slide,
.tile-content.slide-up-2 > .slide,
.tile-content.slide-down-2 > .slide,
.tile-content.slide-left > .slide,
.tile-content.slide-right > .slide,
.tile-content.slide-left-2 > .slide,
.tile-content.slide-right-2 > .slide,
.tile-content.slide-up > .slide-over,
.tile-content.slide-down > .slide-over,
.tile-content.slide-up-2 > .slide-over,
.tile-content.slide-down-2 > .slide-over,
.tile-content.slide-left > .slide-over,
.tile-content.slide-right > .slide-over,
.tile-content.slide-left-2 > .slide-over,
.tile-content.slide-right-2 > .slide-over {
  width: 100%;
  height: inherit;
  display: block;
  position: absolute;
  box-shadow: inset 0 0 1px #FFFFCC;
}
.tile-content.slide-up > .slide,
.tile-content.slide-down > .slide,
.tile-content.slide-up-2 > .slide,
.tile-content.slide-down-2 > .slide,
.tile-content.slide-left > .slide,
.tile-content.slide-right > .slide,
.tile-content.slide-left-2 > .slide,
.tile-content.slide-right-2 > .slide {
  top: 0;
  z-index: 1;
  transition: all 0.3s ease;
}
.tile-content.slide-up:hover > .slide,
.tile-content.slide-down:hover > .slide,
.tile-content.slide-up-2:hover > .slide,
.tile-content.slide-down-2:hover > .slide,
.tile-content.slide-left:hover > .slide,
.tile-content.slide-right:hover > .slide,
.tile-content.slide-left-2:hover > .slide,
.tile-content.slide-right-2:hover > .slide {
  -webkit-transform: scale(1.5);
          transform: scale(1.5);
  transition: all 0.6s ease;
}
.tile-content.slide-up > .slide-over {
  top: 100%;
  z-index: 2;
  height: 75%;
  transition: all 0.6s ease;
}
.tile-content.slide-up:hover > .slide-over {
  top: 25%;
  transition: all 0.3s ease;
}
.tile-content.slide-up-2 > .slide-over {
  top: 100%;
  z-index: 2;
  height: 100%;
  transition: all 0.3s ease;
}
.tile-content.slide-up-2:hover > .slide {
  -webkit-transform: scale(1);
          transform: scale(1);
  top: -100%;
  transition: all 0.4s ease;
}
.tile-content.slide-up-2:hover > .slide-over {
  top: 0;
  transition: all 0.4s ease;
}
.tile-content.slide-down > .slide-over {
  top: -100%;
  z-index: 2;
  height: 75%;
  transition: all 0.6s ease;
}
.tile-content.slide-down:hover > .slide-over {
  top: 0;
  transition: all 0.3s ease;
}
.tile-content.slide-down-2 > .slide-over {
  top: -100%;
  z-index: 2;
  height: 100%;
  transition: all 0.3s ease;
}
.tile-content.slide-down-2:hover > .slide {
  -webkit-transform: scale(1);
          transform: scale(1);
  top: 100%;
  transition: all 0.4s ease;
}
.tile-content.slide-down-2:hover > .slide-over {
  top: 0;
  transition: all 0.4s ease;
}
.tile-content.slide-left > .slide-over {
  left: -100%;
  z-index: 2;
  width: 75%;
  height: 100%;
  transition: all 0.6s ease;
}
.tile-content.slide-left:hover > .slide-over {
  left: 0;
  transition: all 0.3s ease;
}
.tile-content.slide-left-2 > .slide {
  left: 0;
  transition: all 0.3s ease;
}
.tile-content.slide-left-2 > .slide-over {
  left: -100%;
  z-index: 2;
  width: 100%;
  height: 100%;
  transition: all 0.3s ease;
}
.tile-content.slide-left-2:hover > .slide {
  -webkit-transform: scale(1);
          transform: scale(1);
  left: 100%;
  transition: all 0.4s ease;
}
.tile-content.slide-left-2:hover > .slide-over {
  left: 0;
  transition: all 0.4s ease;
}
.tile-content.slide-right > .slide-over {
  left: 100%;
  z-index: 2;
  width: 75%;
  height: 100%;
  transition: all 0.6s ease;
}
.tile-content.slide-right:hover > .slide-over {
  left: 25%;
  transition: all 0.3s ease;
}
.tile-content.slide-right-2 > .slide {
  left: 0;
  transition: all 0.3s ease;
}
.tile-content.slide-right-2 > .slide-over {
  left: 100%;
  z-index: 2;
  width: 100%;
  height: 100%;
  transition: all 0.3s ease;
}
.tile-content.slide-right-2:hover > .slide {
  -webkit-transform: scale(1);
          transform: scale(1);
  left: -100%;
  transition: all 0.4s ease;
}
.tile-content.slide-right-2:hover > .slide-over {
  left: 0;
  transition: all 0.4s ease;
}
.tile-content.zooming .slide {
  box-shadow: inset 0 0 1px #FFFFCC;
  width: 100%;
  height: 100%;
  display: block;
  position: relative;
  transition: all 0.6s ease;
}
.tile-content.zooming .slide:hover {
  -webkit-transform: scale(1.5);
          transform: scale(1.5);
  transition: all 0.6s ease;
}
.tile-content.zooming-out .slide {
  width: 100%;
  height: 100%;
  display: block;
  position: relative;
  -webkit-transform: scale(1.5);
          transform: scale(1.5);
  transition: all 0.6s ease;
}
.tile-content.zooming-out .slide:hover {
  -webkit-transform: scale(1);
          transform: scale(1);
  transition: all 0.6s ease;
}
.tile-small,
.tile,
.tile-square,
.tile-wide,
.tile-large,
.tile-big,
.tile-super {
  overflow: visible;
}
.tile-small .tile-content.flipVertical,
.tile .tile-content.flipVertical,
.tile-square .tile-content.flipVertical,
.tile-wide .tile-content.flipVertical,
.tile-large .tile-content.flipVertical,
.tile-big .tile-content.flipVertical,
.tile-super .tile-content.flipVertical {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-small:hover .tile-content.flipVertical,
.tile:hover .tile-content.flipVertical,
.tile-square:hover .tile-content.flipVertical,
.tile-wide:hover .tile-content.flipVertical,
.tile-large:hover .tile-content.flipVertical,
.tile-big:hover .tile-content.flipVertical,
.tile-super:hover .tile-content.flipVertical,
.tile-small.hover .tile-content.flipVertical,
.tile.hover .tile-content.flipVertical,
.tile-square.hover .tile-content.flipVertical,
.tile-wide.hover .tile-content.flipVertical,
.tile-large.hover .tile-content.flipVertical,
.tile-big.hover .tile-content.flipVertical,
.tile-super.hover .tile-content.flipVertical,
.tile-small.flip .tile-content.flipVertical,
.tile.flip .tile-content.flipVertical,
.tile-square.flip .tile-content.flipVertical,
.tile-wide.flip .tile-content.flipVertical,
.tile-large.flip .tile-content.flipVertical,
.tile-big.flip .tile-content.flipVertical,
.tile-super.flip .tile-content.flipVertical {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-small .tile-content.flipVertical,
.tile .tile-content.flipVertical,
.tile-square .tile-content.flipVertical,
.tile-wide .tile-content.flipVertical,
.tile-large .tile-content.flipVertical,
.tile-big .tile-content.flipVertical,
.tile-super .tile-content.flipVertical {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-small .tile-content.flipVertical .slide,
.tile .tile-content.flipVertical .slide,
.tile-square .tile-content.flipVertical .slide,
.tile-wide .tile-content.flipVertical .slide,
.tile-large .tile-content.flipVertical .slide,
.tile-big .tile-content.flipVertical .slide,
.tile-super .tile-content.flipVertical .slide,
.tile-small .tile-content.flipVertical .slide-over,
.tile .tile-content.flipVertical .slide-over,
.tile-square .tile-content.flipVertical .slide-over,
.tile-wide .tile-content.flipVertical .slide-over,
.tile-large .tile-content.flipVertical .slide-over,
.tile-big .tile-content.flipVertical .slide-over,
.tile-super .tile-content.flipVertical .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-small .tile-content.flipVertical .slide,
.tile .tile-content.flipVertical .slide,
.tile-square .tile-content.flipVertical .slide,
.tile-wide .tile-content.flipVertical .slide,
.tile-large .tile-content.flipVertical .slide,
.tile-big .tile-content.flipVertical .slide,
.tile-super .tile-content.flipVertical .slide {
  z-index: 2;
  -webkit-transform: rotateY(0deg);
          transform: rotateY(0deg);
}
.tile-small .tile-content.flipVertical .slide-over,
.tile .tile-content.flipVertical .slide-over,
.tile-square .tile-content.flipVertical .slide-over,
.tile-wide .tile-content.flipVertical .slide-over,
.tile-large .tile-content.flipVertical .slide-over,
.tile-big .tile-content.flipVertical .slide-over,
.tile-super .tile-content.flipVertical .slide-over {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.tile-small .tile-content.flipHorizontal,
.tile .tile-content.flipHorizontal,
.tile-square .tile-content.flipHorizontal,
.tile-wide .tile-content.flipHorizontal,
.tile-large .tile-content.flipHorizontal,
.tile-big .tile-content.flipHorizontal,
.tile-super .tile-content.flipHorizontal {
  -webkit-transform: perspective(1000px);
          transform: perspective(1000px);
  overflow: visible;
}
.tile-small:hover .tile-content.flipHorizontal,
.tile:hover .tile-content.flipHorizontal,
.tile-square:hover .tile-content.flipHorizontal,
.tile-wide:hover .tile-content.flipHorizontal,
.tile-large:hover .tile-content.flipHorizontal,
.tile-big:hover .tile-content.flipHorizontal,
.tile-super:hover .tile-content.flipHorizontal,
.tile-small.hover .tile-content.flipHorizontal,
.tile.hover .tile-content.flipHorizontal,
.tile-square.hover .tile-content.flipHorizontal,
.tile-wide.hover .tile-content.flipHorizontal,
.tile-large.hover .tile-content.flipHorizontal,
.tile-big.hover .tile-content.flipHorizontal,
.tile-super.hover .tile-content.flipHorizontal,
.tile-small.flip .tile-content.flipHorizontal,
.tile.flip .tile-content.flipHorizontal,
.tile-square.flip .tile-content.flipHorizontal,
.tile-wide.flip .tile-content.flipHorizontal,
.tile-large.flip .tile-content.flipHorizontal,
.tile-big.flip .tile-content.flipHorizontal,
.tile-super.flip .tile-content.flipHorizontal {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile-small .tile-content.flipHorizontal,
.tile .tile-content.flipHorizontal,
.tile-square .tile-content.flipHorizontal,
.tile-wide .tile-content.flipHorizontal,
.tile-large .tile-content.flipHorizontal,
.tile-big .tile-content.flipHorizontal,
.tile-super .tile-content.flipHorizontal {
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: all 0.6s ease;
}
.tile-small .tile-content.flipHorizontal .slide,
.tile .tile-content.flipHorizontal .slide,
.tile-square .tile-content.flipHorizontal .slide,
.tile-wide .tile-content.flipHorizontal .slide,
.tile-large .tile-content.flipHorizontal .slide,
.tile-big .tile-content.flipHorizontal .slide,
.tile-super .tile-content.flipHorizontal .slide,
.tile-small .tile-content.flipHorizontal .slide-over,
.tile .tile-content.flipHorizontal .slide-over,
.tile-square .tile-content.flipHorizontal .slide-over,
.tile-wide .tile-content.flipHorizontal .slide-over,
.tile-large .tile-content.flipHorizontal .slide-over,
.tile-big .tile-content.flipHorizontal .slide-over,
.tile-super .tile-content.flipHorizontal .slide-over {
  top: 0;
  left: 0;
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-backface-visibility: hidden;
          backface-visibility: hidden;
}
.tile-small .tile-content.flipHorizontal .slide,
.tile .tile-content.flipHorizontal .slide,
.tile-square .tile-content.flipHorizontal .slide,
.tile-wide .tile-content.flipHorizontal .slide,
.tile-large .tile-content.flipHorizontal .slide,
.tile-big .tile-content.flipHorizontal .slide,
.tile-super .tile-content.flipHorizontal .slide {
  z-index: 2;
  -webkit-transform: rotateX(0deg);
          transform: rotateX(0deg);
}
.tile-small .tile-content.flipHorizontal .slide-over,
.tile .tile-content.flipHorizontal .slide-over,
.tile-square .tile-content.flipHorizontal .slide-over,
.tile-wide .tile-content.flipHorizontal .slide-over,
.tile-large .tile-content.flipHorizontal .slide-over,
.tile-big .tile-content.flipHorizontal .slide-over,
.tile-super .tile-content.flipHorizontal .slide-over {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.tile .tile-badge {
  position: absolute;
  bottom: 0;
  right: .625rem;
  padding: .25rem .625rem;
  z-index: 999;
}
.tile .tile-label {
  position: absolute;
  bottom: 0;
  left: .625rem;
  padding: .425rem .25rem;
  z-index: 999;
}
.tile-content .image-container,
.tile-content .carousel {
  box-shadow: inset 0 0 1px #FFFFCC;
  width: 100%;
  height: 100%;
}
[class*=tile-transform-] {
  transition: all 0.22s ease;
}
.tile-transform-right {
  -webkit-transform-origin: left 50%;
          transform-origin: left 50%;
}
.tile.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.138372rad) !important;
          transform: perspective(500px) rotateY(0.138372rad) !important;
}
.tile-square.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.138372rad) !important;
          transform: perspective(500px) rotateY(0.138372rad) !important;
}
.tile-wide.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.069186rad) !important;
          transform: perspective(500px) rotateY(0.069186rad) !important;
}
.tile-large.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.069186rad) !important;
          transform: perspective(500px) rotateY(0.069186rad) !important;
}
.tile-big.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.046124rad) !important;
          transform: perspective(500px) rotateY(0.046124rad) !important;
}
.tile-super.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.034593rad) !important;
          transform: perspective(500px) rotateY(0.034593rad) !important;
}
.tile-small.tile-transform-right {
  -webkit-transform: perspective(500px) rotateY(0.276744rad) !important;
          transform: perspective(500px) rotateY(0.276744rad) !important;
}
.tile-transform-left {
  -webkit-transform-origin: right 50%;
          transform-origin: right 50%;
}
.tile.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.138372rad) !important;
          transform: perspective(500px) rotateY(-0.138372rad) !important;
}
.tile-square.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.138372rad) !important;
          transform: perspective(500px) rotateY(-0.138372rad) !important;
}
.tile-wide.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.069186rad) !important;
          transform: perspective(500px) rotateY(-0.069186rad) !important;
}
.tile-large.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.069186rad) !important;
          transform: perspective(500px) rotateY(-0.069186rad) !important;
}
.tile-big.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.046124rad) !important;
          transform: perspective(500px) rotateY(-0.046124rad) !important;
}
.tile-super.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.034593rad) !important;
          transform: perspective(500px) rotateY(-0.034593rad) !important;
}
.tile-small.tile-transform-left {
  -webkit-transform: perspective(500px) rotateY(-0.276744rad) !important;
          transform: perspective(500px) rotateY(-0.276744rad) !important;
}
.tile-transform-top {
  -webkit-transform-origin: 50% bottom;
          transform-origin: 50% bottom;
}
.tile.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.138372rad) !important;
          transform: perspective(500px) rotateX(0.138372rad) !important;
}
.tile-square.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.138372rad) !important;
          transform: perspective(500px) rotateX(0.138372rad) !important;
}
.tile-wide.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.069186rad) !important;
          transform: perspective(500px) rotateX(0.069186rad) !important;
}
.tile-large.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.069186rad) !important;
          transform: perspective(500px) rotateX(0.069186rad) !important;
}
.tile-big.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.046124rad) !important;
          transform: perspective(500px) rotateX(0.046124rad) !important;
}
.tile-super.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.034593rad) !important;
          transform: perspective(500px) rotateX(0.034593rad) !important;
}
.tile-small.tile-transform-top {
  -webkit-transform: perspective(500px) rotateX(0.276744rad) !important;
          transform: perspective(500px) rotateX(0.276744rad) !important;
}
.tile-transform-bottom {
  -webkit-transform-origin: 50% top;
          transform-origin: 50% top;
}
.tile.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.138372rad) !important;
          transform: perspective(500px) rotateX(-0.138372rad) !important;
}
.tile-square.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.138372rad) !important;
          transform: perspective(500px) rotateX(-0.138372rad) !important;
}
.tile-wide.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.069186rad) !important;
          transform: perspective(500px) rotateX(-0.069186rad) !important;
}
.tile-large.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.069186rad) !important;
          transform: perspective(500px) rotateX(-0.069186rad) !important;
}
.tile-big.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.046124rad) !important;
          transform: perspective(500px) rotateX(-0.046124rad) !important;
}
.tile-super.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.034593rad) !important;
          transform: perspective(500px) rotateX(-0.034593rad) !important;
}
.tile-small.tile-transform-bottom {
  -webkit-transform: perspective(500px) rotateX(-0.276744rad) !important;
          transform: perspective(500px) rotateX(-0.276744rad) !important;
}
.tile-area-scheme-dark {
  background-color: #1d1d1d;
}
.tile-area-scheme-dark [class*=tile] {
  outline-color: #373737;
}
.tile-area-scheme-darkBrown {
  background-color: #63362f;
}
.tile-area-scheme-darkBrown [class*=tile] {
  outline-color: #86493f;
}
.tile-area-scheme-darkCrimson {
  background-color: #640024;
}
.tile-area-scheme-darkCrimson [class*=tile] {
  outline-color: #970036;
}
.tile-area-scheme-darkViolet {
  background-color: #57169a;
}
.tile-area-scheme-darkViolet [class*=tile] {
  outline-color: #701cc7;
}
.tile-area-scheme-darkMagenta {
  background-color: #81003c;
}
.tile-area-scheme-darkMagenta [class*=tile] {
  outline-color: #b40054;
}
.tile-area-scheme-darkCyan {
  background-color: #1b6eae;
}
.tile-area-scheme-darkCyan [class*=tile] {
  outline-color: #228ada;
}
.tile-area-scheme-darkCobalt {
  background-color: #00356a;
}
.tile-area-scheme-darkCobalt [class*=tile] {
  outline-color: #004e9d;
}
.tile-area-scheme-darkTeal {
  background-color: #004050;
}
.tile-area-scheme-darkTeal [class*=tile] {
  outline-color: #006983;
}
.tile-area-scheme-darkEmerald {
  background-color: #003e00;
}
.tile-area-scheme-darkEmerald [class*=tile] {
  outline-color: #007100;
}
.tile-area-scheme-darkGreen {
  background-color: #128023;
}
.tile-area-scheme-darkGreen [class*=tile] {
  outline-color: #18ad2f;
}
.tile-area-scheme-darkOrange {
  background-color: #bf5a15;
}
.tile-area-scheme-darkOrange [class*=tile] {
  outline-color: #e77120;
}
.tile-area-scheme-darkRed {
  background-color: #9a1616;
}
.tile-area-scheme-darkRed [class*=tile] {
  outline-color: #c71c1c;
}
.tile-area-scheme-darkPink {
  background-color: #9a165a;
}
.tile-area-scheme-darkPink [class*=tile] {
  outline-color: #c71c74;
}
.tile-area-scheme-darkIndigo {
  background-color: #4b0096;
}
.tile-area-scheme-darkIndigo [class*=tile] {
  outline-color: #6400c9;
}
.tile-area-scheme-darkBlue {
  background-color: #16499a;
}
.tile-area-scheme-darkBlue [class*=tile] {
  outline-color: #1c5ec7;
}
.tile-area-scheme-lightBlue {
  background-color: #4390df;
}
.tile-area-scheme-lightBlue [class*=tile] {
  outline-color: #6faae6;
}
.tile-area-scheme-lightTeal {
  background-color: #45fffd;
}
.tile-area-scheme-lightTeal [class*=tile] {
  outline-color: #78fffd;
}
.tile-area-scheme-lightOlive {
  background-color: #78aa1c;
}
.tile-area-scheme-lightOlive [class*=tile] {
  outline-color: #97d623;
}
.tile-area-scheme-lightOrange {
  background-color: #ffc194;
}
.tile-area-scheme-lightOrange [class*=tile] {
  outline-color: #ffdec7;
}
.tile-area-scheme-lightPink {
  background-color: #f472d0;
}
.tile-area-scheme-lightPink [class*=tile] {
  outline-color: #f8a1e0;
}
.tile-area-scheme-grayed {
  background-color: #585858;
}
.tile-area-scheme-grayed [class*=tile] {
  outline-color: #727272;
}
.treeview {
  margin: 0;
  padding: 0;
  display: block;
  font-size: .75rem;
}
.treeview ul {
  margin: 0;
  padding: 0;
  list-style: none;
  width: 100%;
  font-size: inherit;
}
.treeview li {
  font-size: inherit;
  padding: 2px 16px;
  cursor: pointer;
  position: relative;
  color: #555555;
  vertical-align: middle;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.treeview li.active > .leaf {
  font-weight: bold;
}
.treeview li.disabled {
  cursor: default;
  color: #999999;
}
.treeview li.disabled:hover > .leaf {
  color: #999999;
}
.treeview li .input-control {
  margin: 0 .3125rem 0 0;
  height: 1rem;
  line-height: .625rem;
  min-height: 0;
}
.treeview li .input-control .check {
  line-height: 1rem;
}
.treeview ul > li > .leaf:hover {
  color: #1d1d1d;
}
.treeview .leaf {
  vertical-align: middle;
  display: inline-block;
  color: inherit;
}
.treeview .leaf .icon {
  width: 1rem;
  height: 1rem;
  text-align: center;
}
.treeview .node-toggle {
  position: absolute;
  left: 0;
  top: 8px;
  width: 8px;
  height: 8px;
}
.treeview .node-toggle:before {
  position: absolute;
  display: block;
  left: 0;
  top: -3px;
  height: 0;
  content: '';
  width: 0;
  border-left: 7px solid transparent;
  border-top: 7px solid transparent;
  border-bottom: 7px #1ba1e2 solid;
}
.treeview li:hover > .node-toggle:before {
  border-bottom-color: #1b6eae;
}
.treeview .node.collapsed > .node-toggle:before {
  left: -4px;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  border-bottom-color: #999999;
}
.treeview .node.collapsed:hover > .node-toggle:before {
  border-bottom-color: #1b6eae;
}
.treeview .node.collapsed > ul {
  display: none;
}
.presenter {
  width: 100%;
  height: 200px;
  min-height: 200px;
  position: relative;
  display: block;
}
.scene {
  position: relative;
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  overflow: hidden;
  display: block;
}
.act {
  width: 100%;
  height: 100%;
  display: block;
  position: relative;
  padding: 10px ;
}
.act:before,
.act:after {
  display: table;
  content: "";
}
.act:after {
  clear: both;
}
.actor {
  position: absolute;
  margin-right: 10px;
}
.listview {
  display: block;
  width: 100%;
  height: auto;
}
.listview:before,
.listview:after {
  display: table;
  content: "";
}
.listview:after {
  clear: both;
}
.listview .list-group {
  display: block;
  width: 100%;
  height: auto;
  position: relative;
}
.listview .list-group:before,
.listview .list-group:after {
  display: table;
  content: "";
}
.listview .list-group:after {
  clear: both;
}
.listview .list-group .list-group-toggle {
  display: block;
  padding-left: 16px;
  cursor: pointer;
  position: relative;
  margin-top: 10px;
}
.listview .list-group .list-group-toggle:before {
  position: absolute;
  display: block;
  left: 0;
  top: -3px;
  height: 0;
  content: '';
  width: 0;
  border-left: 7px solid transparent;
  border-top: 7px solid transparent;
  border-bottom: 7px #1ba1e2 solid;
}
.listview .list-group .list-group-content {
  display: block;
  width: 100%;
  height: auto;
  margin-top: 1rem;
}
.listview .list-group .list-group-content:before,
.listview .list-group .list-group-content:after {
  display: table;
  content: "";
}
.listview .list-group .list-group-content:after {
  clear: both;
}
.listview .list-group.collapsed > .list-group-toggle:before {
  left: -4px;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  border-bottom-color: #999999;
}
.listview .list-group.collapsed:hover > .list-group-toggle:before {
  border-bottom-color: #1b6eae;
}
.listview .list {
  display: block;
  width: 100%;
  padding: 8px 8px 4px 48px;
  border: 1px transparent solid;
  cursor: pointer;
  height: 50px;
  border-bottom-color: #eeeeee;
  position: relative;
}
.listview .list:last-child {
  border-bottom-color: transparent;
}
.listview .list .list-icon {
  position: absolute;
  left: 0;
  top: 0;
  margin: 8px;
  width: 32px;
  height: 32px;
  font-size: 32px;
  text-align: center;
}
.listview .list .list-data {
  display: block;
  margin: 4px 0;
}
.listview.list-type-icons .list {
  display: block;
  float: left;
  padding: 0;
  width: 105px;
  height: 116px;
  border-color: transparent;
  margin: .625rem;
  text-align: center;
}
.listview.list-type-icons .list .list-title {
  position: absolute;
  left: 0;
  right: 0;
  bottom: 4px;
  height: auto;
  text-align: center;
}
.listview.list-type-icons .list .list-icon {
  width: 80px;
  height: 80px;
  font-size: 80px;
  text-align: center;
  left: 50%;
  margin-left: -40px;
}
.listview.list-type-icons .list .list-data {
  display: none;
}
.listview.list-type-tiles .list {
  display: block;
  float: left;
  padding: 8px 8px 4px 48px;
  width: 250px;
  height: 52px;
  border-color: transparent;
  margin: .625rem;
}
.listview.list-type-tiles .list .list-title {
  margin-top: 8px;
  display: block;
}
.listview.list-type-tiles .list .list-icon {
  width: 48px;
  height: 48px;
  font-size: 48px;
  text-align: center;
  top: 0;
  left: 0;
  margin: 2px;
}
.listview.list-type-tiles .list .list-data {
  display: none;
}
.listview.list-type-listing .list {
  display: block;
  float: left;
  padding: 4px 2px 4px 24px;
  width: auto;
  height: auto;
  border-color: transparent;
  margin: 1px;
}
.listview.list-type-listing .list .list-title {
  display: block;
}
.listview.list-type-listing .list .list-icon {
  width: 20px;
  height: 20px;
  font-size: 20px;
  text-align: center;
  top: 0;
  left: 0;
  margin: 1px;
}
.listview.list-type-listing .list .list-data {
  display: none;
}
.listview .list.active {
  background-color: #d1e8ff;
  border-color: #64b4db;
}
.listview .list:hover {
  background-color: #e5f3fb;
  border-color: #64b4db;
}
.listview-outlook {
  display: block;
  width: 100%;
  height: auto;
}
.listview-outlook:before,
.listview-outlook:after {
  display: table;
  content: "";
}
.listview-outlook:after {
  clear: both;
}
.listview-outlook .list {
  display: block;
  width: 100%;
  border: 0;
  border-bottom: 1px #eeeeee solid;
  padding: 2px 0;
  color: #555555;
  margin-bottom: 0;
  background-color: transparent;
}
.listview-outlook .list .list-content {
  margin: 2px 0;
  padding: 2px 20px;
  font-size: 1rem;
  color: inherit;
  border-left: 3px transparent solid;
}
.listview-outlook .list .list-content .list-title,
.listview-outlook .list .list-content .list-subtitle,
.listview-outlook .list .list-content .list-remark {
  width: 100%;
  display: block;
  color: inherit;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.listview-outlook .list .list-content .list-title {
  line-height: 1.3;
}
.listview-outlook .list .list-content .list-subtitle {
  font-size: .75rem;
  line-height: 1.2;
  font-weight: 500;
  color: #0067cb;
}
.listview-outlook .list .list-content .list-remark {
  font-weight: normal;
  line-height: 1.2;
  font-size: .625rem;
  color: #999999;
}
.listview-outlook .list:hover {
  background-color: #eeeeee;
  outline: none;
}
.listview-outlook .list:hover .list-content {
  border-left: 3px transparent solid;
}
.listview-outlook .list.marked .list-content {
  border-left: 3px #1b6eae solid;
}
.listview-outlook .list:active,
.listview-outlook .list:focus,
.listview-outlook .list.active {
  background-color: #cde6f7;
  outline: 1px #999999 dotted;
  color: #555555;
}
.listview-outlook .list-group {
  display: block;
  position: relative;
}
.listview-outlook .list-group .list-group-toggle {
  display: block;
  margin-bottom: 2px;
  background-color: #f0f0f0;
  padding: 4px 20px 4px 24px;
  font-size: .875rem;
  font-weight: 500;
  color: #333333;
  cursor: pointer;
}
.listview-outlook .list-group .list-group-toggle:before {
  position: absolute;
  display: block;
  left: 10px;
  top: 2px;
  content: '';
  width: 0;
  height: 0;
  border-left: 7px solid transparent;
  border-top: 7px solid transparent;
  border-bottom: 7px solid black;
}
.listview-outlook .list-group .list-group-content {
  display: block;
}
.listview-outlook .list-group.collapsed .list-group-toggle:before {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
  margin-left: -4px;
}
.listview-outlook .list-group .list-group-toggle:hover:before {
  border-bottom-color: #0067cb;
}
.charm {
  display: block;
  position: fixed;
  z-index: 1060;
  background: #1d1d1d;
  color: #eeeeee;
  padding: .625rem;
}
.charm .charm-closer {
  position: absolute;
  height: 1rem;
  width: 1rem;
  text-align: center;
  vertical-align: middle;
  font-size: 1rem;
  font-weight: normal;
  padding: 0 0 .625rem 0;
  z-index: 3;
  outline: none;
  cursor: pointer;
  color: #777777;
  top: .25rem;
  right: .25rem;
}
.charm .charm-closer:after {
  content: '\D7';
  position: absolute;
  left: 50%;
  top: 50%;
  margin-top: -0.65rem;
  margin-left: -0.35rem;
}
.charm .charm-closer:hover {
  color: #ffffff;
}
.charm .charm-closer:active {
  color: #ffffff;
}
.charm.right-side {
  width: auto;
  right: 0;
  top: 0;
  left: auto;
  bottom: 0;
}
.charm.left-side {
  width: auto;
  left: 0;
  top: 0;
  bottom: 0;
}
.charm.top-side {
  height: auto;
  left: 0;
  right: 0;
  top: 0;
}
.charm.bottom-side {
  height: auto;
  left: 0;
  right: 0;
  top: auto;
  bottom: 0;
}
.notify-container {
  position: fixed;
  top: 0;
  right: 0;
  width: auto;
  z-index: 1061;
}
.notify-container:before,
.notify-container:after {
  display: table;
  content: "";
}
.notify-container:after {
  clear: both;
}
.notify-container.position-left {
  left: 0;
  right: auto;
}
.notify-container.position-top {
  left: 0;
  right: 0;
  top: 0;
  height: auto;
}
.notify-container.position-top .notify {
  float: left;
}
.notify-container.position-bottom {
  left: 0;
  right: 0;
  bottom: 0;
  top: auto;
  height: auto;
}
.notify-container.position-bottom .notify {
  float: left;
}
.notify {
  display: block;
  margin: .3125rem;
  padding: .625rem;
  min-width: 200px;
  cursor: default;
  max-width: 300px;
  position: relative;
}
.notify .notify-icon {
  width: 32px;
  height: 32px;
  font-size: 32px;
  text-align: center;
  position: absolute;
  margin: -16px 10px;
  top: 50%;
  left: 0;
}
.notify .notify-icon ~ .notify-title,
.notify .notify-icon ~ .notify-text {
  position: relative;
  margin-left: 42px;
}
.notify .notify-title,
.notify .notify-text {
  display: block;
  margin-right: 20px;
}
.notify .notify-title {
  font-weight: 500;
  font-size: 1rem;
}
.notify .notify-text {
  font-size: .875rem;
}
.notify .notify-closer {
  position: absolute;
  height: 1rem;
  width: 1rem;
  text-align: center;
  vertical-align: middle;
  font-size: 1rem;
  font-weight: normal;
  padding: 0 0 .625rem 0;
  z-index: 3;
  outline: none;
  cursor: pointer;
  background-color: #ffffff;
  color: #777777;
  top: .25rem;
  right: .25rem;
}
.notify .notify-closer:after {
  border-color: #777777;
  content: '\D7';
  position: absolute;
  left: 50%;
  top: 50%;
  margin-top: -0.65rem;
  margin-left: -0.35rem;
}
.notify .notify-closer:hover {
  background-color: #cde6f7;
  color: #ffffff;
}
.notify .notify-closer:active {
  background-color: #92c0e0;
  color: #ffffff;
}
.notify {
  background-color: #e5f3fb;
  color: #1d1d1d;
}
.notify.success {
  background-color: #60a917;
  color: #ffffff;
}
.notify.success .notify-closer {
  background-color: #60a917;
  color: #ffffff;
}
.notify.success .notify-closer:hover {
  background-color: #7ad61d;
}
.notify.success .notify-closer:active {
  background-color: #128023;
}
.notify.alert {
  background-color: #ce352c;
  color: #ffffff;
}
.notify.alert .notify-closer {
  background-color: #ce352c;
  color: #ffffff;
}
.notify.alert .notify-closer:hover {
  background-color: #da5a53;
}
.notify.alert .notify-closer:active {
  background-color: #9a1616;
}
.notify.warning {
  background-color: #fa6800;
  color: #ffffff;
}
.notify.warning .notify-closer {
  background-color: #fa6800;
  color: #ffffff;
}
.notify.warning .notify-closer:hover {
  background-color: #ffc194;
}
.notify.warning .notify-closer:active {
  background-color: #bf5a15;
}
.notify.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.notify.info .notify-closer {
  background-color: #1ba1e2;
  color: #ffffff;
}
.notify.info .notify-closer:hover {
  background-color: #59cde2;
}
.notify.info .notify-closer:active {
  background-color: #1b6eae;
}
p [data-hint] {
  border-bottom: 1px #373737 dotted;
  white-space: nowrap;
}
.hint {
  position: fixed;
  color: #1d1d1d;
  padding: 10px;
  font-size: 12px;
  width: auto;
  max-width: 220px;
  margin-top: 10px;
  z-index: 1030;
  display: none;
  border: 1px #eee solid;
}
.hint .hint-title,
.hint .hint-text {
  color: inherit;
  text-align: left;
}
.hint .hint-title {
  font-size: 1.2em;
  font-weight: bold;
}
.hint:before {
  content: '';
  position: absolute;
  background-color: inherit;
  width: 10px;
  height: 10px;
  border: 1px #eee solid;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.hint:before {
  z-index: 2;
}
.hint.bottom:before {
  top: 1px;
  left: 5px;
  margin: -7px 0;
  border-bottom: none;
  border-right: none;
}
.hint.top:before {
  top: 100%;
  margin-top: -5px;
  left: 5px;
  border-top: none;
  border-left: none;
}
.hint.left:before {
  top: 5px;
  left: 100%;
  margin-left: -5px;
  border-bottom: none;
  border-left: none;
}
.hint.right:before {
  top: 5px;
  left: -9px;
  margin: 1px 0 0 3px;
  border-top: none;
  border-right: none;
}
.hint2 {
  position: fixed;
  color: #1d1d1d;
  padding: 10px;
  font-size: 12px;
  width: auto;
  max-width: 220px;
  margin-top: 10px;
  z-index: 1030;
  display: none;
  border: 1px #eee solid;
}
.hint2 .hint-title,
.hint2 .hint-text {
  color: inherit;
  text-align: left;
}
.hint2 .hint-title {
  font-size: 1.2em;
  font-weight: bold;
}
.hint2:before {
  content: '';
  position: absolute;
  background-color: inherit;
  width: 10px;
  height: 10px;
  border: 1px #eee solid;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.hint2:before {
  z-index: 2;
}
.hint2.bottom:before {
  top: 1px;
  left: 5px;
  margin: -7px 0;
  border-bottom: none;
  border-right: none;
}
.hint2.top:before {
  top: 100%;
  margin-top: -5px;
  left: 5px;
  border-top: none;
  border-left: none;
}
.hint2.left:before {
  top: 5px;
  left: 100%;
  margin-left: -5px;
  border-bottom: none;
  border-left: none;
}
.hint2.right:before {
  top: 5px;
  left: -9px;
  margin: 1px 0 0 3px;
  border-top: none;
  border-right: none;
}
.hint2.no-border {
  border: none;
}
.hint2.no-border:before {
  border: none;
}
.hint2.no-border.right:before {
  left: -7px;
}
.hint2.bottom:before {
  top: 1px;
  left: 50%;
  margin: -7px 0 0 -5px;
  border-bottom: none;
  border-right: none;
}
.hint2.top:before {
  top: 100%;
  margin-top: -5px;
  left: 50%;
  margin-left: -5px;
  border-top: none;
  border-left: none;
}
.hint2.left:before {
  top: 50%;
  margin-top: -5px;
  left: 100%;
  margin-left: -5px;
  border-bottom: none;
  border-left: none;
}
.hint2.right:before {
  top: 50%;
  margin: -5px 0 0 3px;
  left: -9px;
  border-top: none;
  border-right: none;
}
.hint.no-border,
.hint2.no-border {
  border: none;
}
.hint.no-border:before,
.hint2.no-border:before {
  border: none;
}
.hint.no-border.right:before,
.hint2.no-border.right:before {
  left: -7px;
}
.hint2.line {
  padding: 2px 4px;
  border: none;
  display: block;
  max-width: 100%;
  margin: -5px 0 4px 0;
}
.hint2.line:before {
  display: none;
}
.preloader-ring {
  position: relative;
  padding-top: 0.22rem;
  width: 32px;
  height: 32px;
  margin: .625rem;
}
.preloader-ring > .wrap {
  position: absolute;
  width: 30px;
  height: 30px;
}
.preloader-ring > .wrap > .circle {
  opacity: 0;
  width: 30px;
  height: 30px;
  -webkit-transform: rotate(225deg);
          transform: rotate(225deg);
  -webkit-animation: orbit 4000ms infinite;
          animation: orbit 4000ms infinite;
}
.preloader-ring > .wrap > .circle:after {
  position: absolute;
  content: '';
  width: 4px;
  height: 4px;
  border-radius: 4px;
  background: #ffffff;
}
.preloader-ring > .wrap:nth-child(2) {
  -webkit-transform: rotate(-14deg);
          transform: rotate(-14deg);
}
.preloader-ring > .wrap:nth-child(2) > .circle {
  -webkit-animation-delay: 133.33333333ms;
          animation-delay: 133.33333333ms;
}
.preloader-ring > .wrap:nth-child(3) {
  -webkit-transform: rotate(-28deg);
          transform: rotate(-28deg);
}
.preloader-ring > .wrap:nth-child(3) > .circle {
  -webkit-animation-delay: 266.66666667ms;
          animation-delay: 266.66666667ms;
}
.preloader-ring > .wrap:nth-child(4) {
  -webkit-transform: rotate(-42deg);
          transform: rotate(-42deg);
}
.preloader-ring > .wrap:nth-child(4) > .circle {
  -webkit-animation-delay: 400ms;
          animation-delay: 400ms;
}
.preloader-ring > .wrap:nth-child(5) {
  -webkit-transform: rotate(-56deg);
          transform: rotate(-56deg);
}
.preloader-ring > .wrap:nth-child(5) > .circle {
  -webkit-animation-delay: 533.33333333ms;
          animation-delay: 533.33333333ms;
}
.preloader-ring.dark-style > .wrap > .circle:after {
  background-color: #555555;
}
.preloader-ring.color-style > .wrap > .circle:after {
  background-color: #1ba1e2;
}
.preloader-ring.color-style > .wrap:nth-child(2) > .circle:after {
  background-color: #fa6800;
}
.preloader-ring.color-style > .wrap:nth-child(3) > .circle:after {
  background-color: #60a917;
}
.preloader-ring.color-style > .wrap:nth-child(4) > .circle:after {
  background-color: #ce352c;
}
.preloader-ring.color-style > .wrap:nth-child(5) > .circle:after {
  background-color: #e3c800;
}
.preloader-metro {
  overflow: hidden;
  position: relative;
  width: 100%;
  height: 10px;
  background-color: transparent;
}
.preloader-metro > .circle {
  display: inline-block;
  position: absolute;
  width: 10px;
  height: 10px;
  background-color: #ffffff;
  opacity: 0;
  margin-left: 5px;
  -webkit-animation: metro-slide 3s cubic-bezier(0.1, 0.85, 0.9, 0.15) infinite, metro-opacity 2s ease-in-out infinite alternate;
          animation: metro-slide 3s cubic-bezier(0.1, 0.85, 0.9, 0.15) infinite, metro-opacity 2s ease-in-out infinite alternate;
}
.preloader-metro > .circle:nth-child(2) {
  -webkit-animation-delay: .8s;
          animation-delay: .8s;
}
.preloader-metro > .circle:nth-child(3) {
  -webkit-animation-delay: .7s;
          animation-delay: .7s;
}
.preloader-metro > .circle:nth-child(4) {
  -webkit-animation-delay: .6s;
          animation-delay: .6s;
}
.preloader-metro > .circle:nth-child(5) {
  -webkit-animation-delay: .5s;
          animation-delay: .5s;
}
.preloader-metro.dark-style > .circle {
  background-color: #555555;
}
.preloader-metro.color-style > .circle {
  background-color: #1ba1e2;
}
.preloader-metro.color-style > .circle:nth-child(2) {
  background-color: #fa6800;
}
.preloader-metro.color-style > .circle:nth-child(3) {
  background-color: #60a917;
}
.preloader-metro.color-style > .circle:nth-child(4) {
  background-color: #ce352c;
}
.preloader-metro.color-style > .circle:nth-child(5) {
  background-color: #e3c800;
}
.preloader-square {
  position: relative;
  width: 40px;
  height: 40px;
  overflow: hidden;
  -webkit-transform-origin: bottom left;
          transform-origin: bottom left;
  -webkit-animation: ani-shrink 1s linear infinite;
          animation: ani-shrink 1s linear infinite;
}
.preloader-square .square {
  position: absolute;
  width: 19px;
  height: 19px;
  background: #ffffff;
}
.preloader-square .square:nth-child(1) {
  left: 0;
  top: 21px;
}
.preloader-square .square:nth-child(2) {
  left: 21px;
  top: 21px;
  -webkit-animation: ani-drop 1s linear infinite;
          animation: ani-drop 1s linear infinite;
}
.preloader-square .square:nth-child(3) {
  left: 0;
  top: 0;
  -webkit-animation: ani-drop2 1s linear infinite;
          animation: ani-drop2 1s linear infinite;
}
.preloader-square .square:nth-child(4) {
  left: 21px;
  top: 0;
  -webkit-animation: ani-drop3 1s linear infinite;
          animation: ani-drop3 1s linear infinite;
}
.preloader-square.dark-style > .square {
  background-color: #555555;
}
.preloader-square.color-style > .square:nth-child(1) {
  background-color: #fa6800;
}
.preloader-square.color-style > .square:nth-child(2) {
  background-color: #60a917;
}
.preloader-square.color-style > .square:nth-child(3) {
  background-color: #1ba1e2;
}
.preloader-square.color-style > .square:nth-child(4) {
  background-color: #e3c800;
}
.preloader-cycle {
  width: 64px;
  height: 64px;
  position: relative;
  overflow: hidden;
}
.preloader-cycle .cycle {
  display: block;
  position: relative;
  left: 50%;
  top: 50%;
  width: 64px;
  height: 64px;
  margin: -32px 0 0 -32px;
  border-radius: 50%;
  border: 3px solid transparent;
  border-top-color: #ffffff;
  -webkit-animation: ani-pre-spin 1s linear infinite;
          animation: ani-pre-spin 1s linear infinite;
  z-index: 1001;
}
.preloader-cycle .cycle:before {
  content: "";
  position: absolute;
  top: 5px;
  left: 5px;
  right: 5px;
  bottom: 5px;
  border-radius: 50%;
  border: 3px solid transparent;
  border-top-color: #ffffff;
  -webkit-animation: ani-pre-spin 2s linear infinite;
          animation: ani-pre-spin 2s linear infinite;
}
.preloader-cycle .cycle:after {
  content: "";
  position: absolute;
  top: 15px;
  left: 15px;
  right: 15px;
  bottom: 15px;
  border-radius: 50%;
  border: 3px solid transparent;
  border-top-color: #ffffff;
  -webkit-animation: spin 1.5s linear infinite;
          animation: spin 1.5s linear infinite;
}
.preloader-cycle.dark-style .cycle {
  border-top-color: #1d1d1d;
}
.preloader-cycle.dark-style .cycle:before {
  border-top-color: #1d1d1d;
}
.preloader-cycle.dark-style .cycle:after {
  border-top-color: #1d1d1d;
}
.preloader-cycle.color-style .cycle {
  border-top-color: #3498db;
}
.preloader-cycle.color-style .cycle:before {
  border-top-color: #e74c3c;
}
.preloader-cycle.color-style .cycle:after {
  border-top-color: #f9c922;
}
.dialog-overlay {
  background-color: transparent;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  min-height: 100%;
  min-width: 100%;
  z-index: 1049;
}
.dialog {
  position: fixed;
  display: block;
  width: auto;
  height: auto;
  float: left;
  background-color: #ffffff;
  color: #1d1d1d;
  z-index: 1050;
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.dialog .dialog-close-button {
  position: absolute;
  height: 1.5rem;
  width: 1.5rem;
  min-height: 1.5rem;
  text-align: center;
  vertical-align: middle;
  font-size: 1rem;
  font-weight: normal;
  padding: .125rem 0 .625rem 0;
  z-index: 3;
  outline: none;
  cursor: pointer;
  background-color: #ffffff;
  color: #777777;
  top: .25rem;
  right: .25rem;
}
.dialog .dialog-close-button:hover {
  background-color: #cde6f7;
  color: #2a8dd4;
}
.dialog .dialog-close-button:hover:after {
  border-color: #2a8dd4;
}
.dialog .dialog-close-button:active {
  background-color: #92c0e0;
  color: #ffffff;
}
.dialog .dialog-close-button:after {
  border-color: #777777;
  content: '\D7';
  line-height: 1;
}
.dialog.success {
  background-color: #60a917;
  color: #ffffff;
}
.dialog.success .dialog-close-button {
  background-color: #7ad61d;
  color: #ffffff;
}
.dialog.success .dialog-close-button:active {
  background-color: #128023;
}
.dialog.warning {
  background-color: #fa6800;
  color: #ffffff;
}
.dialog.warning .dialog-close-button {
  background-color: #ffc194;
  color: #ffffff;
}
.dialog.warning .dialog-close-button:active {
  background-color: #bf5a15;
}
.dialog.alert {
  background-color: #ce352c;
  color: #ffffff;
}
.dialog.alert .dialog-close-button {
  background-color: #da5a53;
  color: #ffffff;
}
.dialog.alert .dialog-close-button:active {
  background-color: #9a1616;
}
.dialog.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.dialog.info .dialog-close-button {
  background-color: #59cde2;
  color: #ffffff;
}
.dialog.info .dialog-close-button:active {
  background-color: #1b6eae;
}
.streamer {
  position: relative;
  display: block;
  width: 100%;
  overflow: hidden;
}
.streamer .streamer-toolbar .toolbar-button {
  display: block;
  float: left;
  width: .625rem;
  height: 1.5rem;
}
.streamer .streamer-toolbar .toolbar-button.active {
  background-color: #555555;
  color: #ffffff;
}
.streamer .meter {
  height: 25px;
  width: auto;
  list-style: none;
  margin: 0;
  padding: 0;
  display: block;
  overflow: hidden;
}
.streamer .meter li {
  display: block;
  float: left;
  width: 213px;
  padding: 2px 3px;
  background: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANUAAAAUCAYAAAAa9HiSAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAHlJREFUeNrs2csJgDAQQMFE7Gj77yA9+UNswOwewgwI3hYTngrpY4yjAb9FRH9u7qguLfuqmFP1PKutm/2Zu36b9wvMJSoQFYgKRAWICkQFq9qrBn0HY4neM4pl5lSyP75U4PcPRAWICkQFogJEBaICUQGigjynAAMAqEOFksZmC3MAAAAASUVORK5CYII=') top left repeat-x;
}
.streamer .meter li em {
  font-size: 10px;
  font-style: normal;
}
.streamer .streams {
  width: 142px;
  padding-top: 25px;
  position: absolute;
  left: 0;
  top: 0;
  z-index: 2;
  background-color: #ffffff;
}
.streamer .streams .streams-title {
  position: absolute;
  top: 0;
}
.streamer .streams .stream {
  position: relative;
  display: block;
  width: 100%;
  height: 75px;
  margin: 0 2px 2px 0;
  padding: 5px;
  color: #ffffff;
  cursor: pointer;
}
.streamer .streams .stream .stream-title {
  font-size: .75rem;
  line-height: 1;
}
.streamer .streams .stream .stream-number {
  position: absolute;
  left: 5px;
  bottom: 5px;
  font-size: .6875rem;
  line-height: 1;
}
.streamer .events {
  padding-left: 143px;
  overflow: hidden;
  height: 100%;
  min-height: 100%;
  overflow-x: scroll;
}
.streamer .events .double {
  width: 424px;
}
.streamer .events .triple {
  width: 637px;
}
.streamer .events .quadro {
  width: 850px;
}
.streamer .events .events-area {
  height: 100%;
  min-height: 100%;
  overflow: hidden;
}
.streamer .events .events-area:before,
.streamer .events .events-area:after {
  display: table;
  content: "";
}
.streamer .events .events-area:after {
  clear: both;
}
.streamer .events .events-grid {
  height: 100%;
  min-height: 100%;
}
.streamer .events .events-grid:before,
.streamer .events .events-grid:after {
  display: table;
  content: "";
}
.streamer .events .events-grid:after {
  clear: both;
}
.streamer .events .event-group {
  height: 460px;
  min-width: 211px;
  margin: 0 2px 2px 0;
  float: left;
}
.streamer .events .event-super {
  height: 100%;
  min-height: 100%;
  border: 1px #d9d9d9 solid;
}
.streamer .events .event-super.medium-border {
  border-width: 8px;
}
.streamer .events .event-super.large-border {
  border-width: 16px;
}
.streamer .events .event-stream {
  height: 75px;
}
.streamer .events .event-stream .event {
  min-width: 211px;
  height: 75px;
  float: left;
  display: block;
  margin: 0 2px 2px 0;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  border: 1px #d9d9d9 solid;
}
.streamer .events .event-stream .event.medium-border {
  border-width: 8px;
}
.streamer .events .event-stream .event.large-border {
  border-width: 16px;
}
.streamer .events .event-stream .event:last-child {
  margin-right: 0;
}
.streamer .events .event-stream .event.event-disable {
  opacity: .2;
}
.streamer .events .event-stream .event .event-content {
  width: 100%;
  height: 100%;
  padding: 0;
  margin: 0;
  position: absolute;
  left: 0;
  top: 0;
  overflow: hidden;
  display: none;
}
.streamer .events .event-stream .event .event-content:first-child {
  display: block;
}
.streamer .events .event-stream .event .event-content-logo {
  display: block;
  float: left;
  margin-right: 5px;
  padding: 3px;
}
.streamer .events .event-stream .event .event-content-logo .icon {
  position: relative;
  width: 39px;
  height: 39px;
  margin-bottom: 1px;
}
.streamer .events .event-stream .event .event-content-logo .icon img {
  width: 100%;
  height: 100%;
}
.streamer .events .event-stream .event .event-content-logo .time {
  position: relative;
  width: 39px;
  padding: 8px 4px;
  font-size: .75rem;
  color: #ffffff;
  line-height: 1;
}
.streamer .events .event-stream .event .event-content-data {
  display: block;
  padding: 0;
  margin: 0;
  position: relative;
  margin-left: 50px;
}
.streamer .events .event-stream .event .event-content-data .title {
  position: relative;
  font-size: .875rem;
  line-height: 1;
  margin: 3px 0 0;
  padding: 0;
}
.streamer .events .event-stream .event .event-content-data .subtitle {
  position: relative;
  font-size: .625rem;
  line-height: 1;
  margin: 0;
  padding: 0;
  margin-bottom: 10px;
}
.streamer .events .event-stream .event .event-content-data .remark {
  position: absolute;
  display: block;
  top: 36px;
  margin-right: 4px;
  font-size: .6875rem;
  line-height: 1;
  color: #999999;
}
.streamer .events .event-stream .event:hover {
  border-color: #999999;
}
.streamer .events .event-stream .event.selected {
  border: 4px #4390df solid;
  border-width: 1px;
}
.streamer .events .event-stream .event.selected:after {
  position: absolute;
  display: block;
  border-top: 28px solid #4390df;
  border-left: 28px solid transparent;
  right: 0;
  content: "";
  top: 0;
  z-index: 101;
}
.streamer .events .event-stream .event.selected:before {
  position: absolute;
  display: block;
  content: "";
  background-color: transparent;
  border-color: #ffffff;
  border-left: 2px solid;
  border-bottom: 2px solid;
  height: .25rem;
  width: .5rem;
  right: 0;
  top: 0;
  z-index: 102;
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.streamer .events .event-stream .event.selected:before {
  right: 3px;
  top: 3px;
  color: #ffffff;
}
.streamer .events .event-stream .event.margin-one {
  margin-left: 213px;
}
.streamer .events .event-stream .event.margin-double {
  margin-left: 426px;
}
.streamer .events .event-stream .event.margin-triple {
  margin-left: 639px;
}
.streamer .events .event-stream .event.margin-quadro {
  margin-left: 852px;
}
.keypad {
  position: relative;
  width: 106px;
  padding: 1px;
  border: 1px #eeeeee solid;
  vertical-align: middle;
  background-color: #ffffff;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.keypad:before,
.keypad:after {
  display: table;
  content: "";
}
.keypad:after {
  clear: both;
}
.keypad .key {
  width: 32px;
  height: 32px;
  display: block;
  float: left;
  margin: 1px;
  border: 1px #eeeeee solid;
  vertical-align: middle;
  text-align: center;
  cursor: pointer;
  font-size: .875rem;
  line-height: 32px;
}
.keypad .key:hover {
  background-color: #eeeeee;
}
.keypad .key:active {
  background-color: #555555;
  color: #ffffff;
}
.keypad.shadow {
  box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.3);
}
.fluent-menu .tabs-holder {
  list-style: none;
  position: relative;
  margin: 0;
  padding: 0;
  display: block;
  z-index: 2;
}
.fluent-menu .tabs-holder:before,
.fluent-menu .tabs-holder:after {
  display: table;
  content: "";
}
.fluent-menu .tabs-holder:after {
  clear: both;
}
.fluent-menu .tabs-holder li {
  display: block;
  float: left;
  margin-right: 5px;
  background-color: #ffffff;
}
.fluent-menu .tabs-holder li a {
  display: block;
  float: left;
  padding: .25rem 1rem;
  text-transform: uppercase;
  font-size: .8em;
  color: #444444;
}
.fluent-menu .tabs-holder li a:hover {
  color: #0072c6;
}
.fluent-menu .tabs-holder li:first-child {
  margin-left: 0;
}
.fluent-menu .tabs-holder li.active {
  border: 1px #d4d4d4 solid;
  border-bottom-color: #ffffff;
}
.fluent-menu .tabs-holder li.active a {
  color: #0072c6;
}
.fluent-menu .tabs-holder li.special {
  border: 1px #0072c6 solid;
  background-color: #0072c6;
}
.fluent-menu .tabs-holder li.special a {
  color: #ffffff;
}
.fluent-menu .tabs-holder li.special a:hover {
  color: #ffffff;
}
.fluent-menu .tabs-content {
  z-index: 1;
  position: relative;
  margin-top: -1px;
  border: 1px #d4d4d4 solid;
  background-color: #ffffff;
  height: 120px;
}
.fluent-menu .tabs-content .tab-panel {
  display: block;
  height: 100%;
  padding: 5px 0 2px;
}
.fluent-menu .tabs-content .tab-panel .tab-panel-group {
  height: 100%;
  position: relative;
  display: block;
  float: left;
  padding: 0 5px;
  border-right: 1px #d4d4d4 solid;
}
.fluent-menu .tabs-content .tab-panel .tab-panel-group:last-child {
  margin-right: 0;
}
.fluent-menu .tabs-content .tab-panel .tab-group-caption {
  font-size: 10px;
  margin: 2px 0 -2px;
  text-align: center;
  display: block;
  position: absolute;
  bottom: 0;
  right: 0;
  left: 0;
  white-space: nowrap;
  background: #eeeeee;
}
.fluent-menu .tabs-content .tab-panel .tab-content-segment {
  display: block;
  float: left;
  position: relative;
}
.fluent-menu .fluent-button,
.fluent-menu .fluent-big-button,
.fluent-menu .fluent-tool-button {
  background-color: #ffffff;
  padding: .3125rem;
  display: block;
  cursor: default;
  border: 0;
  outline: none;
  font-size: .8em;
  line-height: 1.2;
  vertical-align: middle;
}
.fluent-menu .fluent-button:hover,
.fluent-menu .fluent-big-button:hover,
.fluent-menu .fluent-tool-button:hover {
  background-color: #cde6f7;
}
.fluent-menu .fluent-button img,
.fluent-menu .fluent-big-button img,
.fluent-menu .fluent-tool-button img,
.fluent-menu .fluent-button .icon,
.fluent-menu .fluent-big-button .icon,
.fluent-menu .fluent-tool-button .icon,
.fluent-menu .fluent-button [class*=mif-],
.fluent-menu .fluent-big-button [class*=mif-],
.fluent-menu .fluent-tool-button [class*=mif-] {
  line-height: 1.2;
  display: block;
  float: left;
  margin-right: 5px;
  width: 16px;
  height: 16px;
  color: #444444;
  vertical-align: middle;
}
.fluent-menu .fluent-button .label,
.fluent-menu .fluent-big-button .label,
.fluent-menu .fluent-tool-button .label {
  display: inline-block;
  color: inherit;
  font: inherit;
}
.fluent-menu .fluent-button:active,
.fluent-menu .fluent-big-button:active,
.fluent-menu .fluent-tool-button:active {
  top: 0;
  left: 0;
  background-color: #75bae9;
}
.fluent-menu .fluent-button.dropdown-toggle:before,
.fluent-menu .fluent-big-button.dropdown-toggle:before,
.fluent-menu .fluent-tool-button.dropdown-toggle:before {
  margin-top: -0.3125rem;
}
.fluent-menu .fluent-big-button {
  padding: 7px 5px;
  text-align: center;
  white-space: normal;
  line-height: 12px;
  float: left;
  position: relative;
}
.fluent-menu .fluent-big-button img,
.fluent-menu .fluent-big-button .icon,
.fluent-menu .fluent-big-button [class*=mif-] {
  display: block;
  width: 40px;
  height: 40px;
  font-size: 40px;
  float: none;
  text-align: center;
  margin: 5px auto 5px;
}
.fluent-menu .fluent-big-button br {
  line-height: 4px;
  height: 4px;
  font-size: 4px;
}
.fluent-menu .fluent-tool-button {
  padding: 4px;
}
.fluent-menu .fluent-tool-button img,
.fluent-menu .fluent-tool-button [class*="icon-"] {
  display: block;
  width: 16px;
  height: 16px;
  font-size: 16px;
  float: none;
  text-align: center;
}
.fluent-menu .fluent-tool-button img {
  margin-right: 0;
}
.fluent-menu .dropdown-toggle {
  padding-right: 24px;
}
.fluent-menu .d-menu {
  position: absolute;
  top: 100%;
  z-index: 100;
}
.fluent-menu .d-menu a {
  padding: 4px 24px;
  font-size: .8em;
}
.fluent-menu .d-menu a:hover {
  background-color: #cde6f7;
  color: #444444;
}
.video-player:-webkit-full-screen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
  width: 100%;
  height: 100%;
}
.video-player:-webkit-full-screen video {
  width: 100%;
  height: 100%;
}
.video-player:-webkit-full-screen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
}
.video-player:-moz-full-screen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
}
.video-player:-ms-fullscreen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
}
.video-player:fullscreen {
  position: fixed;
  top: 0;
  min-width: 100%;
  min-height: 100%;
}
.video-player:-webkit-full-screen video {
  width: 100%;
  height: 100%;
}
.video-player:-moz-full-screen video {
  width: 100%;
  height: 100%;
}
.video-player:-ms-fullscreen video {
  width: 100%;
  height: 100%;
}
.video-player:fullscreen video {
  width: 100%;
  height: 100%;
}
.video-player {
  display: block;
  background: #1d1d1d;
  position: relative;
  width: 100%;
  height: auto;
  z-index: 1;
}
.video-player .video-preloader {
  position: absolute;
  z-index: 2147483647;
  top: 50%;
  left: 50%;
  margin-top: -32px;
  margin-left: -32px;
}
.video-player .video-logo {
  position: absolute;
  z-index: 2147483647;
  right: 20px;
  top: 20px;
  height: 32px;
}
.video-player video {
  width: 100%;
  height: 100%;
  z-index: 1;
}
.video-player .controls {
  position: absolute;
  height: auto;
  padding: .625rem;
  z-index: 2147483647;
  background: rgba(34, 34, 34, 0.5);
}
.video-player .controls .info-box {
  float: left;
  background: inherit;
  margin: 0 2px;
  padding: .75rem 1rem;
  color: #ffffff;
  height: 2.125rem;
  text-align: center;
  font-size: .8em;
}
.video-player .controls .control-slider {
  height: 2.125rem;
  float: left;
  padding: 0 1rem 0;
  margin: 0 2px;
  background: inherit;
}
.video-player .controls .volume-slider-wrapper {
  width: 6rem;
}
.video-player .controls .stream-slider-wrapper {
  float: none;
  width: 100%;
}
.video-player .controls .control-button {
  float: left;
  background: inherit;
  border: 0;
  color: #b3b3b3;
  outline: none;
  position: relative;
  margin: 0 2px;
}
.video-player .controls .control-button:hover,
.video-player .controls .control-button:active {
  color: #ffffff;
}
.video-player .controls .control-button.loop.active {
  color: #60a917;
}
.video-player .controls .control-button.stop:disabled {
  color: #555555;
}
.video-player .controls .control-button.full {
  float: right;
}
.video-player .controls.position-bottom {
  bottom: 0;
  left: 0;
  right: 0;
}
.video-player.full-screen {
  position: fixed;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  width: auto !important;
  z-index: 2147483646;
}
video::-webkit-media-controls {
  display: none !important;
}
video::-webkit-media-controls-enclosure {
  display: none !important;
}
.audio-player {
  display: inline-block;
  position: relative;
  background: #1d1d1d;
  height: auto;
}
.audio-player .controls {
  position: relative;
  width: 100%;
  height: auto;
  padding: 4px;
  background: inherit;
}
.audio-player .controls:before,
.audio-player .controls:after {
  display: table;
  content: "";
}
.audio-player .controls:after {
  clear: both;
}
.audio-player .controls .control-element {
  height: 2.125rem;
  display: inline-block;
  border: none;
  background: rgba(34, 34, 34, 0.5);
  vertical-align: middle;
}
.audio-player .controls .stream-wrapper {
  padding: 0 .25rem;
}
.audio-player .controls .stream-slider {
  width: 200px;
}
.audio-player .controls .info-box {
  margin: 0 2px;
  padding: .75rem 1rem;
  color: #ffffff;
  height: 2.125rem;
  line-height: 1;
  text-align: center;
  font-size: .8em;
}
.audio-player .controls .volume-wrapper {
  width: 100px;
  padding: 0 .25rem 0;
}
.audio-player .controls .play,
.audio-player .controls .stop,
.audio-player .controls .loop,
.audio-player .controls .volume,
.audio-player .controls .next,
.audio-player .controls .prev,
.audio-player .controls .shuffle,
.audio-player .controls .random,
.audio-player .controls .plist {
  color: #b3b3b3;
}
.audio-player .controls .play:hover,
.audio-player .controls .stop:hover,
.audio-player .controls .loop:hover,
.audio-player .controls .volume:hover,
.audio-player .controls .next:hover,
.audio-player .controls .prev:hover,
.audio-player .controls .shuffle:hover,
.audio-player .controls .random:hover,
.audio-player .controls .plist:hover,
.audio-player .controls .play:active,
.audio-player .controls .stop:active,
.audio-player .controls .loop:active,
.audio-player .controls .volume:active,
.audio-player .controls .next:active,
.audio-player .controls .prev:active,
.audio-player .controls .shuffle:active,
.audio-player .controls .random:active,
.audio-player .controls .plist:active {
  color: #ffffff;
}
.audio-player .controls .loop.active {
  color: #7ad61d;
}
.audio-player .controls .control-element:disabled {
  color: #555555;
}
.audio-player .play-list-wrapper {
  display: block;
  position: relative;
  padding: .625rem;
  border-bottom: 1px solid #555555;
}
.audio-player .play-list-wrapper:before,
.audio-player .play-list-wrapper:after {
  display: table;
  content: "";
}
.audio-player .play-list-wrapper:after {
  clear: both;
}
.audio-player .play-list-wrapper.not-visible {
  display: none;
}
.audio-player .album-title {
  font-size: 2rem;
  color: #ffffff;
  font-weight: lighter;
  margin: 0 0 .625rem;
  padding-bottom: .625rem;
  border-bottom: 1px solid #555555;
}
.audio-player .poster {
  float: left;
  width: 10rem;
  height: 100%;
}
.audio-player .album-desc {
  padding: .625rem;
  color: #eeeeee;
  font-size: .6875rem;
}
.audio-player .play-list {
  list-style: none;
  padding: 10px;
  color: #ffffff;
  display: block;
  font-size: .8em;
  width: 100%;
}
.audio-player .play-list li {
  padding: .125rem 1rem;
  cursor: pointer;
  position: relative;
}
.audio-player .play-list li:hover {
  background: #555555;
}
.audio-player .play-list li.current {
  color: #1ba1e2;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.audio-player .play-list li.current:before {
  content: "\25B6";
  position: absolute;
  left: .25rem;
}
.audio-player .poster ~ .play-list {
  margin: 0 0 0 11rem;
  width: calc(100% - 11rem);
}
.audio-player.micro .plist,
.audio-player.micro .loop,
.audio-player.micro .next,
.audio-player.micro .prev,
.audio-player.micro .random,
.audio-player.micro .stop,
.audio-player.micro .stream-wrapper,
.audio-player.micro .info-box,
.audio-player.micro .volume-wrapper,
.audio-player.micro .volume {
  display: none;
}
.audio-player.small .plist,
.audio-player.small .stop,
.audio-player.small .stream-wrapper,
.audio-player.small .next,
.audio-player.small .prev,
.audio-player.small .random,
.audio-player.small .loop {
  display: none;
}
.audio-player.medium .plist,
.audio-player.medium .stop,
.audio-player.medium .next,
.audio-player.medium .prev,
.audio-player.medium .random,
.audio-player.medium .loop {
  display: none;
}
.select2-container {
  box-sizing: border-box;
  display: inline-block;
  margin: .3125rem 0;
  position: relative;
  vertical-align: middle;
  height: auto;
}
.select2-container .select2-selection--single {
  box-sizing: border-box;
  cursor: pointer;
  display: block;
  min-height: 2.125rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.select2-container .select2-selection--single .select2-selection__rendered {
  display: block;
  padding-left: 8px;
  padding-right: 20px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.select2-container .select2-selection--multiple {
  box-sizing: border-box;
  cursor: pointer;
  display: block;
  min-height: 2.125rem;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  z-index: 998;
}
.select2-container .select2-selection--multiple .select2-selection__rendered {
  display: inline-block;
  overflow: hidden;
  padding-left: 8px;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.select2-container .select2-container .select2-search--inline {
  float: left;
}
.select2-container .select2-container .select2-search--inline .select2-search__field {
  box-sizing: border-box;
  border: none;
  font-size: 100%;
  margin-top: 5px;
}
.select2-container .select2-container .select2-search--inline .select2-search__field::-webkit-search-cancel-button {
  -webkit-appearance: none;
}
.select2-dropdown {
  background-color: white;
  border: 1px solid #aaa;
  border-radius: 0;
  box-sizing: border-box;
  display: block;
  position: absolute;
  left: -100000px;
  width: 100%;
  z-index: 1051;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
}
.select2-results {
  display: block;
}
.select2-results__options {
  list-style: none;
  margin: 0;
  padding: 0;
}
.select2-results__option {
  padding: 6px;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.select2-results__option[aria-selected] {
  cursor: pointer;
}
.select2-container--open .select2-dropdown {
  left: 0;
}
.select2-search--dropdown {
  display: block;
  padding: 4px;
}
.select2-search--dropdown .select2-search__field {
  padding: 4px;
  width: 100%;
  box-sizing: border-box;
}
.select2-search--dropdown .select2-search__field::-webkit-search-cancel-button {
  -webkit-appearance: none;
}
.select2-search--dropdown.select2-search--hide {
  display: none;
}
.select2-close-mask {
  border: 0;
  margin: 0;
  padding: 0;
  display: block;
  position: fixed;
  left: 0;
  top: 0;
  min-height: 100%;
  min-width: 100%;
  height: auto;
  width: auto;
  opacity: 0;
  z-index: 2;
  background-color: #fff;
  filter: alpha(opacity=0);
}
.select2-container--default .select2-selection--single {
  background-color: #fff;
  border: 1px solid #aaa;
}
.select2-container--default .select2-selection--single .select2-selection__rendered {
  color: #444;
  line-height: 28px;
}
.select2-container--default .select2-selection--single .select2-selection__clear {
  cursor: pointer;
  float: right;
  font-weight: bold;
}
.select2-container--default .select2-selection--single .select2-selection__placeholder {
  color: #999;
}
.select2-container--default .select2-selection--single .select2-selection__arrow {
  height: 26px;
  position: absolute;
  top: 1px;
  right: 1px;
  width: 20px;
}
.select2-container--default .select2-selection--single .select2-selection__arrow b {
  border-color: #888 transparent transparent transparent;
  border-style: solid;
  border-width: 5px 4px 0 4px;
  height: 0;
  left: 50%;
  margin-left: -4px;
  margin-top: -2px;
  position: absolute;
  top: 50%;
  width: 0;
}
.select2-container--default.select2-container--disabled .select2-selection--single {
  background-color: #eee;
  cursor: default;
}
.select2-container--default.select2-container--disabled .select2-selection--single .select2-selection__clear {
  display: none;
}
.select2-container--default.select2-container--open .select2-selection--single .select2-selection__arrow b {
  border-color: transparent transparent #888 transparent;
  border-width: 0 4px 5px 4px;
}
.select2-container--default .select2-selection--multiple {
  background-color: white;
  border: 1px solid #aaa;
  cursor: text;
}
.select2-container--default .select2-selection--multiple .select2-selection__rendered {
  box-sizing: border-box;
  list-style: none;
  margin: 0;
  padding: 0 5px;
  width: 100%;
}
.select2-container--default .select2-selection--multiple .select2-selection__placeholder {
  color: #999;
  margin-top: 5px;
  float: left;
}
.select2-container--default .select2-selection--multiple .select2-selection__clear {
  cursor: pointer;
  float: right;
  font-weight: bold;
  margin-top: 5px;
  margin-right: 10px;
}
.select2-container--default .select2-selection--multiple .select2-selection__choice {
  background-color: #eeeeee;
  border: 1px solid #999999;
  color: #1d1d1d;
  font-size: .875rem;
  cursor: default;
  float: left;
  margin-right: 5px;
  margin-top: 5px;
  padding: 0 5px;
  vertical-align: middle;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.35);
}
.select2-container--default .select2-selection--multiple .select2-selection__choice__remove {
  color: #999;
  cursor: pointer;
  display: inline-block;
  margin-right: 2px;
}
.select2-container--default .select2-selection--multiple .select2-selection__choice__remove:hover {
  color: #333;
}
.select2-container--default.select2-container--focus .select2-selection--multiple {
  border: solid black 1px;
  outline: 0;
}
.select2-container--default.select2-container--focus .select2-selection--single {
  border: solid black 1px;
  outline: 0;
}
.select2-container--default.select2-container--disabled .select2-selection--multiple {
  background-color: #eee;
  cursor: default;
}
.select2-container--default.select2-container--disabled .select2-selection__choice__remove {
  display: none;
}
.select2-container--default .select2-search--dropdown .select2-search__field {
  border: 1px solid #aaa;
}
.select2-container--default .select2-search--inline .select2-search__field {
  background: transparent;
  border: none;
  outline: 0;
}
.select2-container--default .select2-results > .select2-results__options {
  max-height: 200px;
  overflow-y: auto;
}
.select2-container--default .select2-results__option[role=group] {
  padding: 0;
}
.select2-container--default .select2-results__option[aria-disabled=true] {
  color: #999;
}
.select2-container--default .select2-results__option[aria-selected=true] {
  background-color: #ddd;
}
.select2-container--default .select2-results__option .select2-results__option {
  padding-left: 1em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__group {
  padding-left: 0;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -1em;
  padding-left: 2em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -2em;
  padding-left: 3em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -3em;
  padding-left: 4em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -4em;
  padding-left: 5em;
}
.select2-container--default .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option .select2-results__option {
  margin-left: -5em;
  padding-left: 6em;
}
.select2-container--default .select2-results__option--highlighted[aria-selected] {
  background-color: #5897fb;
  color: white;
}
.select2-container--default .select2-results__group {
  cursor: default;
  display: block;
  padding: 6px;
}
.select2-container input {
  outline: none;
}
.select2-container .select2-search.select2-search--inline input {
  margin-top: 7px;
  padding: 0;
}
.input-control .select2-container {
  margin: 0;
}
.input-control.required .select2-selection {
  border: 1px dashed #1ba1e2;
}
.input-control.error .select2-selection {
  border: 1px solid #ce352c;
}
.input-control.warning .select2-selection {
  border: 1px solid #e3c800;
}
.input-control.success .select2-selection {
  border: 1px solid #60a917;
}
.input-control.info .select2-selection {
  border: 1px solid #1ba1e2;
}
/*
* Third-party plugin DataTables
* Plugin home page: http://datatables.net/
*/
.dataTable {
  width: 100%;
  margin: .625rem 0;
  clear: both;
}
.dataTable th,
.dataTable td {
  padding: 0.625rem;
}
.dataTable thead {
  border-bottom: 4px solid #999999;
}
.dataTable thead th,
.dataTable thead td {
  cursor: default;
  color: #52677a;
  border-color: transparent;
  text-align: left;
  font-style: normal;
  font-weight: 700;
  line-height: 100%;
}
.dataTable tfoot {
  border-top: 4px solid #999999;
}
.dataTable tfoot th,
.dataTable tfoot td {
  cursor: default;
  color: #52677a;
  border-color: transparent;
  text-align: left;
  font-style: normal;
  font-weight: 700;
  line-height: 100%;
}
.dataTable tbody td {
  padding: 0.625rem 0.85rem;
}
.dataTable .sortable-column {
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.dataTable .sortable-column:after {
  position: absolute;
  content: "";
  width: 1rem;
  height: 1rem;
  left: 100%;
  margin-left: -20px;
  top: 50%;
  margin-top: -0.5rem;
  color: inherit;
  font-size: 1rem;
  line-height: 1;
}
.dataTable .sortable-column.sort-asc,
.dataTable .sortable-column.sort-desc {
  background-color: #eeeeee;
}
.dataTable .sortable-column.sort-asc:after,
.dataTable .sortable-column.sort-desc:after {
  color: #1d1d1d;
}
.dataTable .sortable-column.sort-asc:after {
  content: "\2191";
}
.dataTable .sortable-column.sort-desc:after {
  content: "\2193";
}
.dataTable.sortable-markers-on-left .sortable-column {
  padding-left: 30px;
}
.dataTable.sortable-markers-on-left .sortable-column:before,
.dataTable.sortable-markers-on-left .sortable-column:after {
  left: 0;
  margin-left: 10px;
}
.dataTable tr.selected td {
  background-color: rgba(28, 183, 236, 0.1);
}
.dataTable td.selected {
  background-color: rgba(28, 183, 236, 0.3);
}
.dataTable.striped tbody tr:nth-child(odd) {
  background: #eeeeee;
}
.dataTable.hovered tbody tr:hover {
  background-color: rgba(28, 183, 236, 0.1);
}
.dataTable.cell-hovered tbody td:hover {
  background-color: rgba(28, 183, 236, 0.3);
}
.dataTable.border {
  border: 1px #999999 solid;
}
.dataTable.bordered th,
.dataTable.bordered td {
  border: 1px #999999 solid;
}
.dataTable.bordered thead tr:first-child th,
.dataTable.bordered thead tr:first-child td {
  border-top: none;
}
.dataTable.bordered thead tr:first-child th:first-child,
.dataTable.bordered thead tr:first-child td:first-child {
  border-left: none;
}
.dataTable.bordered thead tr:first-child th:last-child,
.dataTable.bordered thead tr:first-child td:last-child {
  border-right: none;
}
.dataTable.bordered tbody tr:first-child td {
  border-top: none;
}
.dataTable.bordered tbody tr td:first-child {
  border-left: none;
}
.dataTable.bordered tbody tr td:last-child {
  border-right: none;
}
.dataTable.bordered tbody tr:last-child td {
  border-bottom: none;
}
.dataTable .condensed th,
.dataTable .condensed td {
  padding: .3125rem;
}
.dataTable .super-condensed th,
.dataTable .super-condensed td {
  padding: .125rem;
}
.dataTable tbody tr.error {
  background-color: #ce352c;
  color: #ffffff;
}
.dataTable tbody tr.error:hover {
  background-color: #da5a53;
}
.dataTable tbody tr.warning {
  background-color: #fa6800;
  color: #ffffff;
}
.dataTable tbody tr.warning:hover {
  background-color: #ffc194;
}
.dataTable tbody tr.success {
  background-color: #60a917;
  color: #ffffff;
}
.dataTable tbody tr.success:hover {
  background-color: #7ad61d;
}
.dataTable tbody tr.info {
  background-color: #1ba1e2;
  color: #ffffff;
}
.dataTable tbody tr.info:hover {
  background-color: #59cde2;
}
.dataTable .sorting {
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.dataTable .sorting:after {
  position: absolute;
  content: "";
  width: 1rem;
  height: 1rem;
  left: 100%;
  margin-left: -20px;
  top: 50%;
  margin-top: -0.5rem;
  color: inherit;
  font-size: 1rem;
  line-height: 1;
}
.dataTable .sorting.sort-asc,
.dataTable .sorting.sort-desc {
  background-color: #eeeeee;
}
.dataTable .sorting.sort-asc:after,
.dataTable .sorting.sort-desc:after {
  color: #1d1d1d;
}
.dataTable .sorting.sort-asc:after {
  content: "\2191";
}
.dataTable .sorting.sort-desc:after {
  content: "\2193";
}
.dataTable .sorting_asc,
.dataTable .sorting_desc {
  position: relative;
}
.dataTable .sorting_asc:after,
.dataTable .sorting_desc:after {
  position: absolute;
  content: "";
  width: 1rem;
  height: 1rem;
  left: 100%;
  margin-left: -20px;
  top: 50%;
  margin-top: -0.5rem;
  color: inherit;
  line-height: 1;
  font-size: 1.1rem;
}
.dataTable .sorting_asc {
  background-color: #eeeeee;
}
.dataTable .sorting_asc:after {
  color: #1d1d1d;
}
.dataTable .sorting_asc:after {
  content: "\2191";
}
.dataTable .sorting_desc {
  background-color: #eeeeee;
}
.dataTable .sorting_desc:after {
  color: #1d1d1d;
}
.dataTable .sorting_desc:after {
  content: "\2193";
}
.dataTables_paginate {
  display: block;
  margin: .625rem 0;
  float: left;
  width: 50%;
  margin: 0;
}
.dataTables_paginate:before,
.dataTables_paginate:after {
  display: table;
  content: "";
}
.dataTables_paginate:after {
  clear: both;
}
.dataTables_paginate > .item {
  display: block;
  float: left;
  margin-left: .0652rem;
  padding: 0.25rem .625rem;
  background-color: #ffffff;
  cursor: pointer;
  border: 1px #eeeeee solid;
  text-align: center;
  font-size: .875rem;
  color: #1d1d1d;
}
.dataTables_paginate > .item:first-child {
  margin-left: 0 ;
}
.dataTables_paginate > .item.current,
.dataTables_paginate > .item.active {
  background-color: #1ba1e2;
  border-color: #59cde2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.dataTables_paginate > .item:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.dataTables_paginate > .item:disabled,
.dataTables_paginate > .item.disabled {
  cursor: default;
  background-color: #eeeeee;
  border-color: #eeeeee;
  color: #999999;
}
.dataTables_paginate > .item.spaces {
  border: 0;
  cursor: default;
  color: #1d1d1d;
}
.dataTables_paginate > .item.spaces:hover {
  background-color: inherit ;
  color: #1d1d1d;
}
.dataTables_paginate.rounded > .item {
  border-radius: .3125rem;
}
.dataTables_paginate.cycle > .item {
  width: 28px;
  height: 28px;
  border-radius: 50%;
  font-size: .7rem;
  padding: .4375rem 0;
}
.dataTables_paginate.no-border > .item {
  border: 0;
}
.dataTables_paginate.no-border > .item:hover {
  color: #59cde2;
  background-color: transparent ;
}
.dataTables_paginate.no-border > .item:disabled,
.dataTables_paginate.no-border > .item.disabled {
  cursor: default;
  background-color: transparent;
  border-color: transparent;
  color: #999999;
}
.dataTables_paginate.no-border > .item.current:hover,
.dataTables_paginate.no-border > .item.active:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.dataTables_paginate .paginate_button {
  display: block;
  float: left;
  margin-left: .0652rem;
  padding: 0.25rem .625rem;
  background-color: #ffffff;
  cursor: pointer;
  border: 1px #eeeeee solid;
  text-align: center;
  font-size: .875rem;
  color: #1d1d1d;
}
.dataTables_paginate .paginate_button:first-child {
  margin-left: 0 ;
}
.dataTables_paginate .paginate_button.current,
.dataTables_paginate .paginate_button.active {
  background-color: #1ba1e2;
  border-color: #59cde2;
  color: #ffffff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
}
.dataTables_paginate .paginate_button:hover {
  background-color: #75c7ee;
  border-color: #75c7ee;
  color: #ffffff;
}
.dataTables_paginate .paginate_button:disabled,
.dataTables_paginate .paginate_button.disabled {
  cursor: default;
  background-color: #eeeeee;
  border-color: #eeeeee;
  color: #999999;
}
.dataTables_paginate .paginate_button.spaces {
  border: 0;
  cursor: default;
  color: #1d1d1d;
}
.dataTables_paginate .paginate_button.spaces:hover {
  background-color: inherit ;
  color: #1d1d1d;
}
.dataTables_paginate .ellipsis {
  display: block;
  float: left;
  padding: .25rem .625rem;
}
.dataTables_info {
  padding: 5px;
  background-color: #eeeeee;
  font-size: .875rem;
  float: right;
}
.dataTables_length {
  display: block;
  float: left;
  margin: .625rem 0;
}
.dataTables_length select {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  margin: 0 .125rem;
  padding: .3125rem;
  border: 1px #d9d9d9 solid;
}
.dataTables_length select:focus {
  outline: none;
  border-color: #1d1d1d;
}
.dataTables_filter {
  display: block;
  float: right;
  margin: .625rem 0;
}
.dataTables_filter label > input {
  margin: 0 0 0 .25rem;
}
.dataTables_filter input {
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  padding: .3125rem;
  border: 1px #d9d9d9 solid;
}
.dataTables_filter input:focus {
  outline: none;
  border-color: #1d1d1d;
}
.flexbox {
  display: -webkit-flex;
  display: flex;
}
.flex-dir-row {
  -webkit-flex-direction: row;
          flex-direction: row;
}
.flex-dir-row-reverse {
  -webkit-flex-direction: row-reverse;
          flex-direction: row-reverse;
}
.flex-dir-column {
  -webkit-flex-direction: column;
          flex-direction: column;
}
.flex-dir-column-reverse {
  -webkit-flex-direction: column-reverse;
          flex-direction: column-reverse;
}
.flex-wrap {
  -webkit-flex-wrap: wrap;
          flex-wrap: wrap;
}
.flex-wrap-reverse {
  -webkit-flex-wrap: wrap-reverse;
          flex-wrap: wrap-reverse;
}
.flex-no-wrap {
  -webkit-flex-wrap: nowrap;
          flex-wrap: nowrap;
}
.flex-just-start {
  -webkit-justify-content: flex-start;
          justify-content: flex-start;
}
.flex-just-end {
  -webkit-justify-content: flex-end;
          justify-content: flex-end;
}
.flex-just-center {
  -webkit-justify-content: center;
          justify-content: center;
}
.flex-just-sa {
  -webkit-justify-content: space-around;
          justify-content: space-around;
}
.flex-just-sb {
  -webkit-justify-content: space-between;
          justify-content: space-between;
}
.flex-align-stretch {
  -webkit-align-items: stretch;
          align-items: stretch;
}
.flex-align-start {
  -webkit-align-items: flex-start;
          align-items: flex-start;
}
.flex-align-end {
  -webkit-align-items: flex-end;
          align-items: flex-end;
}
.flex-align-center {
  -webkit-align-items: center;
          align-items: center;
}
.flex-align-base {
  -webkit-align-items: baseline;
          align-items: baseline;
}
.flex-content-stretch {
  -webkit-align-content: stretch;
          align-content: stretch;
}
.flex-content-start {
  -webkit-align-content: flex-start;
          align-content: flex-start;
}
.flex-content-end {
  -webkit-align-content: flex-end;
          align-content: flex-end;
}
.flex-content-center {
  -webkit-align-content: center;
          align-content: center;
}
.flex-content-sb {
  -webkit-align-content: space-between;
          align-content: space-between;
}
.flex-content-sa {
  -webkit-align-content: space-around;
          align-content: space-around;
}
.flex-self-auto {
  -webkit-align-self: auto;
          align-self: auto;
}
.flex-self-start {
  -webkit-align-self: flex-start;
          align-self: flex-start;
}
.flex-self-end {
  -webkit-align-self: flex-end;
          align-self: flex-end;
}
.flex-self-center {
  -webkit-align-self: center;
          align-self: center;
}
.flex-self-base {
  -webkit-align-self: baseline;
          align-self: baseline;
}
.flex-self-stretch {
  -webkit-align-self: stretch;
          align-self: stretch;
}
.no-shrink {
  -webkit-flex-shrink: 0 !important;
          flex-shrink: 0 !important;
}
.no-grow {
  -webkit-flex-grow: 0 !important;
          flex-grow: 0 !important;
}
.flex-size-auto {
  -webkit-flex: 1 auto;
  flex: 1 auto;
}
.flex-size1 {
  -webkit-flex-grow: 1;
          flex-grow: 1;
}
.flex-size2 {
  -webkit-flex-grow: 2;
          flex-grow: 2;
}
.flex-size3 {
  -webkit-flex-grow: 3;
          flex-grow: 3;
}
.flex-size4 {
  -webkit-flex-grow: 4;
          flex-grow: 4;
}
.flex-size5 {
  -webkit-flex-grow: 5;
          flex-grow: 5;
}
.flex-size6 {
  -webkit-flex-grow: 6;
          flex-grow: 6;
}
.flex-size7 {
  -webkit-flex-grow: 7;
          flex-grow: 7;
}
.flex-size8 {
  -webkit-flex-grow: 8;
          flex-grow: 8;
}
.flex-size9 {
  -webkit-flex-grow: 9;
          flex-grow: 9;
}
.flex-size10 {
  -webkit-flex-grow: 10;
          flex-grow: 10;
}
.flex-size11 {
  -webkit-flex-grow: 11;
          flex-grow: 11;
}
.flex-size12 {
  -webkit-flex-grow: 12;
          flex-grow: 12;
}
.flex-size-p10 {
  -webkit-flex: 0 0 10%;
  flex: 0 0 10%;
}
.flex-size-p20 {
  -webkit-flex: 0 0 20%;
  flex: 0 0 20%;
}
.flex-size-p30 {
  -webkit-flex: 0 0 30%;
  flex: 0 0 30%;
}
.flex-size-p40 {
  -webkit-flex: 0 0 40%;
  flex: 0 0 40%;
}
.flex-size-p50 {
  -webkit-flex: 0 0 50%;
  flex: 0 0 50%;
}
.flex-size-p60 {
  -webkit-flex: 0 0 60%;
  flex: 0 0 60%;
}
.flex-size-p70 {
  -webkit-flex: 0 0 70%;
  flex: 0 0 70%;
}
.flex-size-p80 {
  -webkit-flex: 0 0 80%;
  flex: 0 0 80%;
}
.flex-size-p90 {
  -webkit-flex: 0 0 90%;
  flex: 0 0 90%;
}
.flex-size-p100 {
  -webkit-flex: 0 0 100%;
  flex: 0 0 100%;
}
.flex-size-x100 {
  -webkit-flex: 0 0 100px;
  flex: 0 0 100px;
}
.flex-size-x200 {
  -webkit-flex: 0 0 200px;
  flex: 0 0 200px;
}
.flex-size-x300 {
  -webkit-flex: 0 0 300px;
  flex: 0 0 300px;
}
.flex-size-x400 {
  -webkit-flex: 0 0 400px;
  flex: 0 0 400px;
}
.flex-size-x500 {
  -webkit-flex: 0 0 500px;
  flex: 0 0 500px;
}
.flex-size-x600 {
  -webkit-flex: 0 0 600px;
  flex: 0 0 600px;
}
.flex-size-x700 {
  -webkit-flex: 0 0 700px;
  flex: 0 0 700px;
}
.flex-size-x800 {
  -webkit-flex: 0 0 800px;
  flex: 0 0 800px;
}
.flex-size-x900 {
  -webkit-flex: 0 0 900px;
  flex: 0 0 900px;
}
.flex-size-x1000 {
  -webkit-flex: 0 0 1000px;
  flex: 0 0 1000px;
}
.op-default {
  background-color: rgba(27, 161, 226, 0.7);
}
.fg-black {
  color: #000000 !important;
}
.bg-black {
  background-color: #000000 !important;
}
.bd-black {
  border-color: #000000 !important;
}
.ol-black {
  outline-color: #000000 !important;
}
.op-black {
  background-color: rgba(0, 0, 0, 0.7);
}
.ribbed-black {
  background: #000000 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-black:before {
  background: #000000 !important;
}
.before-fg-black:before {
  color: #000000 !important;
}
.after-bg-black:after {
  background: #000000 !important;
}
.after-fg-black:after {
  color: #000000 !important;
}
.bg-hover-black:hover {
  background: #000000 !important;
}
.bg-active-black:active {
  background: #000000 !important;
}
.bg-focus-black:focus {
  background: #000000 !important;
}
.fg-hover-black:hover {
  color: #000000 !important;
}
.fg-active-black:active {
  color: #000000 !important;
}
.fg-focus-black:focus {
  color: #000000 !important;
}
.fg-white {
  color: #ffffff !important;
}
.bg-white {
  background-color: #ffffff !important;
}
.bd-white {
  border-color: #ffffff !important;
}
.ol-white {
  outline-color: #ffffff !important;
}
.op-white {
  background-color: rgba(255, 255, 255, 0.7);
}
.ribbed-white {
  background: #ffffff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-white:before {
  background: #ffffff !important;
}
.before-fg-white:before {
  color: #ffffff !important;
}
.after-bg-white:after {
  background: #ffffff !important;
}
.after-fg-white:after {
  color: #ffffff !important;
}
.bg-hover-white:hover {
  background: #ffffff !important;
}
.bg-active-white:active {
  background: #ffffff !important;
}
.bg-focus-white:focus {
  background: #ffffff !important;
}
.fg-hover-white:hover {
  color: #ffffff !important;
}
.fg-active-white:active {
  color: #ffffff !important;
}
.fg-focus-white:focus {
  color: #ffffff !important;
}
.fg-lime {
  color: #a4c400 !important;
}
.bg-lime {
  background-color: #a4c400 !important;
}
.bd-lime {
  border-color: #a4c400 !important;
}
.ol-lime {
  outline-color: #a4c400 !important;
}
.op-lime {
  background-color: rgba(164, 196, 0, 0.7);
}
.ribbed-lime {
  background: #a4c400 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lime:before {
  background: #a4c400 !important;
}
.before-fg-lime:before {
  color: #a4c400 !important;
}
.after-bg-lime:after {
  background: #a4c400 !important;
}
.after-fg-lime:after {
  color: #a4c400 !important;
}
.bg-hover-lime:hover {
  background: #a4c400 !important;
}
.bg-active-lime:active {
  background: #a4c400 !important;
}
.bg-focus-lime:focus {
  background: #a4c400 !important;
}
.fg-hover-lime:hover {
  color: #a4c400 !important;
}
.fg-active-lime:active {
  color: #a4c400 !important;
}
.fg-focus-lime:focus {
  color: #a4c400 !important;
}
.fg-green {
  color: #60a917 !important;
}
.bg-green {
  background-color: #60a917 !important;
}
.bd-green {
  border-color: #60a917 !important;
}
.ol-green {
  outline-color: #60a917 !important;
}
.op-green {
  background-color: rgba(96, 169, 23, 0.7);
}
.ribbed-green {
  background: #60a917 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-green:before {
  background: #60a917 !important;
}
.before-fg-green:before {
  color: #60a917 !important;
}
.after-bg-green:after {
  background: #60a917 !important;
}
.after-fg-green:after {
  color: #60a917 !important;
}
.bg-hover-green:hover {
  background: #60a917 !important;
}
.bg-active-green:active {
  background: #60a917 !important;
}
.bg-focus-green:focus {
  background: #60a917 !important;
}
.fg-hover-green:hover {
  color: #60a917 !important;
}
.fg-active-green:active {
  color: #60a917 !important;
}
.fg-focus-green:focus {
  color: #60a917 !important;
}
.fg-emerald {
  color: #008a00 !important;
}
.bg-emerald {
  background-color: #008a00 !important;
}
.bd-emerald {
  border-color: #008a00 !important;
}
.ol-emerald {
  outline-color: #008a00 !important;
}
.op-emerald {
  background-color: rgba(0, 138, 0, 0.7);
}
.ribbed-emerald {
  background: #008a00 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-emerald:before {
  background: #008a00 !important;
}
.before-fg-emerald:before {
  color: #008a00 !important;
}
.after-bg-emerald:after {
  background: #008a00 !important;
}
.after-fg-emerald:after {
  color: #008a00 !important;
}
.bg-hover-emerald:hover {
  background: #008a00 !important;
}
.bg-active-emerald:active {
  background: #008a00 !important;
}
.bg-focus-emerald:focus {
  background: #008a00 !important;
}
.fg-hover-emerald:hover {
  color: #008a00 !important;
}
.fg-active-emerald:active {
  color: #008a00 !important;
}
.fg-focus-emerald:focus {
  color: #008a00 !important;
}
.fg-blue {
  color: #00aff0 !important;
}
.bg-blue {
  background-color: #00aff0 !important;
}
.bd-blue {
  border-color: #00aff0 !important;
}
.ol-blue {
  outline-color: #00aff0 !important;
}
.op-blue {
  background-color: rgba(0, 175, 240, 0.7);
}
.ribbed-blue {
  background: #00aff0 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-blue:before {
  background: #00aff0 !important;
}
.before-fg-blue:before {
  color: #00aff0 !important;
}
.after-bg-blue:after {
  background: #00aff0 !important;
}
.after-fg-blue:after {
  color: #00aff0 !important;
}
.bg-hover-blue:hover {
  background: #00aff0 !important;
}
.bg-active-blue:active {
  background: #00aff0 !important;
}
.bg-focus-blue:focus {
  background: #00aff0 !important;
}
.fg-hover-blue:hover {
  color: #00aff0 !important;
}
.fg-active-blue:active {
  color: #00aff0 !important;
}
.fg-focus-blue:focus {
  color: #00aff0 !important;
}
.fg-teal {
  color: #00aba9 !important;
}
.bg-teal {
  background-color: #00aba9 !important;
}
.bd-teal {
  border-color: #00aba9 !important;
}
.ol-teal {
  outline-color: #00aba9 !important;
}
.op-teal {
  background-color: rgba(0, 171, 169, 0.7);
}
.ribbed-teal {
  background: #00aba9 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-teal:before {
  background: #00aba9 !important;
}
.before-fg-teal:before {
  color: #00aba9 !important;
}
.after-bg-teal:after {
  background: #00aba9 !important;
}
.after-fg-teal:after {
  color: #00aba9 !important;
}
.bg-hover-teal:hover {
  background: #00aba9 !important;
}
.bg-active-teal:active {
  background: #00aba9 !important;
}
.bg-focus-teal:focus {
  background: #00aba9 !important;
}
.fg-hover-teal:hover {
  color: #00aba9 !important;
}
.fg-active-teal:active {
  color: #00aba9 !important;
}
.fg-focus-teal:focus {
  color: #00aba9 !important;
}
.fg-cyan {
  color: #1ba1e2 !important;
}
.bg-cyan {
  background-color: #1ba1e2 !important;
}
.bd-cyan {
  border-color: #1ba1e2 !important;
}
.ol-cyan {
  outline-color: #1ba1e2 !important;
}
.op-cyan {
  background-color: rgba(27, 161, 226, 0.7);
}
.ribbed-cyan {
  background: #1ba1e2 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-cyan:before {
  background: #1ba1e2 !important;
}
.before-fg-cyan:before {
  color: #1ba1e2 !important;
}
.after-bg-cyan:after {
  background: #1ba1e2 !important;
}
.after-fg-cyan:after {
  color: #1ba1e2 !important;
}
.bg-hover-cyan:hover {
  background: #1ba1e2 !important;
}
.bg-active-cyan:active {
  background: #1ba1e2 !important;
}
.bg-focus-cyan:focus {
  background: #1ba1e2 !important;
}
.fg-hover-cyan:hover {
  color: #1ba1e2 !important;
}
.fg-active-cyan:active {
  color: #1ba1e2 !important;
}
.fg-focus-cyan:focus {
  color: #1ba1e2 !important;
}
.fg-cobalt {
  color: #0050ef !important;
}
.bg-cobalt {
  background-color: #0050ef !important;
}
.bd-cobalt {
  border-color: #0050ef !important;
}
.ol-cobalt {
  outline-color: #0050ef !important;
}
.op-cobalt {
  background-color: rgba(0, 80, 239, 0.7);
}
.ribbed-cobalt {
  background: #0050ef linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-cobalt:before {
  background: #0050ef !important;
}
.before-fg-cobalt:before {
  color: #0050ef !important;
}
.after-bg-cobalt:after {
  background: #0050ef !important;
}
.after-fg-cobalt:after {
  color: #0050ef !important;
}
.bg-hover-cobalt:hover {
  background: #0050ef !important;
}
.bg-active-cobalt:active {
  background: #0050ef !important;
}
.bg-focus-cobalt:focus {
  background: #0050ef !important;
}
.fg-hover-cobalt:hover {
  color: #0050ef !important;
}
.fg-active-cobalt:active {
  color: #0050ef !important;
}
.fg-focus-cobalt:focus {
  color: #0050ef !important;
}
.fg-indigo {
  color: #6a00ff !important;
}
.bg-indigo {
  background-color: #6a00ff !important;
}
.bd-indigo {
  border-color: #6a00ff !important;
}
.ol-indigo {
  outline-color: #6a00ff !important;
}
.op-indigo {
  background-color: rgba(106, 0, 255, 0.7);
}
.ribbed-indigo {
  background: #6a00ff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-indigo:before {
  background: #6a00ff !important;
}
.before-fg-indigo:before {
  color: #6a00ff !important;
}
.after-bg-indigo:after {
  background: #6a00ff !important;
}
.after-fg-indigo:after {
  color: #6a00ff !important;
}
.bg-hover-indigo:hover {
  background: #6a00ff !important;
}
.bg-active-indigo:active {
  background: #6a00ff !important;
}
.bg-focus-indigo:focus {
  background: #6a00ff !important;
}
.fg-hover-indigo:hover {
  color: #6a00ff !important;
}
.fg-active-indigo:active {
  color: #6a00ff !important;
}
.fg-focus-indigo:focus {
  color: #6a00ff !important;
}
.fg-violet {
  color: #aa00ff !important;
}
.bg-violet {
  background-color: #aa00ff !important;
}
.bd-violet {
  border-color: #aa00ff !important;
}
.ol-violet {
  outline-color: #aa00ff !important;
}
.op-violet {
  background-color: rgba(170, 0, 255, 0.7);
}
.ribbed-violet {
  background: #aa00ff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-violet:before {
  background: #aa00ff !important;
}
.before-fg-violet:before {
  color: #aa00ff !important;
}
.after-bg-violet:after {
  background: #aa00ff !important;
}
.after-fg-violet:after {
  color: #aa00ff !important;
}
.bg-hover-violet:hover {
  background: #aa00ff !important;
}
.bg-active-violet:active {
  background: #aa00ff !important;
}
.bg-focus-violet:focus {
  background: #aa00ff !important;
}
.fg-hover-violet:hover {
  color: #aa00ff !important;
}
.fg-active-violet:active {
  color: #aa00ff !important;
}
.fg-focus-violet:focus {
  color: #aa00ff !important;
}
.fg-pink {
  color: #dc4fad !important;
}
.bg-pink {
  background-color: #dc4fad !important;
}
.bd-pink {
  border-color: #dc4fad !important;
}
.ol-pink {
  outline-color: #dc4fad !important;
}
.op-pink {
  background-color: rgba(220, 79, 173, 0.7);
}
.ribbed-pink {
  background: #dc4fad linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-pink:before {
  background: #dc4fad !important;
}
.before-fg-pink:before {
  color: #dc4fad !important;
}
.after-bg-pink:after {
  background: #dc4fad !important;
}
.after-fg-pink:after {
  color: #dc4fad !important;
}
.bg-hover-pink:hover {
  background: #dc4fad !important;
}
.bg-active-pink:active {
  background: #dc4fad !important;
}
.bg-focus-pink:focus {
  background: #dc4fad !important;
}
.fg-hover-pink:hover {
  color: #dc4fad !important;
}
.fg-active-pink:active {
  color: #dc4fad !important;
}
.fg-focus-pink:focus {
  color: #dc4fad !important;
}
.fg-magenta {
  color: #d80073 !important;
}
.bg-magenta {
  background-color: #d80073 !important;
}
.bd-magenta {
  border-color: #d80073 !important;
}
.ol-magenta {
  outline-color: #d80073 !important;
}
.op-magenta {
  background-color: rgba(216, 0, 115, 0.7);
}
.ribbed-magenta {
  background: #d80073 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-magenta:before {
  background: #d80073 !important;
}
.before-fg-magenta:before {
  color: #d80073 !important;
}
.after-bg-magenta:after {
  background: #d80073 !important;
}
.after-fg-magenta:after {
  color: #d80073 !important;
}
.bg-hover-magenta:hover {
  background: #d80073 !important;
}
.bg-active-magenta:active {
  background: #d80073 !important;
}
.bg-focus-magenta:focus {
  background: #d80073 !important;
}
.fg-hover-magenta:hover {
  color: #d80073 !important;
}
.fg-active-magenta:active {
  color: #d80073 !important;
}
.fg-focus-magenta:focus {
  color: #d80073 !important;
}
.fg-crimson {
  color: #a20025 !important;
}
.bg-crimson {
  background-color: #a20025 !important;
}
.bd-crimson {
  border-color: #a20025 !important;
}
.ol-crimson {
  outline-color: #a20025 !important;
}
.op-crimson {
  background-color: rgba(162, 0, 37, 0.7);
}
.ribbed-crimson {
  background: #a20025 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-crimson:before {
  background: #a20025 !important;
}
.before-fg-crimson:before {
  color: #a20025 !important;
}
.after-bg-crimson:after {
  background: #a20025 !important;
}
.after-fg-crimson:after {
  color: #a20025 !important;
}
.bg-hover-crimson:hover {
  background: #a20025 !important;
}
.bg-active-crimson:active {
  background: #a20025 !important;
}
.bg-focus-crimson:focus {
  background: #a20025 !important;
}
.fg-hover-crimson:hover {
  color: #a20025 !important;
}
.fg-active-crimson:active {
  color: #a20025 !important;
}
.fg-focus-crimson:focus {
  color: #a20025 !important;
}
.fg-red {
  color: #ce352c !important;
}
.bg-red {
  background-color: #ce352c !important;
}
.bd-red {
  border-color: #ce352c !important;
}
.ol-red {
  outline-color: #ce352c !important;
}
.op-red {
  background-color: rgba(206, 53, 44, 0.7);
}
.ribbed-red {
  background: #ce352c linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-red:before {
  background: #ce352c !important;
}
.before-fg-red:before {
  color: #ce352c !important;
}
.after-bg-red:after {
  background: #ce352c !important;
}
.after-fg-red:after {
  color: #ce352c !important;
}
.bg-hover-red:hover {
  background: #ce352c !important;
}
.bg-active-red:active {
  background: #ce352c !important;
}
.bg-focus-red:focus {
  background: #ce352c !important;
}
.fg-hover-red:hover {
  color: #ce352c !important;
}
.fg-active-red:active {
  color: #ce352c !important;
}
.fg-focus-red:focus {
  color: #ce352c !important;
}
.fg-orange {
  color: #fa6800 !important;
}
.bg-orange {
  background-color: #fa6800 !important;
}
.bd-orange {
  border-color: #fa6800 !important;
}
.ol-orange {
  outline-color: #fa6800 !important;
}
.op-orange {
  background-color: rgba(250, 104, 0, 0.7);
}
.ribbed-orange {
  background: #fa6800 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-orange:before {
  background: #fa6800 !important;
}
.before-fg-orange:before {
  color: #fa6800 !important;
}
.after-bg-orange:after {
  background: #fa6800 !important;
}
.after-fg-orange:after {
  color: #fa6800 !important;
}
.bg-hover-orange:hover {
  background: #fa6800 !important;
}
.bg-active-orange:active {
  background: #fa6800 !important;
}
.bg-focus-orange:focus {
  background: #fa6800 !important;
}
.fg-hover-orange:hover {
  color: #fa6800 !important;
}
.fg-active-orange:active {
  color: #fa6800 !important;
}
.fg-focus-orange:focus {
  color: #fa6800 !important;
}
.fg-amber {
  color: #f0a30a !important;
}
.bg-amber {
  background-color: #f0a30a !important;
}
.bd-amber {
  border-color: #f0a30a !important;
}
.ol-amber {
  outline-color: #f0a30a !important;
}
.op-amber {
  background-color: rgba(240, 163, 10, 0.7);
}
.ribbed-amber {
  background: #f0a30a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-amber:before {
  background: #f0a30a !important;
}
.before-fg-amber:before {
  color: #f0a30a !important;
}
.after-bg-amber:after {
  background: #f0a30a !important;
}
.after-fg-amber:after {
  color: #f0a30a !important;
}
.bg-hover-amber:hover {
  background: #f0a30a !important;
}
.bg-active-amber:active {
  background: #f0a30a !important;
}
.bg-focus-amber:focus {
  background: #f0a30a !important;
}
.fg-hover-amber:hover {
  color: #f0a30a !important;
}
.fg-active-amber:active {
  color: #f0a30a !important;
}
.fg-focus-amber:focus {
  color: #f0a30a !important;
}
.fg-yellow {
  color: #e3c800 !important;
}
.bg-yellow {
  background-color: #e3c800 !important;
}
.bd-yellow {
  border-color: #e3c800 !important;
}
.ol-yellow {
  outline-color: #e3c800 !important;
}
.op-yellow {
  background-color: rgba(227, 200, 0, 0.7);
}
.ribbed-yellow {
  background: #e3c800 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-yellow:before {
  background: #e3c800 !important;
}
.before-fg-yellow:before {
  color: #e3c800 !important;
}
.after-bg-yellow:after {
  background: #e3c800 !important;
}
.after-fg-yellow:after {
  color: #e3c800 !important;
}
.bg-hover-yellow:hover {
  background: #e3c800 !important;
}
.bg-active-yellow:active {
  background: #e3c800 !important;
}
.bg-focus-yellow:focus {
  background: #e3c800 !important;
}
.fg-hover-yellow:hover {
  color: #e3c800 !important;
}
.fg-active-yellow:active {
  color: #e3c800 !important;
}
.fg-focus-yellow:focus {
  color: #e3c800 !important;
}
.fg-brown {
  color: #825a2c !important;
}
.bg-brown {
  background-color: #825a2c !important;
}
.bd-brown {
  border-color: #825a2c !important;
}
.ol-brown {
  outline-color: #825a2c !important;
}
.op-brown {
  background-color: rgba(130, 90, 44, 0.7);
}
.ribbed-brown {
  background: #825a2c linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-brown:before {
  background: #825a2c !important;
}
.before-fg-brown:before {
  color: #825a2c !important;
}
.after-bg-brown:after {
  background: #825a2c !important;
}
.after-fg-brown:after {
  color: #825a2c !important;
}
.bg-hover-brown:hover {
  background: #825a2c !important;
}
.bg-active-brown:active {
  background: #825a2c !important;
}
.bg-focus-brown:focus {
  background: #825a2c !important;
}
.fg-hover-brown:hover {
  color: #825a2c !important;
}
.fg-active-brown:active {
  color: #825a2c !important;
}
.fg-focus-brown:focus {
  color: #825a2c !important;
}
.fg-olive {
  color: #6d8764 !important;
}
.bg-olive {
  background-color: #6d8764 !important;
}
.bd-olive {
  border-color: #6d8764 !important;
}
.ol-olive {
  outline-color: #6d8764 !important;
}
.op-olive {
  background-color: rgba(109, 135, 100, 0.7);
}
.ribbed-olive {
  background: #6d8764 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-olive:before {
  background: #6d8764 !important;
}
.before-fg-olive:before {
  color: #6d8764 !important;
}
.after-bg-olive:after {
  background: #6d8764 !important;
}
.after-fg-olive:after {
  color: #6d8764 !important;
}
.bg-hover-olive:hover {
  background: #6d8764 !important;
}
.bg-active-olive:active {
  background: #6d8764 !important;
}
.bg-focus-olive:focus {
  background: #6d8764 !important;
}
.fg-hover-olive:hover {
  color: #6d8764 !important;
}
.fg-active-olive:active {
  color: #6d8764 !important;
}
.fg-focus-olive:focus {
  color: #6d8764 !important;
}
.fg-steel {
  color: #647687 !important;
}
.bg-steel {
  background-color: #647687 !important;
}
.bd-steel {
  border-color: #647687 !important;
}
.ol-steel {
  outline-color: #647687 !important;
}
.op-steel {
  background-color: rgba(100, 118, 135, 0.7);
}
.ribbed-steel {
  background: #647687 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-steel:before {
  background: #647687 !important;
}
.before-fg-steel:before {
  color: #647687 !important;
}
.after-bg-steel:after {
  background: #647687 !important;
}
.after-fg-steel:after {
  color: #647687 !important;
}
.bg-hover-steel:hover {
  background: #647687 !important;
}
.bg-active-steel:active {
  background: #647687 !important;
}
.bg-focus-steel:focus {
  background: #647687 !important;
}
.fg-hover-steel:hover {
  color: #647687 !important;
}
.fg-active-steel:active {
  color: #647687 !important;
}
.fg-focus-steel:focus {
  color: #647687 !important;
}
.fg-mauve {
  color: #76608a !important;
}
.bg-mauve {
  background-color: #76608a !important;
}
.bd-mauve {
  border-color: #76608a !important;
}
.ol-mauve {
  outline-color: #76608a !important;
}
.op-mauve {
  background-color: rgba(118, 96, 138, 0.7);
}
.ribbed-mauve {
  background: #76608a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-mauve:before {
  background: #76608a !important;
}
.before-fg-mauve:before {
  color: #76608a !important;
}
.after-bg-mauve:after {
  background: #76608a !important;
}
.after-fg-mauve:after {
  color: #76608a !important;
}
.bg-hover-mauve:hover {
  background: #76608a !important;
}
.bg-active-mauve:active {
  background: #76608a !important;
}
.bg-focus-mauve:focus {
  background: #76608a !important;
}
.fg-hover-mauve:hover {
  color: #76608a !important;
}
.fg-active-mauve:active {
  color: #76608a !important;
}
.fg-focus-mauve:focus {
  color: #76608a !important;
}
.fg-taupe {
  color: #87794e !important;
}
.bg-taupe {
  background-color: #87794e !important;
}
.bd-taupe {
  border-color: #87794e !important;
}
.ol-taupe {
  outline-color: #87794e !important;
}
.op-taupe {
  background-color: rgba(135, 121, 78, 0.7);
}
.ribbed-taupe {
  background: #87794e linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-taupe:before {
  background: #87794e !important;
}
.before-fg-taupe:before {
  color: #87794e !important;
}
.after-bg-taupe:after {
  background: #87794e !important;
}
.after-fg-taupe:after {
  color: #87794e !important;
}
.bg-hover-taupe:hover {
  background: #87794e !important;
}
.bg-active-taupe:active {
  background: #87794e !important;
}
.bg-focus-taupe:focus {
  background: #87794e !important;
}
.fg-hover-taupe:hover {
  color: #87794e !important;
}
.fg-active-taupe:active {
  color: #87794e !important;
}
.fg-focus-taupe:focus {
  color: #87794e !important;
}
.fg-dark {
  color: #1d1d1d !important;
}
.bg-dark {
  background-color: #1d1d1d !important;
}
.bd-dark {
  border-color: #1d1d1d !important;
}
.ol-dark {
  outline-color: #1d1d1d !important;
}
.op-dark {
  background-color: rgba(29, 29, 29, 0.7);
}
.ribbed-dark {
  background: #1d1d1d linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-dark:before {
  background: #1d1d1d !important;
}
.before-fg-dark:before {
  color: #1d1d1d !important;
}
.after-bg-dark:after {
  background: #1d1d1d !important;
}
.after-fg-dark:after {
  color: #1d1d1d !important;
}
.bg-hover-dark:hover {
  background: #1d1d1d !important;
}
.bg-active-dark:active {
  background: #1d1d1d !important;
}
.bg-focus-dark:focus {
  background: #1d1d1d !important;
}
.fg-hover-dark:hover {
  color: #1d1d1d !important;
}
.fg-active-dark:active {
  color: #1d1d1d !important;
}
.fg-focus-dark:focus {
  color: #1d1d1d !important;
}
.fg-darkBrown {
  color: #63362f !important;
}
.bg-darkBrown {
  background-color: #63362f !important;
}
.bd-darkBrown {
  border-color: #63362f !important;
}
.ol-darkBrown {
  outline-color: #63362f !important;
}
.op-darkBrown {
  background-color: rgba(99, 54, 47, 0.7);
}
.ribbed-darkBrown {
  background: #63362f linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkBrown:before {
  background: #63362f !important;
}
.before-fg-darkBrown:before {
  color: #63362f !important;
}
.after-bg-darkBrown:after {
  background: #63362f !important;
}
.after-fg-darkBrown:after {
  color: #63362f !important;
}
.bg-hover-darkBrown:hover {
  background: #63362f !important;
}
.bg-active-darkBrown:active {
  background: #63362f !important;
}
.bg-focus-darkBrown:focus {
  background: #63362f !important;
}
.fg-hover-darkBrown:hover {
  color: #63362f !important;
}
.fg-active-darkBrown:active {
  color: #63362f !important;
}
.fg-focus-darkBrown:focus {
  color: #63362f !important;
}
.fg-darkCrimson {
  color: #640024 !important;
}
.bg-darkCrimson {
  background-color: #640024 !important;
}
.bd-darkCrimson {
  border-color: #640024 !important;
}
.ol-darkCrimson {
  outline-color: #640024 !important;
}
.op-darkCrimson {
  background-color: rgba(100, 0, 36, 0.7);
}
.ribbed-darkCrimson {
  background: #640024 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkCrimson:before {
  background: #640024 !important;
}
.before-fg-darkCrimson:before {
  color: #640024 !important;
}
.after-bg-darkCrimson:after {
  background: #640024 !important;
}
.after-fg-darkCrimson:after {
  color: #640024 !important;
}
.bg-hover-darkCrimson:hover {
  background: #640024 !important;
}
.bg-active-darkCrimson:active {
  background: #640024 !important;
}
.bg-focus-darkCrimson:focus {
  background: #640024 !important;
}
.fg-hover-darkCrimson:hover {
  color: #640024 !important;
}
.fg-active-darkCrimson:active {
  color: #640024 !important;
}
.fg-focus-darkCrimson:focus {
  color: #640024 !important;
}
.fg-darkMagenta {
  color: #81003c !important;
}
.bg-darkMagenta {
  background-color: #81003c !important;
}
.bd-darkMagenta {
  border-color: #81003c !important;
}
.ol-darkMagenta {
  outline-color: #81003c !important;
}
.op-darkMagenta {
  background-color: rgba(129, 0, 60, 0.7);
}
.ribbed-darkMagenta {
  background: #81003c linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkMagenta:before {
  background: #81003c !important;
}
.before-fg-darkMagenta:before {
  color: #81003c !important;
}
.after-bg-darkMagenta:after {
  background: #81003c !important;
}
.after-fg-darkMagenta:after {
  color: #81003c !important;
}
.bg-hover-darkMagenta:hover {
  background: #81003c !important;
}
.bg-active-darkMagenta:active {
  background: #81003c !important;
}
.bg-focus-darkMagenta:focus {
  background: #81003c !important;
}
.fg-hover-darkMagenta:hover {
  color: #81003c !important;
}
.fg-active-darkMagenta:active {
  color: #81003c !important;
}
.fg-focus-darkMagenta:focus {
  color: #81003c !important;
}
.fg-darkIndigo {
  color: #4b0096 !important;
}
.bg-darkIndigo {
  background-color: #4b0096 !important;
}
.bd-darkIndigo {
  border-color: #4b0096 !important;
}
.ol-darkIndigo {
  outline-color: #4b0096 !important;
}
.op-darkIndigo {
  background-color: rgba(75, 0, 150, 0.7);
}
.ribbed-darkIndigo {
  background: #4b0096 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkIndigo:before {
  background: #4b0096 !important;
}
.before-fg-darkIndigo:before {
  color: #4b0096 !important;
}
.after-bg-darkIndigo:after {
  background: #4b0096 !important;
}
.after-fg-darkIndigo:after {
  color: #4b0096 !important;
}
.bg-hover-darkIndigo:hover {
  background: #4b0096 !important;
}
.bg-active-darkIndigo:active {
  background: #4b0096 !important;
}
.bg-focus-darkIndigo:focus {
  background: #4b0096 !important;
}
.fg-hover-darkIndigo:hover {
  color: #4b0096 !important;
}
.fg-active-darkIndigo:active {
  color: #4b0096 !important;
}
.fg-focus-darkIndigo:focus {
  color: #4b0096 !important;
}
.fg-darkCyan {
  color: #1b6eae !important;
}
.bg-darkCyan {
  background-color: #1b6eae !important;
}
.bd-darkCyan {
  border-color: #1b6eae !important;
}
.ol-darkCyan {
  outline-color: #1b6eae !important;
}
.op-darkCyan {
  background-color: rgba(27, 110, 174, 0.7);
}
.ribbed-darkCyan {
  background: #1b6eae linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkCyan:before {
  background: #1b6eae !important;
}
.before-fg-darkCyan:before {
  color: #1b6eae !important;
}
.after-bg-darkCyan:after {
  background: #1b6eae !important;
}
.after-fg-darkCyan:after {
  color: #1b6eae !important;
}
.bg-hover-darkCyan:hover {
  background: #1b6eae !important;
}
.bg-active-darkCyan:active {
  background: #1b6eae !important;
}
.bg-focus-darkCyan:focus {
  background: #1b6eae !important;
}
.fg-hover-darkCyan:hover {
  color: #1b6eae !important;
}
.fg-active-darkCyan:active {
  color: #1b6eae !important;
}
.fg-focus-darkCyan:focus {
  color: #1b6eae !important;
}
.fg-darkCobalt {
  color: #00356a !important;
}
.bg-darkCobalt {
  background-color: #00356a !important;
}
.bd-darkCobalt {
  border-color: #00356a !important;
}
.ol-darkCobalt {
  outline-color: #00356a !important;
}
.op-darkCobalt {
  background-color: rgba(0, 53, 106, 0.7);
}
.ribbed-darkCobalt {
  background: #00356a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkCobalt:before {
  background: #00356a !important;
}
.before-fg-darkCobalt:before {
  color: #00356a !important;
}
.after-bg-darkCobalt:after {
  background: #00356a !important;
}
.after-fg-darkCobalt:after {
  color: #00356a !important;
}
.bg-hover-darkCobalt:hover {
  background: #00356a !important;
}
.bg-active-darkCobalt:active {
  background: #00356a !important;
}
.bg-focus-darkCobalt:focus {
  background: #00356a !important;
}
.fg-hover-darkCobalt:hover {
  color: #00356a !important;
}
.fg-active-darkCobalt:active {
  color: #00356a !important;
}
.fg-focus-darkCobalt:focus {
  color: #00356a !important;
}
.fg-darkTeal {
  color: #004050 !important;
}
.bg-darkTeal {
  background-color: #004050 !important;
}
.bd-darkTeal {
  border-color: #004050 !important;
}
.ol-darkTeal {
  outline-color: #004050 !important;
}
.op-darkTeal {
  background-color: rgba(0, 64, 80, 0.7);
}
.ribbed-darkTeal {
  background: #004050 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkTeal:before {
  background: #004050 !important;
}
.before-fg-darkTeal:before {
  color: #004050 !important;
}
.after-bg-darkTeal:after {
  background: #004050 !important;
}
.after-fg-darkTeal:after {
  color: #004050 !important;
}
.bg-hover-darkTeal:hover {
  background: #004050 !important;
}
.bg-active-darkTeal:active {
  background: #004050 !important;
}
.bg-focus-darkTeal:focus {
  background: #004050 !important;
}
.fg-hover-darkTeal:hover {
  color: #004050 !important;
}
.fg-active-darkTeal:active {
  color: #004050 !important;
}
.fg-focus-darkTeal:focus {
  color: #004050 !important;
}
.fg-darkEmerald {
  color: #003e00 !important;
}
.bg-darkEmerald {
  background-color: #003e00 !important;
}
.bd-darkEmerald {
  border-color: #003e00 !important;
}
.ol-darkEmerald {
  outline-color: #003e00 !important;
}
.op-darkEmerald {
  background-color: rgba(0, 62, 0, 0.7);
}
.ribbed-darkEmerald {
  background: #003e00 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkEmerald:before {
  background: #003e00 !important;
}
.before-fg-darkEmerald:before {
  color: #003e00 !important;
}
.after-bg-darkEmerald:after {
  background: #003e00 !important;
}
.after-fg-darkEmerald:after {
  color: #003e00 !important;
}
.bg-hover-darkEmerald:hover {
  background: #003e00 !important;
}
.bg-active-darkEmerald:active {
  background: #003e00 !important;
}
.bg-focus-darkEmerald:focus {
  background: #003e00 !important;
}
.fg-hover-darkEmerald:hover {
  color: #003e00 !important;
}
.fg-active-darkEmerald:active {
  color: #003e00 !important;
}
.fg-focus-darkEmerald:focus {
  color: #003e00 !important;
}
.fg-darkGreen {
  color: #128023 !important;
}
.bg-darkGreen {
  background-color: #128023 !important;
}
.bd-darkGreen {
  border-color: #128023 !important;
}
.ol-darkGreen {
  outline-color: #128023 !important;
}
.op-darkGreen {
  background-color: rgba(18, 128, 35, 0.7);
}
.ribbed-darkGreen {
  background: #128023 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkGreen:before {
  background: #128023 !important;
}
.before-fg-darkGreen:before {
  color: #128023 !important;
}
.after-bg-darkGreen:after {
  background: #128023 !important;
}
.after-fg-darkGreen:after {
  color: #128023 !important;
}
.bg-hover-darkGreen:hover {
  background: #128023 !important;
}
.bg-active-darkGreen:active {
  background: #128023 !important;
}
.bg-focus-darkGreen:focus {
  background: #128023 !important;
}
.fg-hover-darkGreen:hover {
  color: #128023 !important;
}
.fg-active-darkGreen:active {
  color: #128023 !important;
}
.fg-focus-darkGreen:focus {
  color: #128023 !important;
}
.fg-darkOrange {
  color: #bf5a15 !important;
}
.bg-darkOrange {
  background-color: #bf5a15 !important;
}
.bd-darkOrange {
  border-color: #bf5a15 !important;
}
.ol-darkOrange {
  outline-color: #bf5a15 !important;
}
.op-darkOrange {
  background-color: rgba(191, 90, 21, 0.7);
}
.ribbed-darkOrange {
  background: #bf5a15 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkOrange:before {
  background: #bf5a15 !important;
}
.before-fg-darkOrange:before {
  color: #bf5a15 !important;
}
.after-bg-darkOrange:after {
  background: #bf5a15 !important;
}
.after-fg-darkOrange:after {
  color: #bf5a15 !important;
}
.bg-hover-darkOrange:hover {
  background: #bf5a15 !important;
}
.bg-active-darkOrange:active {
  background: #bf5a15 !important;
}
.bg-focus-darkOrange:focus {
  background: #bf5a15 !important;
}
.fg-hover-darkOrange:hover {
  color: #bf5a15 !important;
}
.fg-active-darkOrange:active {
  color: #bf5a15 !important;
}
.fg-focus-darkOrange:focus {
  color: #bf5a15 !important;
}
.fg-darkRed {
  color: #9a1616 !important;
}
.bg-darkRed {
  background-color: #9a1616 !important;
}
.bd-darkRed {
  border-color: #9a1616 !important;
}
.ol-darkRed {
  outline-color: #9a1616 !important;
}
.op-darkRed {
  background-color: rgba(154, 22, 22, 0.7);
}
.ribbed-darkRed {
  background: #9a1616 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkRed:before {
  background: #9a1616 !important;
}
.before-fg-darkRed:before {
  color: #9a1616 !important;
}
.after-bg-darkRed:after {
  background: #9a1616 !important;
}
.after-fg-darkRed:after {
  color: #9a1616 !important;
}
.bg-hover-darkRed:hover {
  background: #9a1616 !important;
}
.bg-active-darkRed:active {
  background: #9a1616 !important;
}
.bg-focus-darkRed:focus {
  background: #9a1616 !important;
}
.fg-hover-darkRed:hover {
  color: #9a1616 !important;
}
.fg-active-darkRed:active {
  color: #9a1616 !important;
}
.fg-focus-darkRed:focus {
  color: #9a1616 !important;
}
.fg-darkPink {
  color: #9a165a !important;
}
.bg-darkPink {
  background-color: #9a165a !important;
}
.bd-darkPink {
  border-color: #9a165a !important;
}
.ol-darkPink {
  outline-color: #9a165a !important;
}
.op-darkPink {
  background-color: rgba(154, 22, 90, 0.7);
}
.ribbed-darkPink {
  background: #9a165a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkPink:before {
  background: #9a165a !important;
}
.before-fg-darkPink:before {
  color: #9a165a !important;
}
.after-bg-darkPink:after {
  background: #9a165a !important;
}
.after-fg-darkPink:after {
  color: #9a165a !important;
}
.bg-hover-darkPink:hover {
  background: #9a165a !important;
}
.bg-active-darkPink:active {
  background: #9a165a !important;
}
.bg-focus-darkPink:focus {
  background: #9a165a !important;
}
.fg-hover-darkPink:hover {
  color: #9a165a !important;
}
.fg-active-darkPink:active {
  color: #9a165a !important;
}
.fg-focus-darkPink:focus {
  color: #9a165a !important;
}
.fg-darkViolet {
  color: #57169a !important;
}
.bg-darkViolet {
  background-color: #57169a !important;
}
.bd-darkViolet {
  border-color: #57169a !important;
}
.ol-darkViolet {
  outline-color: #57169a !important;
}
.op-darkViolet {
  background-color: rgba(87, 22, 154, 0.7);
}
.ribbed-darkViolet {
  background: #57169a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkViolet:before {
  background: #57169a !important;
}
.before-fg-darkViolet:before {
  color: #57169a !important;
}
.after-bg-darkViolet:after {
  background: #57169a !important;
}
.after-fg-darkViolet:after {
  color: #57169a !important;
}
.bg-hover-darkViolet:hover {
  background: #57169a !important;
}
.bg-active-darkViolet:active {
  background: #57169a !important;
}
.bg-focus-darkViolet:focus {
  background: #57169a !important;
}
.fg-hover-darkViolet:hover {
  color: #57169a !important;
}
.fg-active-darkViolet:active {
  color: #57169a !important;
}
.fg-focus-darkViolet:focus {
  color: #57169a !important;
}
.fg-darkBlue {
  color: #16499a !important;
}
.bg-darkBlue {
  background-color: #16499a !important;
}
.bd-darkBlue {
  border-color: #16499a !important;
}
.ol-darkBlue {
  outline-color: #16499a !important;
}
.op-darkBlue {
  background-color: rgba(22, 73, 154, 0.7);
}
.ribbed-darkBlue {
  background: #16499a linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkBlue:before {
  background: #16499a !important;
}
.before-fg-darkBlue:before {
  color: #16499a !important;
}
.after-bg-darkBlue:after {
  background: #16499a !important;
}
.after-fg-darkBlue:after {
  color: #16499a !important;
}
.bg-hover-darkBlue:hover {
  background: #16499a !important;
}
.bg-active-darkBlue:active {
  background: #16499a !important;
}
.bg-focus-darkBlue:focus {
  background: #16499a !important;
}
.fg-hover-darkBlue:hover {
  color: #16499a !important;
}
.fg-active-darkBlue:active {
  color: #16499a !important;
}
.fg-focus-darkBlue:focus {
  color: #16499a !important;
}
.fg-lightBlue {
  color: #4390df !important;
}
.bg-lightBlue {
  background-color: #4390df !important;
}
.bd-lightBlue {
  border-color: #4390df !important;
}
.ol-lightBlue {
  outline-color: #4390df !important;
}
.op-lightBlue {
  background-color: rgba(67, 144, 223, 0.7);
}
.ribbed-lightBlue {
  background: #4390df linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightBlue:before {
  background: #4390df !important;
}
.before-fg-lightBlue:before {
  color: #4390df !important;
}
.after-bg-lightBlue:after {
  background: #4390df !important;
}
.after-fg-lightBlue:after {
  color: #4390df !important;
}
.bg-hover-lightBlue:hover {
  background: #4390df !important;
}
.bg-active-lightBlue:active {
  background: #4390df !important;
}
.bg-focus-lightBlue:focus {
  background: #4390df !important;
}
.fg-hover-lightBlue:hover {
  color: #4390df !important;
}
.fg-active-lightBlue:active {
  color: #4390df !important;
}
.fg-focus-lightBlue:focus {
  color: #4390df !important;
}
.fg-lighterBlue {
  color: #00ccff !important;
}
.bg-lighterBlue {
  background-color: #00ccff !important;
}
.bd-lighterBlue {
  border-color: #00ccff !important;
}
.ol-lighterBlue {
  outline-color: #00ccff !important;
}
.op-lighterBlue {
  background-color: rgba(0, 204, 255, 0.7);
}
.ribbed-lighterBlue {
  background: #00ccff linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lighterBlue:before {
  background: #00ccff !important;
}
.before-fg-lighterBlue:before {
  color: #00ccff !important;
}
.after-bg-lighterBlue:after {
  background: #00ccff !important;
}
.after-fg-lighterBlue:after {
  color: #00ccff !important;
}
.bg-hover-lighterBlue:hover {
  background: #00ccff !important;
}
.bg-active-lighterBlue:active {
  background: #00ccff !important;
}
.bg-focus-lighterBlue:focus {
  background: #00ccff !important;
}
.fg-hover-lighterBlue:hover {
  color: #00ccff !important;
}
.fg-active-lighterBlue:active {
  color: #00ccff !important;
}
.fg-focus-lighterBlue:focus {
  color: #00ccff !important;
}
.fg-lightTeal {
  color: #45fffd !important;
}
.bg-lightTeal {
  background-color: #45fffd !important;
}
.bd-lightTeal {
  border-color: #45fffd !important;
}
.ol-lightTeal {
  outline-color: #45fffd !important;
}
.op-lightTeal {
  background-color: rgba(69, 255, 253, 0.7);
}
.ribbed-lightTeal {
  background: #45fffd linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightTeal:before {
  background: #45fffd !important;
}
.before-fg-lightTeal:before {
  color: #45fffd !important;
}
.after-bg-lightTeal:after {
  background: #45fffd !important;
}
.after-fg-lightTeal:after {
  color: #45fffd !important;
}
.bg-hover-lightTeal:hover {
  background: #45fffd !important;
}
.bg-active-lightTeal:active {
  background: #45fffd !important;
}
.bg-focus-lightTeal:focus {
  background: #45fffd !important;
}
.fg-hover-lightTeal:hover {
  color: #45fffd !important;
}
.fg-active-lightTeal:active {
  color: #45fffd !important;
}
.fg-focus-lightTeal:focus {
  color: #45fffd !important;
}
.fg-lightOlive {
  color: #78aa1c !important;
}
.bg-lightOlive {
  background-color: #78aa1c !important;
}
.bd-lightOlive {
  border-color: #78aa1c !important;
}
.ol-lightOlive {
  outline-color: #78aa1c !important;
}
.op-lightOlive {
  background-color: rgba(120, 170, 28, 0.7);
}
.ribbed-lightOlive {
  background: #78aa1c linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightOlive:before {
  background: #78aa1c !important;
}
.before-fg-lightOlive:before {
  color: #78aa1c !important;
}
.after-bg-lightOlive:after {
  background: #78aa1c !important;
}
.after-fg-lightOlive:after {
  color: #78aa1c !important;
}
.bg-hover-lightOlive:hover {
  background: #78aa1c !important;
}
.bg-active-lightOlive:active {
  background: #78aa1c !important;
}
.bg-focus-lightOlive:focus {
  background: #78aa1c !important;
}
.fg-hover-lightOlive:hover {
  color: #78aa1c !important;
}
.fg-active-lightOlive:active {
  color: #78aa1c !important;
}
.fg-focus-lightOlive:focus {
  color: #78aa1c !important;
}
.fg-lightOrange {
  color: #ffc194 !important;
}
.bg-lightOrange {
  background-color: #ffc194 !important;
}
.bd-lightOrange {
  border-color: #ffc194 !important;
}
.ol-lightOrange {
  outline-color: #ffc194 !important;
}
.op-lightOrange {
  background-color: rgba(255, 193, 148, 0.7);
}
.ribbed-lightOrange {
  background: #ffc194 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightOrange:before {
  background: #ffc194 !important;
}
.before-fg-lightOrange:before {
  color: #ffc194 !important;
}
.after-bg-lightOrange:after {
  background: #ffc194 !important;
}
.after-fg-lightOrange:after {
  color: #ffc194 !important;
}
.bg-hover-lightOrange:hover {
  background: #ffc194 !important;
}
.bg-active-lightOrange:active {
  background: #ffc194 !important;
}
.bg-focus-lightOrange:focus {
  background: #ffc194 !important;
}
.fg-hover-lightOrange:hover {
  color: #ffc194 !important;
}
.fg-active-lightOrange:active {
  color: #ffc194 !important;
}
.fg-focus-lightOrange:focus {
  color: #ffc194 !important;
}
.fg-lightPink {
  color: #f472d0 !important;
}
.bg-lightPink {
  background-color: #f472d0 !important;
}
.bd-lightPink {
  border-color: #f472d0 !important;
}
.ol-lightPink {
  outline-color: #f472d0 !important;
}
.op-lightPink {
  background-color: rgba(244, 114, 208, 0.7);
}
.ribbed-lightPink {
  background: #f472d0 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightPink:before {
  background: #f472d0 !important;
}
.before-fg-lightPink:before {
  color: #f472d0 !important;
}
.after-bg-lightPink:after {
  background: #f472d0 !important;
}
.after-fg-lightPink:after {
  color: #f472d0 !important;
}
.bg-hover-lightPink:hover {
  background: #f472d0 !important;
}
.bg-active-lightPink:active {
  background: #f472d0 !important;
}
.bg-focus-lightPink:focus {
  background: #f472d0 !important;
}
.fg-hover-lightPink:hover {
  color: #f472d0 !important;
}
.fg-active-lightPink:active {
  color: #f472d0 !important;
}
.fg-focus-lightPink:focus {
  color: #f472d0 !important;
}
.fg-lightRed {
  color: #da5a53 !important;
}
.bg-lightRed {
  background-color: #da5a53 !important;
}
.bd-lightRed {
  border-color: #da5a53 !important;
}
.ol-lightRed {
  outline-color: #da5a53 !important;
}
.op-lightRed {
  background-color: rgba(218, 90, 83, 0.7);
}
.ribbed-lightRed {
  background: #da5a53 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightRed:before {
  background: #da5a53 !important;
}
.before-fg-lightRed:before {
  color: #da5a53 !important;
}
.after-bg-lightRed:after {
  background: #da5a53 !important;
}
.after-fg-lightRed:after {
  color: #da5a53 !important;
}
.bg-hover-lightRed:hover {
  background: #da5a53 !important;
}
.bg-active-lightRed:active {
  background: #da5a53 !important;
}
.bg-focus-lightRed:focus {
  background: #da5a53 !important;
}
.fg-hover-lightRed:hover {
  color: #da5a53 !important;
}
.fg-active-lightRed:active {
  color: #da5a53 !important;
}
.fg-focus-lightRed:focus {
  color: #da5a53 !important;
}
.fg-lightGreen {
  color: #7ad61d !important;
}
.bg-lightGreen {
  background-color: #7ad61d !important;
}
.bd-lightGreen {
  border-color: #7ad61d !important;
}
.ol-lightGreen {
  outline-color: #7ad61d !important;
}
.op-lightGreen {
  background-color: rgba(122, 214, 29, 0.7);
}
.ribbed-lightGreen {
  background: #7ad61d linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightGreen:before {
  background: #7ad61d !important;
}
.before-fg-lightGreen:before {
  color: #7ad61d !important;
}
.after-bg-lightGreen:after {
  background: #7ad61d !important;
}
.after-fg-lightGreen:after {
  color: #7ad61d !important;
}
.bg-hover-lightGreen:hover {
  background: #7ad61d !important;
}
.bg-active-lightGreen:active {
  background: #7ad61d !important;
}
.bg-focus-lightGreen:focus {
  background: #7ad61d !important;
}
.fg-hover-lightGreen:hover {
  color: #7ad61d !important;
}
.fg-active-lightGreen:active {
  color: #7ad61d !important;
}
.fg-focus-lightGreen:focus {
  color: #7ad61d !important;
}
.fg-lightCyan {
  color: #59cde2 !important;
}
.bg-lightCyan {
  background-color: #59cde2 !important;
}
.bd-lightCyan {
  border-color: #59cde2 !important;
}
.ol-lightCyan {
  outline-color: #59cde2 !important;
}
.op-lightCyan {
  background-color: rgba(89, 205, 226, 0.7);
}
.ribbed-lightCyan {
  background: #59cde2 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightCyan:before {
  background: #59cde2 !important;
}
.before-fg-lightCyan:before {
  color: #59cde2 !important;
}
.after-bg-lightCyan:after {
  background: #59cde2 !important;
}
.after-fg-lightCyan:after {
  color: #59cde2 !important;
}
.bg-hover-lightCyan:hover {
  background: #59cde2 !important;
}
.bg-active-lightCyan:active {
  background: #59cde2 !important;
}
.bg-focus-lightCyan:focus {
  background: #59cde2 !important;
}
.fg-hover-lightCyan:hover {
  color: #59cde2 !important;
}
.fg-active-lightCyan:active {
  color: #59cde2 !important;
}
.fg-focus-lightCyan:focus {
  color: #59cde2 !important;
}
.fg-grayed {
  color: #585858 !important;
}
.bg-grayed {
  background-color: #585858 !important;
}
.bd-grayed {
  border-color: #585858 !important;
}
.ol-grayed {
  outline-color: #585858 !important;
}
.op-grayed {
  background-color: rgba(88, 88, 88, 0.7);
}
.ribbed-grayed {
  background: #585858 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayed:before {
  background: #585858 !important;
}
.before-fg-grayed:before {
  color: #585858 !important;
}
.after-bg-grayed:after {
  background: #585858 !important;
}
.after-fg-grayed:after {
  color: #585858 !important;
}
.bg-hover-grayed:hover {
  background: #585858 !important;
}
.bg-active-grayed:active {
  background: #585858 !important;
}
.bg-focus-grayed:focus {
  background: #585858 !important;
}
.fg-hover-grayed:hover {
  color: #585858 !important;
}
.fg-active-grayed:active {
  color: #585858 !important;
}
.fg-focus-grayed:focus {
  color: #585858 !important;
}
.fg-grayDarker {
  color: #222222 !important;
}
.bg-grayDarker {
  background-color: #222222 !important;
}
.bd-grayDarker {
  border-color: #222222 !important;
}
.ol-grayDarker {
  outline-color: #222222 !important;
}
.op-grayDarker {
  background-color: rgba(34, 34, 34, 0.7);
}
.ribbed-grayDarker {
  background: #222222 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayDarker:before {
  background: #222222 !important;
}
.before-fg-grayDarker:before {
  color: #222222 !important;
}
.after-bg-grayDarker:after {
  background: #222222 !important;
}
.after-fg-grayDarker:after {
  color: #222222 !important;
}
.bg-hover-grayDarker:hover {
  background: #222222 !important;
}
.bg-active-grayDarker:active {
  background: #222222 !important;
}
.bg-focus-grayDarker:focus {
  background: #222222 !important;
}
.fg-hover-grayDarker:hover {
  color: #222222 !important;
}
.fg-active-grayDarker:active {
  color: #222222 !important;
}
.fg-focus-grayDarker:focus {
  color: #222222 !important;
}
.fg-grayDark {
  color: #333333 !important;
}
.bg-grayDark {
  background-color: #333333 !important;
}
.bd-grayDark {
  border-color: #333333 !important;
}
.ol-grayDark {
  outline-color: #333333 !important;
}
.op-grayDark {
  background-color: rgba(51, 51, 51, 0.7);
}
.ribbed-grayDark {
  background: #333333 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayDark:before {
  background: #333333 !important;
}
.before-fg-grayDark:before {
  color: #333333 !important;
}
.after-bg-grayDark:after {
  background: #333333 !important;
}
.after-fg-grayDark:after {
  color: #333333 !important;
}
.bg-hover-grayDark:hover {
  background: #333333 !important;
}
.bg-active-grayDark:active {
  background: #333333 !important;
}
.bg-focus-grayDark:focus {
  background: #333333 !important;
}
.fg-hover-grayDark:hover {
  color: #333333 !important;
}
.fg-active-grayDark:active {
  color: #333333 !important;
}
.fg-focus-grayDark:focus {
  color: #333333 !important;
}
.fg-gray {
  color: #555555 !important;
}
.bg-gray {
  background-color: #555555 !important;
}
.bd-gray {
  border-color: #555555 !important;
}
.ol-gray {
  outline-color: #555555 !important;
}
.op-gray {
  background-color: rgba(85, 85, 85, 0.7);
}
.ribbed-gray {
  background: #555555 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-gray:before {
  background: #555555 !important;
}
.before-fg-gray:before {
  color: #555555 !important;
}
.after-bg-gray:after {
  background: #555555 !important;
}
.after-fg-gray:after {
  color: #555555 !important;
}
.bg-hover-gray:hover {
  background: #555555 !important;
}
.bg-active-gray:active {
  background: #555555 !important;
}
.bg-focus-gray:focus {
  background: #555555 !important;
}
.fg-hover-gray:hover {
  color: #555555 !important;
}
.fg-active-gray:active {
  color: #555555 !important;
}
.fg-focus-gray:focus {
  color: #555555 !important;
}
.fg-grayLight {
  color: #999999 !important;
}
.bg-grayLight {
  background-color: #999999 !important;
}
.bd-grayLight {
  border-color: #999999 !important;
}
.ol-grayLight {
  outline-color: #999999 !important;
}
.op-grayLight {
  background-color: rgba(153, 153, 153, 0.7);
}
.ribbed-grayLight {
  background: #999999 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayLight:before {
  background: #999999 !important;
}
.before-fg-grayLight:before {
  color: #999999 !important;
}
.after-bg-grayLight:after {
  background: #999999 !important;
}
.after-fg-grayLight:after {
  color: #999999 !important;
}
.bg-hover-grayLight:hover {
  background: #999999 !important;
}
.bg-active-grayLight:active {
  background: #999999 !important;
}
.bg-focus-grayLight:focus {
  background: #999999 !important;
}
.fg-hover-grayLight:hover {
  color: #999999 !important;
}
.fg-active-grayLight:active {
  color: #999999 !important;
}
.fg-focus-grayLight:focus {
  color: #999999 !important;
}
.fg-grayLighter {
  color: #eeeeee !important;
}
.bg-grayLighter {
  background-color: #eeeeee !important;
}
.bd-grayLighter {
  border-color: #eeeeee !important;
}
.ol-grayLighter {
  outline-color: #eeeeee !important;
}
.op-grayLighter {
  background-color: rgba(238, 238, 238, 0.7);
}
.ribbed-grayLighter {
  background: #eeeeee linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-grayLighter:before {
  background: #eeeeee !important;
}
.before-fg-grayLighter:before {
  color: #eeeeee !important;
}
.after-bg-grayLighter:after {
  background: #eeeeee !important;
}
.after-fg-grayLighter:after {
  color: #eeeeee !important;
}
.bg-hover-grayLighter:hover {
  background: #eeeeee !important;
}
.bg-active-grayLighter:active {
  background: #eeeeee !important;
}
.bg-focus-grayLighter:focus {
  background: #eeeeee !important;
}
.fg-hover-grayLighter:hover {
  color: #eeeeee !important;
}
.fg-active-grayLighter:active {
  color: #eeeeee !important;
}
.fg-focus-grayLighter:focus {
  color: #eeeeee !important;
}
.fg-lightGray {
  color: #999999 !important;
}
.bg-lightGray {
  background-color: #999999 !important;
}
.bd-lightGray {
  border-color: #999999 !important;
}
.ol-lightGray {
  outline-color: #999999 !important;
}
.op-lightGray {
  background-color: rgba(153, 153, 153, 0.7);
}
.ribbed-lightGray {
  background: #999999 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lightGray:before {
  background: #999999 !important;
}
.before-fg-lightGray:before {
  color: #999999 !important;
}
.after-bg-lightGray:after {
  background: #999999 !important;
}
.after-fg-lightGray:after {
  color: #999999 !important;
}
.bg-hover-lightGray:hover {
  background: #999999 !important;
}
.bg-active-lightGray:active {
  background: #999999 !important;
}
.bg-focus-lightGray:focus {
  background: #999999 !important;
}
.fg-hover-lightGray:hover {
  color: #999999 !important;
}
.fg-active-lightGray:active {
  color: #999999 !important;
}
.fg-focus-lightGray:focus {
  color: #999999 !important;
}
.fg-lighterGray {
  color: #eeeeee !important;
}
.bg-lighterGray {
  background-color: #eeeeee !important;
}
.bd-lighterGray {
  border-color: #eeeeee !important;
}
.ol-lighterGray {
  outline-color: #eeeeee !important;
}
.op-lighterGray {
  background-color: rgba(238, 238, 238, 0.7);
}
.ribbed-lighterGray {
  background: #eeeeee linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-lighterGray:before {
  background: #eeeeee !important;
}
.before-fg-lighterGray:before {
  color: #eeeeee !important;
}
.after-bg-lighterGray:after {
  background: #eeeeee !important;
}
.after-fg-lighterGray:after {
  color: #eeeeee !important;
}
.bg-hover-lighterGray:hover {
  background: #eeeeee !important;
}
.bg-active-lighterGray:active {
  background: #eeeeee !important;
}
.bg-focus-lighterGray:focus {
  background: #eeeeee !important;
}
.fg-hover-lighterGray:hover {
  color: #eeeeee !important;
}
.fg-active-lighterGray:active {
  color: #eeeeee !important;
}
.fg-focus-lighterGray:focus {
  color: #eeeeee !important;
}
.fg-darkGray {
  color: #333333 !important;
}
.bg-darkGray {
  background-color: #333333 !important;
}
.bd-darkGray {
  border-color: #333333 !important;
}
.ol-darkGray {
  outline-color: #333333 !important;
}
.op-darkGray {
  background-color: rgba(51, 51, 51, 0.7);
}
.ribbed-darkGray {
  background: #333333 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkGray:before {
  background: #333333 !important;
}
.before-fg-darkGray:before {
  color: #333333 !important;
}
.after-bg-darkGray:after {
  background: #333333 !important;
}
.after-fg-darkGray:after {
  color: #333333 !important;
}
.bg-hover-darkGray:hover {
  background: #333333 !important;
}
.bg-active-darkGray:active {
  background: #333333 !important;
}
.bg-focus-darkGray:focus {
  background: #333333 !important;
}
.fg-hover-darkGray:hover {
  color: #333333 !important;
}
.fg-active-darkGray:active {
  color: #333333 !important;
}
.fg-focus-darkGray:focus {
  color: #333333 !important;
}
.fg-darkerGray {
  color: #222222 !important;
}
.bg-darkerGray {
  background-color: #222222 !important;
}
.bd-darkerGray {
  border-color: #222222 !important;
}
.ol-darkerGray {
  outline-color: #222222 !important;
}
.op-darkerGray {
  background-color: rgba(34, 34, 34, 0.7);
}
.ribbed-darkerGray {
  background: #222222 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darkerGray:before {
  background: #222222 !important;
}
.before-fg-darkerGray:before {
  color: #222222 !important;
}
.after-bg-darkerGray:after {
  background: #222222 !important;
}
.after-fg-darkerGray:after {
  color: #222222 !important;
}
.bg-hover-darkerGray:hover {
  background: #222222 !important;
}
.bg-active-darkerGray:active {
  background: #222222 !important;
}
.bg-focus-darkerGray:focus {
  background: #222222 !important;
}
.fg-hover-darkerGray:hover {
  color: #222222 !important;
}
.fg-active-darkerGray:active {
  color: #222222 !important;
}
.fg-focus-darkerGray:focus {
  color: #222222 !important;
}
.fg-darker {
  color: #222222 !important;
}
.bg-darker {
  background-color: #222222 !important;
}
.bd-darker {
  border-color: #222222 !important;
}
.ol-darker {
  outline-color: #222222 !important;
}
.op-darker {
  background-color: rgba(34, 34, 34, 0.7);
}
.ribbed-darker {
  background: #222222 linear-gradient(-45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent) !important;
  background-size: 40px 40px !important;
}
.before-bg-darker:before {
  background: #222222 !important;
}
.before-fg-darker:before {
  color: #222222 !important;
}
.after-bg-darker:after {
  background: #222222 !important;
}
.after-fg-darker:after {
  color: #222222 !important;
}
.bg-hover-darker:hover {
  background: #222222 !important;
}
.bg-active-darker:active {
  background: #222222 !important;
}
.bg-focus-darker:focus {
  background: #222222 !important;
}
.fg-hover-darker:hover {
  color: #222222 !important;
}
.fg-active-darker:active {
  color: #222222 !important;
}
.fg-focus-darker:focus {
  color: #222222 !important;
}
/* transform functions */
.rotate45 {
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
.rotate90 {
  -webkit-transform: rotate(90deg);
          transform: rotate(90deg);
}
.rotate135 {
  -webkit-transform: rotate(135deg);
          transform: rotate(135deg);
}
.rotate180 {
  -webkit-transform: rotate(180deg);
          transform: rotate(180deg);
}
.rotate225 {
  -webkit-transform: rotate(225deg);
          transform: rotate(225deg);
}
.rotate270 {
  -webkit-transform: rotate(270deg);
          transform: rotate(270deg);
}
.rotate360 {
  -webkit-transform: rotate(360deg);
          transform: rotate(360deg);
}
.rotate-45 {
  -webkit-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.rotate-90 {
  -webkit-transform: rotate(-90deg);
          transform: rotate(-90deg);
}
.rotate-135 {
  -webkit-transform: rotate(-135deg);
          transform: rotate(-135deg);
}
.rotate-180 {
  -webkit-transform: rotate(-180deg);
          transform: rotate(-180deg);
}
.rotate-225 {
  -webkit-transform: rotate(-225deg);
          transform: rotate(-225deg);
}
.rotate-270 {
  -webkit-transform: rotate(-270deg);
          transform: rotate(-270deg);
}
.rotate-360 {
  -webkit-transform: rotate(-360deg);
          transform: rotate(-360deg);
}
.rotateX45 {
  -webkit-transform: rotateX(45deg);
          transform: rotateX(45deg);
}
.rotateX90 {
  -webkit-transform: rotateX(90deg);
          transform: rotateX(90deg);
}
.rotateX135 {
  -webkit-transform: rotateX(135deg);
          transform: rotateX(135deg);
}
.rotateX180 {
  -webkit-transform: rotateX(180deg);
          transform: rotateX(180deg);
}
.rotateX225 {
  -webkit-transform: rotateX(225deg);
          transform: rotateX(225deg);
}
.rotateX270 {
  -webkit-transform: rotateX(270deg);
          transform: rotateX(270deg);
}
.rotateX360 {
  -webkit-transform: rotateX(360deg);
          transform: rotateX(360deg);
}
.rotateX-45 {
  -webkit-transform: rotateX(-45deg);
          transform: rotateX(-45deg);
}
.rotateX-90 {
  -webkit-transform: rotateX(-90deg);
          transform: rotateX(-90deg);
}
.rotateX-135 {
  -webkit-transform: rotateX(-135deg);
          transform: rotateX(-135deg);
}
.rotateX-180 {
  -webkit-transform: rotateX(-180deg);
          transform: rotateX(-180deg);
}
.rotateX-225 {
  -webkit-transform: rotateX(-225deg);
          transform: rotateX(-225deg);
}
.rotateX-270 {
  -webkit-transform: rotateX(-270deg);
          transform: rotateX(-270deg);
}
.rotateX-360 {
  -webkit-transform: rotateX(-360deg);
          transform: rotateX(-360deg);
}
.rotateY45 {
  -webkit-transform: rotateY(45deg);
          transform: rotateY(45deg);
}
.rotateY90 {
  -webkit-transform: rotateY(90deg);
          transform: rotateY(90deg);
}
.rotateY135 {
  -webkit-transform: rotateY(135deg);
          transform: rotateY(135deg);
}
.rotateY180 {
  -webkit-transform: rotateY(180deg);
          transform: rotateY(180deg);
}
.rotateY225 {
  -webkit-transform: rotateY(225deg);
          transform: rotateY(225deg);
}
.rotateY270 {
  -webkit-transform: rotateY(270deg);
          transform: rotateY(270deg);
}
.rotateY360 {
  -webkit-transform: rotateY(360deg);
          transform: rotateY(360deg);
}
.rotateY-45 {
  -webkit-transform: rotateY(-45deg);
          transform: rotateY(-45deg);
}
.rotateY-90 {
  -webkit-transform: rotateY(-90deg);
          transform: rotateY(-90deg);
}
.rotateY-135 {
  -webkit-transform: rotateY(-135deg);
          transform: rotateY(-135deg);
}
.rotateY-180 {
  -webkit-transform: rotateY(-180deg);
          transform: rotateY(-180deg);
}
.rotateY-225 {
  -webkit-transform: rotateY(-225deg);
          transform: rotateY(-225deg);
}
.rotateY-270 {
  -webkit-transform: rotateY(-270deg);
          transform: rotateY(-270deg);
}
.rotateY-360 {
  -webkit-transform: rotateY(-360deg);
          transform: rotateY(-360deg);
}
       
    </style>

    --%>
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
                                <span class="icon mif-clipboard"></span>Paste
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
                                <span class="label">Delete</span>
                            </button>
                            <ul class="d-menu" data-role="dropdown">
                                <li><a href="#">Delete</a></li>
                                <li><a href="#">Permanent Delete</a></li>
                            </ul>
                        
                    </div>
                    <div class="tab-panel-group">
                        
                        
                    </div>
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
