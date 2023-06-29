<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="Web_Project_ASP.Admin.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Item</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">

        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="form-group">
                <label>Product Name</label>
                <asp:TextBox ID="txtItemName" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Description</label>
                <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Price</label>
                <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Quantity</label>
                <asp:TextBox ID="txtQty" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Image</label>
                <asp:FileUpload ID="fileUpload1" CssClass="form-control" runat="server"></asp:FileUpload>
            </div>
            <div class="form-group">
                <label>Image1</label>
                <asp:FileUpload ID="fileUpload2" CssClass="form-control" runat="server"></asp:FileUpload>
            </div>
            <div class="form-group">
                <label>Image2</label>
                <asp:FileUpload ID="fileUpload3" CssClass="form-control" runat="server"></asp:FileUpload>
            </div>
            <div class="form-group">
                <label>Image3</label>
                <asp:FileUpload ID="fileUpload4" CssClass="form-control" runat="server"></asp:FileUpload>
            </div>
            <div class="form-group">
                <label>Category</label>
                <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>

            <div class="form-group">
                <asp:Button ID="btnAddItem" CssClass="btn btn-success btn-lg" runat="server" Text="ADD PRODUCT" OnClick="btnAddItem_Click" />
            </div>



        </div>

         <div class="col-sm-2"></div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="table">
                <asp:GridView ID="Gridview1" CssClass="table" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="IID" HeaderText="IID" InsertVisible="False" ReadOnly="True" SortExpression="IID" />
                        <asp:BoundField DataField="IName" HeaderText="IName" SortExpression="IName" />
                        <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                        <asp:BoundField DataField="Qnt" HeaderText="Qnt" SortExpression="Qnt" />
                        <asp:BoundField DataField="Image1" HeaderText="Image1" SortExpression="Image1" />
                        <asp:BoundField DataField="Image2" HeaderText="Image2" SortExpression="Image2" />
                        <asp:BoundField DataField="Image3" HeaderText="Image3" SortExpression="Image3" />
                        <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" DeleteCommand="DELETE FROM [ItemMast] WHERE [IID] = @IID" InsertCommand="INSERT INTO [ItemMast] ([IName], [Detail], [price], [Image], [Qnt], [Image1], [Image2], [Image3], [CName]) VALUES (@IName, @Detail, @price, @Image, @Qnt, @Image1, @Image2, @Image3, @CName)" SelectCommand="SELECT [IID], [IName], [Detail], [price], [Image], [Qnt], [Image1], [Image2], [Image3], [CName] FROM [ItemMast]" UpdateCommand="UPDATE [ItemMast] SET [IName] = @IName, [Detail] = @Detail, [price] = @price, [Image] = @Image, [Qnt] = @Qnt, [Image1] = @Image1, [Image2] = @Image2, [Image3] = @Image3, [CName] = @CName WHERE [IID] = @IID">
                    <DeleteParameters>
                        <asp:Parameter Name="IID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IName" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Qnt" Type="Int32" />
                        <asp:Parameter Name="Image1" Type="String" />
                        <asp:Parameter Name="Image2" Type="String" />
                        <asp:Parameter Name="Image3" Type="String" />
                        <asp:Parameter Name="CName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="IName" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Qnt" Type="Int32" />
                        <asp:Parameter Name="Image1" Type="String" />
                        <asp:Parameter Name="Image2" Type="String" />
                        <asp:Parameter Name="Image3" Type="String" />
                        <asp:Parameter Name="CName" Type="String" />
                        <asp:Parameter Name="IID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>


</asp:Content>
