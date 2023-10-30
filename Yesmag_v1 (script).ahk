#Requires AutoHotkey v2.0

SetTitleMatchMode 2
Esc::ExitApp

MsgBox "Bienvenue sur l'automatisation de YesMag !"

Run "https://www.yesmag.fr/webapp/article/1001" ; ouverture de l'article
WinMaximize "A"
Sleep 3000

Send "{Click 1000 500}" ; seletion de la page

Sleep 1000 ; Test de défilement
Send "{PgDn}"
Sleep 500
Send "{PgDn}"
Sleep 500
Send "{PgUp}"
Sleep 500
Send "{PgUp}"
Sleep 500
MsgBox "Le texte a normalement défilé automatiquement `n`nAprès cette étape, le texte défilera automatiquement, appuyez sur Echap pour arrêter `n`nSi le texte n'a pas défilé appuyez sur Echap et contactez moi `nNote : le script s'arrête automatiquement au bout d'une heure"

Sleep 3000 ; Lancement de l'automatisation
Loop 120
{
    Send "{PgDn}"
	Sleep 30000
	Send "{PgUp}"
    Sleep 30000
}

MsgBox "Le script fonctionne depuis 1h, il va s'arrêter mais vous pouvez le relancer"

return