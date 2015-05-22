<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
   <!-- css -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/reset.css" rel="stylesheet" type="text/css"  />
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/animacje.css" rel="stylesheet" type="text/css" media="all"/>

<title>Adam Kostusiak</title>
    

<!-- js-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
<script src="js/Odsylacze.js"></script>          

    </head>
<body>
    <section id="pasek1">

        <div>
    <form runat="server" >
            <asp:Label ID="lblLogin" runat="server"  ForeColor="Yellow" Style="margin-left:15px; padding-top:10px;"></asp:Label>
            <asp:Button ID="Wyloguj" runat="server" Visible="false" Text="Wyloguj"  OnClick="Wyloguj_Click1" style="margin-left: 22px;" Height="24px" />
    </form>
                <ul id="menu">
                    <li><a href="#pasek1">Start</a></li>
                    <li><a href="#pasek2">Strona</a></li>
                    <li><a href="#pasek6">Facebook</a></li>
                    <li><a href="Logowanie.aspx">Loguj</a></li>
                    <li><a href="Rejestracja.aspx">Rejestruj</a></li>
            </ul>

    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>  
    </br>


            
    
            <p id="powitanie"> Witaj</p>
        </div>
    </section>

    <section id="pasek2">
        <div>
            <div id="lewy">
                <p></p>
            </div>
            <div id="prawy">
                <p>
                    Strona została utworzona na potrzeby zajęć programowania w internecie jak i również z myślą o rozwinięciu swoich umiejętności w kierunku 
        aplikacji webowych począwszy od front-endu a kończąc na back-endzie.
                </p>
            </div>
        </div>

    </section>

    <section id="pasek3">
        <div></div>


    </section>

    <section id="pasek6">
        <div>
            <script>

                (function () {

                    window.fbAsyncInit = function () {
                        FB.init({
                            appId: '1650425618522699',
                            xfbml: true,
                            version: 'v2.3'
                        });

                        FB.getLoginStatus(function (response) {
                            if (response.status === 'connected') {

                                FB.api('/me', function (response) {

                                    FB.api('/me/picture?type=normal', function (response) {
                                        document.getElementById('avatar').innerHTML = "<img src='" + response.data.url + "'/>";
                                    });
                                    document.getElementById('imie').innerHTML = "Imie: " + response.first_name;
                                    document.getElementById('nazwisko').innerHTML = "Nazwisko: " + response.last_name;

                                    console.log(response);
                                });
                            } else {
                                FB.login();

                            }
                        });
                    };



                    (function (d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) { return; }
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/en_US/sdk.js";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));
                })();

            </script>
            <p id="facebook">Dane z Facebooka</p>
            <p id="imie"></p>
            <p id="nazwisko"></p>
            <div id="avatar"></div>
        </div>
    </section>
    <section id="pasek7">
        <div></div>
    </section>

</body>
</html>
