<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EdificioMantenimiento.aspx.cs" Inherits="Inmobiliario.Edificio.EdificioMantenimiento" MasterPageFile="~/Master.master" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<%--<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 390px;
        }
        .auto-style6 {
            width: 579px;
        }
        .auto-style7 {
            width: 80px;
        }
        .clasico {}
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
    

    <script type="text/javascript">

        function showimagepreview(input) {

            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {

                    document.getElementsByTagName("Image1")[0].setAttribute("src", e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>  
- 

    

    <div id="Container">
        
        <table border="1">         
            <tr> 
                <td colspan="2" >
                    <b> REGISTRO DE EDIFICIOS </b> 
                 </td>
                <td></td>
            </tr>


            <tr>

                <td class="auto-style6">

                    <table border="1">
                           
                         <tr>
                                <td > <b> Nombre Edificio  </b> </td>
                                <td class="auto-style5"> 
                                    <asp:TextBox ID="txtDescripcion" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99"  ></asp:TextBox>
                                    <asp:Label ID="lbltxtDescripcion" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                </td>
                                <td rowspan="3" class="auto-style7">
                                    <center>
                                    <asp:ImageButton ID="cmbGrabar" runat="server" ImageUrl="~/Imagenes/mas.png" OnClick="cmbGrabar_Click" Height="30px" Width="29px" BorderStyle="Solid" BorderWidth="1px" />
                                    <b> NUEVO </b> 
                                    </center>
                                </td>
                            </tr>


                         <tr>
                                <td > <b> Propietario  </b> </td>
                                <td class="auto-style5"> 
                                    <asp:TextBox ID="txtPropietario" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99"  ></asp:TextBox>
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
                                <td > <b> Numero de pisos  </b> </td>
                                <td class="auto-style5"> 
                                    <asp:TextBox ID="txtPisos" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                                    <asp:Label ID="lbltxtPisos" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                </td>
                                <td rowspan="2">
                                    <center>
                                    <asp:ImageButton ID="btnModificar" runat="server" ImageUrl="~/Imagenes/Guardar.png" OnClick="btnModificar_Click" BorderStyle="Solid" BorderWidth="1px" Height="37px" Width="41px" />
                                    <b>MODIFICAR</b> 
                                    </center>
                                </td>

                        </tr>
    
                        <tr>
                                <td > <b> Costo  </b> </td>
                                <td class="auto-style5"> 
                                    <asp:TextBox ID="txtCosto" runat="server" CssClass="clasico" BackColor="#ffff99" Width="336px" style="margin-bottom: 0px"></asp:TextBox>
                                    <asp:Label ID="lbltxtCosto" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                </td>

                        </tr>

                             
                        <tr>
                                <td ><b> Foto 1  </b> </td>
                                <td class="auto-style5"> 
                                    <asp:FileUpload ID="fu1" runat="server" /> <asp:Button ID="btnVerImagen1" runat="server" Text="Ver Imagen" OnClick="btnVerImagen1_Click" />
                                    <br />
                                    <asp:Label ID="lblImagen1" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                    <asp:Label ID="lblRuta1" runat="server" Text="" ForeColor="White" Font-Bold="True"></asp:Label>   
                                    <br />
                                    <asp:Image ID="Image1" runat="server" Height="166px" Width="282px"  onchange="showimagepreview(this)" />   
                                </td>
                            
                        </tr>

                            
                        <tr>
                                <td ><b> Foto 2  </b> </td>
                                <td class="auto-style5"> 
                                    <asp:FileUpload ID="fu2" runat="server" />    <asp:Button ID="btnImagen2" runat="server" Text="Ver Imagen" OnClick="btnImagen2_Click" />
                                    <br />
                                    <asp:Label ID="lblImagen2" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                    <asp:Label ID="lblRuta2" runat="server" Text="" ForeColor="White" Font-Bold="True"></asp:Label>   
                                    <br />
                                    <asp:Image ID="Image2" runat="server" Height="153px" Width="288px" />                       
                                </td>
                            
                        </tr>

                           
                        <tr>
                                <td>
                                    <b> PARAMETROS DEL EDIFICIO </b> 
                                </td>
                                <td class="auto-style5">    

                                    <asp:GridView  runat="server" ID="DGParametros"
                                        CellPadding="4" ForeColor="#333333" CellSpacing="2" HorizontalAlign="Justify"
                                        AutoGenerateColumns="False"  BorderStyle="Solid" Width="157px" Font-Size="12pt" style="margin-right: 0px">

                                        <AlternatingRowStyle BackColor="White" />

                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="CheckBox1" runat="server" />

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Parametro" HeaderText="Parametro" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
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

                                    <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                    <asp:Label ID="lblIdEdificio" runat="server" Text="" ForeColor="White" Font-Bold="True"></asp:Label>   
                                </td>
                            
                        </tr>

                    </table>
          
                </td>
                
                <td>
                     
                    <table>
                         
                        <tr>

                             <td>

                               <asp:GridView  runat="server" ID="DGEdificio"
                                CellPadding="4" ForeColor="#333333" CellSpacing="2" HorizontalAlign="Justify"
                                AutoGenerateColumns="False"  BorderStyle="Solid" Width="133px" Font-Size="12pt" style="margin-right: 0px; margin-top: 0px;" OnSelectedIndexChanged="DGEdificio_SelectedIndexChanged" Height="384px" >

                                <AlternatingRowStyle BackColor="White" />

                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />


                                    <asp:BoundField DataField="IdEdificio" HeaderText="ID" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px" Wrap="False"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NumeroPisos" HeaderText="NumeroPisos" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                    <asp:BoundField DataField="Lugar" HeaderText="Lugar" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                    <asp:BoundField DataField="Costo" HeaderText="Costo" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                    <asp:BoundField DataField="IdLugar" HeaderText="" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="True" ForeColor="White" /> </asp:BoundField>

                                    <asp:BoundField DataField="RutaFoto1" HeaderText="RutaFoto1" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                    <asp:BoundField DataField="RutaFoto2" HeaderText="RutaFoto2" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                            
                            
                                    <asp:BoundField DataField="direccion" HeaderText="direccion" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                    <asp:BoundField DataField="numero" HeaderText="numero" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                                    <asp:BoundField DataField="propietario" HeaderText="propietario" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                            
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
                            <asp:GridView  runat="server" ID="DGEdificioParametros"
                                CellPadding="4" ForeColor="#333333" CellSpacing="2" HorizontalAlign="Justify"
                                AutoGenerateColumns="False"  BorderStyle="Solid" Width="228px" Font-Size="12pt" style="margin-right: 0px" OnSelectedIndexChanged="DGEdificio_SelectedIndexChanged" Height="107px">

                                <AlternatingRowStyle BackColor="White" />

                                <Columns>

                                    <asp:BoundField DataField="Descripcion" HeaderText="Parametros" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px"></ItemStyle>
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

                             </td>

                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagenes/Quitar3.png" OnClick="ImageButton1_Click" Height="27px" Width="31px" style="margin-left: 14px" BorderStyle="Solid" BorderWidth="1px" />
                                <b> Eliminar </b> 
                            </td>

                         </tr>
                     </table>
              
                </td>
            
            </tr>
           
          </table>    
        
    </div>

        <div class="ventana_grid" style="display:none;">
            <div class="form_grid">
                
                <asp:Label runat="server" ID="lblTexto" Text=""> holaaa</asp:Label>
                <br />
                <br />

                
                <asp:GridView ID="dg1" runat="server">
                <HeaderStyle BackColor="#98C5FC" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Top" />
            
                </asp:GridView>

                <br />
                <br />
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancelar" runat="server" Text="Ok" Width="87px" OnClick="btncancelar_Click" Height="36px"></asp:Button>

            </div>
        </div>


 </asp:Content>