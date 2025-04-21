Dim message
message = "Votre pc a attraper le 18-25 ! Vous ette un gros fils de put ! ah ah ah ah ah ah ah ah ah ah ah ah ah ah ah ah a ah ah."

' Créer un objet SAPI.SpVoice pour la synthèse vocale
Dim voix
Set voix = CreateObject("SAPI.SpVoice")

' Lire le texte à haute voix
voix.Speak message

' Afficher un message à l'utilisateur
MsgBox message, vbInformation, "Titre du message"
