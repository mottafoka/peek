﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addLab.aspx.cs" Inherits="peek.dist.addLab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/main.css" />
    <link rel="stylesheet" href="../css/tempAddLab.css" />
    <link rel="stylesheet" href="../css/temp.css" />
    <title>Peek - Dashboard da Infra</title>
    <link rel="icon" href="../img/icon.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../img/icon.png" type="image/x-icon" />
</head>
<body id="body-menu" class="backBodyLab">
    <header>
        <div class="imgLogo"></div>
        <div class="menu-btn">
            <div class="btn-line"></div>
            <div class="btn-line"></div>
            <div class="btn-line"></div>
        </div>
        <nav class="menu">
            <div class="menu-branding">
                <div class="portrait"></div>
            </div>
            <div class="menu-nav">
                <li class="nav-item">
                    <a href="infraDashboard.aspx" class="nav-link">
                        <i class="far fa-user"></i>
                        Dashboard                        
                    </a>
                </li>
                <li class="nav-item">
                    <a href="addLab.aspx" class="nav-link">
                        <i class="fas fa-flask"></i>
                        Laboratórios 
                    </a>
                </li>
                <li class="nav-item">
                    <a href="login.aspx" class="nav-link">
                        <i class="fas fa-power-off"></i>
                        Sair                         
                    </a>
                </li>
            </div>
        </nav>
    </header>

    <main id="work" class="ad-lab">
        <h1 class="title-heading">Controle de <span class="text-secondary">Laboratórios</span>
        </h1>

        <div class="projects">
            <form class="item form" id="form1" runat="server">
                <div class="legenda">ADICIONAR LAB</div>
                 <asp:TextBox type="text" class="btn-dark" runat="server" required name="nome-lab" placeholder="Nome" />
                 <asp:TextBox type="text" class="btn-dark" runat="server" required name="nome-lab" placeholder="Andar" />
                 <asp:TextBox type="text" class="btn-dark" runat="server" required name="nome-lab" placeholder="Capacidade" />
                <button class="btn-dark add">
                    <i class="fas fa-plus-square"></i>Adicionar Laboratório
                </button>
            </form>
            <asp:Panel ID="labs" class="boxLabs" runat="server">
                <input id="inHidden" name="inHidden" type="hidden" value="" runat="server" />
            </asp:Panel>
        </div>

    </main>

    <div id="modal_cmd" class="modal_cmd_off">

        
        <div class="area_cmd">

            <div class="area_titulo_cmd">
                <div id="titulo_cmd"></div>
                <div id="fechar_cmd" onclick="fecharModalCmd()"></div>
            </div>

            <div id="area_prompt_remoto" class="prompt_remoto">
            </div>
            <div class="acoes_cmd">
                <div id="digite_sem_texto"></div>
                <input type="text" id="txtComandoParaSerExecutado" class="txtComandoExecutar" tabindex="1">
                <div id="btn_executar_comando"></div>
            </div>
        </div>
    </div>

    <script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
    </script>
    <script src="../js/lab.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/cmd_remoto_lab.js"></script>
</body>
</html>
