<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroCarro.aspx.cs" Inherits="LocadoraVeiculos.View.CadastroCarro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div> 
    <div>

        <asp:Label ID="lblNome" runat="server" Text="Nome do Carro: "></asp:Label>
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <div>
            <asp:Label ID="lblCor" runat="server" Text="Cor do carro "></asp:Label>
            <asp:TextBox ID="txtCor" runat="server"></asp:TextBox>

        </div>
              
    </div>
            <asp:Label ID="lblAnoVeiculo" runat="server" Text="Ano de Fabricação: "></asp:Label>
            <asp:TextBox ID="txtAnoVeiculo" runat="server"></asp:TextBox>

            
    </div>
    <div>
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" class="waves-effect waves-light btn" OnClick="btnSalvar_Click"/>
        <asp:Button ID="btnEditar" runat="server" Text="Editar" class="waves-effect waves-light btn" OnClick="btnEditar_Click" />
    </div>




<div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LocadoraDBConnectionString %>" SelectCommand="SELECT [carroId], [nome], [cor], [ano] FROM [CarroSet]"></asp:SqlDataSource>
    <asp:GridView ID="gvCarros" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowCommand="gvCarros_RowCommand" DataKeyNames="carroId">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:ButtonField CommandName="comandExcluir" Text="Excluir" />
            <asp:ButtonField CommandName="comandEditar" Text="Editar" />
            <asp:BoundField DataField="carroId" HeaderText="carroId" SortExpression="carroId" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="cor" HeaderText="cor" SortExpression="cor" />
            <asp:BoundField DataField="ano" HeaderText="ano" SortExpression="ano" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</div>



</asp:Content>
