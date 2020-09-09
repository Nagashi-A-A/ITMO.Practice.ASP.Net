<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="ITMO.G124.ASP.NET.Yaroshchuk.Lab1.SummaryBD" MasterPageFile="~/Site.master" UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">
        <h2>&nbsp;Список участников<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ITMO.G124.ASP.NET.Yaroshchuk.Lab1.SampleContext" EntityTypeName="" Select="new (Name, Email, Phone, WillAttend, Rdata, Reports)" TableName="GuestResponses">
            </asp:LinqDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1" Width="486px">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="ФИО" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Телефон" ReadOnly="True" SortExpression="Phone" />
                    <asp:BoundField DataField="Rdata" DataFormatString="{0:d}" HeaderText="Дата" ReadOnly="True" SortExpression="Rdata" />
                </Columns>
            </asp:GridView>
</h2>

</asp:Content>
