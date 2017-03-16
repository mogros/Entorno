<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OficinaConsulta.aspx.cs" Inherits="Inmobiliario.Edificio.OficinaConsulta" MasterPageFile="~/Master.master"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 680px;
            height: 27px;
        }
        .auto-style5 {
            width: 236px;
        }
        .auto-style6 {
            width: 297px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../Scripts/jquery-1.11.3.min.js"></script>
    <link href="../Plantilla/0001.css" rel="stylesheet" />
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

    </script>

            <div class="ventana_grid" >
            <div class="form_grid">
                
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="250px" Width="250px"  onchange="showimagepreview(this)" />   
                <br />
                <br />
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancelar" runat="server" Text="Ok" Width="87px" OnClick="btncancelar_Click" Height="36px"></asp:Button>

            </div>
        </div>


    <div id="Container">


        <table class="clasico">

            <thead>
                <tr>
                    <th colspan="2" class="auto-style4"> CONSULTA </th>
                </tr>
            </thead>
            <tr>
                <td style="border-width: 1px; border: solid; border-color: #000000;"> <b> Tipo Inmueble </b></td>
                <td style="border-width: 1px; border: solid; border-color: #000000;">
                    <asp:RadioButton ID="rbOficina" runat="server" Text="Oficina" GroupName="Tipo" AutoPostBack="true" OnCheckedChanged="rbOficina_CheckedChanged"/>
                    <asp:RadioButton ID="rbTerreno" runat="server" Text="Terreno" GroupName="Tipo" AutoPostBack="true" OnCheckedChanged="rbTerreno_CheckedChanged" />                  
                    <asp:RadioButton ID="rbLocalComercial" runat="server" Text="Local Comercial" GroupName="Tipo" AutoPostBack="true" OnCheckedChanged="rbLocalComercial_CheckedChanged" />                  
                
                    <asp:DropDownList ID="ddlTipoTerreno" Width="336px" runat="server" CssClass="clasico" BackColor="#ffff99" ></asp:DropDownList>
                    <asp:DropDownList ID="ddlTipoLocal" Width="190px" runat="server" CssClass="clasico" BackColor="#ffff99" ></asp:DropDownList>

                </td>

                <td></td>
            </tr>

            <tr>
                <td style="border-width: 1px; border: solid; border-color: #000000;" rowspan="2"> <b> Parametros de consulta </b></td>
                <td style="border-width: 1px; border: solid; border-color: #000000;">
                    <table>
                        <tr> <td>
                            <b> Metraje </b> 
                             </td> 
                            <td> <b> Costo </b> </td> 
                            <td>  </td> 
                        </tr>
                        <tr> <td>
                             <asp:TextBox ID="txtMetraje" runat="server" Width="100"></asp:TextBox>
                             </td> 
                            <td>  <asp:TextBox ID="txtCosto" runat="server" Width="100"></asp:TextBox>  </td> 
                            <td>  </td> 
                        </tr>
                        <tr>
                            <td>
                                 <asp:RadioButton ID="rbEstadoReal" runat="server" Text="Estado Real " GroupName="Estado" AutoPostBack="True" OnCheckedChanged="rbEstadoReal_CheckedChanged"/>
                                 <asp:DropDownList ID="ddlEstado" runat="server"></asp:DropDownList>  
                            </td>
                            <td>
                                <asp:RadioButton ID="rbEstadoPotencial" runat="server" Text="Estado potencial" GroupName="Estado" AutoPostBack="True" OnCheckedChanged="rbEstadoPotencial_CheckedChanged"/> 
                                 <asp:DropDownList ID="ddlEstadoPotencial" runat="server" Visible="false"></asp:DropDownList>  
                            </td>
                            <td> <b> Fecha </b> 
                                <asp:TextBox ID="txtFecha" runat="server" Width="80" Enabled="false"></asp:TextBox>
                            </td> 
                            <td>
                                <asp:ImageButton ID="btnCalendario" runat="server" Height="20px" ImageUrl="~/Imagenes/Calendario.jpg" OnClick="btnCalendario_Click" />
                            </td>
                            <td>
                                <asp:Calendar ID="Calendar1" runat="server" Visible="False" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                </asp:Calendar>

                            </td>
                        </tr>
                    </table>
                </td>
                <td>   </td>
                <td rowspan="3">
                    

                </td>
            </tr>

            <tr>
                <td style="font-weight: bold; border-width: 1px; border: solid; border-color: #000000;"">

                    <asp:GridView  runat="server" ID="DGParametros"
                                        CellPadding="4" ForeColor="#333333" CellSpacing="2" HorizontalAlign="Justify"
                                        AutoGenerateColumns="False"  BorderStyle="Solid" Width="157px" Font-Size="10pt" style="margin-right: 0px">

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

                </td>
            </tr>
            <tr>
                <td></td>
                <td style="font-weight: bold; border-width: 1px; border: solid; border-color: #000000;"">
                                           <b> Lugar </b>  <asp:DropDownList ID="ddlLugar" runat="server"></asp:DropDownList> 
                                <asp:ImageButton ID="ImageButton4" runat="server" BorderStyle="Solid" BorderWidth="1px" ToolTip="Alquilar" Style="text-align: center; " ImageUrl="~/Imagenes/Agregar01.jpg" OnClick="ImageButton4_Click" Height="27px" Width="28px" />
                                <asp:ImageButton ID="ImageButton5" runat="server" BorderStyle="Solid" BorderWidth="1px" ToolTip="Cancelar" Style="text-align: center; " ImageUrl="~/Imagenes/Eliminar.jpg" OnClick="ImageButton5_Click" Height="28px" Width="30px"  />
<br />                                                    <asp:ListBox ID="lstLugar" runat="server" Visible="false"></asp:ListBox>

                </td>
            </tr>
            <tr>
                <td></td>
                <td style="font-weight: bold; border-width: 1px; border: solid; border-color: #000000;">
                    <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="Solid" BorderWidth="1px" ToolTip="Buscar Pedido" Style="text-align: center; height: 52px;" ImageUrl="~/Imagenes/bUSCAR.png" OnClick="ImageButton1_Click" />
                    <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>

            </tr>


        </table>

        <table>
            <tr>
                <td>
                           

                </td>
            </tr>
            <tr>
                <td> 
                    <h1> LISTA DE LOCALES</h1>
                    <asp:GridView runat="server" ID="DGCp" AllowPaging="false"
                        CellPadding="4" ForeColor="#333333" CellSpacing="2" HorizontalAlign="Justify"
                        DataKeyNames="ID,descripcion,metraje,costo,IdUbigeo,Lugar,Estado,RutaFoto"
                        AutoGenerateColumns="False"  BorderStyle="Solid" Width="855px" Font-Size="10pt" OnRowDataBound="DGCp_RowDataBound">
                        <AlternatingRowStyle BackColor="White" />

                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                            <asp:ImageButton ID="btnverobs" runat="server" OnClick="btnverobs_Click" ImageUrl="~/Imagenes/check2.png" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" Visible="true" ItemStyle-Width="1" ></asp:BoundField>
                            <asp:BoundField DataField="descripcion" HeaderText="descripcion" ReadOnly="True" Visible="true"  > <ItemStyle Wrap="False" /> </asp:BoundField>
                            <asp:BoundField DataField="metraje" HeaderText="metraje" ReadOnly="True" Visible="true"  ></asp:BoundField>
                            <asp:BoundField DataField="costo" HeaderText="costo" ReadOnly="True" Visible="true"  ></asp:BoundField>
                            <asp:BoundField DataField="IdUbigeo" HeaderText="IdUbigeo"></asp:BoundField>
                            <asp:BoundField DataField="Lugar" HeaderText="Lugar" >
                            <ItemStyle Wrap="False" />
                            </asp:BoundField>
 
                            <asp:BoundField DataField="RutaFoto" HeaderText="RutaFoto" >
                            </asp:BoundField>

                            
                            <asp:BoundField DataField="Estado" HeaderText="Estado" >
                            <ItemStyle Wrap="False" />
                            </asp:BoundField>

                            <asp:TemplateField>
                                <ItemTemplate>
                                            <asp:ImageButton ID="btnVerFoto" runat="server" OnClick="btnVerFoto_Click" ImageUrl="~/Imagenes/Lupa.png" />
                                </ItemTemplate>
                            </asp:TemplateField>

                       <%-- <asp:TemplateField>
                                <ItemTemplate>
                                    <a href="javascript:window.open('/WebPedido/CuadroCosto/FlujoCaja.aspx?ID_CUADROCOSTO=<%#Eval("CuadroCosto")%>','','width=1300,height=600,left=5,top=30,toolbar=yes');void 0">
                                        <asp:Image ID="as" runat="server" ImageUrl="~/Imagenes/cc.png" /></a>

                                </ItemTemplate>
                            </asp:TemplateField>--%>
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
            </tr>
        </table>
    </div>



</asp:Content>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>--%>
