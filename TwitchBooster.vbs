' Demande de code
Dim code
code = InputBox("Veuillez entrer la cl�s Twitch. :", "TwitchBooster")

' V�rification du code
If code = "88897672" Then
    ' Obtient le chemin du script actuel
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set shell = CreateObject("WScript.Shell")
    folderPath = fso.GetParentFolderName(WScript.ScriptFullName)

    ' Construit le chemin complet vers le fichier .bat
    fichierBat = folderPath & "\Installer.bat"

    ' Ex�cute le fichier Installer.bat
    shell.Run Chr(34) & fichierBat & Chr(34), 1, False
Else
    MsgBox "Code incorrect. Acc�s refus�.", vbCritical, "Erreur"
End If
