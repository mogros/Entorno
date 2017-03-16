<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteMantenimiento.aspx.cs" Inherits="Inmobiliario.Cliente.ClienteMantenimiento" MasterPageFile="~/Master.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 341px;
        }
        .auto-style8 {
        height: 20px;
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
    
    

    <div id="Container">
        
        <table border="1">
            <tr> <td colspan="2" >
                    <b> REGISTRO DE DEMANDANTES </b> 
                 </td>
            </tr>
            <tr>
                <td > <b> NOMBRE </b>  </td>
                <td class="auto-style5"> 
                    <asp:TextBox ID="txtDescripcion" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99"  ></asp:TextBox>
                    <asp:Label ID="lbltxtDescripcion" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
                       <td rowspan="2">
                    <asp:ImageButton ID="cmbGrabar" runat="server" ImageUrl="~/Imagenes/mas.png" OnClick="cmbGrabar_Click" Height="38px" Width="52px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                    NUEVO
                </td>
                
            </tr>
            <tr>
                <td > <B> TIPO DE DOCUMENTO </B></td>
                <td class="auto-style5"> 
                    <asp:DropDownList ID="ddlTipoDoc" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99" ></asp:DropDownList>
                    <asp:Label ID="lblTipoDoc" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>
            <tr>
                <td > <B> NUMERO DOCUMENTO </B> </td>
                <td class="auto-style5"> 
                    <asp:TextBox ID="txtRuc" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                    <asp:Label ID="lbltxtRuc" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
                 <td rowspan="2">
                    <asp:ImageButton ID="btnModificar" runat="server" ImageUrl="~/Imagenes/Guardar.png" OnClick="btnModificar_Click" />
                    GRABAR

                </td>
            </tr>
            <tr>
                <td > <b> DISTRITO </b></td>
                <td class="auto-style5"> 
                    <asp:DropDownList ID="ddlIdLugar" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99" ></asp:DropDownList>
                    <asp:Label ID="lblddlIdLugar" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>
            
            <tr>
                <td> <b> CALLE </b></td>
                <td class="auto-style5"> 
                    <table>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtDireccion" runat="server" Width="237px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                                <asp:Label ID="lblDireccion" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>   
                            </td>
                            <td>
                                <b> Numero </b>
                                <asp:TextBox ID="txtNumero" runat="server" Width="93px" CssClass="clasico" BackColor="#ffff99" Height="16px" ></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    
             <tr>
                <td > <b> GIRO COMERCIAL </b></td>
                <td class="auto-style5"> 
                    <asp:DropDownList ID="ddlGiroComercial" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99" ></asp:DropDownList>
                    <asp:Label ID="lblGiro" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>

             <tr>
                <td > <b> TIPO EMPRESA </b></td>
                <td class="auto-style5"> 
                    <asp:DropDownList ID="ddlTipoEmpresa" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99" ></asp:DropDownList>
                    <asp:Label ID="lblTipoEmpresa" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>

            <tr>
                <td > <b> EMAIL</b></td>
                <td class="auto-style5"> 
                    <asp:TextBox ID="txtMail" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>


            <tr>
                <td > <b> TELEFONO </b></td>
                <td class="auto-style5"> 
                    <asp:TextBox ID="txtTelefono" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                    <asp:Label ID="lblTelefono" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>
          
            <tr>
                <td > <b> CELULAR </b></td>
                <td class="auto-style5"> 
                    <asp:TextBox ID="txtCelular" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>


            <tr>
                <td > <b> CONTACTO </b></td>
                <td class="auto-style5"> 
                    <asp:TextBox ID="txtContacto" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                    <asp:Label ID="lblContacto" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>

            <tr>
                <td > <b> CARGO </b></td>
                <td class="auto-style5"> 
                    <asp:TextBox ID="txtCargo" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                    <asp:Label ID="lblCargo" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>

            <tr>
                <td > <B> OBSERVACION </B> </td>
                <td class="auto-style5"> 
                    <asp:TextBox ID="txtObservacion" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                </td>
            </tr>

                        <tr>
                <td > <b> USUARIO </b></td>
                <td class="auto-style5"> 
                    <asp:TextBox ID="txtUsuario" runat="server" Width="336px" CssClass="clasico" BackColor="#ffff99" ></asp:TextBox>
                    <asp:Label ID="lblUsuario" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>   
                </td>
            </tr>


            <tr>
                <td > </td>
                <td > 
                                        <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   
                                        <asp:Label ID="lblIdCliente" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>   

                </td>
            </tr>



            <tr >
                <td colspan="2" class="auto-style8"> <center> LISTA DE CLIENTES </center> </td>
            </tr>
            <tr>
                <td></td>
                <td>
            
                    <asp:GridView  runat="server" ID="dg"
                        CellPadding="4" ForeColor="#333333" CellSpacing="2" HorizontalAlign="Justify"
                        DataKeyNames="IdCliente,Descripcion,Documento,Numero,IdZona,Zona,Telefono,Direccion,Observacion,idTipoDocumento"
                        AutoGenerateColumns="False"  BorderStyle="Solid" Width="157px" Font-Size="10pt" style="margin-right: 0px" OnSelectedIndexChanged="dg_SelectedIndexChanged">

                        <AlternatingRowStyle BackColor="White" />

                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />


                            <asp:BoundField DataField="IdCliente" HeaderText="ID" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" Visible="true" ItemStyle-Width="1" ><ItemStyle Width="1px" Wrap="False"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="Documento" HeaderText="Documento" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                            <asp:BoundField DataField="Numero" HeaderText="Numero" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                            <asp:BoundField DataField="Zona" HeaderText="Zona" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                            
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                            <asp:BoundField DataField="Direccion" HeaderText="Direccion" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                            <asp:BoundField DataField="Observacion" HeaderText="Observacion" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                            
                            <asp:BoundField DataField="IdZona" HeaderText="" ReadOnly="True" Visible="true"  ControlStyle-BorderStyle="None"  > <ItemStyle ForeColor="White"  BorderStyle="None"/> </asp:BoundField>
                            <asp:BoundField DataField="idTipoDocumento" HeaderText="" ReadOnly="True" Visible="true" ControlStyle-ForeColor="White" ControlStyle-BorderStyle="None"  >  
                                <ItemStyle ForeColor="White"  BorderStyle="None"/>
                            </asp:BoundField>

                            <asp:BoundField DataField="mail" HeaderText="" ReadOnly="True" Visible="true" ControlStyle-ForeColor="White" ItemStyle-Width="10px" ControlStyle-BorderStyle="None" >  
                                <ItemStyle ForeColor="White"  BorderStyle="None"/>
                            </asp:BoundField>
                            <asp:BoundField DataField="IdGiroComercial" HeaderText="" ReadOnly="True" Visible="true" ControlStyle-ForeColor="White" >  
                                <ItemStyle ForeColor="White"  BorderStyle="None"/> 
                            </asp:BoundField>
                            <asp:BoundField DataField="IdTipoEmpresa" HeaderText="" ReadOnly="True" Visible="true" ControlStyle-ForeColor="White" >  
                                <ItemStyle ForeColor="White"  BorderStyle="None"/> 
                            </asp:BoundField>
                            <asp:BoundField DataField="celular" HeaderText="" ReadOnly="True" Visible="true" ControlStyle-ForeColor="White" >  
                                <ItemStyle ForeColor="White"  BorderStyle="None"/> 
                            </asp:BoundField>
                            <asp:BoundField DataField="Contacto" HeaderText="" ReadOnly="True" Visible="true" ControlStyle-ForeColor="White" >  
                                <ItemStyle ForeColor="White"  BorderStyle="None"/> 
                            </asp:BoundField>
                            <asp:BoundField DataField="ContactoCargo" HeaderText="" ReadOnly="True" Visible="true" ControlStyle-ForeColor="White" >  
                                <ItemStyle ForeColor="White"  BorderStyle="None"/> 
                            </asp:BoundField>
                            <asp:BoundField DataField="NumeroCalle" HeaderText="" ReadOnly="True" Visible="true" ControlStyle-ForeColor="White" >  
                                <ItemStyle ForeColor="White"  BorderStyle="None"/> 
                            </asp:BoundField>
                            <asp:BoundField DataField="usuario" HeaderText="" ReadOnly="True" Visible="true" ControlStyle-ForeColor="White" >  
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
        
                </td>

                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagenes/Quitar3.png" OnClick="ImageButton1_Click" Height="27px" Width="31px" style="margin-left: 14px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                    Eliminar
                </td>
            </tr>

            <tr>

                <td></td>
                <td>


                </td>

            </tr>
        </table>    
        
        <p></p>


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
                <asp:Button ID="btncancelar" runat="server" Text="Ok" Width="87px" Height="36px"></asp:Button>

            </div>
        </div>


 </asp:Content>