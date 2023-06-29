<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Web_Project_ASP.Admin.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Login</title>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="alert">
        <div class="row">
            <div class="col-sm-2"></div>
             <div class="col-sm-6">
                 <div class="form-group">
                     <label style="margin-top:50px;text-size-adjust:30px">Add Category</label>
                     <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
                     </br>
                     <asp:Button ID="addbtn" CssClass="btn btn-success" runat="server" Text="ADD" OnClick="addbtn_Click" />
                 </div>
             </div>
             <div class="col-sm-4"></div>
        </div>

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="form-group">
                    <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
                            <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                        </Columns>
                        <HeaderStyle BackColor="Gray" ForeColor="Black"/>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" DeleteCommand="DELETE FROM [CateMst] WHERE [CID] = @CID" InsertCommand="INSERT INTO [CateMst] ([CName]) VALUES (@CName)" SelectCommand="SELECT * FROM [CateMst]" UpdateCommand="UPDATE [CateMst] SET [CName] = @CName WHERE [CID] = @CID">
                        <DeleteParameters>
                            <asp:Parameter Name="CID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CName" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CName" Type="String" />
                            <asp:Parameter Name="CID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
