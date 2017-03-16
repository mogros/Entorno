<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TerrenoMantenimiento.aspx.cs" Inherits="Inmobiliario.Terreno.TerrenoMantenimiento" MasterPageFile="~/Master.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 341px;
        }
        .auto-style6 {
            height: 23px;
        }
        </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../Scripts/jquery-1.11.3.min.js"></script>
    <link href="../PlantllasCSS/0001.css" rel="stylesheet" />


  <script>
      //function DesactivarBoton() {

      //    document.getElementById("procesando").style.display = "block";
      //}
      //window.onbeforeunload = DesactivarBoton;

      function openVentana_msj() {

          $(".ventana_grid").slideDown("slow");
      }
      function cloceVentana_msj() {

          $(".ventana_grid").slideUp("fast");
      }

      function OcultarLblDes() {
          document.getElementById('lbltxtDescripcion').innerHTML = '';
      }


    </script>


    
    <div id="Container">
        
        

        <table border="1">
            <tr> <td colspan="2" >
                    <b> REGISTRO DE TERRENOS</b> 
                 </td>
                <td></td>
            </tr>

            <tr>
                <td>
                    <table border="1">
                        <tr>
                            <td > <b> Descripcion </b> </td>
                            <td class="auto-style5"> 
                                <asp:TextBox ID="txtDescripcion" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                                <asp:Label ID="lblDescripcion" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                            </td>
                            <td rowspan="2">
                                   <center>
                                        <asp:ImageButton ID="cmbGrabar" runat="server" ImageUrl="~/Imagenes/mas.png" OnClick="cmbGrabar_Click" Height="38px" Width="52px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                                        <b> NUEVO </b> 
                                   </center>
                            </td>
                        </tr>

                        <tr>
                            <td > <b> Propietario </b> </td>
                            <td class="auto-style5"> 
                                <asp:TextBox ID="txtPropietario" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                            </td>
                        </tr>

                          <tr>
                                <td > <b> Direccion</b> </td>
                                <td class="auto-style5"> 
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtDireccion" Width="253px" runat="server" CssClass="clasico" BackColor="#ffff99" Height="16px"  ></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtNumero" Width="95px" runat="server" CssClass="clasico" BackColor="#ffff99" Height="16px"  ></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                        <tr>
                                <td > <b> Lugar </b> </td>
                                <td class="auto-style5"> 
                                    <asp:DropDownList ID="ddlIdLugar" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99" ></asp:DropDownList>
                                    <asp:Label ID="lblddlIdLugar" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                </td>
                            </tr>

                        <tr>
                                <td > <b> Tipo de terreno </b> </td>
                                <td class="auto-style5"> 
                                    <asp:DropDownList ID="ddlTipoTerreno" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99" ></asp:DropDownList>
                                    <asp:Label ID="lblTipoTerreno" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                </td>
                        </tr>

                        <tr>
                            <td > <b> Metraje </b> </td>
                            <td class="auto-style5"> 
                                <asp:TextBox ID="txtMetraje" runat="server" CssClass="clasico" BackColor="#ffff99" Width="336px" style="margin-bottom: 0px"></asp:TextBox>
                                <asp:Label ID="lblMetraje" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                            </td>

                            <td rowspan="2">
                                <center>
                                    <asp:ImageButton ID="btnModificar" runat="server" ImageUrl="~/Imagenes/Guardar.png" OnClick="btnModificar_Click" BorderStyle="Solid" BorderWidth="1px" />
                                    <b> MODIFICAR</b>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td > <b> Costo </b> </td>
                            <td class="auto-style5"> 
                                <asp:TextBox ID="txtCosto" runat="server" CssClass="clasico" BackColor="#ffff99" Width="336px" style="margin-bottom: 0px"></asp:TextBox>
                                <asp:Label ID="lblCosto" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                            </td>
                        </tr>

                        <tr>
                            <td > <b> Cantidad de pisos permitido </b> </td>
                            <td class="auto-style5"> 
                                <asp:TextBox ID="txtCantidadPisos" runat="server" CssClass="clasico" BackColor="#ffff99" Width="336px" style="margin-bottom: 0px"></asp:TextBox>
                                <asp:Label ID="lblCantidadPisos" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                            </td>
                        </tr>

                        <tr>
                            <td > <b> Foto 1 </b> </td>
                            <td class="auto-style5"> 
                                    <asp:FileUpload ID="fu1" runat="server" /> <asp:Button ID="btnVerImagen1" runat="server" Text="Ver Imagen" OnClick="btnVerImagen1_Click" />
                                    <br />
                                    <asp:Label ID="lblImagen1" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                    <asp:Label ID="lblRuta1" runat="server" Text="" ForeColor="White" Font-Bold="True"></asp:Label>   
                                    <br />
                                    <asp:Image ID="Image1" runat="server" Height="158px" Width="304px"  onchange="showimagepreview(this)" />   
                            </td>
                        </tr>
                        <tr>
                            <td > <b> Foto 2</b> </td>
                            <td class="auto-style5"> 
                                    <asp:FileUpload ID="fu2" runat="server" />    <asp:Button ID="btnImagen2" runat="server" Text="Ver Imagen" OnClick="btnImagen2_Click" />
                                    <br />
                                    <asp:Label ID="lblImagen2" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                    <asp:Label ID="lblRuta2" runat="server" Text="" ForeColor="White" Font-Bold="True"></asp:Label>   
                                    <br />
                                    <asp:Image ID="Image2" runat="server" Height="174px" Width="300px" />                               
                            </td>
                        </tr>

                        <tr>
                            <td>
                    
                            </td>
                            <td>
                               <asp:Label ID="lblIdOficina" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                            </td>

                        </tr>
                       
                    <tr>
                                <td>
                                    <b> PARAMETROS DE LA OFICINA </b> 
                                </td>
                                <td class="auto-style5">
                                    <table>
                                        <tr>
                                            <td> Selecciones Parametro </td>
                                            <td> Cantidad </td>
                                            <td> Costo </td>
                                        </tr>
                                        <tr>
                                            <td>  
                                                <asp:DropDownList ID="ddplParametros" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99" AutoPostBack="true"></asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCantidad" runat="server" CssClass="clasico" BackColor="#ffff99" Width="74px" style="margin-bottom: 0px" Height="16px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCostoParametro" runat="server" CssClass="clasico" BackColor="#ffff99" Width="74px" style="margin-bottom: 0px" Height="16px"></asp:TextBox>
                                            </td>

                                            <td>
                                                <asp:Button ID="btnAgregarParametro" runat="server" Text="Agregar" OnClick="btnAgregarParametro_Click" />

                                            </td>
                                        </tr>

                                    </table>
                         
                                </td>
                            
                        </tr>
                    </table>
                </td>
                
                <td>
                    <table style="margin-top: 0px">
                        <tr>
                            <td colspan="2" class="auto-style6"> <center> LISTA DE TERRENOS </center> </td>
                        </tr>


                        <tr>
                            <td></td>
                        <td>            
                            <asp:GridView  runat="server" ID="DG"
                                CellPadding="4" ForeColor="#333333" CellSpacing="2" HorizontalAlign="Justify"
                                AutoGenerateColumns="False"  BorderStyle="Solid" Width="157px" Font-Size="10pt" style="margin-right: 0px" OnSelectedIndexChanged="DG_SelectedIndexChanged">

                                <AlternatingRowStyle BackColor="White" />

                                <Columns>
                            
                                    <asp:CommandField ShowSelectButton="True" />
                            
                                    <asp:BoundField DataField="IdTerreno" HeaderText="ID" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px" Wrap="False"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="metraje" HeaderText="metraje" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                    <asp:BoundField DataField="costo" HeaderText="costo" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                   
                                    <asp:BoundField DataField="RutaFoto1" HeaderText="RutaFoto1" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                    <asp:BoundField DataField="RutaFoto2" HeaderText="RutaFoto2" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                     <asp:BoundField DataField="propietario" HeaderText="propietario" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                    
                                     <asp:BoundField DataField="ubicacion" HeaderText="ubicacion" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                     <asp:BoundField DataField="numero" HeaderText="numero" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                     <asp:BoundField DataField="IdLugar" HeaderText="" ReadOnly="True" Visible="true"  >                                 
                                         <ItemStyle ForeColor="White"  BorderStyle="None"/>
                                        </asp:BoundField>
                                     <asp:BoundField DataField="IdTipoTerreno" HeaderText="" ReadOnly="True" Visible="true"  >
                                        <ItemStyle ForeColor="White"  BorderStyle="None"/>
                                     </asp:BoundField>
                                    
                                </Columns>

                                <EmptyDataTemplate>
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                </EmptyDataTemplate>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#98C5FC" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Top" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />

                                <SelectedRowStyle BackColor="#FFFBD6" Font-Bold="True" ForeColor="Navy" />

                                <SortedAscendingCellStyle HorizontalAlign="Center" BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle HorizontalAlign="Center" BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />

                            </asp:GridView>

                                                <br />
                            <asp:GridView  runat="server" ID="DGOficinaParametros"
                                CellPadding="4" ForeColor="#333333" CellSpacing="2" HorizontalAlign="Justify"
                                AutoGenerateColumns="False"  BorderStyle="Solid" Width="228px" Font-Size="10pt" style="margin-right: 0px"  Height="107px">

                                <AlternatingRowStyle BackColor="White" />

                                <Columns>

                                    <asp:BoundField DataField="Descripcion" HeaderText="Parametros" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px" Wrap="False"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px" Wrap="False" HorizontalAlign="Center" ></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="costo" HeaderText="costo" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px" Wrap="False" HorizontalAlign="Center" ></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="subtotal" HeaderText="subtotal" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px" Wrap="False" HorizontalAlign="Center" ></ItemStyle>
                                    </asp:BoundField>
                            
                                </Columns>

                                <EmptyDataTemplate>
                                    <asp:HiddenField ID="HiddenField2" runat="server" />
                                </EmptyDataTemplate>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#98C5FC" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Top" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />

                                <SelectedRowStyle BackColor="#FFFBD6" Font-Bold="True" ForeColor="Navy" />

                                <SortedAscendingCellStyle HorizontalAlign="Center" BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle HorizontalAlign="Center" BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />

                            </asp:GridView>



                        </td>

                        <td rowspan="2">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagenes/Quitar3.png" Height="27px" Width="31px" style="margin-left: 14px" BorderStyle="Solid" BorderWidth="1px" />
                            BORRAR

                        </td>

                    </tr>

                    </table>

                </td>
            </tr>





                 


        </table>    
        
        <p></p>


    </div>

 </asp:Content>