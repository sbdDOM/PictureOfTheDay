<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication2.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fengári - ABOUT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <style type="text/css">
        html{
            padding: 0;
            margin: 0;
            font-family: "Corbel Light";
        }
        #pageSize{
            min-height: 100vh;
        }
        #pageSize2{
            min-height: 50vh;
        }
        /*.navT{
            grid-auto-columns: 
        }*/
        .links li{
            list-style-type: none;
            text-decoration: none;
            color: black;
            cursor: pointer;
        }
        .aboutText{
            margin-top: 8rem;
            text-align: center;
        }
        .search{
            
            padding-left: 10rem;
        }
        .display{
            
            padding-right: 5rem;
            height: 200px;
            overflow: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="pageSize">
            <div class="navT ">
                <h1 class="logo d-flex justify-content-center">Fengári</h1>
                <p class="slogan d-flex justify-content-center">sunrise to sunset</p>
            </div>
            <div class="navB">
                <ul class="links d-flex justify-content-center">
                    <li class="logIn mx-5"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/About.aspx" ForeColor="Black">ABOUT</asp:HyperLink></li>
                    <li class="start mx-5"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/default.aspx" ForeColor="Black">HOME</asp:HyperLink></li>
                    <li class="contact mx-5"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Contact.aspx" ForeColor="Black">CONTACT</asp:HyperLink>
                    </li>
                </ul>
            </div>
            <div class="aboutText d-flex justify-content-center">
                <p style="width:60%">This website pairs your desired date with NASA's 
                    picture of the day. Therefore, you can now view what the
                    picture of the day was on your birthday, maybe even on a random
                    saturday 4 years ago. You can also search your history below, and 
                    view what others are interested in as well.
                </p>
            </div>
        </div>
        <div class="container my-auto position-relative" id="pageSize2">
            <div class="row">
                <div class="search col">
                    <asp:TextBox ID="searchTxt" runat="server" OnTextChanged="searchTxt_TextChanged" Height="32px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="searchBtn" runat="server" OnClick="searchBtn_Click" Text="SEARCH" BackColor="Black" BorderStyle="None" ForeColor="White" Height="37px" Width="90px" />
                    <br />
                    <br />
                    <asp:Button ID="deleteBtn" runat="server" OnClick="deleteBtn_Click" Text="DELETE" BackColor="Black" BorderStyle="None" ForeColor="White" Height="37px" Width="90px" />
                    <br />
                    <br />
                    <asp:Button ID="addBtn" runat="server" OnClick="addBtn_Click" Text="ADD" BackColor="Black" BorderStyle="None" ForeColor="White" Height="37px" Width="90px" />
                    <asp:Panel ID="Panel1" runat="server" Height="368px">
                        <p class="my-2">
                            Alias :
                        </p>
                        <asp:TextBox ID="aliasTxt" runat="server" BackColor="#CCCCCC" BorderStyle="None" Height="31px"></asp:TextBox>
                        <p class="my-2">
                            Lucky number :
                        </p>
                        <asp:TextBox ID="numTxt" runat="server" BackColor="#CCCCCC" BorderStyle="None" Height="31px"></asp:TextBox>
                        <p class="my-2">
                            Favourite colour :
                        </p>
                        <asp:TextBox ID="colourTxt" runat="server" BackColor="#CCCCCC" BorderStyle="None" Height="31px"></asp:TextBox>
                        <br />
                        <br />
                        Date : (yyyy-mm-dd)<br />
                        <asp:TextBox ID="dateTxt" runat="server" BackColor="#CCCCCC" BorderStyle="None" Height="31px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="add" runat="server" BackColor="Black" BorderStyle="None" ForeColor="White" Height="37px" OnClick="add_Click" Text="ADD" Width="90px" />
                    </asp:Panel>
                    <br />
                    refresh site after delete and add operation<br />
                </div>
                <div class="display col" >
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="511px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    
</body>
</html>
