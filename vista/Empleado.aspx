<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleado.aspx.cs" Inherits="vista.Empleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Formulario Empleados</h1>

    <asp:Label ID="lbl_codigo" runat="server" Text="Código" CssClass="form-label" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="txt_codigo" runat="server" placeholder="E001" CssClass="form-control"></asp:TextBox>

    <asp:Label ID="lbl_nombres" runat="server" Text="Nombres" CssClass="form-label" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="txt_nombres" runat="server" placeholder="Nombre 1 Nombre 2" CssClass="form-control"></asp:TextBox>

    <asp:Label ID="lbl_apellidos" runat="server" Text="Apellidos" CssClass="form-label" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="txt_apellidos" runat="server" placeholder="Apellido 1 Apellido 2" CssClass="form-control"></asp:TextBox>

    <asp:Label ID="lbl_direccion" runat="server" Text="Dirección" CssClass="form-label" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="txt_direccion" runat="server" placeholder="#casa calle avenida lugar" CssClass="form-control"></asp:TextBox>

    <asp:Label ID="lbl_telefono" runat="server" Text="Teléfono" CssClass="form-label" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="txt_telefono" runat="server" placeholder="5555 5555" CssClass="form-control"></asp:TextBox>

    <asp:Label ID="lbl_fn" runat="server" Text="Fecha de Nacimiento" CssClass="form-label" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="txt_fn" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>

    <asp:Label ID="lbl_puestos" runat="server" Text="Puesto" CssClass="form-label" ForeColor="Black"></asp:Label>
    <asp:DropDownList ID="drop_puesto" CssClass="form-select" runat="server">
        <asp:ListItem Value="1">Programador</asp:ListItem>
        <asp:ListItem Value="2">QA</asp:ListItem>
        <asp:ListItem Value="3">Analista</asp:ListItem>
    </asp:DropDownList>
    
    <br />
    <asp:Button ID="btn_crear" CssClass="btn btn-info" runat="server" Text="Crear" OnClick="btn_crear_Click" />

    <asp:Button ID="btn_modificar" CssClass="btn btn-primary" runat="server" Text="Actualizar" OnClick="btn_modificar_Click" Visible="False" />

    <br />
    <h1>Lista de Empleados</h1>

    <asp:Label ID="lbl_mensaje" runat="server" Text="..." CssClass="form-label" ForeColor="Black"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table-responsive" Width="733px" DataKeyNames="id,id_puesto" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btn_select" runat="server" CausesValidation="False" CommandName="Select" Text="Ver" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="btn_eliminar" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="codigo" HeaderText="Codigo" />
            <asp:BoundField DataField="nombres" HeaderText="Nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
            <asp:BoundField DataField="direccion" HeaderText="Dirección" />
            <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
            <asp:BoundField DataField="fecha_nacimiento" HeaderText="Nacimiento" DataFormatString="{0:d}" />
            <asp:BoundField DataField="puesto" HeaderText="Puesto" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

</asp:Content>
