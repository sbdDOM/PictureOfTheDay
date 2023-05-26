<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

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
        }
        #pageSize{
            min-height: 50vh;
        }
        /*.navT{
            grid-auto-columns: 
        }*/
        .links{
            list-style-type: none;
        }
        .auto-style1 {
            width: 100%;
            height: 184px;
        }
        .auto-style2 {
            width: 100px;
            height: 712px;
        }
        .auto-style3 {
            width: 1080px;
            height: 1080px;
        }
        *{
          margin: 0;
          padding: 0;
        }
        section{
          position: relative;
          width: 100%;
          height: 100vh;
          background: linear-gradient(360deg, #9b9b9b 12%, white 20%);
          overflow: hidden;
        }
        section .air{
          position: absolute;
          bottom: 0;
          left: 0;
          width: 100%;
          height: 100px;
          background: url(https://1.bp.blogspot.com/-xQUc-TovqDk/XdxogmMqIRI/AAAAAAAACvI/AizpnE509UMGBcTiLJ58BC6iViPYGYQfQCLcBGAsYHQ/s1600/wave.png);
          background-size: 1000px 100px
        }
        section .air.air1{
          animation: wave 30s linear infinite;
          z-index: 1000;
          opacity: 1;
          animation-delay: 0s;
          bottom: 0;
        }
        section .air.air2{
          animation: wave2 15s linear infinite;
          z-index: 999;
          opacity: 0.5;
          animation-delay: -5s;
          bottom: 10px;
        }
        section .air.air3{
          animation: wave 30s linear infinite;
          z-index: 998;
          opacity: 0.2;
          animation-delay: -2s;
          bottom: 15px;
        }
        section .air.air4{
          animation: wave2 5s linear infinite;
          z-index: 997;
          opacity: 0.7;
          animation-delay: -5s;
          bottom: 20px;
        }
        @keyframes wave{
          0%{
            background-position-x: 0px; 
          }
          100%{
            background-position-x: 1000px; 
          }
        }
        @keyframes wave2{
          0%{
            background-position-x: 0px; 
          }
          100%{
            background-position-x: -1000px; 
          }
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
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <section>
            <table class="auto-style1">
                <tr>
                    <td style="height:200px">
                        <img alt="metalRoad" class="auto-style2 float-end" src="MetalRoad.png" style="width:300px;height:300px"/></td>
                    <td style="height:200px">
                        <h1 class="text-center">THIS WAS MADE BY:</h1>
                    </td>
                    <td style="height:200px">
                        <img alt="moon" class="auto-style3 " src="Moon5.png" style="width:300px;height:300px"/></td>
                </tr>
                <tr>
                    <td style="height:200px">
                        <img alt="planets" class="auto-style3 float-end" src="PlanetsUFO5%20(1).png" style="width:300px;height:300px"/></td>
                    <td class="text-center" style="height:200px">
                        <h3>R, Esbend. 35410108</h3>
                    </td>
                    <td style="height:200px">
                        <img alt="ropes" class="auto-style3" src="rope6.png" style="width:300px;height:300px" /></td>
                </tr>
                <tr class="air air1">
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </section>
    </form>
        
</body>
</html>
