<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudentForm.aspx.cs" Inherits="ITMO.WebCourse.Yaroshchuk.ExamApp.AddStudentForm" MasterPageFile="~/MyApp.master" UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">
        <div>
            <div> <h1>Форма учета успеваемости студента</h1> <p>
                <table style="width:100%;">
                    <tr>
                        <td style="width: 215px">
                            <blockquote>
                                <label>
                                Имя студента:&nbsp;  
                                </label>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="StFirstName" 
                    ErrorMessage="Заполните поле Имя студента" ForeColor="#CC3300">Необходимо ввести имя</asp:RequiredFieldValidator>
                            </blockquote>
                        </td>
                        <td style="text-align: center; width: 321px">
                            <asp:TextBox ID="StFirstName" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 215px">
                            <blockquote>
                                <label>
                                &nbsp;Фамилия студента:  
                                </label>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="StLastName" 
                    ErrorMessage="Заполните поле Фамилия студента" ForeColor="#CC3300">Необходимо ввести фамилию</asp:RequiredFieldValidator>
                            </blockquote>
                        </td>
                        <td style="text-align: center; width: 321px">
                            <asp:TextBox ID="StLastName" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 215px">
                            <div style="text-align: center">
                                <blockquote>
                                    <label>
                                    Номер группы:&nbsp;  
                                    </label>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="groupNumber" ErrorMessage="Введите номер группы" ForeColor="Red">Необходимо ввести номер группы</asp:RequiredFieldValidator>
                                </blockquote>
                            </div>
                        </td>
                        <td style="text-align: center; width: 321px">
                            <asp:TextBox ID="groupNumber" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                </p> </div>
            </div>
            <div><h2>Дисциплины:</h2></div>
                <div>
                     <table style="width:100%;">
                         <tr>
                             <td>
                   <div style="text-align: right"> 
                       <blockquote style="text-align: center">
                           <span style="text-decoration: underline"><em>C# Windows Forms Course:&nbsp;</em></span></blockquote>
                                 </div>
                             </td>
                             <td style="width: 193px"><em><asp:TextBox ID="TextBoxWF" runat="server" Width="70px" style="text-decoration: underline"></asp:TextBox> </em> </td>
                         </tr>
                         <tr>
                             <td>
                   <div style="text-align: right"> 
                       <blockquote style="text-align: center">
                           <span style="text-decoration: underline"><em>C# Console Apps Course:&nbsp;</em></span></blockquote>
                                 </div>
                             </td>
                             <td style="width: 193px"><em><asp:TextBox ID="TextBoxConApp" runat="server" Width="70px" style="text-decoration: underline"></asp:TextBox> </em> </td>
                         </tr>
                         <tr>
                             <td>
                   <div style="text-align: right"> 
                       <blockquote style="text-align: center">
                           <span style="text-decoration: underline"><em>Transact SQL Course:&nbsp;</em></span></blockquote>
                                 </div>
                             </td>
                             <td style="width: 193px"><em><asp:TextBox ID="TextBoxTSQL" runat="server" Width="70px" style="text-decoration: underline"></asp:TextBox> </em> </td>
                         </tr>
                         <tr>
                             <td>
                   <div style="text-align: right"> 
                       <blockquote style="text-align: center">
                           <span style="text-decoration: underline"><em>ASP.NET Course:&nbsp;</em></span></blockquote>
                                 </div>
                             </td>
                             <td style="width: 193px"><em><asp:TextBox ID="TextBoxASP" runat="server" Width="70px" style="text-decoration: underline"></asp:TextBox> </em> </td>
                         </tr>
                         <tr>
                             <td>
                   <div style="text-align: right"> 
                       <blockquote style="text-align: center">
                           <span style="text-decoration: underline"><em>ADO.NET Course:&nbsp;</em></span></blockquote>
                                 </div>
                             </td>
                             <td style="width: 193px"><em><asp:TextBox ID="TextBoxADO" runat="server" Width="70px" style="text-decoration: underline"></asp:TextBox> </em> </td>
                         </tr>
                     </table>
                     <button type="submit">Регистрация формы</button>
                </div>
            <div><asp:Label ID="ExcpLabel" runat="server"></asp:Label></div>
</asp:Content>
