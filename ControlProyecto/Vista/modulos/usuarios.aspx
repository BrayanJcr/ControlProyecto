<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/modulos/menuMa.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="ControlProyecto.Vista.modulos.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/usuario.css" type="text/css" />
    <script src="Scripts/jquery-1.11.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-section">
        <div class="text">Usuarios</div>
        <div class="card-body d-flex justify-content-between align-items-center">

            <Button runat="server" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat">Agregar</Button>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <table class="table table-striped table-bordered table-hover table-dark">
                        <thead>
                            <tr>
                                <th>Nro</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Usuario</th>
                                <th>cargo</th>
                                <th>correo</th>
                                <th>accion</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>



<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Agregar Usuarios</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Nombres:</label>
            <input type="text" class="form-control" id="nombre-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Apellidos:</label>
            <input type="text" class="form-control" id="apellido-text">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Correo:</label>
            <input type="email" class="form-control" id="correo-text">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Usuario:</label>
            <input type="text" class="form-control" id="usuario-text">
          </div>
          <div class="form-group">
            <asp:label runat="server" for="message-text" class="col-form-label">Contraseña:</asp:label>
            <input type="password"class="form-control" id="message-text">
          </div>
          
        <div class="form-group">
            <asp:label runat="server" for="message-text" class="col-form-label">Cargo:</asp:label>
            <select class="form-control input-lg">
                <option value="">Seleccione Cargo</option>    
            </select>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>

