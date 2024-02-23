<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Receptionist.aspx.cs" Inherits="Gym_Management_System.Views.Admin.Receptionist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
<div class="row"> 
<div class="col-md-3">

<h4 class="text-primary">Receptionist's Details</h4>

<div class="mb-1">
<label for="exampleInputEmaill" class="form-label">Receptionist's Name</label>
<input type="text" class="form-control" id="rectb" runat="server" autocomplete="off"/>
</div>

<div class="mb-1">
<label for="Rgender" class="form-label">Receptionist's Gender</label>
<asp:DropDownList runat="server" class ="form-control" ID ="Rgender">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
</asp:DropDownList>
</div>


<div class="mb-1">
<label for="Rdob" class="form-label">Receptionist's D.O.B</label>
<input type="date" class="form-control" id="RDOB" runat="server" autocomplete="off"/>
</div>


<div class>
<label for="recadd" class="form-label">Receptionist's Adress</label>
<input type="text" class="form-control" id="recadd" runat="server" autocomplete="off"/>
</div>

    <div class="mb-1">
<label for="Rphone" class="form-label">Receptionist's Phone</label>
<input type="text" class="form-control" id="Rphone" runat="server" autocomplete="off"/>
</div>

    <div class="mb-1">
<label for="Rpass" class="form-label">Receptionist's Password</label>
<input type="password" class="form-control" id="Rpass" runat="server" autocomplete="off"/>
</div>


    <div class="mb-1">
<label for="Remail" class="form-label">Receptionist's Email</label>
<input type="text" class="form-control" id="Remail" runat="server" autocomplete="off"/>
</div>



    <div class="row">
          <div class ="col d-grid">
<asp:Button  Text ="Edit" Class ="btn btn-block btn-warning text-white-50" runat="server" />
          </div>
        <div class ="col d-grid">
<asp:Button  Text ="Add" Class ="btn btn-block btn-primary" runat="server" />
        </div>
          <div class ="col d-grid">
<asp:Button  Text ="Delete" Class ="btn btn-block btn-danger" runat="server" />
          </div>
    </div>











    </div>








</asp:Content>
