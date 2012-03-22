<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employees.aspx.cs" Inherits="EmployeesCalendar" %>

<%@ Register Assembly="Ektron.Cms.Controls" Namespace="Ektron.Cms.Controls" TagPrefix="CMS" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-us" lang="en-us">
<head id="Head1" runat="server">
    <title id="pageTitle" runat="server"></title>
    <!--#include virtual="/includes/head.htm" -->
    <link type="text/css" rel="stylesheet" href="css/calendar.css" media="screen" />
</head>
<body id="home">
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
            <h2>
                Calendar of Events</h2>
        </div>
    </div>
    <div class="content">
        <form id="form2" runat="server">
        <div class="container">
            <div id="section" runat="server" class="clearfix">
                <CMS:WebCalendar ID="WebCalendar1" DefaultDisplayType="Month" runat="server">
                </CMS:WebCalendar>
                <%-- <CMS:WebCalendar ID="WebCalendar2" runat="server" DynamicParameter="calendar_id"
                    DisplayType="Month">
                    <DataSource>
                        <CMS:CalendarDataSource sourceType="SystemCalendar" />
                    </DataSource>
                </CMS:WebCalendar>--%>
            </div>
        </div>
        </form>
        <p class="dots">
            &nbsp;</p>
    </div>
    <div class="prefooter">
        <div class="container">
            <CMS:ContentBlock ID="cntFooter" DefaultContentID="26845" WrapTag="span" runat="server" />
            <p class="dots">&nbsp;</p>
        </div>
    </div>
    <!--#include virtual="/includes/global_footer.htm" -->
    <!--include virtual="/includes/calendar_google_analytics.htm" -->
</body>
</html>
