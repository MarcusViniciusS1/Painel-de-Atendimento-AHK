; Atalho: F1 para abrir o painel
F1::
    WinGet, ActiveWindow, ID, A
    Gui, Destroy
    Gui, +AlwaysOnTop +ToolWindow -SysMenu +Owner
    Gui, Color, 6EB9F7
    Gui, Font, s10, Segoe UI

    Gui, Add, Text, x180 y10 w200 h30 Center cWhite, MENU SCRIPT

    Gui, Add, Button, x30  y70  w130 h40 gSendMsg1, Apresentação
    Gui, Add, Button, x200 y70  w130 h40 gSendMsg2, Finalização
    Gui, Add, Button, x30  y130 w130 h40 gSendMsg3, Mais detalhes
    Gui, Add, Button, x200 y130 w130 h40 gSendMsg4, Finalização 
    Gui, Add, Button, x30  y190 w130 h40 gSendMsg5, Não Respondeu
    Gui, Add, Button, x200 y190 w130 h40 gSendMsg6, FeedBack 
    Gui, Add, Button, x30  y250 w130 h40 gSendMsg7, Aplicar alteração
    Gui, Add, Button, x200 y250 w130 h40 gSendMsg8, Finalização Final de semana

    Gui, Add, Edit, x380 y70 w200 h30 vUserInput,
    Gui, Add, Button, x590 y70 w30 h30 gSendCustomMsg, ➤

    Gui, Add, GroupBox, x380 y120 w240 h130, LOGINS
    Gui, Add, Button, x400 y150 w200 h30 gShowempresa, Empresa 1
    Gui, Add, Button, x400 y180 w200 h30 gShowEmpresa2, Empresa 2
    Gui, Add, Button, x400 y210 w200 h30 gShowPortal, Empresa 3
    Gui, Add, Button, x400 y240 w200 h30 gClosePanel, Fechar

    Gui, Add, Text, x250 y320 w200 h30 Center cWhite, Script Marcus

    Gui, Show, AutoSize Center, Painel de Suporte
Return

#IfWinActive Painel de Suporte
Esc::
    Gui, Destroy
Return
#IfWinActive

; mensagens
SendMsg1: Msg :="Olá, me chamo Marcus e sou atendente do setor de suporte técnico, como posso ajudar?"  , Goto SendMsg
SendMsg2: Msg :="Agradecemos pela sua mensagem e ficamos à disposição para futuros contatos. Tenha um ótimo dia." , Goto SendMsg
SendMsg3: Msg :="Poderia me enviar mais detalhes sobre essa instabilidade? Ela ocorre em algum aparelho ou aplicativo específico?" , Goto SendMsg
SendMsg4: Msg :="Agora vou encerrar seu atendimento, foi um prazer atendê-lo e espero ter solucionado todas as suas necessidades. Após o encerramento você vai receber a pesquisa de satisfação bem rápida e simples, ficarei muito feliz em receber seu feedback positivo!" , Goto SendMsg
SendMsg5: Msg :="Seu chamado foi finalizado por falta de interação. Caso precise de assistência, sinta-se à vontade para abrir um novo chamado." , Goto SendMsg
SendMsg6: Msg :="As alterações foram aplicadas e gostaríamos de saber se sua internet normalizou. Por favor, poderia realizar um teste e nos informar? Qualquer dúvida, estamos à disposição para ajudar!" , Goto SendMsg
SendMsg7: Msg :="Certo, vou aplicar atualizações no seu roteador. Sua internet cairá por alguns segundos. Posso aplicar as alterações agora?" , Goto SendMsg
SendMsg8: Msg :="Agradecemos pela sua mensagem e ficamos à disposição para futuros contatos. Tenha um ótimo final de semana !" , Goto SendMsg

SendMsg:
    Gui, Destroy
    WinActivate, ahk_id %ActiveWindow%
    SendInput {Raw}%Msg%
Return

SendCustomMsg:
    GuiControlGet, UserInput
    if (UserInput != "")
    {
        Gui, Destroy
        WinActivate, ahk_id %ActiveWindow%
        SendInput %UserInput%
    }
Return

; GUI Empresa 1
Showempresa:
    Gui, 2:Destroy
    Gui, 2:+AlwaysOnTop +ToolWindow -SysMenu +Owner
    Gui, 2:Color, 6EB9F7
    Gui, 2:Add, Text, x150 y10 w300 h30 Center cWhite, Empresa 1

    Gui, 2:Add, GroupBox, x50 y50 w120 h150, EVANDRO
    Gui, 2:Add, Button, x60 y90 w100 h30 gLoginEvandro, LOGIN
    Gui, 2:Add, Button, x60 y130 w100 h30 gSenhaEvandro, SENHA

    Gui, 2:Add, GroupBox, x200 y50 w120 h150, DANIEL W
    Gui, 2:Add, Button, x210 y90 w100 h30 gLoginDaniel, LOGIN
    Gui, 2:Add, Button, x210 y130 w100 h30 gSenhaDaniel, SENHA

    Gui, 2:Add, GroupBox, x350 y50 w120 h150, ADM
    Gui, 2:Add, Button, x360 y90 w100 h30 gLoginADM, LOGIN
    Gui, 2:Add, Button, x360 y130 w100 h30 gSenhaADM, SENHA

    Gui, 2:Add, Button, x360 y10 w100 h30 gCloseempresa, Fechar
    Gui, 2:Add, Text, x150 y220 w300 h30 Center cWhite, Script Marcus
    Gui, 2:Show, AutoSize Center, Empresa 1 Senhas
