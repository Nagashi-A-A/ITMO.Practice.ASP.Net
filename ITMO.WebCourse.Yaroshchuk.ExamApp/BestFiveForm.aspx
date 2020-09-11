<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BestFiveForm.aspx.cs" Inherits="ITMO.WebCourse.Yaroshchuk.ExamApp.BestFiveForm" MasterPageFile="~/MyApp.master" UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">
        <div> <h1>Топ 5 учащихся</h1> <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITMO.WebCourse.Yaroshchuk.ExamApp.PerformanceBD.mdfConnectionString %>" SelectCommand="SELECT TOP (5) t2.[SumScore] as TotalScore,
t1.[StudentFirstName] as FirstName,
t1.[StudentLastName] as LastName
FROM [dbo].[StudentForms] as t1 INNER JOIN [dbo].[StudentScores] as t2 on t1.[StudentId] = t2.[StForm_StudentId]
ORDER BY TotalScore DESC"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BorderStyle="Ridge" CaptionAlign="Top" Height="220px" Width="532px">
    <Columns>
        <asp:BoundField DataField="TotalScore" HeaderText="TotalScore" SortExpression="TotalScore" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
    </Columns>
</asp:GridView>

    </asp:Content>
