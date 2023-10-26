<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="apiYoutube.aspx.cs" Inherits="mi_portafolio_anav_.apiYoutube" Async="true" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

          <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css"/>
      <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
      <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

    <script>
        function reproducirVideo(VideoId) {

            var srcVideo = "https://www.youtube.com/embed/" + VideoId + "?autoplay=1&loop=1";
            $("#frameVideo").attr("src", srcVideo);

        }
    </script>


    </asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container2" style="padding-top:130px">
    <div class="row" style="text-align:center; font-size:larger" >
        <div class="col-md-4">
            <div class="form-group">
                 <label for="txBuscar">Buscar</label>
                <asp:TextBox ID="txBuscar" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <br />
            <h1>Videos</h1>
            <asp:GridView runat="server" ID="gridVideos" AutoGenerateColumns="false" CssClass="table-responsive table table-borderer" >
                <Columns>
                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" />
                    <asp:TemplateField HeaderText="Imagen">
                            <ItemTemplate>
                                 <asp:Image ID="Image1" runat="server" 
                                           ImageUrl='<%# Eval("Imagen") %>' Width="100px" />
                            </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Imagen">
                          <ItemTemplate>
                              <a href="javascript:reproducirVideo('<%# Eval("VideoId") %>')">reproducir</a>
                            
                          </ItemTemplate>
                  </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>

        <div class="col-md-6">
            <iframe id="frameVideo" width="100%" height="450px" src="" frameborder="0" allow="autoplay" encrypted-media allowfullscreen></iframe>
        </div>

    </div>
</div>


</asp:Content>