Return

#IfWinActive Empresa 1 Senhas
Esc:: Gui, 2:Destroy
Return
#IfWinActive

LoginEvandro: Clipboard := "usuario.evandro@example.com", ReturnToWindow() Return
SenhaEvandro: Clipboard := "SenhaExemplo#123", ReturnToWindow() Return

LoginDaniel: Clipboard := "daniel.w@example.com", ReturnToWindow() Return
SenhaDaniel: Clipboard := "SenhaExemplo#123", ReturnToWindow() Return

LoginADM: Clipboard := "admin@example.com", ReturnToWindow() Return
SenhaADM: Clipboard := "SenhaExemplo#123", ReturnToWindow() Return

; GUI Empresa 2
ShowEmpresa2:
    Gui, 3:Destroy
    Gui, 3:+AlwaysOnTop +ToolWindow -SysMenu +Owner
    Gui, 3:Color, 6EB9F7
    Gui, 3:Add, Text, x150 y10 w300 h30 Center cWhite, Empresa 2

    Gui, 3:Add, GroupBox, x50 y50 w120 h150, AEGIS 1
    Gui, 3:Add, Button, x60 y90 w100 h30 gLoginAEGIS1, LOGIN
    Gui, 3:Add, Button, x60 y130 w100 h30 gSenhaAEGIS1, SENHA

    Gui, 3:Add, GroupBox, x200 y50 w120 h150, AEGIS 2
    Gui, 3:Add, Button, x210 y90 w100 h30 gLoginAEGIS2, LOGIN
    Gui, 3:Add, Button, x210 y130 w100 h30 gSenhaAEGIS2, SENHA

    Gui, 3:Add, GroupBox, x350 y50 w120 h150, AEGIS 3
    Gui, 3:Add, Button, x360 y90 w100 h30 gLoginAEGIS3, LOGIN
    Gui, 3:Add, Button, x360 y130 w100 h30 gSenhaAEGIS3, SENHA

    Gui, 3:Add, Button, x360 y10 w100 h30 gCloseEmpresa2, Fechar
    Gui, 3:Add, Text, x150 y220 w300 h30 Center cWhite, Script Marcus
    Gui, 3:Show, AutoSize Center, Empresa 2 Senhas
Return

#IfWinActive Empresa 2 Senhas
Esc:: Gui, 3:Destroy
Return
#IfWinActive

LoginAEGIS1: Clipboard := "aegis1@example.com", ReturnToWindow() Return
SenhaAEGIS1: Clipboard := "SenhaForte!2024", ReturnToWindow() Return
LoginAEGIS2: Clipboard := "aegis2@example.com", ReturnToWindow() Return
SenhaAEGIS2: Clipboard := "SenhaForte!2024", ReturnToWindow() Return
LoginAEGIS3: Clipboard := "aegis3@example.com", ReturnToWindow() Return
SenhaAEGIS3: Clipboard := "SenhaForte!2024", ReturnToWindow() Return

; GUI Empresa 3
ShowPortal:
    Gui, 4:Destroy
    Gui, 4:+AlwaysOnTop +ToolWindow -SysMenu +Owner
    Gui, 4:Color, 6EB9F7
    Gui, 4:Add, Text, x150 y10 w300 h30 Center cWhite, Empresa 3

    Gui, 4:Add, GroupBox, x50 y50 w120 h150, CXS
    Gui, 4:Add, Button, x60 y90 w100 h30 gLoginPC1, LOGIN
    Gui, 4:Add, Button, x60 y130 w100 h30 gSenhaPC1, SENHA

    Gui, 4:Add, GroupBox, x200 y50 w120 h150, AEGIS
    Gui, 4:Add, Button, x210 y90 w100 h30 gLoginPC2, LOGIN
    Gui, 4:Add, Button, x210 y130 w100 h30 gSenhaPC2, SENHA

    Gui, 4:Add, Button, x360 y10 w100 h30 gClosePortal, Fechar
    Gui, 4:Add, Text, x150 y220 w300 h30 Center cWhite, Script Marcus
    Gui, 4:Show, AutoSize Center, Empresa 3 Senhas
Return

#IfWinActive Empresa 3 Senhas
Esc:: Gui, 4:Destroy
Return
#IfWinActive

LoginPC1: Clipboard := "usuario1@empresa3.com", ReturnToWindow() Return
SenhaPC1: Clipboard := "PortalSenha!2025", ReturnToWindow() Return
LoginPC2: Clipboard := "usuario2@empresa3.com", ReturnToWindow() Return
SenhaPC2: Clipboard := "PortalSenha!2025", ReturnToWindow() Return

; Funções de fechamento
ClosePanel: Gui, Destroy Return
Closeempresa: Gui, 2:Destroy Return
CloseEmpresa2: Gui, 3:Destroy Return
ClosePortal: Gui, 4:Destroy Return

ReturnToWindow() {
    global ActiveWindow
    WinActivate, ahk_id %ActiveWindow%
}
