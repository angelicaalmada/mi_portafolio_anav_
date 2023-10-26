<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="mi_portafolio_anav_._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <section id="inicio">
            <div class="contenido">
        <div class="presentacion">
    <h1 class="bienvenida">Bienvenidos</h1>
    <h3>Soy <asp:Label ID="lblNombre1" runat="server" Text=""></asp:Label></br> Estudiante de Tecnologias de la informacion</h3>
    
    </div>
        </div>
         </section>
    <!-- SECCION S O B R E M I -->
    <section id="sobremi">
        <div class="contenedor-foto">
            <img src="img/sola.jpg" alt="" />
        </div>
        <div class="sobremi">
            <p class="titulo-seccion">Sobre Mi</p>
            <h2>Hola, Soy 
        <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            </h2>
            <h3>Estudiante de Tecnologias de la informacion</h3>
            <p>
                <asp:Label ID="lblDescripcion" runat="server" Text=""></asp:Label>
            </p>
            <a href="img/curriculum.jpg" target="_blank">Descargar CV</a>
        </div>
    </section>

   <!-- SECCION MIS INTERESES -->
    <section id="misintereses">
        <h2 class="titulo-seccion">MIS INTERESES</h2>
            <div class="intereses">           

                     
                    <div class="intereses">
                    <i class="fa-solid fa-headphones"></i>
                    <span> <a href="apiYoutube" target="_blank">MUSICA/VIDEOS</a> </span>
                    </div>

                    <div class="interes">
                    <i class="fa-solid fa-camera"></i>
                    <span><a href="/fotos.aspx" target="_blank">FOTOS</a> </span>
                    </div>
                </div>      
    </section>

    <!-- SECCION MIS PROYECTOS -->
    <section id="misproyectos">
        <h3 class="titulo-seccion">Mis Proyectos</h3>
       <div class="fila">
            <asp:Repeater ID="rptProyectos" runat="server">
                <ItemTemplate>
                

                    <div class="proyecto">
                        <div class="overlay"></div>
                        <a href="<%# DataBinder.Eval(Container.DataItem, "proyectoURL") %>" target="_blank">
                            <img src="<%# DataBinder.Eval(Container.DataItem, "imgURL") %>" alt=""></a>
                        <div class="info">
                            <p><strong><%# DataBinder.Eval(Container.DataItem, "NombreProyecto") %></strong></p>
                            <p><%# DataBinder.Eval(Container.DataItem, "DescripcionProyecto") %></p>
                            <p><%# DataBinder.Eval(Container.DataItem, "UsoTecnologias") %></p>
                             

                        </div>
                    </div>

                     <%# (((Container.ItemIndex+1) % 3) == 0)?" </div><div class=\"fila\">" :""%>
                  
                </ItemTemplate>
            </asp:Repeater>
           </div>
    </section>

</asp:Content>
