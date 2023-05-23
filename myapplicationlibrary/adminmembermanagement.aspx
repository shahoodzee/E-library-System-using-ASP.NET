<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="myapplicationlibrary.authormembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                <h4>Member management</h4>
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

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>                               
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="status"></asp:TextBox>
                                        <asp:Button class="btn btn-outline-success btn-sm" ID="Button6" runat="server" Text="A" OnClick="Button6_Click" />
                                        <asp:Button class="btn btn-outline-warning btn-sm" ID="Button7" runat="server" Text="P" OnClick="Button7_Click" />
                                        <asp:Button class="btn btn-outline-danger btn-sm" ID="Button8" runat="server" Text="D" OnClick="Button8_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="DOB" ReadOnly="True" Wrap="True" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Contact #</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Contact #" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Email-ID" ReadOnly="True" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="State" ReadOnly="True" Wrap="True" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="City" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Pincode" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-12">
                                <label>Full adress</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="State" ReadOnly="True" Wrap="True" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete Account Permanently" OnClick="Button4_Click" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="homee.aspx">< < Back to Home</a><br>
                <br>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center><h4>Members List</h4></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="memeber_id" DataSourceID="SqlDataSource1">
                                    <Columns>
<%--                                        <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name"></asp:BoundField>
                                        <asp:boundfield datafield="dob" headertext="dob" sortexpression="dob"></asp:boundfield>
                                        <asp:boundfield datafield="contact_no" headertext="contact_no" sortexpression="contact_no"></asp:boundfield>
                                        <asp:boundfield datafield="email" headertext="email" sortexpression="email"></asp:boundfield>
                                        <asp:boundfield datafield="state" headertext="state" sortexpression="state"></asp:boundfield>
                                        <asp:boundfield datafield="city" headertext="city" sortexpression="city"></asp:boundfield>
                                        <asp:boundfield datafield="postal_code" headertext="postal_code" sortexpression="postal_code"></asp:boundfield>
                                        <asp:boundfield datafield="full_address" headertext="full_address" sortexpression="full_address"></asp:boundfield>--%>
                                        <asp:boundfield datafield="memeber_id" headertext="memeber_id" readonly="true" sortexpression="memeber_id"></asp:boundfield>
<%--                                        <asp:boundfield datafield="password" headertext="password" sortexpression="password"></asp:boundfield>--%>
                                        <asp:BoundField DataField="acccount_status" HeaderText="acccount_status" SortExpression="acccount_status"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            </div>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>
</asp:Content>
