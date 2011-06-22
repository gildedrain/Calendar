<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<%@ Register Assembly="Ektron.Cms.Controls" Namespace="Ektron.Cms.Controls" TagPrefix="CMS" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-us" lang="en-us">
<head id="Head1" runat="server">
   <title id="pageTitle" runat="server"></title>
<!--#include virtual="/includes/head.htm" -->    
   <link type="text/css" rel="stylesheet" href="css/calendar.css" media="screen" />
   <asp:Literal ID="litMenuCss" runat="server" />
</head>
<body id="index">
<!--#include virtual="/includes/global_logo.htm" -->
   <div id="banner_container">
       <div id="emergency">
           <CMS:ContentBlock ID="cntEmergency" DefaultContentID="2827" runat="server" WrapTag="span" />
       </div>
       <div id="announcement">
           <CMS:ContentBlock ID="cntAnnouncement" runat="server" DefaultContentID="21106" WrapTag="span" />
       </div>
<!--#include virtual="/includes/global_header_top.htm" -->
<!--#include virtual="/includes/global_header_bottom.htm" -->
   </div>
   <div id="banner_spacer">
       <CMS:ContentBlock ID="ContentBlock2" DefaultContentID="2827" runat="server" WrapTag="span" />
       <CMS:ContentBlock ID="ContentBlock3" runat="server" DefaultContentID="21106" WrapTag="span" />
   </div>
   <div id="header">
       <div class="container">
          <h2>Calendar of Events</h2>
       </div>
   </div>
   <div class="container">
       <asp:Literal ID="litMenuTitle" runat="server" />
   </div>
   <div class="content">
       <asp:Literal ID="litColGrid" runat="server" />
       <form id="Form1" runat="server">
       <div class="container">
           <!--\\ ASIDE BEGINS -->
           <div id="aside" class="clearfix">
               <!--\\ MENU BEGINS -->
               <div class="menu">
                   <CMS:FlexMenu ID="Menu1" DynamicParameter="menu" runat="server" CssClass="flexmenu" WrapTag="span" AutoCollapseBranches="True" StartCollapsed="True" EnableMouseOverPopUp="False" EnableSmartOpen="True" StartLevel="1" MenuDepth="0" EnableAjax="False" DisplayXslt="xsl/demo.xsl" />
               </div>
               <!--// MENU ENDS -->
               <asp:Literal ID="litColSide" runat="server" />
           </div>
           <!--// ASIDE ENDS -->
           <!--\\ CONTENT AREA BEGINS -->
           <div id="section" runat="server" class="clearfix">
               <CMS:ContentBlock ID="cntDynamic" DefaultContentID="0" DynamicParameter="id" WrapTag="span" runat="server" />
               <CMS:Collection ID="colType1" DynamicParameter="coll_id" WrapTag="span" runat="server" DisplayXslt="http://students.sunyocc.edu/xmlfiles/ecmnavigation3.xsl" />
               <asp:Literal ID="litColType2" runat="server" />
               <CMS:ListSummary ID="ListSummary1" WrapTag="span" runat="server" DisplayXslt="http://students.sunyocc.edu/xmlfiles/ecmnavigation3.xsl" />
               <CMS:FormBlock ID="FormBlock1" DynamicParameter="ekfrm" WrapTag="span" runat="server" />
           </div>
           <!--// CONTENT AREA ENDS -->
       </div>
       </form>
       <p class="dots">&nbsp;</p>
   </div>
   <div class="prefooter">
       <div class="container">
           <CMS:ContentBlock ID="cntFooter" DefaultContentID="0" WrapTag="span" runat="server" />
           <p class="dots">&nbsp;</p>
       </div>
   </div>
<!--#include virtual="/includes/global_footer.htm" -->
<!--#include virtual="/includes/calendar_google_analytics.htm" -->
</body>
</html>