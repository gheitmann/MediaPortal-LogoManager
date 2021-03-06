﻿<%@ Page Title="Suggestion Detail" Language="C#" MasterPageFile="~/ChannelManager.Master" AutoEventWireup="true" CodeBehind="SuggestionDetail.aspx.cs" Inherits="ChannelManager.SuggestionDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        th, td { padding: 5px; }
    </style>
    <h3><asp:Label runat="server" ID="lblSuggestWhat" /></h3>
    <table rules="all" style="border-style:ridge;max-width:600px">
        <tr>
            <td>Created</td>
            <td><asp:Label ID="lblSuggestionDate" runat="server" Text="Label"/></td>
            <td rowspan="7">
                <asp:Label runat="server" ID="lblNewLogo" Visible="false" Text="New Logo:"/><br />
                <asp:HyperLink ID="imgChannelLogoNew" runat="server" Target="_blank" CssClass="logoBig" Visible="false" /><br />
                <asp:Label runat="server" ID="lblLogoMetadataNew" Visible="false"/>
            </td>
            <td rowspan="7">
                <asp:Label runat="server" ID="lblOldLogo" Visible="false" Text="Old Logo:"/><br />
                <asp:HyperLink ID="imgChannelLogoOld" runat="server" Target="_blank" CssClass="logoBig" Visible="false" /><br />
                <asp:Label runat="server" ID="lblLogoMetadataOld" Visible="false"/>
            </td>
        </tr>
        <tr>
            <td>Author</td>
            <td><asp:Label ID="lblAuthor" runat="server" Text="Label"/></td>
        </tr>
        <tr>
            <td>Channel</td>
            <td><asp:Label ID="lblChannelName" runat="server" Text="Label"/></td>
        </tr>
        <tr>
            <td>Website</td>
            <td><asp:HyperLink ID="linkChannel" runat="server" Target="_blank" /></td>
        </tr>
        <tr>
            <td>Region</td>
            <td><asp:Label ID="lblChannelRegion" runat="server" /></td>
        </tr>
        <tr>
            <td>Old Aliases</td>
            <td><asp:Label ID="lblChannelOldAliases" runat="server" /></td>
        </tr>
        <tr>
            <td>New Aliases</td>
            <td><asp:Label ID="lblChannelNewAliases" runat="server" /></td>
        </tr>
        <tr>
            <td>Description</td>
            <td colspan="3"><asp:Label ID="lblChannelDescription" runat="server" /></td>
        </tr>
        <tr>
            <td colspan="4" style="text-align:right">
                <asp:Button ID="btnApprove" runat="server" Text="Approve" OnClick="btnApprove_Click" />
                <asp:Button ID="btnDecline" runat="server" Text="Decline" OnClick="btnDecline_Click" />
            </td>
        </tr>
    </table>
    <h3>Messages</h3>
    <asp:GridView ID="gvMessages" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="false">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Created" HeaderText="Date" DataFormatString="{0:dd.MM.yyyy hh:mm}" />
            <asp:BoundField DataField="Text" HeaderText="Text" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:TextBox ID="tbxNewMessage" runat="server" TextMode="MultiLine" Rows="3" Width="300px" /><br />
    <asp:Button ID="btnAddMessage" runat="server" Text="Add Message" OnClick="btnAddMessage_Click" /><br />
</asp:Content>
