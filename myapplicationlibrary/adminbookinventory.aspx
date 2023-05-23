<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="myapplicationlibrary.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <script src="https://code.jquery.com/jquery-3.5.1.min.js" type ="text/javascript"></script>
    <%--bootstrap js--%>
    <script src="bootstrap/js/bootstrap.min.js"></script>

   <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });
       $(document).ready(function () {
           $('#GridView1').DataTable();       });


       function readURL(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();

               reader.onload = function (e) {
                   $('#imgview').attr('src', e.target.result);
               };

               reader.readAsDataURL(input.files[0]);
           }
       }
   </script> <%--//java script for image to appear on bookinventore front end--%>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
    <img src="images/adjuster.jpg" class ="img-fluid" alt="Responsive image"/>
    </section>

    <section>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                <h4>Book Inventory</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                <img width="100" src="images/publisher.jpeg" />
                                </center>
                            </div>
                        </div>
                        <div class="col">
                        <centre>
                            <asp:FileUpload onchange="readURL(this);" CssClass="from-control" ID="FileUpload1" runat="server" EnableTheming="True" BorderStyle="Double" />
                        <centre>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Value="">Please Select</asp:ListItem>  
                                    <asp:ListItem>Urdu </asp:ListItem>  
                                    <asp:ListItem>English</asp:ListItem>  
                                    </asp:DropDownList>
                                </div>

                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                    <asp:ListItem Value="">Please Select</asp:ListItem>  
                                    </asp:DropDownList>
                                </div>                                 
                            </div>
                            
                            <div class="col-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList4" runat="server">
                                    <asp:ListItem Value="">Please Select</asp:ListItem>  
                                    <asp:ListItem>Ahmed  </asp:ListItem>  
                                    <asp:ListItem>Ali</asp:ListItem>  
                                    <asp:ListItem>Shuja</asp:ListItem>  
                                    </asp:DropDownList>
                                </div>

                                <label>Publish Date</label>
                                <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Author Name" TextMode="Date"></asp:TextBox>                                
                                </div>
                            
                            </div>
                            
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                   <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                      <asp:ListItem Text="Action" Value="Action" />
                                      <asp:ListItem Text="Adventure" Value="Adventure" />
                                      <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                      <asp:ListItem Text="Self Help" Value="Self Help" />
                                      <asp:ListItem Text="Motivation" Value="Motivation" />
                                      <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                      <asp:ListItem Text="Wellness" Value="Wellness" />
                                      <asp:ListItem Text="Crime" Value="Crime" />
                                      <asp:ListItem Text="Drama" Value="Drama" />
                                      <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                      <asp:ListItem Text="Horror" Value="Horror" />
                                      <asp:ListItem Text="Poetry" Value="Poetry" />
                                      <asp:ListItem Text="Personal Development" Value="Personal Development" /></asp:ListBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Pages" ReadOnly="False" Wrap="True" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>book Cost (per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Cost" ReadOnly="False" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Edition" ReadOnly="False" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="I.e 1,2,3..." ReadOnly="False" Wrap="True" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder=" " ReadOnly="True" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder=" " ReadOnly="True" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Book Description</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                </div>



                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>


                <a href="home.aspx"><< Back to Home</a><br>
                <br>
            </div>

            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center><h4>Book   Inventory List</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" AllowPaging="True">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id">
                                            <ControlStyle Font-Bold="True" />
                                            <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-8">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <span>Author - </span>
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| <span><span>&nbsp;</span>Genre - </span>
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| 
                                                           <span>Language -<span>&nbsp;</span>
                                                               <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                           </span>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Publisher -
                                                           <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publish Date -
                                                           <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publishdate") %>'></asp:Label>
                                                                    &nbsp;| Pages -
                                                           <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edition -
                                                           <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Cost -
                                                           <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                           <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available Stock -
                                                           <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Description -
                                                           <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <asp:Image class="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>
    </section>
    


</asp:Content>
