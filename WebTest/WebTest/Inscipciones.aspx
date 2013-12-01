<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inscipciones.aspx.cs" Inherits="WebTest.Inscipciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 
   
    <div class="span3 offset1">
        <div class="controls">
        <asp:TextBox ID="TextNombre" runat="server" CssClass="span3"  ></asp:TextBox></div>
           <div class="controls">
        <asp:TextBox ID="TextEmail" runat="server" CssClass="span3"></asp:TextBox></div>
           <div class="controls">
        <asp:TextBox ID="TextDepartamento" runat="server" CssClass="span3"></asp:TextBox></div>
       
          <a class="icono" style="float: left; margin-top: 30px;" href="http://premiocafammujer.com.co/site/reglamentocafam.pdf"
            target="_blank">
            <h3 class="descarga">
                Descargar Reglamento</h3>
            <span aria-hidden="true" class="icon-box-add"></span></a><a class="icono" style="float: left;
                margin-top: -5px;" href="http://premiocafammujer.com.co/site/formulariocafam.pdf"
                target="_blank">
                <h3 class="descarga">
                    Descargar Formulario</h3>
                <span  aria-hidden="true" class="icon-box-add"></span></a>
                    <div class="controls">
                     <div class="span4 prelative">
        <div class="controls">
        <asp:TextBox ID="TextComentarios" runat="server" CssClass="span3" TextMode="MultiLine"></asp:TextBox></div>
        <asp:Button ID="Button1" runat="server" Text="Enviar postulación" onclick="Postular" CssClass="btn btn-large btn-primary flr"  style="margin-right: 15px; margin-top: 14px;"/>
    </div>
    </div>
       </div>

     

        <div class="lineaazul">
        </div>
        <div class="main-content fondocolor">
            <div class="container">
                <div class="row show-grid">
                    <div class="span12">
                        <div class="row show-grid clear-both">
                            <div class="span3 sidebar">
                                <div class="text-widget sidebar-block">
                                    <a href="http://premiocafammujer.com.co/site/presentaciones">
                                        <div class="recuadro">
                                            <div class="imagen">
                                                <img src="http://premiocafammujer.com.co/cmsimaginamos_cafam/uploads/galeria/f2b201d7efd74e0edb4f6bc4e15594b3.jpg"></div>
                                            <h3 class="tituloimagen">
                                                Preinscripciones</h3>
                                        </div>
                                        <div class="sombracuadro">
                                            <img src="http://premiocafammujer.com.co/site/assets/img/sombracuadro.png" alt=""></div>
                                    </a>
                                </div>
                            </div>
                            <div class="span9 main-column two-columns-left">
                                <article class=""><h1 class="titulo2">Inscripciones <a class="icono" style="margin-top:10px;" href="http://premiocafammujer.com.co/site/formulariocafam.pdf" target="_blank"><h3 class="descarga">Descargar Formulario</h3> <span aria-hidden="true" class="icon-box-add"></span></a></h1><div class="contimg"> <img alt="imagen" src="http://premiocafammujer.com.co/cmsimaginamos_cafam/uploads/inscripciones/e8698b24ea980fa52fca48065632e16d.jpg" class="img-polaroid" /></div><p class="parrafo"></p> </article>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAFAMConnectionString %>"
        InsertCommand="INSERT INTO Registro(nombre, email, departamento, comentarios) VALUES (@Nombre,@Email,@Departamento,@Comentarios)">
        <InsertParameters>
            <asp:ControlParameter Name="Nombre" ControlID ="TextNombre" DbType="String" />
            <asp:ControlParameter Name="Email" ControlID="TextEmail" />
            <asp:ControlParameter Name="Departamento" ControlID="TextDepartamento" />
            <asp:ControlParameter Name="Comentarios" ControlID="TextComentarios" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

