<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DirectDebitSMS._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Import Excel</h3>
    <div>select file:
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnImport" runat="server" Text="Import Excel" />
    </div>
    <div>
        <asp:Label ID="lblMessage" runat="server" Font-Bold="true"/>
        <br />
        <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="false">
            <EmptyDataTemplate>
                <div style ="padding:10px">
                    Data not found!
                </div>
            </EmptyDataTemplate>
            <Columns>
                <asp:BoundField HeaderText="Broker" DataField="ACCO_BROKER_REF" />
                <asp:BoundField HeaderText="Number" DataField="ACCO_ORGAN_NUMBER" />
                <asp:BoundField HeaderText="Name" DataField="ACCO_NAME" />
                <asp:BoundField HeaderText="Application" DataField="ACCO_APPLICATION_REC_DATE" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
