<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorstFiveForm.aspx.cs" Inherits="ITMO.WebCourse.Yaroshchuk.ExamApp.WorstFiveForm" MasterPageFile="~/MyApp.master" UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITMO.WebCourse.Yaroshchuk.ExamApp.PerformanceBD.mdfConnectionString %>" 
        SelectCommand="SELECT s.StudentFirstName,
		s.StudentLastName
FROM StudentForms as s
Where s.StudentId in (SELECT StForm_StudentId FROM StudentScores as scr WHERE scr.StForm_StudentId in 
(SELECT TOP (5) StForm_StudentId FROM StudentScores ORDER BY SumScore ASC))"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="StudentFirstName" HeaderText="StudentFirstName" SortExpression="StudentFirstName" />
        <asp:BoundField DataField="StudentLastName" HeaderText="StudentLastName" SortExpression="StudentLastName" />
    </Columns>
</asp:GridView>

    </asp:Content>
