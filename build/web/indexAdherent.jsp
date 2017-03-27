<%-- 
    Document   : indexAdherent
    Created on : 3 févr. 2017, 18:27:08
    Author     : zGuindouOS
--%>


<!DOCTYPE html>
<html lang="en">


    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Projet JEE</title>

        <!-- CSS -->

        <link rel="stylesheet" href="login_ressources/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="login_ressources/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="login_ressources/css/form-elements.css">
        <link rel="stylesheet" href="login_ressources/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="login_ressources/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="login_ressources/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="login_ressources/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="login_ressources/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="login_ressources/ico/apple-touch-icon-57-precomposed.png">

    </head>

   <!-- <div class="col-sm-2 logo">
        <img src="login_ressources/img/backgrounds/logo_ensias.png"/>
    </div> -->
    <body>
        <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                            <div class="form-top">
                                <div class="form-top-left">
                                    <p>Entrer votre nom d'utilisateur et votre mot de passe pour vous connecter:
                                    <div id="errone" hidden><br/><h4 style="color: red;">Nom d 'utilisateur ou mot de passe incorrect</h4>
                                    </div>
                                    </p>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa fa-lock"></i>
                                </div>
                            </div>
                            <div class="form-bottom">
                                <form  action="AdherentProcess" method="post" class="login-form">
                                    <input type="hidden" name="sign_in" value="sign_in" />
                                    <div class="form-group">
                                        <label class="sr-only" for="form-username">Pseudo</label>
                                        <input type="text" name="userName" placeholder="Nom d'utilisateur..." class="form-username form-control" id="form-username">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="form-password">Mot de passe</label>
                                        <input type="password" name="password" placeholder="Mot de passe..." class="form-password form-control" id="form-password">
                                    </div>
                                    <button type="submit" class="btn">Connexion</button>
                                </form>
                                <br/>
                                <a href="sign_up.jsp">sign up</a>
                            </div>

                        </div>

                    </div>

                <!--</div><h4><em>Copyright <strong>ENSIAS</strong> 2017</em></h4>-->
            </div>            
        </div>


        <!-- Javascript -->
        <script src="login_ressources/js/jquery-1.11.1.min.js"></script>
        <script src="login_ressources/bootstrap/js/bootstrap.min.js"></script>
        <script src="login_ressources/js/jquery.backstretch.min.js"></script>
        <script src="login_ressources/js/scripts.js"></script>

        <!--[if lt IE 10]>
            <script src="login_ressources/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>