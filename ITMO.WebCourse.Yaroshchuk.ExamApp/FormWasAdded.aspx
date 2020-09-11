<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormWasAdded.aspx.cs" Inherits="ITMO.WebCourse.Yaroshchuk.ExamApp.FormWasAdded" MasterPageFile="~/MyApp.master" UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div> <h1>Форма успешно зарегистрированна.</h1> </div>
    <div>
        Информация о студенте успешно внесена в систему.
    </div>
    <div> 
            <li><a href="AddStudentForm.aspx">Заполнить еще одну форму</a></li> 
            <li><a href="StudentScores.aspx">Список студентов</a></li> 
            <li><a href="BestFiveForm.aspx">Топ 5 учащихся</a></li> 
            <li><a href="WorstFiveForm.aspx">Наш позор!</a></li> 

    </div>

            </asp:Content>
