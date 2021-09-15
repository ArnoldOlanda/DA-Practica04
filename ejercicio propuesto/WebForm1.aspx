<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Ejercicio_propuesto.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script languaje="C#" runat="server">
        void mostrar_producto(Object sender, EventArgs args)

        {
            switch (lista.Value) {
                case "Cocina":
                    Codigo.InnerText = "Codigo: 0020";
                    descripcion.InnerText = "Descripcion: 4 ornillas con encendido electrico ";
                    Marca.InnerText = "Marca: Oster";
                    precio.InnerText = "Precio: S/. 1500";
                    imagen.Src = "cocina.jpg";
                    break;

                case "Plancha":
                    Codigo.InnerText = "Codigo: 0031";
                    descripcion.InnerText = "Descripcion: 5 modos de calentamiento";
                    Marca.InnerText = "Marca: Samsumg";
                    precio.InnerText = "Precio: S/. 150";
                    imagen.Src = "plancha.jpg";
                    break;

                case "Equipo de sonido":
                    Codigo.InnerText = "Codigo: 0040";
                    descripcion.InnerText = "Descripcion: 6 parlantes sonido envolvente";
                    Marca.InnerText = "Marca: Sony";
                    precio.InnerText = "Precio: S/. 2500";
                    imagen.Src = "equipo.jpg";
                    break;

                case "Refrigeradora":
                    Codigo.InnerText = "Codigo: 0003";
                    descripcion.InnerText = "Descripcion: Doble puerta gris";
                    Marca.InnerText = "Marca: Philips";
                    precio.InnerText = "Precio: S/. 2200";
                    imagen.Src = "refrigeradora.jpg";
                    break;
            }
        }
     </script>
    <div class="container mt-5">
         <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h3>Mostrar informacion de productos</h3>
                    <div class="">
                    <select id="lista" runat="server">
                     <option selected>Cocina</option>
                     <option>Plancha</option>
                     <option>Equipo de sonido</option>
                     <option>Regrigeradora</option>
                    </select>
                    <input type="button" id="boton" runat="server" value="Seleccionar" onserverclick="mostrar_producto" />
                    </div>
                </div>

                <div class="col-sm-6">
                    <div id="Codigo" class="" runat="server"></div>
                    <div id="descripcion" class="" runat="server"></div>
                    <div id="Marca" class="" runat="server"></div>
                    <div id="precio" class="" runat="server"></div>
                    
                </div>
            </div>
            <div class="col-sm-6">
                <img id="imagen" class="img" runat="server" width=250/>
            </div>
        </div>
    </div>
</asp:Content>
