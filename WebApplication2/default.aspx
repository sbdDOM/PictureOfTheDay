<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2._default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fengári</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <style type="text/css">
        html{
            padding: 0;
            margin: 0;
            font-family: "Corbel Light";
            scroll-behavior: smooth;
        }
        #pageSize{
            min-height: 100vh;
        }
        .links{
            list-style-type: none;
            text-decoration: none;
            color: black;
            cursor: pointer;
        }
        .Cal{
            margin-top: 3rem;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="pageSize">
            <div class="navT ">
                <h1 class="logo d-flex justify-content-center">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    Fengári</h1>
                <p class="slogan d-flex justify-content-center">sunrise to sunset</p>
            </div>
            <div class="navB">
                <ul class="links d-flex justify-content-center">
                    <li class="logIn mx-5"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/About.aspx" BorderStyle="None" ForeColor="Black">ABOUT</asp:HyperLink></li>
                    <li class="start mx-5"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/default.aspx" ForeColor="Black">START</asp:HyperLink></li>
                    <li class="contact mx-5"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Contact.aspx" ForeColor="Black">CONTACT</asp:HyperLink>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container my-auto" id="pageSize">
            <h1 class="d-flex justify-content-center mb-2">choose your destination</h1>
            <div class="row" style="padding-left: 21rem; padding-bottom: 5rem" >
                <div class="justify-items-center" >
                    <p class="my-2">Alias : </p>
                    <asp:TextBox ID="aliasTxt" runat="server" BackColor="#CCCCCC" BorderStyle="None" Height="31px"></asp:TextBox>
                    <p class="my-2">Lucky number : </p>
                    <asp:TextBox ID="numTxt" runat="server" BackColor="#CCCCCC" BorderStyle="None" Height="31px"></asp:TextBox>
                    <p class="my-2">Favourite colour : </p>
                    <asp:TextBox ID="colourTxt" runat="server" BackColor="#CCCCCC" BorderStyle="None" Height="31px"></asp:TextBox>
                </div>
                <div class="Cal">
                    <h4 class="mb-2">select your date</h4>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#CCCCCC" BorderColor="White" BorderStyle="Groove" Font-Names="Corbel Light" OnSelectionChanged="Calendar1_SelectionChanged" Height="290px" Width="423px"></asp:Calendar>
                    <br />  
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Button1" runat="server" BackColor="Black" BorderStyle="None" ForeColor="White" Height="37px" OnClick="Button1_Click" Text="SUBMIT" Width="90px" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="800px">
            <div class="container my-5">
                <div class="row">
                    <div class="col">
                        <h1>NASA Astronomy Picture Of The Day</h1>
                        <h2 id="title"></h2>
                        <h3>Date: <span id="date"></span></h3>
                    </div>
                    <div class="col">
                        <img id="pic" src="" alt="NASA Picture Of The Day" width="100%">
                    </div>
                    <p class="my-4" id="explanation"></p>
                </div>
            </div>
        </asp:Panel>
        
            
    <script>
        var req = new XMLHttpRequest();
        var url = "https://api.nasa.gov/planetary/apod?api_key=8HhVMVXkCZIclrPkgjLcXVBzBCMHTETQ7SNKEOW7&date=";

        var date = '<%= myDate  %>';
        req.open("GET", url + date);
        req.send();

        req.addEventListener("load", function () {
            if (req.status == 200 && req.readyState == 4) {
                var response = JSON.parse(req.responseText);
                document.getElementById("title").textContent = response.title;
                document.getElementById("date").textContent = response.date;
                document.getElementById("pic").src = response.hdurl;
                document.getElementById("explanation").textContent = response.explanation;
            }
        })
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    
        
        
            
    </form>
        
        
</body>
</html>
