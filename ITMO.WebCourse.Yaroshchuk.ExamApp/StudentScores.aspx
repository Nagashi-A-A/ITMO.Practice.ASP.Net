<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentScores.aspx.cs" Inherits="ITMO.WebCourse.Yaroshchuk.ExamApp.StudentScores" MasterPageFile="~/MyApp.master" UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div> <h1>Список студентов</h1> <p>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Имя студента" HeaderText="Имя студента" SortExpression="Имя студента" />
            <asp:BoundField DataField="Фамилия студента" HeaderText="Фамилия студента" SortExpression="Фамилия студента" />
            <asp:BoundField DataField="№ Группы" HeaderText="№ Группы" SortExpression="№ Группы" />
            <asp:BoundField DataField="Курс С# WinForms" HeaderText="Курс С# WinForms" SortExpression="Курс С# WinForms" />
            <asp:BoundField DataField="Курс C# Console Apps" HeaderText="Курс C# Console Apps" SortExpression="Курс C# Console Apps" />
            <asp:BoundField DataField="Курс Transact SQL" HeaderText="Курс Transact SQL" SortExpression="Курс Transact SQL" />
            <asp:BoundField DataField="Курс ADO.NET" HeaderText="Курс ADO.NET" SortExpression="Курс ADO.NET" />
            <asp:BoundField DataField="Курс ASP.NET" HeaderText="Курс ASP.NET" SortExpression="Курс ASP.NET" />
            <asp:BoundField DataField="Общий балл" HeaderText="Общий балл" SortExpression="Общий балл" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITMO.WebCourse.Yaroshchuk.ExamApp.PerformanceBD.mdfConnectionString %>" SelectCommand="SELECT 
t1.[StudentFirstName] as [Имя студента],
t1.[StudentLastName] as [Фамилия студента],
t1.GroupNumber as [№ Группы],
t2.WinFormScore as [Курс С# WinForms],
t2.WinConsoleScore as [Курс C# Console Apps],
t2.SqlScore as [Курс Transact SQL],
t2.AdoScore as[Курс ADO.NET],
t2.AspScore as [Курс ASP.NET],
t2.SumScore as [Общий балл]
FROM [dbo].[StudentForms] as t1 INNER JOIN [dbo].[StudentScores] as t2 on t1.[StudentId] = t2.[StForm_StudentId]
ORDER BY [Общий балл] DESC"></asp:SqlDataSource>
    </asp:Content>